class compare;
  task compare_task();
    $display("[%0t] Compare block Started...", $time);
    
    forever  @(posedge clk or negedge clk) begin
      if (rst) begin 
        #1;
        if (y == 0) begin
          $display("When rst = %0b and output y = %0d, the test is passed.", rst, y); 
        end 
      end
      else begin  
        #1;
        case (s)
          4'b0000: if (y == i[0]) $display("[%0t] When s = %b (%b%b%b%b), output y = i[0] = %0d. Test passed.", $time, s, s[3], s[2], s[1], s[0], y);
          4'b0001: if (y == i[1]) $display("[%0t] When s = %b (%b%b%b%b), output y = i[1] = %0d. Test passed.", $time, s, s[3], s[2], s[1], s[0], y);
          4'b0010: if (y == i[2]) $display("[%0t] When s = %b (%b%b%b%b), output y = i[2] = %0d. Test passed.", $time, s, s[3], s[2], s[1], s[0], y);
          4'b0011: if (y == i[3]) $display("[%0t] When s = %b (%b%b%b%b), output y = i[3] = %0d. Test passed.", $time, s, s[3], s[2], s[1], s[0], y);
          4'b0100: if (y == i[4]) $display("[%0t] When s = %b (%b%b%b%b), output y = i[4] = %0d. Test passed.", $time, s, s[3], s[2], s[1], s[0], y);
          4'b0101: if (y == i[5]) $display("[%0t] When s = %b (%b%b%b%b), output y = i[5] = %0d. Test passed.", $time, s, s[3], s[2], s[1], s[0], y);
          4'b0110: if (y == i[6]) $display("[%0t] When s = %b (%b%b%b%b), output y = i[6] = %0d. Test passed.", $time, s, s[3], s[2], s[1], s[0], y);
          4'b0111: if (y == i[7]) $display("[%0t] When s = %b (%b%b%b%b), output y = i[7] = %0d. Test passed.", $time, s, s[3], s[2], s[1], s[0], y);
          4'b1000: if (y == i[8]) $display("[%0t] When s = %b (%b%b%b%b), output y = i[8] = %0d. Test passed.", $time, s, s[3], s[2], s[1], s[0], y);
          4'b1001: if (y == i[9]) $display("[%0t] When s = %b (%b%b%b%b), output y = i[9] = %0d. Test passed.", $time, s, s[3], s[2], s[1], s[0], y);
          4'b1010: if (y == i[10]) $display("[%0t] When s = %b (%b%b%b%b), output y = i[10] = %0d. Test passed.", $time, s, s[3], s[2], s[1], s[0], y);
          4'b1011: if (y == i[11]) $display("[%0t] When s = %b (%b%b%b%b), output y = i[11] = %0d. Test passed.", $time, s, s[3], s[2], s[1], s[0], y);
          4'b1100: if (y == i[12]) $display("[%0t] When s = %b (%b%b%b%b), output y = i[12] = %0d. Test passed.", $time, s, s[3], s[2], s[1], s[0], y);
          4'b1101: if (y == i[13]) $display("[%0t] When s = %b (%b%b%b%b), output y = i[13] = %0d. Test passed.", $time, s, s[3], s[2], s[1], s[0], y);
          4'b1110: if (y == i[14]) $display("[%0t] When s = %b (%b%b%b%b), output y = i[14] = %0d. Test passed.", $time, s, s[3], s[2], s[1], s[0], y);
          4'b1111: if (y == i[15]) $display("[%0t] When s = %b (%b%b%b%b), output y = i[15] = %0d. Test passed.", $time, s, s[3], s[2], s[1], s[0], y);

        endcase
      end
    end
  endtask
endclass
