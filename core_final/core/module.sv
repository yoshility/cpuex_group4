`default_nettype wire
`define RGW_size 2 
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

module pc_plus_4 (input logic [31:0] pc,
        output logic [31:0] pc_ne);
        assign pc_ne = pc + 4;
endmodule

module extend
       (input logic [31:7] instr,
       input logic [2:0] immsrc,
       output logic [31:0] imm);
       always_comb 
        case(immsrc)
                3'b000 : imm = {{20{instr[31]}},instr[31:20]};
                3'b001 : imm = {{20{instr[31]}},instr[31:25],instr[11:7]};
                3'b010 : imm = {{20{instr[31]}},instr[7],instr[30:25],instr[11:8],1'b0};
                3'b011 : imm = {{12{instr[31]}},instr[19:12],instr[20],instr[30:21],1'b0};
                3'b100 : imm = {instr[31:12],12'b0};
                default : imm = 32'bx;
        endcase
endmodule

module register_file (input logic clk,
                      input logic rstn,
                      input logic [`RGW_size-1:0] regwrite,
                      input logic[4:0] a1,
                      input logic [4:0] a2,
                      input logic [4:0] a3,
                      input logic[31:0] wd,
                      output  logic [31:0] rd1,
                      output logic [31:0] rd2,
                      input logic [1:0] source_reg_src,
                      input logic des_reg_src);
                      (*ram_style = "block"*) logic [31:0] rf_alu [31:0];//for alu register
                      (*ram_style = "BLOCK"*) logic [31:0] rf_fpu [31:0];//for fpu register
                      always_ff @(negedge clk) begin
                        rf_alu[5'b00000] <= 32'd0;
                        if (~rstn) begin 
                                rf_alu[5'd1] <= 32'h401;
                                //rf_alu[5'd6] <= 32'h00800000;//32'b00000000000000000000000100000000;
                                /*rf_alu[5'd10] <= 32'd137;
                                
                                rf_fpu[5'd10] <= 32'h40800002;//4.000001 .2364 2815.4442536;
                                rf_fpu[5'd11] <= 32'h4075f7e8;//3.843256 2819.28759765625*/
                                
                                rf_fpu[5'b0] <= 32'b0;
                        end else if (regwrite[0]) begin
                                if (des_reg_src) begin
                                        rf_fpu[a3] <= wd;
                                end
                                else begin
                                        rf_alu[a3] <= wd;
                                end
                        end
                      end
                      assign rd1 = (source_reg_src[0] == 1'b0) ? ((a1 != 0) ? rf_alu[a1] : 0) : rf_fpu[a1];
                      assign rd2 = (source_reg_src[1] == 1'b0) ? ((a2 != 0) ? rf_alu[a2] : 0) : rf_fpu[a2];
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
module mux_pc (input logic [31:0] pc_plus4f,
               input logic [31:0] pctare,
               input logic [31:0]jump_jal_pc,
               input logic [31:0] branch_pc,
               input logic [2:0] mux_pc_src,
               output logic [31:0]pc_next);
                always_comb begin
                  if (mux_pc_src[0]) begin
                    pc_next <= pctare;
                  end
                  else if (mux_pc_src[1]) begin
                    pc_next <= jump_jal_pc;
                  end 
                  else if (mux_pc_src[2]) begin
                    pc_next <= branch_pc;
                  end
                  else begin
                    pc_next <= pc_plus4f;
                  end
                end 
endmodule
module hazard_count_controll (
                    input logic [3:0] stall_count,
                    input logic clk,
                    input logic rstn,
                    output logic stall);
                    logic [3:0] count;
                    logic [1:0] state;
                    always @(posedge clk) begin
                       if (~rstn) begin
                        count <= 4'b0;
                        state <= 2'b0;
                        stall <= 1'b0;
                       end
                       else begin
                        if (stall_count > 4'b0 && state == 2'b0) begin
                            count <= stall_count;
                            state <= 2'b01;
                            stall <= 1'b1;
                        end
                        if (state == 2'b01 && count > 2'b01) begin
                            stall <= 1'b1;
                            count <= count - 1;
                        end
                        if (state == 2'b01 && count == 2'b1) begin
                            stall <= 1'b0;
                            state <= 2'b00;
                         end
                        end
                    end
endmodule
module hazard_unit (input logic [4:0] rs1d,
                    input logic [4:0] rs2d,
                    input logic [4:0] rs1e,
                    input logic [4:0] rs2e,
                    input logic [4:0] rde,
                    input logic pc_srce,
                    input logic [1:0] result_srce,
                    input logic [1:0] result_srcm,
                    input logic [4:0] rdm,
                    input logic [4:0] rdw,
                    input logic [`RGW_size-1:0] regwritem,
                    input logic [`RGW_size-1:0] regwritew,
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
                    input logic stall,//for fpu_stall
                    input logic lw_stall,
                    input logic rd_reg_src_e,
                    input logic rd_reg_src_m,
                    input logic rd_reg_src_w,
                    input logic [1:0] source_reg_src_d,
                    input logic [1:0] source_reg_src_e,
                    input logic output_stall);
                    logic lwstall;
                    logic sw;
                    assign sw = (result_srcm == 2'b01);
                    assign lwstall = (result_srce == 2'b01) && ((rs1d == rde) || (rs2d == rde));
                    assign stallf =  stall|| input_valid || lw_stall || lwstall || output_stall;
                    assign stalld = stall || input_valid || lw_stall || lwstall || output_stall;
                    assign stalle = stall || input_valid || lw_stall || output_stall;
                    assign stallm = input_valid || lw_stall || output_stall ;
                    assign stallw = input_valid ||lw_stall || output_stall;
                    assign flushd = pc_srce;
                    assign flushe = (lw_stall || output_stall) ? 1'b0 : lwstall || pc_srce;
                    
                    assign forwardBE = (source_reg_src_e[1]) ? 
                                       ((((rs2e == rdm) & regwritem) & (source_reg_src_e[1] == rd_reg_src_m)) ?  
                                       ((result_srcm == 2'b10) ? 2'b11 : 2'b10)  : (((rs2e == rdw) & regwritew) & (source_reg_src_e[1] == rd_reg_src_w)) ? 2'b01 : 2'b00) : 
                                       ((((rs2e == rdm) & regwritem) & (rs2e != 0) & (source_reg_src_e[1] == rd_reg_src_m)) ? ((result_srcm == 2'b10) ? 2'b11 : 2'b10)  : (((rs2e == rdw) & regwritew) & (rs2e != 0) & (source_reg_src_e[1] == rd_reg_src_w)) ? 2'b01 : 2'b00);
                    
                    
                    assign forwardAE = (source_reg_src_e[0]) ? 
                                        ((((rs1e == rdm) & regwritem) & (source_reg_src_e[0] == rd_reg_src_m)) ? 
                                        ((result_srcm == 2'b10) ? 2'b11 : 2'b10)  : (((rs1e == rdw) & regwritew) & (source_reg_src_e[0] == rd_reg_src_w)) ? 2'b01 : 2'b00): 
                                        ((((rs1e == rdm) & regwritem) & (rs1e != 0) & (source_reg_src_e[0] == rd_reg_src_m)) ? ((result_srcm == 2'b10) ? 2'b11 : 2'b10)  : (((rs1e == rdw) & regwritew) & (rs1e != 0) & (source_reg_src_e[0] == rd_reg_src_w)) ? 2'b01 : 2'b00);
endmodule
module jal_module (input logic clk,input logic rstn,input logic [31:0] instrf,output logic [31:0] jump_jal_pc,output logic jump_jal,input [31:0] pcf);
              always_comb begin
                if (~rstn) begin
                  jump_jal_pc = pcf;
                  jump_jal = 1'b0;
                end
                else begin
                    case(instrf[6:0])
                    7'b1101111 : jump_jal_pc = pcf + {{12{instrf[31]}},instrf[19:12],instrf[20],instrf[30:21],1'b0};
                    default : jump_jal_pc = pcf + 4;
                    endcase
                    case(instrf[6:0])
                    7'b1101111 : jump_jal = 1'b1;
                    default : jump_jal = 1'b0;
                    endcase
              end
              end
endmodule

module branch_predict (input logic rstn,input logic [31:0] instrf,input logic [2:0] branch_result, output logic predict,input logic [31:0] pcf,output logic [31:0] branch_pc);

            typedef enum {strong_untaken,weak_untaken,weak_taken,strong_taken} finite_state;
            wire result = branch_result[2] && branch_result[1];
            finite_state state;
            logic out;
            always_comb begin
              if(~rstn) begin
                state = strong_taken;
              end
              else if(branch_result[2]) begin 
                  case(state)
                    strong_untaken : state = (result) ? weak_untaken : strong_untaken;
                    weak_untaken : state = (result) ? weak_taken : strong_untaken;
                    weak_taken : state = (result) ? strong_taken : weak_untaken;
                    strong_taken : state = (result) ? strong_taken : weak_taken;
                    default : state = weak_taken;
                  endcase
              end
              case(state)
                    strong_untaken : out = 1'b0; 
                    weak_untaken : out = 1'b0;
                    weak_taken : out = 1'b1;
                    strong_taken : out = 1'b1;
                    default : out = 1'b0;
              endcase
            end
            assign branch_pc = pcf +  {{20{instrf[31]}},instrf[7],instrf[30:25],instrf[11:8],1'b0};
            assign predict = (instrf[6:0] ==  7'b1100011) && out; 
endmodule

module datapath_for_pipeline_fpu (
                input logic clk,
                input logic rstn,
                input logic [1:0] result_srcd,
                input logic memwrited,
                input logic alu_srcd,
                input logic [`RGW_size-1:0] regwrited,
                input logic [2:0] imm_srcd,
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
                output logic [1:0] result_srce,
                output logic [4:0] rdm,
                output logic [4:0] rdw,
                output logic [`RGW_size-1:0] regwritem,
                output logic [`RGW_size-1:0] regwritew,
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
                output logic input_sig,
                input logic [3:0] fpu_stall,
                output logic stall,
                input logic [31:0] first_pc,
                input logic [1:0] source_reg_src,
                input logic rd_reg_src,
                output logic rd_reg_src_e,
                output logic rd_reg_src_m,
                output logic rd_reg_src_w,
                output logic [1:0] source_reg_src_e,
                input logic exec_src,
                output logic output_src,
                output logic [31:0] pcw);
           
           //fetchstage
           logic [31:0] pc_next;
           logic [31:0] pc_plus4f;
           logic [31:0] pctare;
           logic [31:0] pcd;
           logic [31:0] pc_plus4d;
           logic [31:0] jump_jal_pc;
           logic [31:0] jump_pc;
           jal_module jal(clk,rstn,instrf,jump_jal_pc,jump_jal,pcf);
           flip_en_clr d1(clk,rstn,~(stalld),flushd,instrf,instrd);
           logic [31:0] inst_count;
           always @(posedge clk) begin
            if (~rstn) begin
                inst_count <= 32'd0;
            end
            else if (~stallf) begin
                inst_count <= inst_count + 32'd1;
            end
          end
          logic [31:0] branch_pc;
          logic predict_f;
          logic predict_d;
          logic predict_e;
          logic [2:0] branch_result_e;
          
           flip_en_pc pc (clk,rstn,(~(stallf) || flushd),pc_next,pcf,first_pc);
           pc_plus_4 plus4(pcf,pc_plus4f);
           flip_en_clr d2(clk,rstn,~(stalld),flushd,pcf,pcd);
           flip_en_clr d3 (clk,rstn,~(stalld),flushd,pc_plus4f,pc_plus4d);
           flip_en_clr_1 d4 (clk,rstn,~(stalld),flushd,predict_f,predict_d);
           branch_predict predioctor (rstn,instrf,branch_result_e,predict_f,pcf,branch_pc);
           mux_pc pc_mux (pc_plus4f,pctare,jump_jal_pc,branch_pc,{predict_f,jump_jal,pc_srce},pc_next);
           
           
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
           //logic [1:0] result_srce;
           logic [`RGW_size-1:0] regwritee;
           logic pc_select_e;
           logic [1:0] size_cont_e;
           logic alu_fpu_sig_w;
           logic imm_srce2;
           logic [31:0] resultw;
           //logic [3:0] stall_1;
           //logic stall;
           //flip #(.N(10)) stall1(clk,rstn,fpu_stall,stall_1);
           hazard_count_controll hcc(fpu_stall,clk,rstn,stall);
         
           logic alu_fpu_sig_w_;
           logic [4:0] rdw_;
           logic [31:0] resultw_;
           logic [`RGW_size-1:0] regwritew_;
           logic exec_src_e;
           //logic rd_reg_src_w;
           //logic [1:0] source_reg_src_e;
           register_file file_reg(clk,rstn,regwritew,instrd[19:15],instrd[24:20],rdw,resultw,rd1,rd2,source_reg_src,rd_reg_src_w);
           flip_en_clr #(.N(2)) e00 (clk,rstn,~(stalle),flushe,source_reg_src,source_reg_src_e);// e00 
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
           flip_en_clr #(.N(2)) e15 (clk,rstn,~(stalle),flushe,regwrited,regwritee);
           flip_en_clr_1 e16 (clk,rstn,~(stalle),flushe,alu_fpu_sig_d,alu_fpu_sig_e);
           flip_en_clr_1 e17 (clk,rstn,~(stalle),flushe,pc_select_d,pc_select_e);
           flip_en_clr #(.N(2)) e18 (clk,rstn,~(stalle),flushe,size_cont_d,size_cont_e);
           flip_en_clr_1 e19 (clk,rstn,~(stalle),flushe,imm_srcd[2],imm_srce2); 
           flip_en_clr_1 e21 (clk,rstn,~(stalle),flushe,exec_src,exec_src_e);
           flip_en_clr_1 e22 (clk,rstn,~(stalle),flushe,predict_d,predict_e);
           assign result_srce0 = result_srce[0];
           logic rd_reg_src_1;
           flip_en_clr #(.N(1)) e20 (clk,rstn,~(stalle),flushe,rd_reg_src,rd_reg_src_e);
           extend ex(instrd[31:7],imm_srcd,imm_extd);
           logic [31:0] pc_plus4m;
           //execute_stage
           logic [31:0] srcae;
           logic [31:0] srcb;
           logic  [31:0] writedatae;
           mux3_1 opA(rd1e,resultw,alu_resultm,forwardAE,srcae);
           mux4_1 opB(rd2e,resultw,alu_resultm,pc_plus4m,forwardBE,writedatae);
           mux2_1 opB1(writedatae,imm_exte,alu_srce,srcb);
           logic zero;
           logic [31:0] alu_resulte;
           
           logic [31:0] pc_e_tmp;
           logic [1:0] size_cont_m;
           mux2_1 jal_select(pce,srcae,pc_select_e,pc_e_tmp);
           logic [31:0] alu_resulte_;
           logic [31:0] alu_resulte_f;
           logic [31:0] pcm;
           //logic [31:0] pcw;
           //logic [1:0] result_srcm;
           ALU alu(srcae,srcb,alu_conte,alu_resulte_,zero);
           fpu fpu_1(clk,rstn,srcae,srcb,alu_conte,alu_resulte_f);
           logic result_src_tmp;
           mux3_1 mu1(alu_resulte_,alu_resulte_f,imm_exte,{imm_srce2,exec_src_e},alu_resulte);
           logic [31:0] pc_target_tmp;
           adder pc_add(pc_e_tmp,imm_exte,pc_target_tmp);
           assign pctare = (jumpe) ? pc_target_tmp : (zero && branche) ? ((predict_e) ? pc_plus4e : pc_target_tmp) : pc_plus4e;//((predict_e) ? pc_plus4e : pc_target_tmp); 
           assign pc_srce =  (((zero && branche) !== predict_e) || jumpe);
           assign branch_result_e = {branche,zero,predict_e};
           flip_en m1 (clk,rstn,~(stallm),alu_resulte,alu_resultm);
           flip_en m2(clk,rstn,~(stallm),writedatae,writedatam);
           flip_en #(.N(5))m3(clk,rstn,~(stallm),rde,rdm);
           flip_en m4 (clk,rstn,~(stallm),pc_plus4e,pc_plus4m);
           flip_en #(.N(1))m5(clk,rstn,~(stallm),memwritee,memwritem);
           flip_en #(.N(2))m6 (clk,rstn,~(stallm),result_srce,result_srcm);
           flip_en #(.N(2))m7 (clk,rstn,~(stallm),regwritee,regwritem);
           flip_en #(.N(1))m8 (clk,rstn,~(stallm),alu_fpu_sig_e,alu_fpu_sig_m);
           flip_en #(.N(2))m9 (clk,rstn,~(stallm),size_cont_e,size_cont_m);
           flip_en m10 (clk,rstn,~(stallm),pce,pcm);
           //logic rd_reg_src_m;
           flip_en #(.N(1)) m11 (clk,rstn,~(stallm),rd_reg_src_e,rd_reg_src_m);
           assign output_src = (size_cont_m == 2'b10) ? 1'b1 : 1'b0;//output 4byte or 1byte
           //memory_stage
           logic [31:0] read_data;
           logic [31:0]alu_resultw;
           logic [31:0] readdataw;
           logic [1:0] result_srcw;
           logic [31:0] pc_plus4w;
           logic [1:0] size_cont_w;
           logic [31:0] readdataw_tmp;
           flip_en w1 (clk,rstn,~(stallw),alu_resultm,alu_resultw);
           flip_en w2 (clk,rstn,~(stallw),readdatam,read_data);
           flip_en #(.N(2))w3 (clk,rstn,~(stallw),regwritem,regwritew);
           flip_en #(.N(2))w4 (clk,rstn,~(stallw),result_srcm,result_srcw);
           flip_en #(.N(5))w5 (clk,rstn,~(stallw),rdm,rdw);
           flip_en #(.N(2))w7 (clk,rstn,~(stallw),size_cont_m,size_cont_w);
           flip_en w6 (clk,rstn,~(stallw),pc_plus4m,pc_plus4w);
           flip_en #(.N(1)) w8 (clk,rstn,~(stallw),alu_fpu_sig_m,alu_fpu_sig_w);
           flip_en w9 (clk,rstn,~(stallw),pcm,pcw);
           
           flip_en #(.N(1)) w10 (clk,rstn,~(stallw),rd_reg_src_m,rd_reg_src_w);
           //writeback_stage
           
           logic [31:0] input_data;
           //assign readdataw = (size_cont_w == 2'b10) ? read_data : ((size_cont_w == 2'b01) ? {{16{read_data[15]}},read_data[15:0]} : {{24{read_data[7]}},read_data[7:0]}); 
           assign input_data = (size_cont_w == 2'b10) ? input_tmp : ((size_cont_w == 2'b01) ? {{16{input_tmp[15]}},input_tmp[15:0]} : {{24{input_tmp[7]}},input_tmp[7:0]});
           
           mux4_1 writeback_mux(alu_resultw,readdatam,pc_plus4w,input_data,result_srcw, resultw);
           /*flip #(.N(1)) w_1 (clk,rstn,alu_fpu_sig_w,alu_fpu_sig_w_);
           flip w_2 (clk,rstn,resultw,resultw_);
           flip #(.N(2)) w_3 (clk,rstn,regwritew,regwritew_);
           flip #(.N(5))w_5 (clk,rstn,rdw,rdw_);*/
           assign input_sig = (regwritem[0] && result_srcm == 2'b11) ? 1'b1 : 1'b0;            
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
      input logic input_valid,
      output logic lw_sig,
      input logic data_memory_valid,
      input logic lw_stall,
      input logic [31:0] first_pc,
      input logic output_stall,
      output logic output_src,
      output logic [31:0] pcw);      
      logic alu_srcd;
      logic [`RGW_size-1:0] regwrited;
      logic jumpd;
      logic [1:0] resultsrcd;
      logic [2:0] imm_srcd;
      logic [4:0] alu_contd;
      logic [31:0] instrd;
      logic [4:0] rs1e;
      logic [4:0] rs2e;
      logic [4:0] rde;
      logic pc_srce;
      logic [1:0] resultsrce;
      logic [4:0] rdm;
      logic [4:0] rdw;
      logic [`RGW_size-1:0] regwritem;
      logic [`RGW_size-1:0] regwritew;
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
      logic stall;
      
      assign output_sig =  (result_srcm == 2'b11 && memwritem); //(result_srcm == 2'b11) ? 1'b0 : ((memwritem) ?  (alu_resultm == 32'd260) : 1'b0);
      //assign input_sig =  (result_srcm == 2'b11 && regwritem); //? 1'b0 : ((regwritem) ?  (alu_resultm == 32'd260) : 1'b0);
      assign lw_sig = (result_srcm == 2'b01 && regwritem);
      logic input_;
      logic [3:0] fpu_stall;
      assign input_ = input_sig && (~input_valid);
      always @(posedge clk) begin
        if (~rstn) begin
                init_sig <= 1'b1;
        end
      end
      logic [1:0] size_cont_d;
      //logic [1:0] source_reg_src;
      logic rd_reg_src;
      logic rd_reg_src_e;
      logic rd_reg_src_m;
      logic rd_reg_src_w;
      logic [1:0] source_reg_src;
      logic [1:0] source_reg_src_e;
      logic exec_src;
     contlloer_alu_pipe c(instrd[6:0],instrd[14:12],instrd[31:25],resultsrcd,memwrited,alu_srcd,regwrited,jumpd,branchd,imm_srcd,alu_contd,alu_fpu_sig,pc_select_d,size_cont_d,fpu_stall,source_reg_src,rd_reg_src,exec_src);
     hazard_unit hu(instrd[19:15], instrd[24:20],rs1e,rs2e,rde,pc_srce,resultsrce,result_srcm,
                    rdm,rdw,regwritem,regwritew,
                    stallf,stalld,stalle,stallm,stallw,flushd,flushe,
                    forwardAE,forwardBE,alu_fpu_sig_f,alu_fpu_sig_d,input_valid,stall,lw_stall,
                    rd_reg_src_e,
                    rd_reg_src_m,
                    rd_reg_src_w,
                    source_reg_src,
                    source_reg_src_e,output_stall);
                    
     logic [4:0] tmp1,tmp2;
     datapath_for_pipeline_fpu pd_pipe(clk,rstn_sub,
                                   resultsrcd,memwrited,alu_srcd,regwrited,imm_srcd,alu_contd,jumpd,branchd,
                                   pcf,instrf,instrd,alu_resultm,writedatam,readdatam,memwritem,
                                   resultsrce,
                                   rdm,rdw,regwritem,regwritew,rde,rs1e,rs2e,tmp1,tmp2,pc_srce,stallf,stalld,stalle,stallm,stallw,flushd,flushe,forwardAE, forwardBE,
                                   alu_fpu_sig,alu_fpu_sig_f,alu_fpu_sig_d,pc_select_d,size_cont_d,input_data,result_srcm,input_sig,fpu_stall,stall,first_pc,source_reg_src,rd_reg_src,
                                   rd_reg_src_e,rd_reg_src_m,rd_reg_src_w,source_reg_src_e,exec_src,output_src,pcw);                                   
endmodule
