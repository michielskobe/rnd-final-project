#######################################################################################################################
# RND IDC interconnect constraint file for AVNET Ultra96 V2
# Eng: Robbe Decapmaker <debber@dcpm.be>
# Date: 24-10-2024
#
# This file describes the constraints needed to use the IDC pcb's properly on the Ultra96 V2 board.
#
# Pin comment format: $IDC_PIN ultra $ULTRA_SCHEMATIC_PIN <==> $PYNQ_SCHEMATIC_PIN pynq
#######################################################################################################################

# ----------------------------------------------------------------------------
# Low-speed expansion connector
# ---------------------------------------------------------------------------- 
# Bank 26
set_property -dict { PACKAGE_PIN D7 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 }  [get_ports {HD_GPIO_0              }];  # "D7.HD_GPIO_0"
set_property -dict { PACKAGE_PIN F8 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 }  [get_ports {da_mclk              }];  # "F8.HD_GPIO_1"
set_property -dict { PACKAGE_PIN F7 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 }  [get_ports {da_lrclk              }];  # "F7.HD_GPIO_2"
set_property -dict { PACKAGE_PIN G7 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 }  [get_ports {da_sclk              }];  # "G7.HD_GPIO_3"
set_property -dict { PACKAGE_PIN F6 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 }  [get_ports {da_sin              }];  # "F6.HD_GPIO_4"
set_property -dict { PACKAGE_PIN G5 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 }  [get_ports {ad_mclk              }];  # "G5.HD_GPIO_5"
set_property -dict { PACKAGE_PIN A6 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 }  [get_ports {ad_sdout              }];  # "A6.HD_GPIO_6"
set_property -dict { PACKAGE_PIN A7 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 }  [get_ports {ad_lrclk              }];  # "A7.HD_GPIO_7"
set_property -dict { PACKAGE_PIN G6 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 }  [get_ports {HD_GPIO_8              }];  # "G6.HD_GPIO_8"
set_property -dict { PACKAGE_PIN E6 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 }  [get_ports {HD_GPIO_9              }];  # "E6.HD_GPIO_9"
set_property -dict { PACKAGE_PIN E5 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 }  [get_ports {HD_GPIO_10             }];  # "E5.HD_GPIO_10"
set_property -dict { PACKAGE_PIN D6 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 }  [get_ports {ad_sclk             }];  # "D6.HD_GPIO_11"
set_property -dict { PACKAGE_PIN D5 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 }  [get_ports {HD_GPIO_12             }];  # "D5.HD_GPIO_12"
set_property -dict { PACKAGE_PIN C7 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 }  [get_ports {HD_GPIO_13             }];  # "C7.HD_GPIO_13"
set_property -dict { PACKAGE_PIN B6 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 }  [get_ports {HD_GPIO_14             }];  # "B6.HD_GPIO_14"
set_property -dict { PACKAGE_PIN C5 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 }  [get_ports {HD_GPIO_15             }];  # "C5.HD_GPIO_15"


# Bank 501
set_property -dict { PACKAGE_PIN D10 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 } [get_ports {ad_lrclk_ugh       }];  # "D10.MIO36_PS_GPIO1_0"
set_property -dict { PACKAGE_PIN E11 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 } [get_ports {ad_sdout_ugh       }];  # "E11.MIO37_PS_GPIO1_1"
set_property -dict { PACKAGE_PIN C10 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 } [get_ports {MIO39_PS_GPIO1_2       }];  # "C10.MIO39_PS_GPIO1_2"
set_property -dict { PACKAGE_PIN D11 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 } [get_ports {MIO40_PS_GPIO1_3       }];  # "D11.MIO40_PS_GPIO1_3"
set_property -dict { PACKAGE_PIN B11 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 } [get_ports {MIO44_PS_GPIO1_4       }];  # "B11.MIO44_PS_GPIO1_4"
set_property -dict { PACKAGE_PIN A11 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 } [get_ports {MIO45_PS_GPIO1_5       }];  # "A11.MIO45_PS_GPIO1_5"
set_property -dict { PACKAGE_PIN C9  IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 } [get_ports {MIO38_SPI0_SCLK        }];  # "C9.MIO38_SPI0_SCLK"
set_property -dict { PACKAGE_PIN B10 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 } [get_ports {MIO41_SPI0_CS          }];  # "B10.MIO41_SPI0_CS"
set_property -dict { PACKAGE_PIN D12 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 } [get_ports {MIO42_SPI0_MISO        }];  # "D12.MIO42_SPI0_MISO"
set_property -dict { PACKAGE_PIN E13 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 4 } [get_ports {MIO43_SPI0_MOSI        }];  # "E13.MIO43_SPI0_MOSI"