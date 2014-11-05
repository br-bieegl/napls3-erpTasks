#######################################################################
###########                 SCENARIO HEADER                 ###########
#######################################################################
#*The scenario header defines all the parameters needed for the scenario
#and resets any of the default settings if desired.*/

# the name of the scenario/experiment
scenario = "Vertical Visual LTP Intermediate High Frequency Stimulation v3.1";
# the type of scenario: if not fMRI-based this will be 'trials'
scenario_type = trials;

# sets the default text font
default_font = "Times New Roman";
default_font_size = 30;
default_text_color = 0,0,0; # sets text to black

# sets the background color to gray
default_background_color = 128,128,128;                 

# this says how many active (response) buttons there will be in the
# scenario and the codes for these buttons; these must also be defined
# under the 'Input Devices' tab above
active_buttons = 2;
button_codes = 128,10;         

# this is needed to send triggers through the port; this must also be
# defined under the 'Port Settings' tab above
write_codes = true;
code_delay = 0;
pulse_width = 10;   

# use 'simple_matching' rather than 'legacy_matching'
response_matching = simple_matching;


#######################################################################
#                            SCENARIO BODY                            #
#######################################################################       
begin; 

bitmap {filename = "defaultblack.png";} def; 

# this tells the scenario to show the default picture (a blank
# background with red fixation cross) if no stimuli are being shown: 
picture {
		bitmap def;
		x = 0; y = 0;
}default;

# this holds screen on default screen before task begins
trial {
	all_responses = true;
   trial_duration = forever;
   trial_type = specific_response;   
   terminator_button = 1;
   
   picture{
			bitmap def;
			x = 0; y = 0;
      };
   time = 0;
   port_code = 250;
   duration = response;
}instruction;

#not used here but is 2 minute break generally
trial {
   trial_duration = 120000; 
   stimulus_event {
			picture {
			bitmap def;
			x = 0; y = 0;
			};
			time = 0;
			code = "default"; # stimulus name
   } event_break; 
} a_break;

#used for trigger codes at end of task
trial {
   trial_duration = 2000; 
   stimulus_event {
			picture {
			bitmap def;
			x = 0; y = 0;
			};
			time = 0;
			code = "default"; # stimulus name
   } event_done; 
} done;

# you must enter the location and name of each of the stimuli to be
# used in the experiment
bitmap {filename = "R90five.png";} C0;
bitmap {filename = "R90ifive.png";} C0i;
bitmap {filename = "R90five.png";} C0t;
bitmap {filename = "R90ifive.png";} C0ti;

line_graphic {
   coordinates = -480, -540, -480, 540;
   line_width = 6;
	fill_color=128,128,128;
	#line_color=128,128,128;
	#background_color=128,128,128;
}lineLeft;
line_graphic {
   coordinates = 480, -540, 480, 540;
   line_width = 6;
	fill_color=128,128,128;
	#line_color=128,128,128;
	#background_color=128,128,128;
}lineRight;
line_graphic {
   coordinates = -960, 270, 960, 270;
   line_width = 6;
	fill_color=128,128,128;
	#line_color=128,128,128;
	#background_color=128,128,128;
}lineTop;
line_graphic {
   coordinates = -960, -270, 960, -270;
   line_width = 6;
	fill_color=128,128,128;
	#line_color=128,128,128;
	#background_color=128,128,128;
}lineBottom;

#sn is normal stim
picture {
		bitmap C0;
		x = 0; y = 0;
}sn;

#tn is normal w/ targ
picture {
		bitmap C0t;
		x = 0; y = 0;
		#text {caption = "+";
		#		font_size = 72;
		#		font_color = 255,0,0;}; # fixation cross
      line_graphic lineLeft;
      x = 0; y = 0; # centre of screen
}tn;

#si is inverted stim
picture {
		bitmap C0i;
		x = 0; y = 0;
}si;

#ti is inverted w/ targ
picture {
		bitmap C0ti;
		x = 0; y = 0;
		#text {caption = "+";
		#		font_size = 72;
		#		font_color = 255,0,0;}; # fixation cross
      line_graphic lineRight;
      x = 0; y = 0; # centre of screen
}ti;

#set the trial parameters
trial {
	trial_duration = 99;
	stimulus_event {
			picture sn; # picture to present
			duration = 20;
			time = 0;
			code = "sn90"; # stimulus name
			port_code = 1; #trigger value 
			response_active = false;     
   } event_sn;	
} trial_sn; 

trial {
	trial_duration = 99;
	stimulus_event {
			picture si; # picture to present
			duration = 20;
			time = 0;
			code = "si90"; # stimulus name
			port_code = 11; #trigger value 
			response_active = false;     
   } event_si;	
} trial_si; 

