parameter INPUT_LENGTH=16;
parameter SELECT_WIDTH=4;
logic clk,rst;
logic [INPUT_LENGTH-1:0][3:0] i;
logic [SELECT_WIDTH-1:0] s;
logic [3:0] y;
