module Mealyno_1011(w,z,clk,reset);
   input w,clk,reset;
	output reg z;
	reg [2:0]y,Y;
	parameter A =3'b000,B =3'b001,C =3'b010,D =3'b011,E =3'b100;
	
   always@(posedge clk,negedge reset)
   begin 
     if(!reset)
	     y<=A;
	  else
        y<=Y;
	end

   always@(w,y)
   begin
    case(y)
	   A:if(w)
		  begin
		   Y<=B;
		   z<=0;
			end
		   else
			begin
			 Y<=A;
			 z<=0;
			end
			 
		 B:if(w)
		   begin
		    Y<=B;
			 z<=0;
			end
			else
			begin
			 Y<=C;
			 z<=0;
			 end
			 
		
		 C:if(w)
		   begin
		    Y<=D;
			 z<=0;
			end
			else
			begin
			 Y<=A;
			 z<=0;
			 end
			 
		D :if(w)
		    begin
		    Y<=A;
			 z<=1;
			end
			else
			begin
			 Y<=C;
			 z<=0;
			 end
			 
			 default:begin 
			 Y<=2'bxx;
			 z<=0;
			 end
	  
	 endcase
	end
endmodule
