#######################################################################################################################
# RND IDC interconnect constraint file for TUL PYNQ-Z2
# Eng: Robbe Decapmaker <debber@dcpm.be>
# Date: 24-10-2024
#
# This file describes the constraints needed to use the IDC pcb's properly on the PYNQ-Z2 board.
#
# Pin comment format: $IDC_PIN ultra $ULTRA_SCHEMATIC_PIN <==> $PYNQ_SCHEMATIC_PIN pynq
#######################################################################################################################

####################
# IDC connector description
####################
# IDC_3 ultra HD_GPIO_1 <==> ar_2 pynq
#set_property -dict { PACKAGE_PIN U13   IOSTANDARD LVCMOS33 } [get_ports { ar[2] }]; #IO_L3P_T0_DQS_PUDC_B_34 Sch=ar[2]
# IDC_4 ultra HD_GPIO_2 <==> ar_3 pynq
#set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS33 } [get_ports { ar[3] }]; #IO_L3N_T0_DQS_34 Sch=ar[3]
# IDC_7 ultra HD_GPIO_3 <==> ar_4 pynq
#set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { ar[4] }]; #IO_L10P_T1_34 Sch=ar[4]
# IDC_8 ultra HD_GPIO_4 <==> ar_5 pynq
#set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { ar[5] }]; #IO_L5N_T0_34 Sch=ar[5]
# IDC_11 ultra HD_GPIO_5 <==> ar_6 pynq
#set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { ar[6] }]; #IO_L19P_T3_34 Sch=ar[6]
# IDC_12 ultra MIO36_PS_GPIO1_0 <==> ar_7 pynq
#set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { ar[7] }]; #IO_L9N_T1_DQS_34 Sch=ar[7]
# IDC_13 ultra HD_GPIO_11 (clk ultra input) <==> ar_8 pynq
#set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { ar[8] }]; #IO_L21P_T3_DQS_34 Sch=ar[8]
# IDC_14 ultra MIO37_PS_GPIO1_1 <==> ar_9 pynq
#set_property -dict { PACKAGE_PIN V18   IOSTANDARD LVCMOS33 } [get_ports { ar[9] }]; #IO_L21N_T3_DQS_34 Sch=ar[9]
# IDC_18 ultra HD_GPIO_12 (clk ultra input) <==> ar_10 pynq
#set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { ar[10] }]; #IO_L9P_T1_DQS_34 Sch=ar[10]

# I2C IDC
# IDC_17 ultra I2C_SCL <==> ar_scl pynq
#set_property -dict { PACKAGE_PIN P16   IOSTANDARD LVCMOS33 } [get_ports { ar_scl }]; #IO_L24N_T3_34 Sch=ar_scl
# IDC_21 ultra I2C_SDA <==> ar_scl pynq
#set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { ar_sda }]; #IO_L24P_T3_34 Sch=ar_sda


####################
# Not part of the IDC but present on the PCB
####################
#set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { ar[0] }]; #IO_L5P_T0_34 Sch=ar[0]
#set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { ar[1] }]; #IO_L2N_T0_34 Sch=ar[1]
#set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { ar[11] }]; #IO_L19N_T3_VREF_34 Sch=ar[11]
#set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports { ar[12] }]; #IO_L23N_T3_34 Sch=ar[12]
#set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports { ar[13] }]; #IO_L23P_T3_34 Sch=ar[13]
#set_property -dict { PACKAGE_PIN Y13   IOSTANDARD LVCMOS33 } [get_ports { a }]; #IO_L20N_T3_13 Sch=a

##Arduino Digital I/O On Outer Analog Header
##NOTE: These pins should be used when using the analog header signals A0-A5 as digital I/O

#set_property -dict { PACKAGE_PIN Y11   IOSTANDARD LVCMOS33 } [get_ports { a[0] }]; #IO_L18N_T2_13 Sch=a[0]
#set_property -dict { PACKAGE_PIN Y12   IOSTANDARD LVCMOS33 } [get_ports { a[1] }]; #IO_L20P_T3_13 Sch=a[1]
#set_property -dict { PACKAGE_PIN W11   IOSTANDARD LVCMOS33 } [get_ports { a[2] }]; #IO_L18P_T2_13 Sch=a[2]
#set_property -dict { PACKAGE_PIN V11   IOSTANDARD LVCMOS33 } [get_ports { a[3] }]; #IO_L21P_T3_DQS_13 Sch=a[3]
#set_property -dict { PACKAGE_PIN T5    IOSTANDARD LVCMOS33 } [get_ports { a[4] }]; #IO_L19P_T3_13 Sch=a[4]
#set_property -dict { PACKAGE_PIN U10   IOSTANDARD LVCMOS33 } [get_ports { a[5] }]; #IO_L12N_T1_MRCC_13 Sch=a[5]


