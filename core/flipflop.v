`default_nettype none
//with clr
module flip_en_clr_1
   (input wire clk,
    input wire rstn,
    input wire enable,
    input wire clr,
    input wire x,
    output wire y);
    reg tmp;
    assign y = tmp ;
      always @(posedge clk)
        if (~rstn || clr) begin
          tmp <= 0;
        end else if (enable)begin 
          tmp <= x;
        end
        /*if (clr) begin
          tmp <= 0;
        end*/
endmodule
module flip_clr_1
   (input wire clk,
    input wire rstn,
    input wire clr,
    input wire x,
    output wire y);
    reg tmp;
    assign y = tmp ;
      always @(posedge clk)
        if (~rstn || clr) begin
          tmp <= 0;
        end else begin 
          tmp <= x;
        end
endmodule

module flip_clr_2
   (input wire clk,
    input wire rstn,
    input wire clr,
    input wire [1:0] x,
    output wire [1:0] y);
    reg [1:0] tmp;
    assign y = tmp;
      always @(posedge clk)
        if (~rstn || clr) begin
          tmp <= 0;
        end else begin 
          tmp <= x;
        end
endmodule

module flip_clr #(parameter N = 32)
           (input wire clk,input wire rstn,
            input wire clr,input wire [N-1:0] x,
           output wire [N-1:0] y);
      reg [N-1:0] tmp;
      assign y = tmp;
      always @(posedge clk) begin
        if (~rstn || clr) begin
          tmp <= 0;
        end 
        else begin 
          tmp <= x;
        end
      end
endmodule

//without en and clr
module flip #(parameter N = 32)
         (input wire clk,
          input wire rstn,
          input wire [N-1:0] x,
          output wire [N-1:0] y);
      reg [N-1:0] tmp;
      assign y = tmp;
      always @(posedge clk) begin
        if (~rstn) begin
          tmp <= 0;
        end else begin
        tmp <= x;
        end
      end
endmodule

//flip with enable
module flip_en #(parameter N = 32)
               (input wire clk,
                input wire rstn,
                input wire enable,
                input wire [N-1:0] x,
                output wire [N-1:0] y);
                reg [N-1:0] tmp;
                assign y = tmp;
                always @(posedge clk) begin
                  if (~rstn) begin
                    tmp <= 0;
                  end else if (enable) begin
                    tmp <= x;
                  end
                end
endmodule

module flip_en_clr #(parameter N = 32)
               (input wire clk,
                input wire rstn,
                input wire enable,
                input wire clr,
                input wire [N-1:0] x,
                output wire [N-1:0] y);
                reg [N-1:0] tmp;
                assign y = tmp;
                always @(posedge clk) begin
                  if (~rstn) begin
                    tmp <= 0;
                  end
                  else if(enable) begin
                    tmp <= x;
                  end
                  if (clr) begin
          tmp <= 0;
        end
                end
endmodule