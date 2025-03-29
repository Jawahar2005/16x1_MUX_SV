class reset_test;
  task rst_test();
    repeat(5) @(posedge clk) begin
      #100 rst = 1'b1;
      $display("Tim %0t: Reset Test Block Started", $time);
      #200 rst = 1'b0;
      $display("Time %0t: Reset Test Ended", $time);
    end
  endtask
endclass
