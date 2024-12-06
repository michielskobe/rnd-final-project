import numpy as np

# Given values
V = -0.527129195;  # -26dB
V = -0.247879381;  # -10dB
V = 0.155061213;  # +5dB
K = 3.732050808; # 20kHz Bandwidth

# Function to compute coefficients
def compute_coefficients(Cm):
    # Calculate a0, a1, a2
    a0 = 1 + 2 * K * Cm + K**2
    a1 = 2 * K**2 - 2
    a2 = 1 - 2 * K * Cm + K**2

    # Calculate b0, b1, b2
    b0 = K**2 * (V**2 + 2 * V + 1) + 2 * K * Cm * (V + 1) + 1
    b1 = 2 * K**2 * (V**2 + 2 * V + 1) - 2
    b2 = K**2 * (V**2 + 2 * V + 1) - 2 * K * Cm * (V + 1) + 1

    # Normalize coefficients by a0
    b0 /= a0
    b1 /= a0
    b2 /= a0
    a1 /= a0
    a2 /= a0
    a0 = 1  # Normalized to 1

    return [b0, -b1, b2, -a1, a2]

# Function to format coefficients in VHDL style
def format_coefficients(coefficients, precision_bits=23, integer_bits=3):
    formatted = []
    for coeff in coefficients:
        formatted.append(f"to_sfixed({coeff}, {integer_bits}, -{precision_bits})")
    return ", ".join(formatted)

#2nd order
#Cm = 0.707

#4th order
Cm = 0.382683
Cm2 = 0.92388

# 6th order
#Cm = 0.258819
#Cm = 0.707
#Cm = 0.965926

coefficients = compute_coefficients(Cm)
coefficients2 = compute_coefficients(Cm2)

# Create VHDL output
vhdl_output = f"signal coefficient_array : t_coefficient_array := ({format_coefficients(coefficients)}, {format_coefficients(coefficients)}, {format_coefficients(coefficients2)}, {format_coefficients(coefficients2)}, others => to_sfixed(1.0, 3, -23));"

# Print the result
print(vhdl_output)

