`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:37:10 07/23/2021 
// Design Name: 
// Module Name:    Brentkung 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module AND(a,b,c);
	input a,b;
	output c;

	assign c=a & b;

endmodule 

module XOR(a,b,c);
	input a,b;
	output c;

	assign c=a ^ b;

endmodule 

module aplusbc(a,b,c,d);
	input a,b,c;
	output d;

	assign d=a | (b & c);

endmodule 


module Brentkung(a,b,Cin,Sum,Cout);

	input [15:0] a,b;
	output [15:0] Sum;
	input Cin;
	output Cout;

	wire [15:0] P1,G1;
	wire [7:0] P2,G2;
	wire [3:0] P3,G3;
	wire [1:0] P4,G4;
	wire [0:0] P5,G5;
	wire [16:0] Carry;
	genvar i;
	generate
		for(i=0;i<=15;i=i+1)
		begin : Firstorder
			AND  A(a[i],b[i],G1[i]);
			XOR  X(a[i],b[i],P1[i]);
		end
	endgenerate


	generate
		for(i=0;i<=7;i=i+1)
		begin : Secondorder
			aplusbc  apbc(G1[2*i+1],P1[2*i+1],G1[2*i],G2[i]);
			AND  A1(P1[2*i+1],P1[2*i],P2[i]);
		end
	endgenerate

	generate
		for(i=0;i<=3;i=i+1)
		begin : Thirdorder
			aplusbc  apbc(G2[2*i+1],P2[2*i+1],G2[2*i],G3[i]);
			AND  A1(P2[2*i+1],P2[2*i],P3[i]);
		end
	endgenerate


	generate
		for(i=0;i<=1;i=i+1)
		begin : Fourthorder
			aplusbc  apbc(G3[2*i+1],P3[2*i+1],G3[2*i],G4[i]);
			AND  A1(P3[2*i+1],P3[2*i],P4[i]);
		end
	endgenerate

	generate
		for(i=0;i<=0;i=i+1)
		begin : Fifthorder	
			aplusbc  apbc(G4[2*i+1],P4[2*i+1],G4[2*i],G5[i]);
			AND  A1(P4[2*i+1],P4[2*i],P5[i]);
		end
	endgenerate

	assign Carry[0] = Cin;

	assign Carry[1] = G1[0] | (P1[0]&Carry[0]);

	assign Carry[2] = G2[0] | (P2[0]&Carry[0]);

	assign Carry[4] = G3[0] | (P3[0]&Carry[0]);

	assign Carry[8] = G4[0] | (P4[0]&Carry[0]);

	assign Carry[16] = G5[0] | (P5[0]&Carry[0]);

	assign Carry[3] = G1[2] | (P1[2]&Carry[2]);

	assign Carry[5] = G1[4] | (P1[4]&Carry[4]);

	assign Carry[9] = G1[8] | (P1[8]&Carry[8]);

	assign Carry[6] = G2[2] | (P2[2]&Carry[4]);

	assign Carry[10] = G2[4] | (P2[4]&Carry[8]);

	assign Carry[12] = G3[2] | (P3[2]&Carry[8]);

	assign Carry[7] = G1[6] | (P1[6]&Carry[6]);

	assign Carry[11] = G1[10] | (P1[10]&Carry[10]);

	assign Carry[13] = G1[12] | (P1[12]&Carry[12]);

	assign Carry[14] = G2[6] | (P2[6]&Carry[12]);

	assign Carry[15] = G1[14] | (P1[14]&Carry[14]);

	assign Sum[15:0] = P1[15:0] ^ Carry[15:0];

	assign Cout = Carry[16];
	
endmodule 
