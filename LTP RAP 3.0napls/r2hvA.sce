#######################################################################
###########                 SCENARIO HEADER                 ###########
#######################################################################
#*The scenario header defines all the parameters needed for the scenario
#and resets any of the default settings if desired.*/

# the name of the scenario/experiment
scenario = "visual LTP Rap V2.0 HVA (based on combined block 1+2 from old 45 135 degree pilot)";
# the type of scenario: if not fMRI-based this will be 'trials'
scenario_type = trials;

# any associated 'PCL' files; these are not necessary for every scenario
pcl_file = "Commands.pcl";

# sets the default text font
default_font = "Times New Roman";
default_font_size = 30;
default_text_color = 0,0,0; # sets text to red

# sets the background colour to white (default is black)
#default_background_color = 255,255,255;                 
default_background_color = 128,128,128;                 

# this says how many active (response) buttons there will be in the
# scenario and the codes for these buttons; these must also be defined
# under the 'Input Devices' tab above
active_buttons = 2;
button_codes = 128,10;         
##default_max_responses = 1; # this sets the maximum number of responses
                           # per trial to one

# this is needed to send triggers through the port; this must also be
# defined under the 'Port Settings' tab above
write_codes = true;
code_delay = 0;
pulse_width = 10;   

# use 'simple_matching' rather than 'legacy_matching'
response_matching = simple_matching;
# this tells the scenario to ignore responses made when no stimuli are
# 'active'
##response_logging = log_active;      
# if you want to code correct, incorrect, and missed responses (versus
# just stimuli trigger values) this must be set to false and response
# coding must be defined in a 'PCL' file
#response_port_output = false;



#######################################################################
#                            SCENARIO BODY                            #
#######################################################################       
begin; 

bitmap {filename = "defaultred.png";} def; 


# this tells the scenario to show the default picture (a blank
# background with red fixation cross) if no stimuli are being shown: 
picture {
		bitmap def;
		x = 0; y = 0;
}default;
                  

# this tells the scenario to show the default picture (a blank
# background reset in the header) if no stimuli is being shown 

