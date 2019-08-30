# General
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

# USB UART (SLR 1)
set_property -dict { PACKAGE_PIN BF18	IOSTANDARD LVCMOS12		} [get_ports { UART_TXD_IN }]; 
set_property -dict { PACKAGE_PIN BB20	IOSTANDARD LVCMOS12		} [get_ports { UART_RXD_OUT }];

# BMC UART
set_property -dict { PACKAGE_PIN BA19	IOSTANDARD LVCMOS12		} [get_ports { BMC_TXD_IN }]; 
set_property -dict { PACKAGE_PIN BB19	IOSTANDARD LVCMOS12		} [get_ports { BMC_RXD_OUT }];