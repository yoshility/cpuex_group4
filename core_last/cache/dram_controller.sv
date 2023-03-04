module dram_controller (
    // DDR2
    output wire [12:0] ddr2_addr,
    output wire [2:0] ddr2_ba,
    output wire ddr2_cas_n,
    output wire [0:0] ddr2_ck_n,
    output wire [0:0] ddr2_ck_p,
    output wire [0:0] ddr2_cke,
    output wire ddr2_ras_n,
    output wire ddr2_we_n,
    inout  wire [15:0] ddr2_dq,
    inout  wire [1:0] ddr2_dqs_n,
    inout  wire [1:0] ddr2_dqs_p,
    output wire [0:0] ddr2_cs_n,
    output wire [1:0] ddr2_dm,
    output wire [0:0] ddr2_odt,
    // others
    input logic sys_clk,
    slave_fifo.slave fifo
);
    // MIG
    logic [26:0] app_addr;
    logic [2:0] app_cmd;
    logic app_en;
    logic app_rdy;
    logic [127:0] app_wdf_data;
    logic app_wdf_end;
    logic [15:0] app_wdf_mask;
    logic app_wdf_wren;
    logic app_wdf_rdy;
    logic [127:0] app_rd_data;
    logic app_rd_data_end;
    logic app_rd_data_valid;
    logic app_sr_req;   // reserved
    logic app_ref_req;  // unused
    logic app_zq_req;   // unused
    logic app_sr_active;  // reserved
    logic app_ref_ack;    // unused
    logic app_zq_ack;     // unused
    logic init_calib_complete;  // unused
    logic ui_clk;
    logic ui_clk_sync_rst;  // unused
    logic sys_clk_i;
    logic sys_rst;  // unused
    mig_7series_0 mig (
        // physical interface
        .ddr2_addr(ddr2_addr),
        .ddr2_ba(ddr2_ba),
        .ddr2_cas_n(ddr2_cas_n),
        .ddr2_ck_n(ddr2_ck_n),
        .ddr2_ck_p(ddr2_ck_p),
        .ddr2_cke(ddr2_cke),
        .ddr2_ras_n(ddr2_ras_n),
        .ddr2_we_n(ddr2_we_n),
        .ddr2_dq(ddr2_dq),
        .ddr2_dqs_n(ddr2_dqs_n),
        .ddr2_dqs_p(ddr2_dqs_p),
        .ddr2_cs_n(ddr2_cs_n),
        .ddr2_dm(ddr2_dm),
        .ddr2_odt(ddr2_odt),
        // user interface
        .app_addr(app_addr),
        .app_cmd(app_cmd),
        .app_en(app_en),
        .app_rdy(app_rdy),
        .app_wdf_data(app_wdf_data),
        .app_wdf_end(app_wdf_end),
        .app_wdf_mask(app_wdf_mask),
        .app_wdf_wren(app_wdf_wren),
        .app_wdf_rdy(app_wdf_rdy),
        .app_rd_data(app_rd_data),
        .app_rd_data_end(app_rd_data_end),
        .app_rd_data_valid(app_rd_data_valid),
        .app_sr_req(app_sr_req),
        .app_ref_req(app_ref_req),
        .app_zq_req(app_zq_req),
        .app_sr_active(app_sr_active),
        .app_ref_ack(app_ref_ack),
        .app_zq_ack(app_zq_ack),
        .init_calib_complete(init_calib_complete),
        // clock and reset
        .ui_clk(ui_clk),
        .ui_clk_sync_rst(ui_clk_sync_rst),
        .sys_clk_i(sys_clk_i),
        .sys_rst(sys_rst)
    );
    assign app_sr_req  = 1'b0;  // reserved
    assign app_ref_req = 1'b0;  // unused
    assign app_zq_req  = 1'b0;  // unused
    assign sys_rst = 1'b1;      // unused -> active low!


    // the control of MIG
    assign sys_clk_i = sys_clk;
    assign fifo.clk = ui_clk;
    assign fifo.rsp.data = app_rd_data;
    assign fifo.rsp_en = app_rd_data_valid;

    enum logic [1:0] {
        IDLE,
        SEND_CMD_AND_DATA,
        SEND_CMD,
        SEND_DATA
    } state = IDLE;

    assign app_wdf_end = 1'b1;
    assign app_wdf_mask = '0;

    // TODO: Currently the FSM is slow by one cycle. You have to improve this.

    always_ff @ (posedge ui_clk) begin
        if (state == IDLE) begin
            if (fifo.req_en) begin
                state <= SEND_CMD_AND_DATA;
                app_addr <= fifo.req.addr;
                app_cmd <= {2'b00, fifo.req.cmd};
                app_wdf_data <= fifo.req.data;
            end
        end else if (state == SEND_CMD_AND_DATA) begin
            if (app_cmd[0]) begin  // read operation
                if (app_rdy) begin
                    state <= IDLE;
                end
            end else begin  // write operation
                if (app_rdy && app_wdf_rdy) begin
                    state <= IDLE;
                end else if (app_rdy) begin
                    state <= SEND_DATA;
                end else if (app_wdf_rdy) begin
                    state <= SEND_CMD;
                end
            end
        end else if (state == SEND_CMD) begin
            if (app_rdy) begin
                state <= IDLE;
            end
        end else if (state == SEND_DATA) begin
            if (app_wdf_rdy) begin
                state <= IDLE;
            end
        end
    end

    assign fifo.req_rdy = (state == IDLE);
    assign app_en = (state == SEND_CMD_AND_DATA) || (state == SEND_CMD);
    assign app_wdf_wren = (!app_cmd[0] && state == SEND_CMD_AND_DATA) || (state == SEND_DATA);
endmodule
