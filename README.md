# AMTW1-Registers

The code for the Advanced Microcontroller Topics Workshop #1: Registers

This project contains a simple program for the TM4C123GH6PM microcontroller that will blink the onboard RGB led. No 3rd party libraries are used to control the GPIO; instead, to illustrate the operation of the memory-mapped peripheral registers, direct access on these registers is employed to control the GPIO. The program also implements its own delay function, which puts the processor into a busy loop for a fixed number of iterations.

The extra credit assignment for this project is to get the LED to toggle when the user presses one of the onboard pushbuttons. ```PF0``` and ```PF4``` are connected to the onboard pushbuttons on the EK-TM4C123GXL development kit, and they are active LOW. There is no external pullup resistor, so you have to configure the internal pullup. You also need to investigate how to [debounce the buttons](https://en.wikipedia.org/wiki/Switch#Contact_bounce).

The presentation slides that accompany this code can be viewed [here](https://docs.google.com/presentation/d/1mp6AWJNJq6Oeu57Jz2wRQaD_kHslFq-YUVayZpmiSXY/edit?usp=sharing).
