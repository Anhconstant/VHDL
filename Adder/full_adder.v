// include  
// 




module full_adder(input a, input b, input cin, output add, output cout);
	assign add = a ^ b ^ cin;
	assign cout = ( a & b ) | ( cin & ( a ^ b ) );
endmodule

/*
module full_adder(input a, b, cin, output add, cout);
	assign add = a ^ b ^ cin;
	assign cout = ( a & b ) | ( cin & ( a ^ b ) );
endmodule
*/

/*
module full_adder( a, b, cin, add, cout);
input a,b,cin;
output add,cout;
	assign add = a ^ b ^ cin;
	assign cout = ( a & b ) | ( cin & ( a ^ b ) );
endmodule
*/
