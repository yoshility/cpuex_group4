// master <-> fifo <-> slave
package master_fifo_slave;
    // request
    typedef struct packed {
        logic cmd;  // the kind of a operation: 0 for write and 1 for read
        logic [26:0] addr;  // the address of a operation: common to read and write
        logic [127:0] data;  // the data of a operation: for write
    } request;

    // response
    typedef struct packed {
        logic [127:0] data;  // the data of a operation: for read
    } response;
endpackage


// master <-> fifo
interface master_fifo;
    // clock
    logic clk;

    // request
    master_fifo_slave::request req;  // data
    logic req_en;  // enable = valid
    logic req_rdy;  // ready

    // response
    master_fifo_slave::response rsp;  // data
    logic rsp_en;  // enable = valid
    logic rsp_rdy;  // ready

    // master
    modport master (
        input req_rdy, rsp, rsp_en,
        output req, req_en, rsp_rdy, clk
    );

    // fifo
    modport fifo (
        input req, req_en, rsp_rdy, clk,
        output req_rdy, rsp, rsp_en
    );
endinterface


// slave <-> fifo
interface slave_fifo;
    // clock
    logic clk;

    // request
    master_fifo_slave::request req;  // data
    logic req_en;  // enable = valid
    logic req_rdy;  // ready

    // response
    master_fifo_slave::response rsp;  // data
    logic rsp_en;  // enable = valid
    logic rsp_rdy;  // ready

    // master
    modport slave (
        input req, req_en, rsp_rdy,
        output req_rdy, rsp, rsp_en, clk
    );

    // fifo
    modport fifo (
        input req_rdy, rsp, rsp_en, clk,
        output req, req_en, rsp_rdy
    );
endinterface