trial{
   all_responses = true;
   trial_duration = forever;
   trial_type = first_response;
   
   picture{
      text{caption = "Take a break.
         Press any button to proceed";};
      x = 0; y = 0;
      };
      
   time = 0;
   duration = response;
}a_break;

# this displays the experiment instructions
trial {
	all_responses = true;
   trial_duration = forever;
   trial_type = specific_response;   
   terminator_button = 1;
   
   picture{
		text {caption = "+";
				font_size = 14;}; # fixation cross
      x = 0; y = 0; # centre of screen 
#      text{caption =  "Visual Task
#         
#         -Remember to respond to the blue squares
#         
#         -Remain alert and attentive";
#		font_color = 0,0,255;};
#		x = -10; y = 50;
		
   };
   
   time = 0;
   port_code = 250;
   duration = response;
}instruction;

trial {
   #start_delay = 100; # delays the start of the trial until 100ms after
                      # the last trial has ended
   trial_duration = stimuli_length; # trial lasts as long as stimulus
   
   picture {
      text {caption = "+";
				font_size = 14;}; # fixation cross
      x = 0; y = 0; # centre of screen
   };
   time = 0; # time when stimulus is presented
   duration = 1000;
};   
# you must enter the location and name of each of the stimuli to be
# used in the experiment
#bitmap { filename = "fullcheck.bmp";} s;
#bitmap { filename = "rightcheck.bmp";} right;
#bitmap { filename = "fullcheck16bit.bmp";} full;
#bitmap { filename = "fullcheck.bmp";} full;
#bitmap {filename = "BlueSquare.bmp";} blue; 

bitmap {filename = "R90five.png";} R45;
bitmap {filename = "R180five.png";} R135;
bitmap {filename = "R90ifive.png";} R45i;
bitmap {filename = "R180ifive.png";} R135i; 

#full0n is 45 deg patch, normal
picture {
		bitmap R45;
		x = 0; y = 0;
     # text {caption = "+";
	#		font_size = 14;}; # fixation cross
    #  x = 0; y = 0; # centre of screen
}full0n;

#full0i is 45 deg patch, inverted
picture {
		bitmap R45i;
		x = 0; y = 0;
     # text {caption = "+";
		#		font_size = 14;}; # fixation cross
      #x = 0; y = 0; # centre of screen
}full0i;

#full1n is 135 deg patch, normal
picture {
		bitmap R135;
		#x = 0; y = 0;
      #text {caption = "+";
		#		font_size = 14;}; # fixation cross
      x = 0; y = 0; # centre of screen
}full1n;

#full1i is 135 deg patch, normal
picture {
		bitmap R135i;
		x = 0; y = 0;
      #text {caption = "+";
		#		font_size = 14;}; # fixation cross
      #x = 0; y = 0; # centre of screen
}full1i;

#blue0n is 45 deg patch, normal
picture {
		bitmap R45;
		x = 0; y = 0;
      text {caption = "+";
				font_size = 72;
				font_color = 255,0,0;}; # fixation cross
      x = 0; y = 0; # centre of screen
}blue0n;

#blue0i is 45 deg patch, inverted
picture {
		bitmap R45i;
		x = 0; y = 0;
      text {caption = "+";
				font_size = 72;
				font_color = 255,0,0;}; # fixation cross
      x = 0; y = 0; # centre of screen
}blue0i;

#blue1n is 135 deg patch, normal
picture {
		bitmap R135;
		x = 0; y = 0;
      text {caption = "+";
				font_size = 72;
				font_color = 255,0,0;}; # fixation cross
      x = 0; y = 0; # centre of screen
}blue1n;

#blue1n is 135 deg patch, inverted
picture {
		bitmap R135i;
		x = 0; y = 0;
      text {caption = "+";
				font_size = 72;
				font_color = 255,0,0;}; # fixation cross
      x = 0; y = 0; # centre of screen
}blue1i;


# this tells the scenario to see the template file 'patch LTP trial.tem' to see
# how it is supposed to run each trial; the codes, trigger values, 
# correct responses, and any other variables for each stimuli must be
# set here

TEMPLATE "patch LTP trial.tem"  {      
the_picture the_code trigger_value  SOA   foo     ;
full1n	"full1n"	33	1093	false		;
full1i	"full1i"	33	1307	false		;
full1n	"full1n"	33	1307	false		;
full0n	"full0n"	3	1067	false		;
full1i	"full1i"	33	1200	false		;
full1n	"full1n"	33	1200	false		;
full0i	"full0i"	3	1227	false		;
full0n	"full0n"	3	1147	false		;
blue0i	"blue0i"	9	1200	true		;
full1i	"full1i"	33	1280	false		;
full0n	"full0n"	3	1253	false		;
full0i	"full0i"	3	1333	false		;
full1n	"full1n"	33	1253	false		;
full1i	"full1i"	33	1120	false		;
full1n	"full1n"	33	1200	false		;
blue1i	"blue1i"	99	1200	true		;
full1n	"full1n"	33	1200	false		;
full0n	"full0n"	3	1173	false		;
full1i	"full1i"	33	1227	false		;
full0i	"full0i"	3	1333	false		;
full0n	"full0n"	3	1333	false		;
full0i	"full0i"	3	1280	false		;
full0n	"full0n"	3	1253	false		;
full1n	"full1n"	33	1173	false		;
blue1i	"blue1i"	99	1253	true		;
full0i	"full0i"	3	1227	false		;
full0n	"full0n"	3	1173	false		;
full0i	"full0i"	3	1120	false		;
full1n	"full1n"	33	1200	false		;
full1i	"full1i"	33	1147	false		;
full0n	"full0n"	3	1067	false		;
full1n	"full1n"	33	1200	false		;
full1i	"full1i"	33	1280	false		;
full1n	"full1n"	33	1200	false		;
full0i	"full0i"	3	1120	false		;
blue1i	"blue1i"	99	1093	true		;
full1n	"full1n"	33	1253	false		;
full0n	"full0n"	3	1093	false		;
full0i	"full0i"	3	1200	false		;
full0n	"full0n"	3	1280	false		;
full0i	"full0i"	3	1307	false		;
full0n	"full0n"	3	1307	false		;
full1i	"full1i"	33	1253	false		;
full0i	"full0i"	3	1067	false		;
full1n	"full1n"	33	1200	false		;
full0n	"full0n"	3	1147	false		;
full1i	"full1i"	33	1173	false		;
blue0i	"blue0i"	9	1147	true		;
full0n	"full0n"	3	1227	false		;
full0i	"full0i"	3	1147	false		;
full0n	"full0n"	3	1307	false		;
full1n	"full1n"	33	1067	false		;
full1i	"full1i"	33	1333	false		;
full0i	"full0i"	3	1120	false		;
full0n	"full0n"	3	1307	false		;
full1n	"full1n"	33	1200	false		;
full1i	"full1i"	33	1173	false		;
blue1n	"blue1n"	99	1227	true		;
full0i	"full0i"	3	1253	false		;
full0n	"full0n"	3	1200	false		;
full0i	"full0i"	3	1280	false		;
full1i	"full1i"	33	1147	false		;
full0n	"full0n"	3	1200	false		;
full1n	"full1n"	33	1280	false		;
full1i	"full1i"	33	1227	false		;
full1n	"full1n"	33	1200	false		;
full0i	"full0i"	3	1200	false		;
blue0n	"blue0n"	9	1200	true		;
full0i	"full0i"	3	1067	false		;
full0n	"full0n"	3	1093	false		;
full0i	"full0i"	3	1280	false		;
full0n	"full0n"	3	1253	false		;
full0i	"full0i"	3	1333	false		;
full1i	"full1i"	33	1253	false		;
full1n	"full1n"	33	1280	false		;
full0n	"full0n"	3	1200	false		;
full0i	"full0i"	3	1067	false		;
full1i	"full1i"	33	1280	false		;
blue0n	"blue0n"	9	1093	true		;
full1n	"full1n"	33	1227	false		;
full1i	"full1i"	33	1093	false		;
full1n	"full1n"	33	1307	false		;
full1i	"full1i"	33	1147	false		;
full0i	"full0i"	3	1147	false		;
full0n	"full0n"	3	1227	false		;
full1n	"full1n"	33	1200	false		;
full1i	"full1i"	33	1307	false		;
full1n	"full1n"	33	1120	false		;
full1i	"full1i"	33	1307	false		;
full1n	"full1n"	33	1120	false		;
full0i	"full0i"	3	1120	false		;
blue1i	"blue1i"	99	1173	true		;
full1n	"full1n"	33	1307	false		;
full0n	"full0n"	3	1147	false		;
full1i	"full1i"	33	1093	false		;
full1n	"full1n"	33	1307	false		;
full1i	"full1i"	33	1067	false		;
full1n	"full1n"	33	1200	false		;
full1i	"full1i"	33	1067	false		;
full0i	"full0i"	3	1093	false		;
blue1n	"blue1n"	99	1093	true		;
full1i	"full1i"	33	1333	false		;
full1n	"full1n"	33	1173	false		;
full1i	"full1i"	33	1333	false		;
full1n	"full1n"	33	1173	false		;
full0n	"full0n"	3	1200	false		;
full0i	"full0i"	3	1227	false		;
full1i	"full1i"	33	1333	false		;
full1n	"full1n"	33	1227	false		;
blue0n	"blue0n"	9	1120	true		;
full0i	"full0i"	3	1147	false		;
full1i	"full1i"	33	1253	false		;
full0n	"full0n"	3	1067	false		;
full0i	"full0i"	3	1173	false		;
full0n	"full0n"	3	1280	false		;
full1n	"full1n"	33	1333	false		;
full1i	"full1i"	33	1280	false		;
full1n	"full1n"	33	1120	false		;
blue0i	"blue0i"	9	1173	true		;
full0n	"full0n"	3	1093	false		;
full1i	"full1i"	33	1227	false		;
full0i	"full0i"	3	1120	false		;
full0n	"full0n"	3	1120	false		;
full0i	"full0i"	3	1147	false		;
full0n	"full0n"	3	1173	false		;
full0i	"full0i"	3	1333	false		;
blue1n	"blue1n"	99	1333	true		;
full0n	"full0n"	3	1093	false		;
full1i	"full1i"	33	1253	false		;
full0i	"full0i"	3	1147	false		;
full0n	"full0n"	3	1200	false		;
full0i	"full0i"	3	1067	false		;
full1n	"full1n"	33	1120	false		;
};	


#countdown:
trial{
	trial_duration = 20000;
   stimulus_event {
		picture{text { caption = "REST"	; 
               	font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 0;
			duration = next_picture;
			code = "82"; 
	} event_rest;
	stimulus_event { 
		picture{text{caption = "10";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 10000;
			duration = next_picture;
			code = "82";
    } event10;
	stimulus_event { 
		picture{text{caption = "9";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 11000;
			duration = next_picture;
			code = "82";
    } event9;
	stimulus_event { 
		picture{text{caption = "8";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 12000;
			duration = next_picture;
			code = "82";
    } event8;
	stimulus_event { 
		picture{text{caption = "7";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 13000;
			duration = next_picture;
			code = "82";
    } event7;
   stimulus_event { 
		picture{text{caption = "6";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 14000;
			duration = next_picture;
			code = "82";
    } event6;
	stimulus_event { 
		picture{text{caption = "5";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 15000;
			duration = next_picture;
			code = "82";
    } event5;
	stimulus_event { 
		picture{text{caption = "4";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 16000;
			duration = next_picture;
			code = "82";
    } event4;
	stimulus_event { 
		picture{text{caption = "3";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 17000;
			duration = next_picture;
			code = "82";
    } event3;
	stimulus_event { 
		picture{text{caption = "2";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 18000;
			duration = next_picture;
			code = "82";
    } event2;
	stimulus_event { 
		picture{text{caption = "1";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 19000;
			duration = 1000;
			code = "82";
    } event1;
};

TEMPLATE "patch LTP trial.tem"  {      
the_picture the_code trigger_value  SOA   foo     ;
full0n	"full0n"	4	1227	false	;
full0i	"full0i"	4	1280	false	;
full0n	"full0n"	4	1147	false	;
full1n	"full1n"	44	1333	false	;
blue0i	"blue0i"	9	1200	true	;
full0n	"full0n"	4	1227	false	;
full1i	"full1i"	44	1093	false	;
full1n	"full1n"	44	1120	false	;
full1i	"full1i"	44	1200	false	;
full0i	"full0i"	4	1093	false	;
full1n	"full1n"	44	1253	false	;
full1i	"full1i"	44	1200	false	;
blue0n	"blue0n"	9	1253	true	;
full0i	"full0i"	4	1067	false	;
full0n	"full0n"	4	1227	false	;
full0i	"full0i"	4	1227	false	;
full0n	"full0n"	4	1200	false	;
full1n	"full1n"	44	1307	false	;
full0i	"full0i"	4	1067	false	;
full1i	"full1i"	44	1093	false	;
full0n	"full0n"	4	1253	false	;
full1n	"full1n"	44	1307	false	;
blue1i	"blue1i"	99	1147	true	;
full0i	"full0i"	4	1333	false	;
full0n	"full0n"	4	1307	false	;
full1n	"full1n"	44	1200	false	;
full1i	"full1i"	44	1173	false	;
full1n	"full1n"	44	1307	false	;
full0i	"full0i"	4	1333	false	;
full0n	"full0n"	4	1227	false	;
full1i	"full1i"	44	1280	false	;
full0i	"full0i"	4	1147	false	;
full0n	"full0n"	4	1173	false	;
full0i	"full0i"	4	1333	false	;
full1n	"full1n"	44	1067	false	;
full0n	"full0n"	4	1120	false	;
blue0i	"blue0i"	9	1173	true	;
full1i	"full1i"	44	1093	false	;
full1n	"full1n"	44	1200	false	;
full1i	"full1i"	44	1173	false	;
full1n	"full1n"	44	1227	false	;
blue1i	"blue1i"	99	1200	true	;
full0n	"full0n"	4	1280	false	;
full1n	"full1n"	44	1093	false	;
full0i	"full0i"	4	1253	false	;
full1i	"full1i"	44	1253	false	;
full0n	"full0n"	4	1253	false	;
full1n	"full1n"	44	1200	false	;
full1i	"full1i"	44	1280	false	;
full1n	"full1n"	44	1333	false	;
full1i	"full1i"	44	1147	false	;
full0i	"full0i"	4	1120	false	;
blue0n	"blue0n"	9	1200	true	;
full1n	"full1n"	44	1280	false	;
full1i	"full1i"	44	1333	false	;
full0i	"full0i"	4	1067	false	;
full0n	"full0n"	4	1253	false	;
full0i	"full0i"	4	1093	false	;
full1n	"full1n"	44	1200	false	;
full1i	"full1i"	44	1093	false	;
blue1n	"blue1n"	99	1227	true	;
full0n	"full0n"	4	1307	false	;
full1i	"full1i"	44	1067	false	;
full0i	"full0i"	4	1200	false	;
full0n	"full0n"	4	1173	false	;
full0i	"full0i"	4	1093	false	;
full1n	"full1n"	44	1333	false	;
full1i	"full1i"	44	1173	false	;
full1n	"full1n"	44	1307	false	;
blue1i	"blue1i"	99	1093	true	;
full1n	"full1n"	44	1280	false	;
full1i	"full1i"	44	1120	false	;
full1n	"full1n"	44	1253	false	;
full0n	"full0n"	4	1253	false	;
full0i	"full0i"	4	1307	false	;
full1i	"full1i"	44	1067	false	;
full1n	"full1n"	44	1147	false	;
full0n	"full0n"	4	1280	false	;
full1i	"full1i"	44	1173	false	;
blue0i	"blue0i"	9	1173	true	;
full0n	"full0n"	4	1147	false	;
full0i	"full0i"	4	1067	false	;
full0n	"full0n"	4	1227	false	;
full1n	"full1n"	44	1280	false	;
full1i	"full1i"	44	1227	false	;
full0i	"full0i"	4	1333	false	;
full0n	"full0n"	4	1333	false	;
full0i	"full0i"	4	1200	false	;
blue1n	"blue1n"	99	1333	true	;
full0n	"full0n"	4	1120	false	;
full1i	"full1i"	44	1307	false	;
full0i	"full0i"	4	1253	false	;
full0n	"full0n"	4	1067	false	;
full1n	"full1n"	44	1307	false	;
full0i	"full0i"	4	1280	false	;
full0n	"full0n"	4	1200	false	;
full0i	"full0i"	4	1147	false	;
full0n	"full0n"	4	1147	false	;
full0i	"full0i"	4	1280	false	;
full1i	"full1i"	44	1120	false	;
full0n	"full0n"	4	1120	false	;
full0i	"full0i"	4	1200	false	;
full0n	"full0n"	4	1333	false	;
full0i	"full0i"	4	1307	false	;
blue0n	"blue0n"	9	1120	true	;
full1n	"full1n"	44	1200	false	;
full1i	"full1i"	44	1147	false	;
full0i	"full0i"	4	1307	false	;
full0n	"full0n"	4	1200	false	;
full1n	"full1n"	44	1227	false	;
full1i	"full1i"	44	1253	false	;
full0i	"full0i"	4	1280	false	;
full1n	"full1n"	44	1147	false	;
blue1i	"blue1i"	99	1093	true	;
full1n	"full1n"	44	1200	false	;
full0n	"full0n"	4	1173	false	;
full0i	"full0i"	4	1200	false	;
full0n	"full0n"	4	1067	false	;
full1i	"full1i"	44	1200	false	;
full1n	"full1n"	44	1200	false	;
full0i	"full0i"	4	1200	false	;
full1i	"full1i"	44	1120	false	;
full1n	"full1n"	44	1147	false	;
full1i	"full1i"	44	1200	false	;
full1n	"full1n"	44	1227	false	;
full1i	"full1i"	44	1173	false	;
blue0n	"blue0n"	9	1093	true	;
full1n	"full1n"	44	1147	false	;
full0i	"full0i"	4	1120	false	;
full1i	"full1i"	44	1173	false	;
full1n	"full1n"	44	1120	false	;
full1i	"full1i"	44	1067	false	;
full0n	"full0n"	4	1120	false	;
default "default" 250 2000 false ;
default "default" 129 100 false ;
};	