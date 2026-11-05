module all_gates(
  input a,b,
  output and_out,
  output or_out,
  output not_a,
  output nand_out,
  output nor_out,
  output xor_out,
  output xnor_out
);
  assign and_out = a & b;
  assign or_out = a | b;
  assign not_a = ~a;
  assign nand_out = ~(a & b);
  assign nor_out = ~(a | b);
  assign xor_out = a ^ b;
  assign xnor_out = ~(a ^ b);
endmodule
  
  
