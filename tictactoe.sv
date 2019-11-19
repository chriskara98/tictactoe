module tictactoe (
input logic [8:0] x,
input logic [8:0] o,
output logic error,
output logic full,
output logic winX,
output logic winO,
output logic noWin
);

always_comb 
begin 
  int i;
  for (i=0; i<9; i=i+1) begin
    if (x[i] && o[i]) begin 
      error=1;       //output error
      full=0;
      winX=0;
      winO=0;
      noWin=0;
      break;
    end
    else begin
     error=0;
    end
  end
  
  if (!error) begin
    for (i=0; i<9; i=i+1) begin    
     if (!x[i] && !o[i]) begin 
     full=0;
     break;
     end
     else begin 
       full=1;     //output full
     end
   end  
   if (x[0] == 1 && x[1] == 1 && x[2] == 1 || x[3] == 1 && x[4] == 1 && x[5] == 1 || x[6] == 1 && x[7] == 1 && x[8] == 1
        || x[0] == 1 && x[3] == 1 && x[6] == 1 || x[1] == 1 && x[4] == 1 && x[7] == 1 || x[2] == 1 && x[5] == 1 && x[8] == 1
        || x[0] == 1 && x[4] == 1 && x[8] == 1 || x[2] == 1 && x[4] == 1 && x[6] == 1) 
          winX = 1;   //output winX
        else winX=0;
          
   if (o[0] == 1 && o[1] == 1 && o[2] == 1 || o[3] == 1 && o[4] == 1 && o[5] == 1 || o[6] == 1 && o[7] == 1 && o[8] == 1
        || o[0] == 1 && o[3] == 1 && o[6] == 1 || o[1] == 1 && o[4] == 1 && o[7] == 1 || o[2] == 1 && o[5] == 1 && o[8] == 1
        || o[0] == 1 && o[4] == 1 && o[8] == 1 || o[2] == 1 && o[4] == 1 && o[6] == 1) 
          winO = 1;   //output winO
        else winO=0;
    
   if (!winX && !winO)
     noWin=1;
   else noWin=0;   //output noWin
     
  end
 end
endmodule

        
          
          
      
    
      
   
     
     

      
  
    
    
    
  
  
      
      
    
    
    
    
    
    
    
    
    
  