#it does not match the risto "optimum MMN" paper
 
scenario = "PS3_roving_MMNpractice_04072014";
#adapted from "nvMMNa5_napls06122009"; 
#attenuation updated for ER1 insert earphones and X-fi gamer card
pcl_file = "nvMMNCommands.pcl";
scenario_type = trials	; 
write_codes = true	;
response_matching = simple_matching	;
active_buttons = 2;
button_codes = 101, 10;
target_button_codes = 2,11;
pulse_width = 1	;
default_trial_type = fixed	;       
default_background_color = 0,0,0	;
 
begin	;               
#standard tone:
sound{  wavefile {filename = "s50.wav"	;}	; attenuation = 0.3	;} s	; 

#Duration Deviant (25ms)
sound{  wavefile {filename = "d25.wav"	;}	; attenuation = 0.3	;} Dd	;       

#Frequency Deviant (50ms higher pitch)
sound{ wavefile {filename = "hi50.wav"	;}	; attenuation = 0.3	;} Fd	;

#Combination Deviant (100ms 1000Hz, 10ms rise/fall)
sound{ wavefile {filename = "hi100.wav"	;}	; attenuation = 0.3	;} Cd	;

#silence tone placeholder
sound{ wavefile {filename = "s50.wav"	;}	; attenuation = 1	;} silence	;

picture{text { caption = "+"	; 
                font_size = 48	;
                font_color = 255,255,255	;}	;
           	x = 0	; y = 0	;
         
         } default;


constant_force {
   duration = 100;
   axes = 7;
   direction = 0;

   magnitude = 1.0; # constant force for 125 ms
	gain = 1.0;
} T;

constant_force {
   duration = 100;
   axes = 7,8;
   direction = 0;

   magnitude = 1.0; # constant force for 175 ms
	gain = 1.0;
#envelope params
	#attack_level = 0.7;
	#attack_time = 100;
	#fade_level = 0.0;
	#fade_time = 100;


} N;

constant_force {
   duration = 200;
   axes = 8;
   direction = 0;

   magnitude = 1.0; # constant force for 250 ms
} S;




trial {
       
	stimulus_event {
	picture{text { caption = "During this task, the controller will shake about every 2 seconds.\n\nMost of the time, it will shake like this."	; 
                font_size = 36	;
                font_color = 255,255,255	;}	;
           	x = 0	; y = 0	;}	;
         time = 0	; 
         duration = 5000	;
         }	; 

force_feedback {
			constant_force S;
			# force_feedback_start by default
		};
		time = 4000;


	stimulus_event {
	picture{text { caption = "Sometimes, it will shake for a shorter period of time.\n\nYour job will be to press a button when it shakes like this."	; 
                font_size = 36	;
                font_color = 255,255,255	;}	;
           	x = 0	; y = 0	;}	;
         time = 5000	; 
         duration = 5000	;
         }	; 


force_feedback {
			constant_force T;
			# force_feedback_start by default
		};
		time = 9000;


stimulus_event {
	picture{text { caption = "It is very short!\n\nHere it is again."	; 
                font_size = 36	;
                font_color = 255,255,255	;}	;
           	x = 0	; y = 0	;}	;
         time = 10000	; 
         duration = 3000	;
         }	; 


force_feedback {
			constant_force T;
			# force_feedback_start by default
		};
		time = 12000;

stimulus_event {
	picture{text { caption = "It will also shake on the other side to distract you.\n\nDo not respond to shakes like this."	; 
                font_size = 36	;
                font_color = 255,255,255	;}	;
           	x = 0	; y = 0	;}	;
         time = 13000	; 
         duration = 5000	;
         }	; 


force_feedback {
			constant_force N;
			# force_feedback_start by default
		};
		time = 16500;
		
	stimulus_event {
	picture{text { caption = "You will also hear a series of tones.\n\nPlease try to ignore these tones."	; 
                font_size = 36	;
                font_color = 255,255,255	;}	;
           	x = 0	; y = 0	;}	;
         time = 18000	; 
         duration = 5000	;
         }	;        



	stimulus_event {
	picture{text { caption = "Let's try some practice.\n\n(Hint: the third shake requires a press)."	; 
                font_size = 36	;
                font_color = 255,255,255	;}	;
           	x = 0	; y = 0	;}	;
         time = 23000	; 
         duration = 5000	;
         }	;  
}	;


 
TEMPLATE "ps3MMNrov400.tem"{   
#pic	word	picPort	wordPort	targResp	picTime	wrdTime	snd1	s1Port	snd2	s2Port	snd3	s3Port	snd4	s4Port	snd5	s5Port	snd6	s6Port ;	
pic	picPort	targResp	picTime	snd1	s1Port	snd2	s2Port	snd3	s3Port	snd4	s4Port;
S	50	2	216	s	1	s	1	s	1	s	1	;
S	50	2	413	s	1	s	1	s	1	s	1	;
T	100	1	42	s	1	s	1	s	1	Cd	7	;
S	50	2	67	Cd	7	Cd	7	s	1	s	1	;
S	50	2	87	s	1	s	1	s	1	s	1	;
S	50	2	195	Cd	7	Cd	7	Cd	7	Cd	7	;
S	50	2	416	Cd	7	Cd	7	Cd	7	Cd	7	;
N	200	2	402	Cd	7	s	1	s	1	s	1	;
S	50	2	30	s	1	Cd	7	Cd	7	Cd	7	;
S	50	2	200	s	1	s	1	s	1	s	1	;
T	100	1	263	s	1	Cd	7	Cd	7	Cd	7	;
S	50	2	208	Cd	7	Cd	7	Cd	7	Cd	7	;
S	50	2	328	Cd	7	Cd	7	Cd	7	Cd	7	;
S	50	2	314	Cd	7	Cd	7	Cd	7	s	1	;
T	100	2	146	s	1	s	1	s	1	s	1	;
}	;

trial {
stimulus_event {
      picture{ text { caption = "Please keep your eyes fixed on the plus sign\n\nand try to respond as quickly and accurately as possible."; 
               font_size = 36;
               font_color = 255,255,255;
               };
		x = 0; y = 0;
      };  
      time = 2000;
		duration = 5000;
      }; 
};