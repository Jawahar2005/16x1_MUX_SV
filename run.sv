`include "files.svh"

clock_generation clk_h = new();
reset_generation rst_h = new();
stimulus stimulus_h=new();
compare compare_h=new();
reset_test reset_test_h = new();

class run;
  task run();
    fork
     clk_h.clk_gen();
      rst_h.rst_gen();
      stimulus_h.stimulus();
      compare_h.compare_task();
      reset_test_h.rst_test();
    join
  endtask
endclass
