module blinky(input logic clkin, input logic enable, output logic[14:3] leds);
    logic[31:0] counter = 0;
    logic[14:3] ledsState = 0;

    assign leds[14:3] = ledsState[14:3];
    
    always_ff @ (posedge clkin)
    begin
        counter <= counter + 1;
        if (enable)
            ledsState[14:3] <= counter[28:17];
    end
endmodule

