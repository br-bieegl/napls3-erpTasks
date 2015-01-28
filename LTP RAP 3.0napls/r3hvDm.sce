#######################################################################
###########                 SCENARIO HEADER                 ###########
#######################################################################
#*The scenario header defines all the parameters needed for the scenario
#and resets any of the default settings if desired.*/

# the name of the scenario/experiment
scenario = "visual LTP Rap V4.0 HVD (based on combined block 1+2 from old 45 135 degree pilot)";
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

bitmap {filename = "defaultblack.png";} def; 


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

#e.g. pix6con0.24o180.png
bitmap {filename = "pix6con0.35o90.png";} R45;
bitmap {filename = "pix6con0.35o180.png";} R135;
bitmap {filename = "pix6con0.35o90i.png";} R45i;
bitmap {filename = "pix6con0.35o180i.png";} R135i; 

#targets:
bitmap {filename = "pix6con0.72o90.png";} T45;
bitmap {filename = "pix6con0.72o180.png";} T135;
bitmap {filename = "pix6con0.72o90i.png";} T45i;
bitmap {filename = "pix6con0.72o180i.png";} T135i; 

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
		bitmap T45;
		x = 0; y = 0;
      #text {caption = "+";
		#		font_size = 72;
		#		font_color = 255,0,0;}; # fixation cross
		#x = 0; y = 0; # centre of screen
}blue0n;

#blue0i is 45 deg patch, inverted
picture {
		bitmap T45i;
		x = 0; y = 0;
      #text {caption = "+";
		#		font_size = 72;
		#		font_color = 255,0,0;}; # fixation cross
      #x = 0; y = 0; # centre of screen
}blue0i;

#blue1n is 135 deg patch, normal
picture {
		bitmap T135;
		x = 0; y = 0;
            #text {caption = "+";
		#		font_size = 72;
		#		font_color = 255,0,0;}; # fixation cross
		#x = 0; y = 0; # centre of screen
}blue1n;

#blue1n is 135 deg patch, inverted
picture {
		bitmap T135i;
		x = 0; y = 0;
      #text {caption = "+";
		#		font_size = 72;
		#		font_color = 255,0,0;}; # fixation cross
      #x = 0; y = 0; # centre of screen
}blue1i;

# this tells the scenario to see the template file 'patch LTP trial.tem' to see
# how it is supposed to run each trial; the codes, trigger values, 
# correct responses, and any other variables for each stimuli must be
# set here

