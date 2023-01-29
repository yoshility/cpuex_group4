module dram_test (
    master_fifo.master fifo,
    input logic clk,
    output logic led
);
    assign fifo.clk = clk;
    assign fifo.rsp_rdy = 1'b1;

    logic [2:0] req_state = '0;
    always_ff @ (posedge clk) begin
        case (req_state)
            3'b000: begin
                fifo.req.cmd <= 1'b0;
                fifo.req.addr <= 27'h300;
                fifo.req.data <= 128'h0123456789abcdeffedcba9876543210;
                fifo.req_en <= 1'b1;
                req_state <= 3'b001;
            end
            3'b001: begin
                fifo.req.cmd <= 1'b0;
                fifo.req.addr <= 27'h400;
                fifo.req.data <= 128'hfedcba98765432100123456789abcdef;
                fifo.req_en <= 1'b1;
                req_state <= 3'b010;
            end
            3'b010: begin
                fifo.req.cmd <= 1'b1;
                fifo.req.addr <= 27'h300;
                fifo.req.data <= '0;
                fifo.req_en <= 1'b1;
                req_state <= 3'b011;
            end
            3'b011: begin
                fifo.req.cmd <= 1'b1;
                fifo.req.addr <= 27'h400;
                fifo.req.data <= '0;
                fifo.req_en <= 1'b1;
                req_state <= 3'b100;
            end
        endcase
    end

    logic first_data_identity = 1'b0;
    logic second_data_identity = 1'b0;
    assign led = first_data_identity && second_data_identity;

    logic [1:0] rsp_state = '0;
    always_ff @ (posedge clk) begin
        case (rsp_state)
            2'b00: begin
                if (fifo.rsp_en) begin
                    first_data_identity <= (fifo.rsp.data == 128'h0123456789abcdeffedcba9876543210);
                    rsp_state <= 2'b01;
                end
            end
            2'b01: begin
                if (fifo.rsp_en) begin
                    second_data_identity <= (fifo.rsp.data == 128'hfedcba98765432100123456789abcdef);
                    rsp_state <= 2'b10;
                end
            end
        endcase
    end
endmodule
