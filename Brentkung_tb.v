`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:43:38 07/25/2021
// Design Name:   Brentkung
// Module Name:   E:/Placements/Project/BrentKung/Brentkung_tb.v
// Project Name:  BrentKung
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Brentkung
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Brentkung_tb;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg Cin;

	// Outputs
	wire [15:0] Sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	Brentkung uut (
		.a(a), 
		.b(b), 
		.Cin(Cin), 
		.Sum(Sum), 
		.Cout(Cout)
	);

	initial begin
	$display($time, " << Starting the Simulation >>");
		// Initialize Inputs
		a = 16'd45687;
		b = 16'd8457;
		Cin = 1;

		// Wait 20 ns for global reset to finish
		#20;
		a = 16'd487;
		b = 16'd857;
		Cin = 1;

		// Wait 20 ns for global reset to finish
		#20;
		a = 16'd9587;
		b = 16'd57;
		Cin = 0;

		// Wait 20 ns for global reset to finish
		#20;
		a = 16'd7458;
		b = 16'd0;
		Cin = 1;

		// Wait 20 ns for global reset to finish
		#20;
		a = 16'd0;
		b = 16'd58;
		Cin = 0;

		// Wait 20 ns for global reset to finish
		#20;
		
		a = 16'd8752;
		b = 16'd8457;
		Cin = 1;

		// Wait 20 ns for global reset to finish
		#20;
		a = 16'd65535;
		b = 16'd1;
		Cin = 0;

		// Wait 20 ns for global reset to finish
		#20;
		
		a = 16'd2;
		b = 16'd57;
		Cin = 0;

		// Wait 20 ns for global reset to finish
		#20;
		a = 16'd2568;
		b = 16'd6584;
		Cin = 1;

		// Wait 20 ns for global reset to finish
		#20;
		a = 16'd3214;
		b = 16'd5748;
		Cin = 1;

		// Wait 20 ns for global reset to finish
		#20;
		a = 16'd12548;
		b = 16'd32587;
		Cin = 1;

		// Wait 20 ns for global reset to finish
		#20;
		a = 16'd25478;
		b = 16'd15245;
		Cin = 1;

		// Wait 20 ns for global reset to finish
		#20;
		a = 16'd3526;
		b = 16'd1235;
		Cin = 0;

		// Wait 20 ns for global reset to finish
		#20;
		a = 16'd0;
		b = 16'd0;
		Cin = 1;

		// Wait 20 ns for global reset to finish
		#20;
		a = 16'd25;
		b = 16'd125;
		Cin = 1;

		// Wait 20 ns for global reset to finish
		#20;
		a = 16'd852;
		b = 16'd8;
		Cin = 1;

		// Wait 20 ns for global reset to finish
		#20;
		a = 16'd8;
		b = 16'd8;
		Cin = 1;

		// Wait 20 ns for global reset to finish
		#20;
		a = 16'd789;
		b = 16'd87;
		Cin = 1;

		// Wait 20 ns for global reset to finish
		#20;
		a = 16'd235;
		b = 16'd123;
		Cin = 1;

		// Wait 20 ns for global reset to finish
		#20;
		a = 16'd8;
		b = 16'd7;
		Cin = 1;

		// Wait 20 ns for global reset to finish
		#20;
		a = 16'd12345;
		b = 16'd12345;
		Cin = 0;

		// Wait 20 ns for global reset to finish
		#20;
		a = 16'd2514;
		b = 16'd58499;
		Cin = 1;

		// Wait 20 ns for global reset to finish
		#20;
		a = 16'd85;
		b = 16'd7;
		Cin = 1;

		// Wait 20 ns for global reset to finish
		#20;
		a = 16'd025;
		b = 16'd987;
		Cin = 1;

		// Wait 20 ns for global reset to finish
		#20;
		a = 16'd2;
		b = 16'd7;
		Cin = 1;

		// Wait 20 ns for global reset to finish
		#20;
		a = 16'd82;
		b = 16'd87;
		Cin = 1;

		// Wait 20 ns for global reset to finish
		#20;
		
		
        
		// Add stimulus here

	end
	
	initial
$monitor("time= ", $time, " A = %d, B = %d, Cin= %d : Sum = %d, Cout = %b \n",a,b,Cin,Sum,Cout);
      
endmodule

