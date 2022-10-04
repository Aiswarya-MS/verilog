module binarytogray(b0,b1,b2,b3,g0,g1,g2,g3);
input b0,b1,b2,b3;
output g0,g1,g2,g3;
assign g3=b3;
xor (g2,b3,b2),(g1,b2,b1),(g0,b1,b0);
endmodule
