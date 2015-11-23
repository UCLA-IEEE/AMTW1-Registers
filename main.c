/**
 * @author Kevin Balke
 * @brief Blink example program for the TM4C123GH6PM microcontroller.
 * @note Bracketed references (e.g., [100], [10.5]) refer to the appropriate
 *           page or section in the TM4C123GH6PM datasheet:
 *           http://www.ti.com/lit/ds/symlink/tm4c123gh6pm.pdf
 */

#include "debug_serial.h"
#include "driverlib/sysctl.h"

#include <stdbool.h>
#include <stdint.h>

#define DPTR(x) (*(volatile uint32_t*)(x))

/**
 * Delays for a given number of loop cycles. Each loop takes 3 processor cycles
 *     to complete.
 */
__attribute__((naked))
void delay(uint32_t cycles)
{
    __asm("subs R0, #1\n"
          "bne delay\n"
          "bx lr\n");
}

int main(void)
{
    /*
     * Configure the system clock to operate at 80 MHz (200 MHz PLL / 2.5).
     * Drive the PLL from an external 16 MHz crystal.
     *
     * (Don't worry about this!)
     */
    SysCtlClockSet(SYSCTL_SYSDIV_2_5 | SYSCTL_USE_PLL | SYSCTL_XTAL_16MHZ |
                   SYSCTL_OSC_MAIN);

    /*
     * Enable clocking to GPIO port F [340].
     *
     * From the datasheet:
     * Base address for System Control module = 0x400FE000
     * Address offset for register 60 (RCGCGPIO, GPIO Run Mode Clock Gating
     *     Control) = 0x608
     * Bit in the register for port F = 5
     *
     * Operation should be:
     * DPTR(0x400FE000 + 0x608) |= 1 << 5;
     *
     * Equivalent DriverLib call: SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);
     */
    DPTR(0x400FE608) |= 0x00000020;

    /*
     * Select the GPIO function for GPIO port F pins 1,2,3 (onboard R,G,B LEDs)
     *     [672, 10.5-R10].
     */
    DPTR(0x40025420) &= ~0x0000000E;

    /*
     * Select the 2-mA drive strength for GPIO port F pins 1,2,3 (onboard R,G,B
     *     LEDs) [673, 10.5-R11].
     */
    DPTR(0x40025500) |= 0x0000000E;

    /*
     * Disable pull-up and pull-down resistors for GPIO port F pins 1,2,3
     *     (onboard R,G,B LEDs) [677, 10.5-R15], [679, 10.5-R16].
     */
    DPTR(0x40025510) &= ~0x0000000E;
    DPTR(0x40025514) &= ~0x0000000E;

    /*
     * Disable slew rate control for GPIO port F pins 1,2,3 (onboard R,G,B
     *     LEDs) [681, 10.5-R17].
     */
    DPTR(0x40025518) &= ~0x0000000E;

    /*
     * Enable the digital functions for GPIO port F pins 1,2,3 (onboard R,G,B
     *     LEDs) [682, 10.5-R18].
     */
    DPTR(0x4002551C) |= 0x0000000E;

    //GPIOPadConfigSet(GPIO_PORTF_BASE, 0x0F, GPIO_STRENGTH_2MA, GPIO_PIN_TYPE_STD);

    /*
     * Set pin direction for GPIO port F pins 1,2,3 (onboard R,G,B LEDs) to
     *     output [663, 10.5-R2].
     *
     * From the datasheet:
     * Base address for GPIO port F (APB) = 0x40025000
     * Address offset for register 2 (GPIODIR, GPIO Direction) = 0x400
     *                                                           ^^^^^
     *                                              (why is this 0x400?)
     * Bits in the register for port F pins 1,2,3 = 1,2,3
     *
     * Operation should be:
     * DPTR(0x40025400) |= (1 << 1) | (1 << 2) | (1 << 3);
     *
     * Equivalent DriverLib call:
     *     GPIODirModeSet(GPIO_PORTF_BASE, 0x0F, GPIO_DIR_MODE_OUT);
     */
    DPTR(0x40025400) |= 0x0000000E;

    while(1)
    {
        /*
         * Set GPIO port F pins 1,2,3 (onboard R,G,B LEDs) to HIGH
         *     [662, 10.5-R0].
         *
         * From the datasheet:
         * Base address for GPIO port F (APB) = 0x40025000
         * Address offset for register 1 (GPIODATA) = 0x000
         * Bits in the register for port F pins 1,2,3 = 1,2,3
         *
         * TRICKY STUFF! This is an address-masked register. The value written
         *     to this register is masked by bits [9:2] in the **ADDRESS**.
         *     Basically, if you want to turn on pin 0, you would actually
         *     write 0x01 to address (0x40025400 + (0x01 << 2)).
         *
         *     If you understand this, you should be able to explain why the
         *     address offset for register 2 is 0x400.
         *
         * We want to turn on all 3 LEDs; Our mask should be:
         *     ((1 << 1) | (1 << 2) | (1 << 3)) = 0x0E
         *
         *     This mask goes into bits [9:2] of the address we are writing to.
         *     It is initially bits [7:0], so we shift to the left by 2 and add
         *     it to the address.
         *
         * The value we write should also be 0x0E. Why?
         *
         * Equivalent DriverLib call:
         *     GPIOPinWrite(GPIO_PORTF_BASE, 0x0E, 0xFF);
         */
        DPTR(0x40025000 + (0x0E << 2)) = 0x0E;

        /*
         * Delay for a bit.
         */
        delay(10000000ul);

        /*
         * Same business as before, but this time we write 0x00. Why?
         */
        DPTR(0x40025000 + (0x0E << 2)) = 0x00;

        delay(10000000ul);
    }

    return 0;
}
