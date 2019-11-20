module tictactoe2_tb;
  logic [8:0] myx;
  logic [8:0] myo;
  logic myerror,myfull,mywinx,mywino,mynowin;

  tictactoe2
  chris
   (.x (myx),
   .o (myo),
   .error (myerror),
   .full (myfull),
   .winX (mywinx),
   .winO (mywino),
   .noWin (mynowin));
   initial begin
   myx=9'b010100100;
   myo=9'b101011011;
end
endmodule