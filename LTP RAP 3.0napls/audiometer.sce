#This scenario is designed to hearing thresholds for the three
#pure tones (500, 633, and 1000Hz) used in the NAPLS erp paradigms
#It also tests the cedrus rb830 button box before any other task
#begins, just in case...
scenario = "LTP_RAP_audiometer10282014";     
pcl_file = "audiometer.pcl";
scenario_type = trials;    
response_matching = simple_matching;
active_buttons = 2;
button_codes = 1,2;  
target_button_codes = 1,2;
no_logfile = false;  
default_background_color = 0,0,0;   
           
begin;
array {
#1000Hz, left ear only...
sound{  wavefile {filename = "f700Hz.wav"	;}	; attenuation = 0.0;
pan = 0;} tone1;
#1000Hz, right ear only
sound{  wavefile {filename = "f800Hz.wav"	;}	; attenuation = 0.0;
pan = 0;} tone2;
#633Hz, left ear only
sound{  wavefile {filename = "f900Hz.wav"	;}	; attenuation = 0.0;
pan = 0;} tone3;
#633, right only
sound{  wavefile {filename = "f1000Hz.wav"	;}	; attenuation = 0.0;
pan = 0;} tone4;
#500 left
sound{  wavefile {filename = "f1100Hz.wav"	;}	; attenuation = 0.0;
pan = 0;} tone5;
#500 right
sound{  wavefile {filename = "f1200Hz.wav"	;}	; attenuation = 0.0;
pan = 0;} tone6;

} snds;

bitmap { filename = "cedrusRight.png";} cR;
bitmap { filename = "cedrusLeft.png";} cL;
bitmap { filename = "cedrusGood.png";} cG;


picture {         text { caption = "+"; 
               font_size = 28;
               font_color = 255,255,255;
               };
           x = 0; y = 0;} default; 
           
# this displays the right ear instructions
trial {
   trial_duration = forever;
   
   trial_type = correct_response;
   
   picture{
      bitmap cR;
      x = 0; y = 0;
   };
   
   time = 0;
	target_button = 2;   
	duration = next_picture;
   
}instructionR;

trial {
   trial_duration = forever;
   
   trial_type = correct_response;
   
   picture{
      bitmap cL;
      x = 0; y = 0;
   };
   
   time = 0;
   target_button = 1;
   duration = next_picture;
}instructionL;

trial {
	stimulus_event {
	picture{text { caption = "Great Job!\nNow we will begin."	; 
               	font_size = 48	;
               	font_color = 255,255,255; }	;
		x = 0	; y = 0	;}	;
        duration = 2000	;
        code = "AudiometerStart"	;
     	}	;
}greatJob;

trial {
   trial_duration = 3000;
 
   picture{
      bitmap cG;
      x = 0; y = 0;
   };
   
   time = 0;
   duration = next_picture;
}instructionDone;


trial {    
      trial_duration = 1200; 
      
      stimulus_event {
      sound tone1;
      code = "tone1";       
      time = 0;
      target_button = 1;
      } sound_event;
      
}soundTrial;