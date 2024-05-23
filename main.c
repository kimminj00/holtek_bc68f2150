#include "BC68F2150.h"
// #include "IAP_Update_Flash.h"

typedef unsigned char uint8_t;
typedef unsigned int uint32_t;

#define TIME_INTERRUPT 0.001024 
#define SEC_TO_5SEC (unsigned int)(5 / TIME_INTERRUPT) 

unsigned int timer_counter = 0;
unsigned int flag=0;

void init_timebase(void);

void Watchdog_config(uint8_t on){
    if(on){
	    _wdtc = 0b01010111;         // wathdog enable
    }
    else{
	    _wdtc = 0b10101111;         // wathdog disable
    }
}

void GPIO_config(void){
    _pa_wake = 0;               // Port A wakeup from Deepsleep
	_pac 	= 0b11111111;       // Port A in/out (0:out, 1:in)
	_papu	= 0b11111111;       // Port A pull up
	_pawu   = 0b11111111;       // Port A Wakeup enable
	_pbc 	= 0b00000000;       // Port B in/out (0:out, 1:in)
    _pb 	= 0b00000000;       // Port B set
}

void LED_on_off(uint8_t leds){
    // _pb 	= 0b00000000;       // Port B set
    _pb = leds &0x0f;
}

void EnterDeepSleep(void){
    _fsiden=1;       // FHIDEN: High Frequency oscillator control when the CPU is switched of        ??
    _pwdn = 1;  // PWDN: Power down control
    _halt();  // Halt
}

void main()
{
    Watchdog_config(0);
    GPIO_config();
    // _fc0    = 0b11101111;       // flash memory control

    init_timebase();

    if(_tb0_wake){
        //LED_on_off(0x0f);
        EnterDeepSleep();
    }
    else{
        EnterDeepSleep();
    }

    while (1)
    {
        // pass
    }

}

void init_timebase(void)
{ 
    _tb0c = 0b11110111;     // time base 0 control
    // _tb0c = 0b10000000;     // time base 0 control
    // _tb0c = 0b11110000;     // time base 0 control 500ms
    // _tb0c = 0b10000111;     // time base 0 control  500ms
    _emi=1;                 // global interrupt enable
    _tb0f=0;                // time base 0 interrupt request flag
    _tb0e=1;                // time base 0 interrupt enable
    // _tb0_wake=0;            // Time Base 0 wake-up MCU from DEEP SLEEP Mode flag
}

void __attribute((interrupt(0x0C))) timebase0(void)
{
    // _pwdn  = 0;

}