TEMPLATE "patch LTP trial.tem"  {      
the_picture the_code trigger_value  SOA   foo	offst     ;
full1n "full1n" 55 1147 false 	462	;
full0n "full0n" 5 1173 false 	262	;
full0i "full0i" 5 1280 false 	429	;
blue0n "blue0n" 9 1200 true 	262	;
full1i "full1i" 55 1093 false 	395	;
full1n "full1n" 55 1120 false 	245	;
full0i "full0i" 5 1067 false 	479	;
full1i "full1i" 55 1200 false 	245	;
full0n "full0n" 5 1333 false 	279	;
full1n "full1n" 55 1200 false 	462	;
full1i "full1i" 55 1067 false 	479	;
full1n "full1n" 55 1280 false 	412	;
full1i "full1i" 55 1307 false 	462	;
full0i "full0i" 5 1253 false 	395	;
blue0n "blue0n" 9 1200 true 	295	;
full0i "full0i" 5 1067 false 	429	;
full0n "full0n" 5 1253 false 	412	;
full1n "full1n" 55 1093 false 	312	;
full0i "full0i" 5 1280 false 	379	;
full0n "full0n" 5 1147 false 	412	;
full1i "full1i" 55 1173 false 	245	;
full1n "full1n" 55 1067 false 	412	;
full0i "full0i" 5 1253 false 	295	;
full0n "full0n" 5 1173 false 	279	;
full0i "full0i" 5 1147 false 	312	;
full1i "full1i" 55 1120 false 	479	;
blue1n "blue1n" 99 1147 true 	412	;
full0n "full0n" 5 1200 false 	495	;
full1i "full1i" 55 1120 false 	445	;
full1n "full1n" 55 1120 false 	445	;
full1i "full1i" 55 1333 false 	412	;
full1n "full1n" 55 1280 false 	445	;
full0i "full0i" 5 1120 false 	245	;
full0n "full0n" 5 1253 false 	395	;
full0i "full0i" 5 1147 false 	479	;
full1i "full1i" 55 1307 false 	279	;
full1n "full1n" 55 1200 false 	429	;
full1i "full1i" 55 1227 false 	329	;
full1n "full1n" 55 1227 false 	495	;
full0n "full0n" 5 1147 false 	312	;
full0i "full0i" 5 1333 false 	395	;
full0n "full0n" 5 1333 false 	395	;
blue1i "blue1i" 99 1173 true 	479	;
full0i "full0i" 5 1280 false 	295	;
full1n "full1n" 55 1307 false 	312	;
full1i "full1i" 55 1253 false 	329	;
full0n "full0n" 5 1120 false 	279	;
blue1n "blue1n" 99 1093 true 	412	;
full1i "full1i" 55 1067 false 	362	;
blue0i "blue0i" 9 1093 true 	379	;
full1n "full1n" 55 1173 false 	295	;
full1i "full1i" 55 1200 false 	479	;
full1n "full1n" 55 1173 false 	445	;
full1i "full1i" 55 1227 false 	445	;
blue1n "blue1n" 99 1120 true 	312	;
full0n "full0n" 5 1147 false 	445	;
full1i "full1i" 55 1120 false 	312	;
full1n "full1n" 55 1067 false 	345	;
full1i "full1i" 55 1093 false 	429	;
full1n "full1n" 55 1120 false 	295	;
full1i "full1i" 55 1173 false 	345	;
blue1n "blue1n" 99 1227 true 	329	;
full0i "full0i" 5 1307 false 	312	;
full1i "full1i" 55 1200 false 	462	;
full0n "full0n" 5 1280 false 	262	;
full1n "full1n" 55 1147 false 	362	;
full1i "full1i" 55 1067 false 	479	;
full1n "full1n" 55 1200 false 	329	;
full1i "full1i" 55 1093 false 	379	;
full0i "full0i" 5 1333 false 	379	;
full1n "full1n" 55 1227 false 	445	;
full0n "full0n" 5 1067 false 	479	;
full1i "full1i" 55 1147 false 	262	;
full0i "full0i" 5 1200 false 	445	;
full1n "full1n" 55 1200 false 	429	;
full0n "full0n" 5 1227 false 	379	;
blue0i "blue0i" 9 1333 true 	279	;
full0n "full0n" 5 1200 false 	412	;
full0i "full0i" 5 1280 false 	245	;
full1i "full1i" 55 1093 false 	479	;
full1n "full1n" 55 1253 false 	279	;
full1i "full1i" 55 1333 false 	395	;
full0n "full0n" 5 1120 false 	379	;
full1n "full1n" 55 1173 false 	462	;
full1i "full1i" 55 1093 false 	395	;
full1n "full1n" 55 1333 false 	312	;
full0i "full0i" 5 1307 false 	379	;
full1i "full1i" 55 1200 false 	245	;
full0n "full0n" 5 1280 false 	429	;
full0i "full0i" 5 1200 false 	395	;
full0n "full0n" 5 1200 false 	412	;
full1n "full1n" 55 1307 false 	412	;
full0i "full0i" 5 1147 false 	429	;
blue1i "blue1i" 99 1093 true 	395	;
full0n "full0n" 5 1120 false 	279	;
full1n "full1n" 55 1253 false 	412	;
full0i "full0i" 5 1253 false 	312	;
full0n "full0n" 5 1280 false 	362	;
full1i "full1i" 55 1333 false 	379	;
full0i "full0i" 5 1227 false 	345	;
full0n "full0n" 5 1147 false 	245	;
full0i "full0i" 5 1120 false 	279	;
full0n "full0n" 5 1227 false 	345	;
full0i "full0i" 5 1200 false 	295	;
full1n "full1n" 55 1200 false 	495	;
full0n "full0n" 5 1227 false 	429	;
full0i "full0i" 5 1333 false 	479	;
full0n "full0n" 5 1173 false 	345	;
blue0i "blue0i" 9 1200 true 	379	;
full0n "full0n" 5 1307 false 	329	;
full0i "full0i" 5 1093 false 	295	;
full1i "full1i" 55 1307 false 	262	;
full1n "full1n" 55 1307 false 	329	;
full0n "full0n" 5 1333 false 	479	;
full1i "full1i" 55 1200 false 	429	;
full1n "full1n" 55 1173 false 	379	;
full1i "full1i" 55 1067 false 	395	;
full1n "full1n" 55 1200 false 	312	;
blue0i "blue0i" 9 1173 true 	429	;
full0n "full0n" 5 1227 false 	295	;
full0i "full0i" 5 1307 false 	429	;
full1i "full1i" 55 1067 false 	262	;
full0n "full0n" 5 1200 false 	412	;
full0i "full0i" 5 1253 false 	479	;
full0n "full0n" 5 1280 false 	262	;
full0i "full0i" 5 1280 false 	312	;
full0n "full0n" 5 1200 false 	479	;
full0i "full0i" 5 1227 false 	362	;
blue1n "blue1n" 99 1253 true 	445	;
full0n "full0n" 5 1253 false 	412	;
full0i "full0i" 5 1307 false 	462	;
full1i "full1i" 55 1147 false 	429	;
full1n "full1n" 55 1093 false 	362	;
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
the_picture the_code trigger_value  SOA   foo	offst     ;
full0n "full0n" 6 1120 false 	462	;
full1n "full1n" 66 1200 false 	262	;
full1i "full1i" 66 1173 false 	429	;
full1n "full1n" 66 1067 false 	262	;
full0i "full0i" 6 1280 false 	395	;
full0n "full0n" 6 1147 false 	245	;
full1i "full1i" 66 1227 false 	479	;
full0i "full0i" 6 1200 false 	245	;
blue0n "blue0n" 9 1173 true 	279	;
full0i "full0i" 6 1280 false 	462	;
full1n "full1n" 66 1120 false 	479	;
full0n "full0n" 6 1253 false 	412	;
full0i "full0i" 6 1227 false 	462	;
blue1i "blue1i" 99 1173 true 	395	;
full1n "full1n" 66 1067 false 	295	;
full1i "full1i" 66 1147 false 	429	;
full1n "full1n" 66 1200 false 	412	;
full0n "full0n" 6 1253 false 	312	;
full1i "full1i" 66 1307 false 	379	;
full1n "full1n" 66 1200 false 	412	;
full0i "full0i" 6 1200 false 	245	;
blue0n "blue0n" 9 1093 true 	412	;
full1i "full1i" 66 1253 false 	295	;
full1n "full1n" 66 1067 false 	279	;
full1i "full1i" 66 1307 false 	312	;
full0i "full0i" 6 1200 false 	479	;
full0n "full0n" 6 1093 false 	412	;
full1n "full1n" 66 1333 false 	495	;
full0i "full0i" 6 1120 false 	445	;
full1i "full1i" 66 1307 false 	445	;
full0n "full0n" 6 1147 false 	412	;
full0i "full0i" 6 1200 false 	445	;
blue0n "blue0n" 9 1147 true 	245	;
full1n "full1n" 66 1147 false 	395	;
full1i "full1i" 66 1333 false 	479	;
full0i "full0i" 6 1253 false 	279	;
full0n "full0n" 6 1120 false 	429	;
full0i "full0i" 6 1173 false 	329	;
full0n "full0n" 6 1200 false 	495	;
full1n "full1n" 66 1093 false 	312	;
full1i "full1i" 66 1093 false 	395	;
full1n "full1n" 66 1093 false 	395	;
full0i "full0i" 6 1067 false 	479	;
full1i "full1i" 66 1227 false 	295	;
full0n "full0n" 6 1253 false 	312	;
full0i "full0i" 6 1200 false 	329	;
blue1n "blue1n" 99 1227 true 	279	;
full0n "full0n" 6 1173 false 	412	;
full0i "full0i" 6 1200 false 	362	;
full1i "full1i" 66 1333 false 	379	;
full0n "full0n" 6 1173 false 	295	;
full0i "full0i" 6 1333 false 	479	;
full0n "full0n" 6 1147 false 	445	;
full0i "full0i" 6 1120 false 	445	;
full0n "full0n" 6 1307 false 	312	;
full1n "full1n" 66 1227 false 	445	;
blue0i "blue0i" 9 1253 true 	312	;
full0n "full0n" 6 1227 false 	345	;
full0i "full0i" 6 1067 false 	429	;
full0n "full0n" 6 1280 false 	295	;
full0i "full0i" 6 1200 false 	345	;
full0n "full0n" 6 1200 false 	329	;
full1i "full1i" 66 1200 false 	312	;
blue0i "blue0i" 9 1200 true 	462	;
full1n "full1n" 66 1067 false 	262	;
full0n "full0n" 6 1227 false 	362	;
full0i "full0i" 6 1307 false 	479	;
full0n "full0n" 6 1307 false 	329	;
full0i "full0i" 6 1200 false 	379	;
full1i "full1i" 66 1173 false 	379	;
full0n "full0n" 6 1093 false 	445	;
full1n "full1n" 66 1173 false 	479	;
full0i "full0i" 6 1147 false 	262	;
full1i "full1i" 66 1333 false 	445	;
full0n "full0n" 6 1147 false 	429	;
full1n "full1n" 66 1227 false 	379	;
full1i "full1i" 66 1120 false 	279	;
blue1n "blue1n" 99 1093 true 	412	;
full1i "full1i" 66 1253 false 	245	;
full0i "full0i" 6 1280 false 	479	;
full0n "full0n" 6 1253 false 	279	;
full0i "full0i" 6 1093 false 	395	;
blue1n "blue1n" 99 1093 true 	379	;
full0n "full0n" 6 1333 false 	462	;
full0i "full0i" 6 1120 false 	395	;
full0n "full0n" 6 1333 false 	312	;
full1i "full1i" 66 1253 false 	379	;
full0i "full0i" 6 1120 false 	245	;
full1n "full1n" 66 1253 false 	429	;
full1i "full1i" 66 1147 false 	395	;
full1n "full1n" 66 1093 false 	412	;
full0n "full0n" 6 1280 false 	412	;
full1i "full1i" 66 1200 false 	429	;
full0i "full0i" 6 1120 false 	395	;
full1n "full1n" 66 1067 false 	279	;
blue0n "blue0n" 9 1200 true 	412	;
full1i "full1i" 66 1120 false 	312	;
full1n "full1n" 66 1280 false 	362	;
full0i "full0i" 6 1147 false 	379	;
full1i "full1i" 66 1227 false 	345	;
full1n "full1n" 66 1333 false 	245	;
full1i "full1i" 66 1280 false 	279	;
full1n "full1n" 66 1173 false 	345	;
full1i "full1i" 66 1307 false 	295	;
full0n "full0n" 6 1067 false 	495	;
full1n "full1n" 66 1307 false 	429	;
full1i "full1i" 66 1227 false 	479	;
full1n "full1n" 66 1307 false 	345	;
full1i "full1i" 66 1307 false 	379	;
full1n "full1n" 66 1200 false 	329	;
full1i "full1i" 66 1280 false 	295	;
full0i "full0i" 6 1093 false 	262	;
full0n "full0n" 6 1253 false 	329	;
blue1n "blue1n" 99 1120 true 	479	;
full0i "full0i" 6 1200 false 	429	;
full0n "full0n" 6 1147 false 	379	;
full0i "full0i" 6 1173 false 	395	;
full0n "full0n" 6 1333 false 	312	;
full1i "full1i" 66 1200 false 	429	;
full1n "full1n" 66 1067 false 	295	;
full1i "full1i" 66 1333 false 	429	;
blue0i "blue0i" 9 1333 true 	262	;
full1n "full1n" 66 1067 false 	412	;
full1i "full1i" 66 1147 false 	479	;
full1n "full1n" 66 1227 false 	262	;
full1i "full1i" 66 1280 false 	312	;
full1n "full1n" 66 1120 false 	479	;
full1i "full1i" 66 1280 false 	362	;
full0n "full0n" 6 1280 false 	445	;
full1n "full1n" 66 1173 false 	412	;
blue1i "blue1i" 99 1200 true 	462	;
full0i "full0i" 6 1307 false 	429	;
full0n "full0n" 6 1200 false 	362	;
default "default" 250 2000 false	250 ;
default "default" 129 100 false	250 ;
};	