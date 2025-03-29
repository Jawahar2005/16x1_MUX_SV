class clock_generation;
  task clk_gen();
    $display("[%0t] Clock generation begins...",$time);
    forever #5 clk = ~clk;
    $display("[%0t]Clock Generation ends",$time);
  endtask
endclass