trial {
	trial_duration = 99;
	stimulus_event {
			picture tn; # picture to present
			target_button = 2;
			duration = 20;
			time = 0;
			code = "tn90"; # stimulus name
			port_code = 2; #trigger value 
			response_active = true;     
   } event_tn;	
} trial_tn; 

trial {
	trial_duration = 99;
	stimulus_event {
			picture ti; # picture to present
			target_button = 2;
			duration = 20;
			time = 0;
			code = "ti90"; # stimulus name
			port_code = 22; #trigger value 
			response_active = true;     
   } event_ti;	
} trial_ti; 

#intermittent blank screen trial
trial {
	trial_duration = 5000; #5s of blank screen
	stimulus_event {
			picture {
			bitmap def;
			x = 0; y = 0;
			};
			time = 0;
			code = "default"; # stimulus name
   } blank_screen; 
} blankscreen;

##################
begin_pcl;
parameter_window.remove_all();
instruction.present();

array <int> targets[11] = {65,116,185,248,336,501,616,706,
	808,892,1038}; #locations of the targets
#array <int> targets[22] = {65,91,116,165,185,214,248,284,336,478,501,571,616,650,706,
#	744,808,858,892,986,1038,1075}; #locations of the targets

#chooses either 100ms(=0, n=25) or 116ms(=1, n=20) trial dur	
array <int> isis[45][8] = { {0,0,0,0,0,1,1,0,1,1,1,1,0,0,1,0,0,0,1,1,1,1,1,1,1,0,
0,0,1,0,0,1,0,1,1,0,0,0,1,0,0,0,0,0,1},
{1,1,0,1,1,0,0,0,0,1,1,1,0,1,1,1,0,1,0,0,0,1,0,0,1,1,1,1,1,0,1,0,0,1,0,0,0,0,0,1,0,0,0,0,0},
{0,0,0,0,1,0,1,1,1,0,0,0,1,0,1,1,1,0,1,0,0,0,0,1,1,1,0,1,0,0,0,0,0,0,1,0,1,1,1,1,0,1,1,0,0},
{1,0,0,0,1,0,1,1,0,1,0,0,0,1,0,1,0,1,0,0,1,1,1,0,0,0,0,1,0,0,0,0,0,1,0,0,1,1,1,1,1,0,0,1,1},
{1,1,0,1,0,1,0,0,1,0,0,1,0,1,0,0,1,0,0,1,0,1,0,1,0,1,0,0,0,0,1,0,0,1,1,1,1,1,0,0,0,0,1,0,1},
{0,1,0,1,0,1,1,1,1,1,0,1,0,1,0,0,0,1,1,0,0,1,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1,1,0,1},
{0,1,0,1,0,0,1,0,1,0,0,1,0,0,0,0,1,1,1,0,0,0,0,0,1,0,1,1,0,0,0,1,1,1,0,1,0,1,0,1,1,0,1,0,1},
{0,0,1,1,1,1,0,1,1,0,0,0,0,1,0,0,0,0,1,1,1,0,0,0,1,0,1,1,0,1,0,1,0,0,1,0,1,1,0,0,0,0,0,1,1}}; 

int i0 = 0;
int j = 1;
int tdur = 95;
int ic = 1;
int ib = 1;

wait_interval(500);
loop
   int n = 1
until
   n > 1
begin
# loops through stimuli (i=#of trials per stimuli)
loop
	int i = 1
until
	i > 1079
begin
	
	if isis[ic][ib] == 0 then
		tdur = 95; #for 100ms soa (or 115?)
	else
		tdur = 111; #for 116ms soa (or 131?)
	end;
		
	if targets[j] == i then #target trial
		if i0 == 0 then #non-inverted
			trial_tn.set_duration(tdur);
			trial_tn.present();
			i0 = 1;
			if j < 11 then
				j = j + 1;
			end;
		else #inverted
			trial_ti.set_duration(tdur);
			trial_ti.present();
			i0 = 0;
			if j < 11 then
				j = j + 1;
			end;
		end;
	else #non-target
		if i0 == 0 then #non-inverted
			trial_sn.set_duration(tdur);
			trial_sn.present();
			i0 = 1;
		else #inverted
			trial_si.set_duration(tdur);
			trial_si.present();
			i0 = 0;
		end;
	end;
	
	i = i + 1;
	if ic < 45 then
		ic = ic + 1;
	else
		blankscreen.present();
		ic = 1;
		if ib < 8 then
			ib = ib + 1;
		else
			ib = 1;
		end;
	end;
end;
	a_break.present();
	n = n + 1;
end;  

event_done.set_port_code(250);
done.set_duration(2000);
done.present();
event_done.set_port_code(129);
done.set_duration(100);
done.present();