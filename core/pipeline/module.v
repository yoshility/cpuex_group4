`default_nettype none
module adder #(parameter N=32)
            (input wire [N-1:0] a,b,
            output wire [N-1:0]cout);
    assign cout = a + b;
endmodule

module compare #(parameter N=8)
                (input wire [N-1:0] a,b,
                output wire eq,neq,lt,lte,gt,gte);
                assign eq = (a==b);
                assign neq =  (a !=b);
                assign lt = (a < b);
                assign lte = (a <= b);
                assign gt = (a > b);
                assign gte = (a >= b);
endmodule

module ALU (input wire[31:0] a,
            input wire [31:0] b,
            input wire [3:0] alu_cont,
            output wire [31:0] y,
            output wire zero);
            wire [31:0] y11;
            wire [31:0] y10;
            wire [31:0] y01;
            wire [31:0] y00;
            assign y11 = a | b;
            assign y10 = a & b;
            assign y01 = a - b;
            assign y00 = a + b;
            wire [31:0] tmp;
            assign tmp = {31'b0,(a<b)};
            assign y = (alu_cont[1:0] == 2'b00) ? y00 : (alu_cont[1:0] == 2'b01) ? y01 :(alu_cont[1:0] == 2'b10) ? y10 : y11;
            assign zero = (alu_cont == 4'b0101) ? ((a < b) ? 1: 0) : ((a == b) ? 1 : 0); 
endmodule

module fpu (
        input wire clk,
        input wire reset,
        input wire[31:0] a,
        input wire [31:0] b,
        input wire [2:0] fpu_cont,
        output wire [31:0] y,
        output wire ovf,
        output wire zero);
        wire [31:0] y_fadd;
        wire obf_add;
        wire [31:0] fsub;
        wire [31:0] fmul;
        wire [31:0] fdiv;
        wire [31:0] sqrt;
        fadd fadd1_1(a,b,y_fadd,clk,reset);
        assign y = (fpu_cont == 3'b000) ? y_fadd : 3'b0;
endmodule
module pc_plus_4 (input wire [31:0] pc,
        output wire [31:0] pc_ne);
        assign pc_ne = pc + 4;
endmodule

module extend
       (input wire [31:7] instr,
       input wire [1:0] immsrc,
       output wire [31:0] imm);
       assign imm = (immsrc == 2'b00) ? {{20{instr[31]}},instr[31:20]}:
                    (immsrc == 2'b01) ? {{20{instr[31]}},instr[31:25],instr[11:7]}:
                    (immsrc == 2'b10) ? {{20{instr[31]}},instr[7],instr[30:25],instr[11:8],1'b0} : {{12{instr[31]}},instr[19:12],instr[20],instr[30:21],1'b0}; 
endmodule

module register_file (input wire clk,
input wire reset,
                      input wire regwrite,
                      input wire[4:0] a1,
                      input wire [4:0] a2,
                      input wire [4:0] a3,
                      input wire[31:0] wd,
                      output  wire [31:0] rd1,
                      output wire [31:0] rd2
                      );
                      reg [31:0] rf[31:0];
                      
                      always @(negedge clk) begin
                        rf[5'b00000] <= 32'b00000000000000000000000000000000;
                        if (reset) begin 
                                rf[5'b00010] <= 32'b00000000000000000000000100000000;
                        end
                        if (regwrite) begin
                          rf[a3] <= wd;
                          end
                      end
                      assign rd1 = (a1 != 0) ? rf[a1] : 0;
                      assign rd2 = (a2 != 0) ? rf[a2] : 0;
endmodule


module mux2_1 (input wire [31:0] d0,
               input wire [31:0] d1,
               input wire s,
               output wire [31:0] y);
               assign y = (s == 1'b1) ? d1 : d0;
endmodule

module mux3_1 (input wire [31:0] d00,
               input wire [31:0] d01,
               input wire [31:0] d10,
               input wire [1:0] src,
               output wire [31:0] y);
               assign y = (src[1] == 1'b1) ? d10 : (src[0] == 1'b1) ? d01 : d00;
endmodule

module hazard_unit (input wire [4:0] rs1d,
                    input wire [4:0] rs2d,
                    input wire [4:0] rs1e,
                    input wire [4:0] rs2e,
                    input wire [4:0] rde,
                    input wire pc_srce,
                    input wire resultsrce0,
                    input wire [4:0] rdm,
                    input wire [4:0] rdw,
                    input wire regwritem,
                    input wire regwritew,
                    output wire stallf,
                    output wire stalld,
                    output wire flushd,
                    output wire flushe,
                    output wire [1:0] forwardAE,
                    output wire [1:0] forwardBE,
                    input wire alu_fpu_sig_d,
                    input wire alu_fpu_sig_f);
                    wire lwstall;
                    assign lwstall = resultsrce0 & ((rs1d == rde) | (rs2d == rde));
                    assign stallf =  lwstall | alu_fpu_sig_f;
                    assign stalld =  lwstall | alu_fpu_sig_d;
                    assign flushd = pc_srce;
                    assign flushe = (lwstall | pc_srce);
                    assign forwardAE = (((rs1e == rdm) & regwritem) & (rs1e != 0)) ? 2'b10 : (((rs1e == rdw) & regwritew) & (rs1e != 0)) ? 2'b01 : 2'b00;
                    assign forwardBE = (((rs2e == rdm) & regwritem) & (rs2e != 0)) ? 2'b10 : (((rs2e == rdw) & regwritew) & (rs2e != 0)) ? 2'b01 : 2'b00;

endmodule

module datapath_for_pipeline_fpu (
                 input wire clk,
                 input wire reset,
                 input wire [1:0] result_srcd,
                 input wire memwrited,
                 input wire alu_srcd,
                 input wire regwrited,
                 input wire [1:0] imm_srcd,
                 input wire [3:0] alu_contd,
                 input wire jumpd,
                 input wire branchd,
                 output wire [31:0] pcf,
                 input wire [31:0] instrf,
                 output wire [31:0] instrd,
                 output wire [31:0] alu_resultm,
                 output wire [31:0] writedatem,
                 input wire [31:0] readdatem,
                 output wire memwritem,
                 output wire result_srce0,
                 output wire [4:0] rdm,
                 output wire [4:0] rdw,
                 output wire regwritem,
                 output wire regwritew,
                 output wire [4:0] rde,
                 output wire [4:0] rs1e,
                 output wire [4:0] rs2e,
                 output wire [4:0] rs1d,
                 output wire [4:0] rs2d,
                 output wire pc_srce,
                 input wire stallf,
                 input wire stalld,
                 input wire flushd,
                 input wire flushe,
                 input wire [1:0] forwardAE,
                 input wire [1:0] forwardBE,
                 input wire alu_fpu_sig,
                 output wire alu_fpu_sig_d,
                 output wire alu_fpu_sig_f,
                 input wire pc_select_d);
           //fetchstage
           wire [31:0] pc_next;
           wire [31:0] pc_plus4f;
           wire [31:0] pctare;
           wire [31:0] pcd;
           flip_en_clr d1(clk,reset,~(stalld),flushd,instrf,instrd);
           
           flip_en pc (clk,reset,~(stallf),pc_next,pcf);
           pc_plus_4 plus4(pcf,pc_plus4f);
           
           flip_en_clr d2(clk,reset,~(stalld),flushd,pcf,pcd);
           flip_en_clr d3 (clk,reset,~(stalld),flushd,pc_plus4f,pc_plus4d);
           mux2_1 pc_mux (pc_plus4f,pctare,pc_srce,pc_next);
           //decodestage
           wire [31:0] rd1;
           wire [31:0] rd2;
           wire [31:0] rd1e;
           wire [31:0] rd2e;
           wire [31:0] pce;
           register_file file_reg(clk,reset,regwritew,instrd[19:15],instrd[24:20],rdw,resultw,rd1,rd2);
           flip_clr e1 (clk,reset,flushe,rd1,rd1e);
           flip_clr e0 (clk,reset,flushe,rd2,rd2e);
           flip_clr e3 (clk,reset,flushe,pcd,pce);
           flip_clr #(.N(5)) e4 (clk,reset,flushe,instrd[19:15],rs1e);
           flip_clr #(.N(5)) e5 (clk,reset,flushe,instrd[24:20],rs2e);
           wire [31:0] imm_extd;
           wire [31:0] imm_exte;
           wire [31:0] pc_plus4d;
           wire [31:0] pc_plus4e;
           wire  alu_srce;
           wire [3:0] alu_conte;
           wire branche;
           wire jumpe;
           wire memwritee;
           wire [1:0] result_srce;
           wire regwritee;
           wire pc_select_e;
           flip_clr #(.N(5))e6 (clk,reset,flushe,instrd[11:7],rde);
           flip_clr e7 (clk,reset,flushe,imm_extd,imm_exte);
           flip_clr e8 (clk,reset,flushe,pc_plus4d,pc_plus4e);
           flip_clr_1 e9 (clk,reset,flushe,alu_srcd,alu_srce);
           flip_clr #(.N(4))e10 (clk,reset,flushe,alu_contd,alu_conte);
           flip_clr_1 e11 (clk,reset,flushe,branchd,branche);
           flip_clr_1 e12 (clk,reset,flushe,jumpd,jumpe);
           flip_clr_1 e13 (clk,reset,flushe,memwrited,memwritee); 
           flip_clr #(.N(2)) e14 (clk,reset,flushe,result_srcd,result_srce);
           flip_clr_1 e15 (clk,reset,flushe,regwrited,regwritee);
           flip_clr_1 e16 (clk,reset,flushe,alu_fpu_sig,alu_fpu_sig_f);
           flip_clr_1 e17 (clk,reset,flushe,pc_select_d,pc_select_e);
           assign result_srce0 = result_srce[0];
          
           extend ex(instrd[31:7],imm_srcd,imm_extd);
           //execute_stage
           wire [31:0] resultw;
           wire [31:0] srcae;
           wire [31:0] srcb;
           wire  [31:0] writedatee;           
           mux3_1 opA(rd1e,resultw,alu_resultm,forwardAE,srcae);
           mux3_1 opB(rd2e,resultw,alu_resultm,forwardBE,writedatee);
           mux2_1 opB1(writedatee,imm_exte,alu_srce,srcb);
           wire zero;
           
           wire [31:0] alu_resulte;
           wire [31:0] pc_plus4m;
           wire [31:0] pc_e_tmp;
           //wire memwritem;
           wire [1:0] result_srcm;
           mux2_1 jal_select(pce,rd1e,pc_select_e,pc_e_tmp);//jalrは1
           ALU alu(srcae,srcb,alu_conte,alu_resulte,zero);
           adder pc_add(pc_e_tmp,imm_exte,pctare);
           assign pc_srce =  ((zero & branche) | jumpe);
           flip m1 (clk,reset,alu_resulte,alu_resultm);
           flip m2(clk,reset,writedatee,writedatem);
           flip #(.N(5))m3(clk,reset,rde,rdm);
           flip m4 (clk,reset,pc_plus4e,pc_plus4m);
           flip #(.N(1))m5(clk,reset,memwritee,memwritem);
           flip #(.N(2))m6 (clk,reset,result_srce,result_srcm);
           flip #(.N(1))m7 (clk,reset,regwritee,regwritem);
           flip #(.N(1))m8 (clk,reset,alu_fpu_sig_f,alu_fpu_sig_d);
           
           //memory_stage
           wire [31:0]alu_resultw;
           wire [31:0] readdatew;
           wire [1:0] result_srcw;
           wire [31:0] pc_plus4w;
           flip w1 (clk,reset,alu_resultm,alu_resultw);
           flip w2 (clk,reset,readdatem,readdatew);
           flip #(.N(1))w3 (clk,reset,regwritem,regwritew);
           flip #(.N(2))w4 (clk,reset,result_srcm,result_srcw);
           flip #(.N(5))w5 (clk,reset,rdm,rdw);
           flip w6 (clk,reset,pc_plus4m,pc_plus4w);
           //writeback_stage
           mux3_1 writeback_mux(alu_resultw,readdatew,pc_plus4w,result_srcw, resultw);
endmodule

module pileline_processor_fpu( 
      input wire clk,
      input wire reset,
      output wire [31:0] pcf,
      input wire [31:0] instrf,
      output wire memwritem,
      output wire [31:0] alu_resultm,
      output wire [31:0] writedatem,
      input wire [31:0] readdatem);

      wire alu_srcd;
      wire regwrited;
      wire jumpd;
      wire [1:0] resultsrcd;
      wire [1:0] imm_srcd;
      wire [3:0] alu_contd;
      wire [31:0] instrd;
      wire [4:0] rs1e;
      wire [4:0] rs2e;
      wire [4:0] rde;
      wire pc_srce;
      wire resultsrce0;
      wire [4:0] rdm;
      wire [4:0] rdw;
      wire regwritem;
      wire regwritew;
      wire stallf;
      wire stalld;
      wire flushd;
      wire flushe;
      wire [1:0] forwardAE;
      wire [1:0] forwardBE;
      wire memwrited;
      wire branchd;
      wire alu_fpu_sig;
      wire alu_fpu_sig_d;
      wire alu_fpu_sig_f;
      wire pc_select_d;
     contlloer_alu_pipe c(instrd[6:0],instrd[14:12],instrd[31:25],resultsrcd,memwrited,alu_srcd,regwrited,jumpd,branchd,imm_srcd,alu_contd,alu_fpu_sig,pc_select_d);
     hazard_unit hu(instrd[19:15], instrd[24:20],rs1e,rs2e,rde,pc_srce,resultsrce0,
                    rdm,rdw,regwritem,regwritew,
                    stallf,stalld,flushd,flushe,
                    forwardAE,forwardBE,alu_fpu_sig_f,alu_fpu_sig_d);
     datapath_for_pipeline_fpu pd_pipe(clk,reset,
                                   resultsrcd,memwrited,alu_srcd,regwrited,imm_srcd,alu_contd,jumpd,branchd,
                                   pcf,instrf,instrd,alu_resultm,writedatem,readdatem,memwritem,
                                   resultsrce0,
                                   rdm,rdw,regwritem,regwritew,rde,rs1e,rs2e,instrd[19:15],instrd[24:20],pc_srce,stallf,stalld,flushd,flushe,forwardAE, forwardBE,
                                   alu_fpu_sig,alu_fpu_sig_f,alu_fpu_sig_d,pc_select_d);
endmodule

module top_pipe(
     input wire clk,
     input wire reset,
     output wire  core_sig,
     output wire [31:0] writedatem,
     output wire [31:0] alu_resultm,
     output wire memwritem,output wire txd);

     wire [31:0] pcf;
     wire [31:0] instrf;
     wire [31:0] readdatem;
     assign core_sig = memwritem;
     uart_loopback uart1(txd,writedatem,core_sig,clk,~reset);
     pileline_processor_fpu pipe(clk,reset,pcf,instrf,memwritem,alu_resultm,writedatem,readdatem);
     memory_order imem(pcf,instrf);
     data_memory dmem(clk,memwritem,alu_resultm,writedatem,readdatem);
endmodule