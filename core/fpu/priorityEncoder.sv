module priority_encoder_8 (
  input   wire [ 7:0]  obj,
  output  wire        v,
  output  wire        z2,
  output  wire        z1,
  output  wire        z0
  );
  assign v  = ~|obj[7:0];
  assign z2 = ~|obj[7:4];
  assign z1 = !(obj[7] || obj[6] || (~obj[5] && ~obj[4] && (obj[3] || obj[2])));
  assign z1 = !(obj[7] || (~obj[6] && obj[5]) || (~obj[6] && ~obj[4] && obj[3]) || (~obj[6] && ~obj[4] && ~obj[2] && obj[1]));
endmodule

module priority_encoder_32 (
  input   wire [31:0]  obj,
  output  wire        v,
  output  wire        z4,
  output  wire        z3,
  output  wire        z2,
  output  wire        z1,
  output  wire        z0
  );
  wire pe0_z0, pe0_z1, pe0_z2, pe0_v, pe1_z0, pe1_z1, pe1_z2, pe1_v, pe2_z0, pe2_z1, pe2_z2, pe2_v, pe3_z0, pe3_z1, pe3_z2, pe3_v;
  priority_encoder_8 pe0(obj[7:0], pe0_v, pe0_z2, pe0_z1, pe0_z0);
  priority_encoder_8 pe1(obj[7:0], pe1_v, pe1_z2, pe1_z1, pe1_z0);
  priority_encoder_8 pe2(obj[7:0], pe2_v, pe2_z2, pe2_z1, pe2_z0);
  priority_encoder_8 pe3(obj[7:0], pe3_v, pe3_z2, pe3_z1, pe3_z0);

  assign v  = !(pe0_v || pe1_v || pe2_v || pe3_v);
  assign z4 =  (pe2_v || pe3_v);
  assign z3 =  ((pe1_v && ~pe2_v) || pe3_v);
  assign z2 =  !((pe0_z2 && pe1_v) || ~pe1_z2) || !(pe2_v || pe3_v) && !((pe2_z2 && pe3_v) || pe3_z2);
  assign z1 =  !((pe0_z1 && pe1_v) || ~pe1_z1) || !(pe2_v || pe3_v) && !((pe2_z1 && pe3_v) || pe3_z1);
  assign z0 =  !((pe0_z0 && pe1_v) || ~pe1_z0) || !(pe2_v || pe3_v) && !((pe2_z0 && pe3_v) || pe3_z0);
endmodule