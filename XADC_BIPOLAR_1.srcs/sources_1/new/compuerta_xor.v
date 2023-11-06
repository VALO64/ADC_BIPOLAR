`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Fecha de creaci�n: 07.03.2023 14:45:04
// Nombre del m�dulo: compuerta_xor.v
// Nombre del proyecto: XADC_BIPOLAR_1 Adquisicion de audio
//
// Materia: Sistemas embebidos con FPGA y Soc
// Docente: M.C. Enrique Gerardo Hernandez Vega Enrique Gerardo
// Alumnos:
//  -Joaqu�n Bernardo Orozco L�pez      18060729
//  -Manuel Alejandro Quir�z Gallegos   C18061043
//  -Hiram Ochoa S�enz                  19060760
//////////////////////////////////////////////////////////////////////////////////

module compuerta_xor(
    input [7:0] adc,
    output reg [7:0] nadc
    );
    

always@(adc)
    begin
        nadc = adc ^8'b10000000;
    end
    
endmodule