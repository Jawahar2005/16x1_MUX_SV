// Code your testbench here
// or browse Examples
`include "run.sv"

module mux_16x1_top_tb();
    
  mux_16x1 mux_16x1_inst(
    .clk(clk),
    .rst(rst),
    .i(i),
    .s(s),
    .y(y)
  );
  
  initial begin
    clk   = 1'b1;
    rst   = 1'b1;
    i[0]  = 1'b0;
    i[1]  = 1'b0;
    i[2]  = 1'b0;
    i[3]  = 1'b0;
    i[4]  = 1'b0;
    i[5]  = 1'b0;
    i[6]  = 1'b0;
    i[7]  = 1'b0;
    i[8]  = 1'b0;
    i[9]  = 1'b0;
    i[10] = 1'b0;
    i[11] = 1'b0;
    i[12] = 1'b0;
    i[13] = 1'b0;
    i[14] = 1'b0;
    i[15] = 1'b0;
    s     = 3'b000;
  end
  
  run run_h=new();
  
  initial begin
    run_h.run();
  end
  
/*  initial begin
    $monitor("clk = %0b rst =%0b s=%000b(%b%b%b) i[0]=%0d i[1]=%0d i[2]=%0d i[3]=%0d i[4]=%0d i[5]=%0d i[6]=%0d i[7]=%0d y=%0d",clk, rst, s,s[2],s[1],s[0],i[0],i[1],i[2],i[3],i[4],i[5],i[6],i[7], y);
  end*/
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1); 
   //$dumpvars(0, clk, rst, s, s[2], s[1], s[0], i[0], i[1], i[2], i[3], i[4], i[5], i[6], i[7], y);

  end
  
endmodule
