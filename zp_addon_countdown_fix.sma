#include <amxmodx>
#include <amxmisc>
#include <fakemeta>


public plugin_init()
{
	register_plugin("[ZP] Extra Addon: Countdown", "1.0", "ByOreo")
	register_event("HLTV", "event_round_start", "a", "1=0", "2=0") 
}

public plugin_precache()
{
	precache_sound("countdown/10.wav");
	precache_sound("countdown/9.wav");
	precache_sound("countdown/8.wav");
	precache_sound("countdown/7.wav");
	precache_sound("countdown/6.wav");
	precache_sound("countdown/5.wav");
	precache_sound("countdown/4.wav");
	precache_sound("countdown/3.wav");
	precache_sound("countdown/2.wav");
	precache_sound("countdown/1.wav");
	precache_sound("countdown/biohazard_detected.wav");
}

public event_round_start()
{
	set_task(1.0, "countdown"); // You will set here according to "zp_delay"
}

public countdown()
{
	set_task(1.0, "ten")
	set_task(2.0, "nine")
	set_task(3.0, "eight")
	set_task(4.0, "seven")
	set_task(5.0, "six")
	set_task(6.0, "five")
	set_task(7.0, "four")
	set_task(8.0, "three")
	set_task(9.0, "two" )
	set_task(10.0, "one")
	set_task(11.0, "biodetect")

}

public ten()
{
	set_dhudmessage(0, 180, 255, -1.0, 0.28, 2, 0.02, 1.0, 0.01, 0.1);
	show_dhudmessage(0, "10^n|----------|");
	client_cmd( 0,"spk countdown/10.wav");
	
}

public nine()
{
	set_dhudmessage(0, random_num(0,255), 255, -1.0, 0.28, 2, 0.02, 1.0, 0.01, 0.1);
	show_dhudmessage(0, "9^n|---------|");
	client_cmd( 0,"spk countdown/9.wav");

}

public eight()
{
	set_dhudmessage(0, 180, 255, -1.0, 0.28, 2, 0.02, 1.0, 0.01, 0.1);
	show_dhudmessage(0, "8^n|--------|");
	client_cmd( 0,"spk countdown/8.wav");

}

public seven()
{
	set_dhudmessage(0, random_num(0,255), 255, -1.0, 0.28, 2, 0.02, 1.0, 0.01, 0.1);
	show_dhudmessage(0, "7^n|-------|");
	client_cmd(0,"spk countdown/7.wav");

}

public six()
{
	set_dhudmessage(0, random_num(0,255), 255, -1.0, 0.28, 2, 0.02, 1.0, 0.01, 0.1);
	show_dhudmessage(0, "6^n|------|");
	client_cmd( 0,"spk countdown/6.wav");

}

public five()
{
	set_dhudmessage(0, random_num(120,255), 255, -1.0, 0.28, 2, 0.02, 1.0, 0.01, 0.1);
	show_dhudmessage(0, "5^n|-----|");
	client_cmd( 0,"spk countdown/5.wav");

}

public four()
{
	set_dhudmessage(0, random_num(0,255), 255, -1.0, 0.28, 2, 0.02, 1.0, 0.01, 0.1);
	show_dhudmessage(0, "4^n|----|");
	client_cmd( 0,"spk countdown/4.wav");

}

public three()
{
	set_dhudmessage(0, 180, 255, -1.0, 0.28, 2, 0.02, 1.0, 0.01, 0.1);
	show_dhudmessage(0, "3^n|---|");
	client_cmd( 0,"spk countdown/3.wav");

}

public two()
{
	set_dhudmessage(0, random_num(0,255), 255, -1.0, 0.28, 2, 0.02, 1.0, 0.01, 0.1);
	show_dhudmessage(0, "2^n|--|");
	client_cmd( 0,"spk countdown/2.wav");

}

public one()
{
	set_dhudmessage(0, 255, 255, -1.0, 0.28, 2, 0.02, 1.0, 0.01, 0.1);
	show_dhudmessage(0, "1^n|-|");
	client_cmd(0,"spk countdown/1.wav");

}

public biodetect() 
{
	set_dhudmessage(255, 0, 0, -1.0, 0.28, 2, 0.02, 1.0, 0.01, 0.1);
	show_dhudmessage(0, "Biohazard Detected!");
	client_cmd(0, "spk countdown/biohazard_detected.wav");
}
