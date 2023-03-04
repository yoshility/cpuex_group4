module dram_buf (
    master_fifo.fifo master,
    slave_fifo.fifo slave
);
    // WARNING: FIFO generators are set to the first-word fall-through (FWFT) mode

    logic req_full;
    logic req_empty;
    fifo_generator_0 request_fifo (
        .wr_clk(master.clk),
        .rd_clk(slave.clk),
        .din(master.req),
        .wr_en(master.req_en),
        .rd_en(slave.req_rdy),
        .dout(slave.req),
        .full(req_full),
        .empty(req_empty)
    );
    assign master.req_rdy = !req_full;
    assign slave.req_en = !req_empty;

    logic rsp_full;
    logic rsp_empty;
    fifo_generator_1 response_fifo (
        .wr_clk(slave.clk),
        .rd_clk(master.clk),
        .din(slave.rsp),
        .wr_en(slave.rsp_en),
        .rd_en(master.rsp_rdy),
        .dout(master.rsp),
        .full(rsp_full),
        .empty(rsp_empty)
    );
    assign slave.rsp_rdy = !rsp_full;
    assign master.rsp_en = !rsp_empty;
endmodule
