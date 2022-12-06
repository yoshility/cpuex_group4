`default_nettype wire
module adder #(parameter N=32)
            (input logic [N-1:0] a,b,
            output logic [N-1:0]cout);
    assign cout = a + b;
endmodule

module compare #(parameter N=8)
                (input logic [N-1:0] a,b,
                output logic eq,neq,lt,lte,gt,gte);
                assign eq = (a==b);
                assign neq =  (a !=b);
                assign lt = (a < b);
                assign lte = (a <= b);
                assign gt = (a > b);
                assign gte = (a >= b);
endmodule


module fpu (
        input logic clk,
        input logic rstn,
        input logic[31:0] a,
        input logic [31:0] b,
        input logic [4:0] fpu_cont,
        output logic [31:0] y
        );
        logic [31:0] y_fadd;
        logic obf_add;
        logic [31:0] fsub;
        logic [31:0] fmul;
        logic [31:0] fdiv;
        logic [31:0] sqrt;
        fadd fadd1_1(a,b,y_fadd,clk,~rstn);
        assign y = (fpu_cont == 3'b000) ? y_fadd : 3'b0;
endmodule
module pc_plus_4 (input logic [31:0] pc,
        output logic [31:0] pc_ne);
        assign pc_ne = pc + 4;
endmodule

module extend
       (input logic [31:7] instr,
       input logic [1:0] immsrc,
       output logic [31:0] imm);
       assign imm = (immsrc == 2'b00) ? {{20{instr[31]}},instr[31:20]}:
                    (immsrc == 2'b01) ? {{20{instr[31]}},instr[31:25],instr[11:7]}:
                    (immsrc == 2'b10) ? {{20{instr[31]}},instr[7],instr[30:25],instr[11:8],1'b0} : {{12{instr[31]}},instr[19:12],instr[20],instr[30:21],1'b0}; 
endmodule

module register_file (input logic clk,
                      input logic rstn,
                      input logic regwrite,
                      input logic[4:0] a1,
                      input logic [4:0] a2,
                      input logic [4:0] a3,
                      input logic[31:0] wd,
                      output  logic [31:0] rd1,
                      output logic [31:0] rd2,
                      input logic alu_fpu_sig_w,
                      input logic alu_fpu_sig_d);
                      reg [31:0] rf_alu [31:0];
                      reg [31:0] rf_fpu [31:0];
                      always @(negedge clk) begin
                        rf_alu[5'b00000] <= 32'b00000000000000000000000000000000;
                        if (~rstn) begin 
                                rf_alu[5'b00010] <= 32'b00000000000000000000000100000000;
                                rf_alu[5'b11111] <= 32'd260;
                                //rf_alu[5'b11110] <= 32'b10111111101000000000000000000000;
                                rf_alu[5'b00001] <= 32'b00000000000000000000000000000100;
                                //rf_alu[5'b00110] <= 32'b00000000000000000000000000001000;
                                rf_fpu[5'b0] <= 32'b0;
                        end if (regwrite) begin
                                if (alu_fpu_sig_w) begin
                                        rf_fpu[a3] <= wd;
                                end
                                else begin
                                        rf_alu[a3] <= wd;
                                end
                          
                        end
                      end
                      assign rd1 = (a1 != 0) ? ((alu_fpu_sig_d == 1'b0) ? rf_alu[a1] : rf_fpu[a1]) : 0;
                      assign rd2 = (a2 != 0) ? ((alu_fpu_sig_d == 1'b0) ? rf_alu[a2] : rf_fpu[a2]) : 0;
endmodule


module mux2_1 (input logic [31:0] d0,
               input logic [31:0] d1,
               input logic s,
               output logic [31:0] y);
               assign y = (s == 1'b1) ? d1 : d0;
endmodule

module mux3_1 (input logic [31:0] d00,
               input logic [31:0] d01,
               input logic [31:0] d10,
               input logic [1:0] src,
               output logic [31:0] y);
               assign y = (src[1] == 1'b1) ? d10 : (src[0] == 1'b1) ? d01 : d00;
endmodule

module mux4_1 (input logic [31:0] d00,
               input logic [31:0] d01,
               input logic [31:0] d10,
               input logic [31:0] d11,
               input logic [1:0] src,
               output logic [31:0] y);
               assign y = (src[1] == 1'b1) ? ((src[0] == 1'b1) ? d11: d10) : (src[0] == 1'b1) ? d01 : d00;
endmodule

module hazard_unit (input logic [4:0] rs1d,
                    input logic [4:0] rs2d,
                    input logic [4:0] rs1e,
                    input logic [4:0] rs2e,
                    input logic [4:0] rde,
                    input logic pc_srce,
                    input logic resultsrce0,
                    input logic [4:0] rdm,
                    input logic [4:0] rdw,
                    input logic regwritem,
                    input logic regwritew,
                    output logic stallf,
                    output logic stalld,
                    output logic stalle,
                    output logic stallm,
                    output logic stallw,
                    output logic flushd,
                    output logic flushe,
                    output logic [1:0] forwardAE,
                    output logic [1:0] forwardBE,
                    input logic alu_fpu_sig_d,
                    input logic alu_fpu_sig_f,
                    input logic input_valid,
                    input logic fpu_stall_1,
                    input logic fpu_stall_2,
                    input logic fpu_stall_3,
                    input logic fpu_stall_4,
                    input logic fpu_stall_5,
                    input logic fpu_stall_6,
                    input logic fpu_stall_7,
                    input logic fpu_stall_8,
                    input logic fpu_stall_9,
                    input logic fpu_stall_10);
                    logic lwstall;
                    assign lwstall = resultsrce0 & ((rs1d == rde) | (rs2d == rde));
                    assign stallf =  lwstall || input_valid || fpu_stall_1 || fpu_stall_2 || fpu_stall_3 || fpu_stall_4 || fpu_stall_5 || fpu_stall_6 || fpu_stall_7 || fpu_stall_8 || fpu_stall_9 || fpu_stall_10;
                    assign stalld =  lwstall || input_valid || fpu_stall_1 || fpu_stall_2 || fpu_stall_3 || fpu_stall_4 || fpu_stall_5 || fpu_stall_6 || fpu_stall_7 || fpu_stall_8 || fpu_stall_9 || fpu_stall_10;
                    assign stalle = input_valid;
                    assign stallm = input_valid;
                    assign stallw = input_valid;
                    assign flushd = pc_srce;
                    assign flushe = (lwstall | pc_srce);
                    assign forwardAE = (((rs1e == rdm) & regwritem) & (rs1e != 0)) ? 2'b10 : (((rs1e == rdw) & regwritew) & (rs1e != 0)) ? 2'b01 : 2'b00;
                    assign forwardBE = (((rs2e == rdm) & regwritem) & (rs2e != 0)) ? 2'b10 : (((rs2e == rdw) & regwritew) & (rs2e != 0)) ? 2'b01 : 2'b00;

endmodule

module datapath_for_pipeline_fpu (
                input logic clk,
                input logic rstn,
                input logic [1:0] result_srcd,
                input logic memwrited,
                input logic alu_srcd,
                input logic regwrited,
                input logic [1:0] imm_srcd,
                input logic [4:0] alu_contd,
                input logic jumpd,
                input logic branchd,
                output logic [31:0] pcf,
                input logic [31:0] instrf,
                output logic [31:0] instrd,
                output logic [31:0] alu_resultm,
                output logic [31:0] writedatam,
                input logic [31:0] readdatam,
                output logic memwritem,
                output logic result_srce0,
                output logic [4:0] rdm,
                output logic [4:0] rdw,
                output logic regwritem,
                output logic regwritew,
                output logic [4:0] rde,
                output logic [4:0] rs1e,
                output logic [4:0] rs2e,
                output logic [4:0] rs1d,
                output logic [4:0] rs2d,
                output logic pc_srce,
                input logic stallf,
                input logic stalld,
                input logic stalle,
                input logic stallm,
                input logic stallw, 
                input logic flushd,
                input logic flushe,
                input logic [1:0] forwardAE,
                input logic [1:0] forwardBE,
                input logic alu_fpu_sig_d,
                output logic alu_fpu_sig_e,
                output logic alu_fpu_sig_m,
                input logic pc_select_d,
                input logic [1:0] size_cont_d,
                input logic [31:0] input_tmp,
                output logic [1:0] result_srcm,
                input logic input_sig,
                input logic [9:0] fpu_stall,
                output logic fpu_stall_1,
                output logic fpu_stall_2,
                output logic fpu_stall_3,
                output logic fpu_stall_4,
                output logic fpu_stall_5,
                output logic fpu_stall_6,
                output logic fpu_stall_7,
                output logic fpu_stall_8,
                output logic fpu_stall_9,
                output logic fpu_stall_10);
           //fetchstage
           logic [31:0] pc_next;
           logic [31:0] pc_plus4f;
           logic [31:0] pctare;
           logic [31:0] pcd;
           logic [31:0] pc_plus4d;
           flip_en_clr d1(clk,rstn,~(stalld),flushd,instrf,instrd);
           
           flip_en pc (clk,rstn,~(stallf),pc_next,pcf);
           pc_plus_4 plus4(pcf,pc_plus4f);
           
           flip_en_clr d2(clk,rstn,~(stalld),flushd,pcf,pcd);
           flip_en_clr d3 (clk,rstn,~(stalld),flushd,pc_plus4f,pc_plus4d);
           mux2_1 pc_mux (pc_plus4f,pctare,pc_srce,pc_next);
           //assign pc_next = pc_plus4f;
           //decodestage
           logic [31:0] rd1;
           logic [31:0] rd2;
           logic [31:0] rd1e;
           logic [31:0] rd2e;
           logic [31:0] pce;
           logic [31:0] imm_extd;
           logic [31:0] imm_exte;
           
           logic [31:0] pc_plus4e;
           logic  alu_srce;
           logic [4:0] alu_conte;
           logic branche;
           logic jumpe;
           logic memwritee;
           logic [1:0] result_srce;
           logic regwritee;
           logic pc_select_e;
           logic [1:0] size_cont_e;
           logic alu_fpu_sig_w;
           logic [31:0] resultw;
           logic [9:0] stall_1;
           logic [9:0] stall_2;
           logic [9:0] stall_3;
           logic [9:0] stall_4;
           logic [9:0] stall_5;
           logic [9:0] stall_6;
           logic [9:0] stall_7;
           logic [9:0] stall_8;
           logic [9:0] stall_9;
           logic [9:0] stall_10;
           flip #(.N(10)) stall1(clk,rstn,fpu_stall,stall_1);
           flip #(.N(10)) stall2(clk,rstn,stall_1,stall_2);
           flip #(.N(10)) stall3(clk,rstn,stall_2,stall_3);
           flip #(.N(10)) stall4(clk,rstn,stall_3,stall_4);
           flip #(.N(10)) stall5(clk,rstn,stall_4,stall_5);
           flip #(.N(10)) stall6(clk,rstn,stall_5,stall_6);
           flip #(.N(10)) stall7(clk,rstn,stall_6,stall_7);
           flip #(.N(10)) stall8(clk,rstn,stall_7,stall_8);
           flip #(.N(10)) stall9(clk,rstn,stall_8,stall_9);
           flip #(.N(10)) stall10(clk,rstn,stall_9,stall_10);
           assign fpu_stall_1 = stall_1[0];
           assign fpu_stall_2 = stall_2[1];
           assign fpu_stall_3 = stall_3[2];
           assign fpu_stall_4 = stall_4[3];
           assign fpu_stall_5 = stall_5[4];
           assign fpu_stall_6 = stall_6[5];
           assign fpu_stall_7 = stall_7[6];
           assign fpu_stall_8 = stall_8[7];
           assign fpu_stall_9 = stall_9[8];
           assign fpu_stall_10 = stall_10[9];
           
           register_file file_reg(clk,rstn,regwritew,instrd[19:15],instrd[24:20],rdw,resultw,rd1,rd2,alu_fpu_sig_w,alu_fpu_sig_d);
           flip_en_clr e1 (clk,rstn,~(stalle),flushe,rd1,rd1e);
           flip_en_clr e0 (clk,rstn,~(stalle),flushe,rd2,rd2e);
           flip_en_clr e3 (clk,rstn,~(stalle),flushe,pcd,pce);
           flip_en_clr #(.N(5)) e4 (clk,rstn,~(stalle),flushe,instrd[19:15],rs1e);
           flip_en_clr #(.N(5)) e5 (clk,rstn,~(stalle),flushe,instrd[24:20],rs2e);
           flip_en_clr #(.N(5))e6 (clk,rstn,~(stalle),flushe,instrd[11:7],rde);
           flip_en_clr e7 (clk,rstn,~(stalle),flushe,imm_extd,imm_exte);
           flip_en_clr e8 (clk,rstn,~(stalle),flushe,pc_plus4d,pc_plus4e);
           flip_en_clr_1 e9 (clk,rstn,~(stalle),flushe,alu_srcd,alu_srce);
           flip_en_clr #(.N(5))e10 (clk,rstn,~(stalle),flushe,alu_contd,alu_conte);
           flip_en_clr_1 e11 (clk,rstn,~(stalle),flushe,branchd,branche);
           flip_en_clr_1 e12 (clk,rstn,~(stalle),flushe,jumpd,jumpe);
           flip_en_clr_1 e13 (clk,rstn,~(stalle),flushe,memwrited,memwritee); 
           flip_en_clr #(.N(2)) e14 (clk,rstn,~(stalle),flushe,result_srcd,result_srce);
           flip_en_clr_1 e15 (clk,rstn,~(stalle),flushe,regwrited,regwritee);
           flip_en_clr_1 e16 (clk,rstn,~(stalle),flushe,alu_fpu_sig_d,alu_fpu_sig_e);
           flip_en_clr_1 e17 (clk,rstn,~(stalle),flushe,pc_select_d,pc_select_e);
           flip_en_clr #(.N(2)) e18 (clk,rstn,~(stalle),flushe,size_cont_d,size_cont_e);
           assign result_srce0 = result_srce[0];
          
           extend ex(instrd[31:7],imm_srcd,imm_extd);
           //execute_stage
           
           logic [31:0] srcae;
           logic [31:0] srcb;
           logic  [31:0] writedatae;
           mux3_1 opA(rd1e,resultw,alu_resultm,forwardAE,srcae);
           mux3_1 opB(rd2e,resultw,alu_resultm,forwardBE,writedatae);
           mux2_1 opB1(writedatae,imm_exte,alu_srce,srcb);
           logic zero;
           logic [31:0] alu_resulte;
           logic [31:0] pc_plus4m;
           logic [31:0] pc_e_tmp;
           //logic memwritem;
           //logic [1:0] result_srcm;
           logic [1:0] size_cont_m;
           mux2_1 jal_select(pce,srcae,pc_select_e,pc_e_tmp);//jalrは1
           logic [31:0] alu_resulte_;
           logic [31:0] alu_resulte_f;
           logic [31:0] pcm;
           logic [31:0] pcw;
           ALU alu(srcae,srcb,alu_conte,alu_resulte_,zero);
           fpu fpu_1(clk,rstn,srcae,srcb,alu_conte,alu_resulte_f);
           mux2_1 mu1(alu_resulte_,alu_resulte_f,alu_fpu_sig_e,alu_resulte);
           adder pc_add(pc_e_tmp,imm_exte,pctare);
           assign pc_srce =  ((zero && branche) || jumpe);
           flip_en m1 (clk,rstn,~(stallm),alu_resulte,alu_resultm);
           flip_en m2(clk,rstn,~(stallm),writedatae,writedatam);
           flip_en #(.N(5))m3(clk,rstn,~(stallm),rde,rdm);
           flip_en m4 (clk,rstn,~(stallm),pc_plus4e,pc_plus4m);
           flip_en #(.N(1))m5(clk,rstn,~(stallm),memwritee,memwritem);
           flip_en #(.N(2))m6 (clk,rstn,~(stallm),result_srce,result_srcm);
           flip_en #(.N(1))m7 (clk,rstn,~(stallm),regwritee,regwritem);
           flip_en #(.N(1))m8 (clk,rstn,~(stallm),alu_fpu_sig_e,alu_fpu_sig_m);
           flip_en #(.N(2))m9 (clk,rstn,~(stallm),size_cont_e,size_cont_m);
           flip_en m10 (clk,rstn,~(stallm),pce,pcm);
           //memory_stage
           logic [31:0] read_data;
           logic [31:0]alu_resultw;
           logic [31:0] readdataw;
           logic [1:0] result_srcw;
           logic [31:0] pc_plus4w;
           logic [1:0] size_cont_w;
           logic [31:0] readdataw_tmp;
           flip w1 (clk,rstn,alu_resultm,alu_resultw);
           flip w2 (clk,rstn,readdatam,read_data);
           flip #(.N(1))w3 (clk,rstn,regwritem,regwritew);
           flip #(.N(2))w4 (clk,rstn,result_srcm,result_srcw);
           flip #(.N(5))w5 (clk,rstn,rdm,rdw);
           flip #(.N(2))w7 (clk,rstn,size_cont_m,size_cont_w);
           flip w6 (clk,rstn,pc_plus4m,pc_plus4w);
           flip #(.N(1)) w8 (clk,rstn,alu_fpu_sig_m,alu_fpu_sig_w);
           flip w9 (clk,rstn,pcm,pcw);
           //writeback_stage
           logic [31:0] input_data;
           //logic [31:0] read_tmp;
           //assign read_tmp = (input_sig) ? input_tmp : readdataw_tmp;
           //flip data(clk,rstn,read_tmp,read_data);
           assign readdataw = (size_cont_w == 2'b10) ? read_data : ((size_cont_w == 2'b01) ? {{16{read_data[15]}},read_data[15:0]} : {{24{read_data[7]}},read_data[7:0]}); 
           assign input_data = (size_cont_w == 2'b10) ? input_tmp : ((size_cont_w == 2'b01) ? {{16{input_tmp[15]}},input_tmp[15:0]} : {{24{input_tmp[7]}},input_tmp[7:0]});
           mux4_1 writeback_mux(alu_resultw,readdataw,pc_plus4w,input_data,result_srcw, resultw);
endmodule

module pileline_processor_fpu( 
      input logic clk,
      input logic rstn,
      input logic rstn_sub,
      output logic [31:0] pcf,
      input logic [31:0] instrf,
      output logic memwritem,
      output logic [31:0] alu_resultm,
      output logic [31:0] writedatam,
      input logic [31:0] readdatam,
      output logic init_sig,
      output logic output_sig,
      output logic input_sig,
      input logic [31:0] input_data,
      input logic input_valid);
      logic alu_srcd;
      logic regwrited;
      logic jumpd;
      logic [1:0] resultsrcd;
      logic [1:0] imm_srcd;
      logic [4:0] alu_contd;
      logic [31:0] instrd;
      logic [4:0] rs1e;
      logic [4:0] rs2e;
      logic [4:0] rde;
      logic pc_srce;
      logic resultsrce0;
      logic [4:0] rdm;
      logic [4:0] rdw;
      logic regwritem;
      logic regwritew;
      logic stallf;
      logic stalld;
      logic stallm;
      logic stalle;
      logic stallw;
      logic flushd;
      logic flushe;
      logic [1:0] forwardAE;
      logic [1:0] forwardBE;
      logic memwrited;
      logic branchd;
      logic alu_fpu_sig;
      logic alu_fpu_sig_d;
      logic alu_fpu_sig_f;
      logic pc_select_d;
      logic [1:0] result_srcm;
      assign output_sig =  (result_srcm == 2'b11 && memwritem); //(result_srcm == 2'b11) ? 1'b0 : ((memwritem) ?  (alu_resultm == 32'd260) : 1'b0);
      assign input_sig =  (result_srcm == 2'b11 && regwritem); //? 1'b0 : ((regwritem) ?  (alu_resultm == 32'd260) : 1'b0);
      logic input_;
      logic [9:0] fpu_stall;
      assign input_ = input_sig && (~input_valid);
      always @(posedge clk) begin
        if (~rstn) begin
                init_sig <= 1'b1;
        end
      end
      logic [1:0] size_cont_d;
     contlloer_alu_pipe c(instrd[6:0],instrd[14:12],instrd[31:25],resultsrcd,memwrited,alu_srcd,regwrited,jumpd,branchd,imm_srcd,alu_contd,alu_fpu_sig,pc_select_d,size_cont_d,fpu_stall);
     hazard_unit hu(instrd[19:15], instrd[24:20],rs1e,rs2e,rde,pc_srce,resultsrce0,
                    rdm,rdw,regwritem,regwritew,
                    stallf,stalld,stalle,stallm,stallw,flushd,flushe,
                    forwardAE,forwardBE,alu_fpu_sig_f,alu_fpu_sig_d,input_,
                    fpu_stall_1,fpu_stall_2,fpu_stall_3,fpu_stall_4,fpu_stall_5,fpu_stall_6,fpu_stall_7,fpu_stall_8,fpu_stall_9,fpu_stall_10);
     logic [4:0] tmp1,tmp2;
     datapath_for_pipeline_fpu pd_pipe(clk,rstn_sub,
                                   resultsrcd,memwrited,alu_srcd,regwrited,imm_srcd,alu_contd,jumpd,branchd,
                                   pcf,instrf,instrd,alu_resultm,writedatam,readdatam,memwritem,
                                   resultsrce0,
                                   rdm,rdw,regwritem,regwritew,rde,rs1e,rs2e,tmp1,tmp2,pc_srce,stallf,stalld,stalle,stallm,stallw,flushd,flushe,forwardAE, forwardBE,
                                   alu_fpu_sig,alu_fpu_sig_f,alu_fpu_sig_d,pc_select_d,size_cont_d,input_data,result_srcm,input_sig,fpu_stall,
                                   fpu_stall_1,fpu_stall_2,fpu_stall_3,fpu_stall_4,fpu_stall_5,fpu_stall_6,fpu_stall_7,fpu_stall_8,fpu_stall_9,fpu_stall_10);
endmodule
