module	vry_divider(
		input		wire		sclk,
		input		wire		rst_n
);

wire		[31:0]		denominator;
wire		[31:0]		numerator;
wire		[31:0]		quotient;
wire		[31:0]		remain;



divider_1 divider_1_inst(
	.clock		(sclk),
	.denom		(denominator),
	.numer		(numerator),
	.quotient	(quotient),
	.remain		(remain)
	);


endmodule