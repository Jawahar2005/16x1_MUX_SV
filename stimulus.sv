class stimulus;
  task stimulus();
    $display("[%0t] Stimulation started...",$time);
    //repeat(20) @(posedge clk or negedge clk) begin
    repeat(500) #5 begin
    
      s=$urandom_range(0,15);
      i[0]  = $urandom_range(0,7);
      i[1]  = $urandom_range(0,7);
      i[2]  = $urandom_range(0,7);
      i[3]  = $urandom_range(0,7);
      i[4]  = $urandom_range(0,7);
      i[5]  = $urandom_range(0,7);
      i[6]  = $urandom_range(0,7);
      i[7]  = $urandom_range(0,7);
      i[8]  = $urandom_range(0,7);
      i[9]  = $urandom_range(0,7);
      i[10] = $urandom_range(0,7);
      i[11] = $urandom_range(0,7);
      i[12] = $urandom_range(0,7);
      i[13] = $urandom_range(0,7);
      i[14] = $urandom_range(0,7);
      i[15] = $urandom_range(0,7);
      
     
      //s[0]=$urandom_range(0,1);
      //s[1]=$urandom_range(0,1);
      //s[2]=$urandom_range(0,1);
    end   
    $display("[%0t] Stimulus ends.", $time); $finish;
  
  endtask
endclass
  
