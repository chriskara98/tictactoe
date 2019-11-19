module tictacoe_tb;
  logic [8:0] myx;
  logic [8:0] myo;
  logic myerror,myfull,mywinx,mywino,mynowin;

  tictactoe
  chris
   (.x (myx),
   .o (myo),
   .error (myerror),
   .full (myfull),
   .winX (mywinx),
   .winO (mywino),
   .noWin (mynowin));
   initial begin
   myx=9'b010000111;
   myo=9'b001111000;
end
endmodule
   