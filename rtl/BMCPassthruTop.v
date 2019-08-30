module BMCPassthruTop(
	input wire UART_TXD_IN,
	input wire BMC_TXD_IN,
	
	output wire UART_RXD_OUT,
	output wire BMC_RXD_OUT
);

assign BMC_RXD_OUT = UART_TXD_IN;
assign UART_RXD_OUT = BMC_TXD_IN;

endmodule

