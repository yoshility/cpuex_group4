`default_nettype wire
module  memory_order
 (input logic [31:0] a,
  output logic [31:0] rd,
  input logic [31:0] pro_data,
  input logic [31:0] pro_addr, 
  input logic memwrite,
  input logic clk,
  input logic rstn);
  (* ram_style = "block"*) reg [31:0] RAM [23000:0];
  initial begin
    $readmemb("minrt_0214.mem",RAM);
   end
  /*always_ff @(posedge clk) begin
        if(memwrite) begin
            RAM[pro_addr[31:2]-1] <= pro_data;
        end
  end*/
  always_comb /*@(posedge clk)*/ begin
    if (~rstn) begin
      rd <= 32'd0;
    end
    else begin
      rd <= RAM[a[31:2]];
    end
  end
endmodule

module virtual_data_memory 
      (input logic clk,
      input logic rstn,
      input logic we,
      input logic [31:0] a,
      input logic [31:0] wd,
      output logic [31:0] rd,
      output logic data_memory_valid);
      (*ram_style = "BLOCK"*) reg [31:0] RAM [4000000:0];//[4094000:0];
      always_comb /*@(posedge clk)*/ begin
        if (we) begin 
          RAM[a[31:2]] <= wd;
        end 
      end
      always_comb /*@(posedge clk)*/ begin
        if (~rstn) begin
          rd <= 32'd0;
        end
        else if(~we) begin
          rd <= RAM[a[31:2]];
        end
      end
      logic [3:0] counter;
      always_ff @(posedge clk) begin
        if (~rstn) begin
            counter <= 4'b0;
        end
        else if (counter == 4'b1111) begin
            counter <= 4'b0;
        end
        else begin 
          counter <= counter + 4'b1;
        end
        data_memory_valid <= (counter > 4'b0111);
      end
endmodule

module data_memory 
      (input logic clk,
      input logic rstn,
      input logic we,
      input logic [31:0] a,
      input logic [31:0] wd,
      output logic [31:0] rd,
      output logic data_valid);
      (*ram_style = "BLOCK"*)logic [31:0] RAM [4000000:0];
      (*ram_style = "BLOCK"*)logic [31:0] RAM1 [63:0];
      initial begin
        $readmemb("minrt_bin.mem",RAM1);
        end
      always_ff @(posedge clk) begin
        if (we && (a >= 32'd256)) begin 
          RAM[a[23:2]] <= wd;
         end
      end
      always_ff @(posedge clk) begin
        if (a >= 32'd256) begin 
          rd <= RAM[a[27:2]];
         end
         else begin
          rd <= RAM1[a[27:2]];
        end
        
      end
      assign data_valid = 1'b0;
endmodule