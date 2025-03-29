class reset_generation;
  task rst_gen();
    $display("Reset Block Begins...");
    #5 rst = 1'b0;
  endtask
endclass
