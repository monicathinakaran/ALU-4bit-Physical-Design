module alu(
    input [3:0] A,
    input [3:0] B,
    input [2:0] Sel,
    input Clk,
    input Rst,
    output reg [3:0] Out,
    output reg Carry
);

    always @(posedge Clk or posedge Rst) begin
        if (Rst) begin
            Out <= 4'b0000;
            Carry <= 1'b0;
        end else begin
            Carry <= 1'b0; // Default
            case (Sel)
                3'b000: {Carry, Out} <= A + B;       // Addition
                3'b001: {Carry, Out} <= A - B;       // Subtraction
                3'b010: Out <= A * B;                // Multiplication (4-bit result)
                3'b011: Out <= A / B;                // Division
                3'b100: Out <= A & B;                // AND
                3'b101: Out <= A | B;                // OR
                3'b110: Out <= A ^ B;                // XOR
                3'b111: Out <= ~A;                   // NOT (A)
                default: Out <= 4'b0000;
            endcase
        end
    end
endmodule
