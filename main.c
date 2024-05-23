#include "BC68F2150.h"
#include "IAP_Update_Flash.h"


#define TIME_INTERRUPT 0.001024 
#define SEC_TO_5SEC (unsigned int)(5 / TIME_INTERRUPT) 

unsigned int timer_counter = 0;
unsigned int flag=0;

void init_timebase(void);

void main()
{
	_wdtc = 0b10101111;  
    _pa_wake = 0;
	_pac 	= 0b11111111;
	_papu	= 0b11111111;
	_pawu   = 0b11111111;
	_pbc 	= 0b00000000;        
    _pb 	= 0b00000000;    
    _fc0    = 0b11101111;



    init_timebase();

    while (1)
    {
        _fsiden=1;
        _pwdn=1;
        //_tb0_wake=1;
        _halt();
        _pwdn=0;
    }

}

void init_timebase(void)
{ 
    _tb0c = 0b11110111;
    _emi=1;
    _tb0f=0;
    _tb0e=1;
    _tb0_wake=0;

}

void __attribute((interrupt(0x0C))) timebase0(void)
{
    // _pwdn  = 0;
    // _ptmaf = 0; 
	_tb0f=0;
	//while(1);
}
