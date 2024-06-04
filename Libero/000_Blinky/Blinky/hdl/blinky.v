module blinky(input clkin, output[14:3] leds);
    reg[31:0] counter = 0;
    reg[14:3] ledsState = 0;

    assign leds[14:3] = ledsState[14:3];
    
    always @ (posedge clkin)
    begin
        counter <= counter + 1;
        ledsState[14:3] <= counter[28:17];
    end
endmodule

