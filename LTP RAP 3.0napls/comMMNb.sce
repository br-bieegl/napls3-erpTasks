#it does not match the risto "optimum MMN" paper
 
scenario = "PS3_roving_combination_MMNb_01072015";
#adapted from "nvMMNa5_napls06122009"; 
#attenuation updated for ER1 insert earphones and X-fi gamer card
#Note: this is based on the baldeweg-style of pitch deviance with
#the additional constraint that a transition be no more than 300Hz
#---
#Modified Jan 2015 to include the new sequences where we have 3, 8, and 33
#standards preceding deviants instead of the previously used 2, 6, and 36

pcl_file = "nvMMNCommands.pcl";
scenario_type = trials	; 
write_codes = true	;
response_matching = simple_matching	;
active_buttons = 2;
button_codes = 64, 10;
target_button_codes = 255,11;
pulse_width = 1	;
default_trial_type = fixed	;       
default_background_color = 0,0,0	;
 
begin	;               
#standard tone:
sound{  wavefile {filename = "s50.wav"	;}	; attenuation = 0.3	;} s633	; 

#700Hz
sound{  wavefile {filename = "f700Hz.wav"	;}	; attenuation = 0.3	;} f700Hz	;       
#750Hz
sound{  wavefile {filename = "f750Hz.wav"	;}	; attenuation = 0.3	;} f750Hz	;       
#800Hz
sound{  wavefile {filename = "f800Hz.wav"	;}	; attenuation = 0.3	;} f800Hz	;       
#850Hz
sound{  wavefile {filename = "f850Hz.wav"	;}	; attenuation = 0.3	;} f850Hz	;       
#900Hz
sound{  wavefile {filename = "f900Hz.wav"	;}	; attenuation = 0.3	;} f900Hz	;       
#950Hz
sound{  wavefile {filename = "f950Hz.wav"	;}	; attenuation = 0.3	;} f950Hz	;       
#1000Hz
sound{  wavefile {filename = "f1000Hz.wav"	;}	; attenuation = 0.3	;} f1000Hz	;       
#1050Hz
sound{  wavefile {filename = "f1050Hz.wav"	;}	; attenuation = 0.3	;} f1050Hz	;       
#1100Hz
sound{  wavefile {filename = "f1100Hz.wav"	;}	; attenuation = 0.3	;} f1100Hz	;       
#1150Hz
sound{  wavefile {filename = "f1150Hz.wav"	;}	; attenuation = 0.3	;} f1150Hz	;       
#1200Hz
sound{  wavefile {filename = "f1200Hz.wav"	;}	; attenuation = 0.3	;} f1200Hz	;       
#1250Hz
sound{  wavefile {filename = "f1250Hz.wav"	;}	; attenuation = 0.3	;} f1250Hz	;       

#long duration tones:

#700Hz
sound{  wavefile {filename = "f700Hz100ms.wav"	;}	; attenuation = 0.3	;} f700Hz100ms	;       
#750Hz
sound{  wavefile {filename = "f750Hz100ms.wav"	;}	; attenuation = 0.3	;} f750Hz100ms	;       
#800Hz
sound{  wavefile {filename = "f800Hz100ms.wav"	;}	; attenuation = 0.3	;} f800Hz100ms	;       
#850Hz
sound{  wavefile {filename = "f850Hz100ms.wav"	;}	; attenuation = 0.3	;} f850Hz100ms	;       
#900Hz
sound{  wavefile {filename = "f900Hz100ms.wav"	;}	; attenuation = 0.3	;} f900Hz100ms	;       
#950Hz
sound{  wavefile {filename = "f950Hz100ms.wav"	;}	; attenuation = 0.3	;} f950Hz100ms	;       
#1000Hz
sound{  wavefile {filename = "f1000Hz100ms.wav"	;}	; attenuation = 0.3	;} f1000Hz100ms	;       
#1050Hz
sound{  wavefile {filename = "f1050Hz100ms.wav"	;}	; attenuation = 0.3	;} f1050Hz100ms	;       
#1100Hz
sound{  wavefile {filename = "f1100Hz100ms.wav"	;}	; attenuation = 0.3	;} f1100Hz100ms	;       
#1150Hz
sound{  wavefile {filename = "f1150Hz100ms.wav"	;}	; attenuation = 0.3	;} f1150Hz100ms	;       
#1200Hz
sound{  wavefile {filename = "f1200Hz100ms.wav"	;}	; attenuation = 0.3	;} f1200Hz100ms	;       
#1250Hz
sound{  wavefile {filename = "f1250Hz100ms.wav"	;}	; attenuation = 0.3	;} f1250Hz100ms	;       

#silence tone placeholder
sound{ wavefile {filename = "s50.wav"	;}	; attenuation = 1	;} silence	;

picture{text { caption = "+"	; 
                font_size = 48	;
                font_color = 255,255,255	;}	;
           	x = 0	; y = 0	;
         
         } default;

trial {
	stimulus_event {
	picture{text { caption = "3"	; 
               	font_size = 48	;
               	font_color = 255,255,255	;}	;
		x = 0	; y = 0	;}	;
        duration = 1500	;
        code = "83"	;
        
        port_code = 128	;
     	}	;

	stimulus_event {
	picture{text { caption = "2"	; 
                font_size = 48	;
                font_color = 255,255,255	;}	;
          	x = 0	; y = 0	;}	;
	time = 2000	; 
	duration = 1500	;
	code = "82"	;
       	}	;  
       
	stimulus_event {
	picture{text { caption = "1"	; 
                font_size = 48	;
                font_color = 255,255,255	;}	;
           	x = 0	; y = 0	;}	;
         time = 4000	; 
         duration = 1500	;
         code = "81"	; 
         
         }	;        
}	;


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

 
TEMPLATE "ps3MMNrov400.tem"{   
#pic	word	picPort	wordPort	targResp	picTime	wrdTime	snd1	s1Port	snd2	s2Port	snd3	s3Port	snd4	s4Port	snd5	s5Port	snd6	s6Port ;	
pic	picPort	targResp	picTime	snd1	s1Port	snd2	s2Port	snd3	s3Port	snd4	s4Port;
S	50	2	322	f1250Hz	102	f1250Hz	2	f1250Hz	3	f1250Hz	4	;
S	50	2	189	f1250Hz	5	f1250Hz	6	f1250Hz	7	f1250Hz	8	;
S	50	2	306	f1250Hz	9	f1250Hz	10	f1250Hz	11	f1250Hz	12	;
S	50	2	266	f1250Hz	13	f1250Hz	14	f1250Hz	15	f1250Hz	16	;
T	100	1	175	f1250Hz	17	f1250Hz	18	f1250Hz	19	f1250Hz	20	;
S	50	2	470	f1250Hz	21	f1250Hz	22	f1250Hz	23	f1250Hz	24	;
S	50	2	438	f1250Hz	25	f1250Hz	26	f1250Hz	27	f1250Hz	28	;
S	50	2	275	f1250Hz	29	f1250Hz	30	f1250Hz	31	f1250Hz	32	;
N	200	2	311	f1250Hz	33	f1050Hz100ms	1	f1050Hz100ms	2	f1050Hz100ms	3	;
S	50	2	294	f1050Hz100ms	4	f1050Hz100ms	5	f1050Hz100ms	6	f1050Hz100ms	7	;
S	50	2	104	f1050Hz100ms	8	f1050Hz100ms	9	f1050Hz100ms	10	f1050Hz100ms	11	;
S	50	2	151	f1050Hz100ms	12	f1050Hz100ms	13	f1050Hz100ms	14	f1050Hz100ms	15	;
S	50	2	235	f1050Hz100ms	16	f1050Hz100ms	17	f1050Hz100ms	18	f1050Hz100ms	19	;
S	50	2	115	f1050Hz100ms	20	f1050Hz100ms	21	f1050Hz100ms	22	f1050Hz100ms	23	;
S	50	2	422	f1050Hz100ms	24	f1050Hz100ms	25	f1050Hz100ms	26	f1050Hz100ms	27	;
N	200	2	97	f1050Hz100ms	28	f1050Hz100ms	29	f1050Hz100ms	30	f1050Hz100ms	31	;
S	50	2	113	f1050Hz100ms	32	f1050Hz100ms	33	f1200Hz	1	f1200Hz	2	;
S	50	2	85	f1200Hz	3	f1100Hz100ms	1	f1100Hz100ms	2	f1100Hz100ms	3	;
S	50	2	114	f1100Hz100ms	4	f1100Hz100ms	5	f1100Hz100ms	6	f1100Hz100ms	7	;
S	50	2	218	f1100Hz100ms	8	f1200Hz	1	f1200Hz	2	f1200Hz	3	;
S	50	2	156	f1100Hz100ms	1	f1100Hz100ms	2	f1100Hz100ms	3	f1200Hz	1	;
N	200	2	462	f1200Hz	2	f1200Hz	3	f1050Hz100ms	1	f1050Hz100ms	2	;
S	50	2	215	f1050Hz100ms	3	f1050Hz100ms	4	f1050Hz100ms	5	f1050Hz100ms	6	;
S	50	2	92	f1050Hz100ms	7	f1050Hz100ms	8	f1050Hz100ms	9	f1050Hz100ms	10	;
S	50	2	452	f1050Hz100ms	11	f1050Hz100ms	12	f1050Hz100ms	13	f1050Hz100ms	14	;
S	50	2	490	f1050Hz100ms	15	f1050Hz100ms	16	f1050Hz100ms	17	f1050Hz100ms	18	;
S	50	2	219	f1050Hz100ms	19	f1050Hz100ms	20	f1050Hz100ms	21	f1050Hz100ms	22	;
T	100	1	56	f1050Hz100ms	23	f1050Hz100ms	24	f1050Hz100ms	25	f1050Hz100ms	26	;
S	50	2	129	f1050Hz100ms	27	f1050Hz100ms	28	f1050Hz100ms	29	f1050Hz100ms	30	;
S	50	2	204	f1050Hz100ms	31	f1050Hz100ms	32	f1050Hz100ms	33	f1250Hz	1	;
S	50	2	297	f1250Hz	2	f1250Hz	3	f1050Hz100ms	1	f1050Hz100ms	2	;
S	50	2	131	f1050Hz100ms	3	f1050Hz100ms	4	f1050Hz100ms	5	f1050Hz100ms	6	;
T	100	1	301	f1050Hz100ms	7	f1050Hz100ms	8	f1050Hz100ms	9	f1050Hz100ms	10	;
S	50	2	356	f1050Hz100ms	11	f1050Hz100ms	12	f1050Hz100ms	13	f1050Hz100ms	14	;
S	50	2	111	f1050Hz100ms	15	f1050Hz100ms	16	f1050Hz100ms	17	f1050Hz100ms	18	;
S	50	2	59	f1050Hz100ms	19	f1050Hz100ms	20	f1050Hz100ms	21	f1050Hz100ms	22	;
S	50	2	148	f1050Hz100ms	23	f1050Hz100ms	24	f1050Hz100ms	25	f1050Hz100ms	26	;
S	50	2	159	f1050Hz100ms	27	f1050Hz100ms	28	f1050Hz100ms	29	f1050Hz100ms	30	;
S	50	2	212	f1050Hz100ms	31	f1050Hz100ms	32	f1050Hz100ms	33	f750Hz	1	;
N	200	2	254	f750Hz	2	f750Hz	3	f750Hz	4	f750Hz	5	;
S	50	2	43	f750Hz	6	f750Hz	7	f750Hz	8	f750Hz	9	;
S	50	2	131	f750Hz	10	f750Hz	11	f750Hz	12	f750Hz	13	;
S	50	2	501	f750Hz	14	f750Hz	15	f750Hz	16	f750Hz	17	;
S	50	2	15	f750Hz	18	f750Hz	19	f750Hz	20	f750Hz	21	;
S	50	2	464	f750Hz	22	f750Hz	23	f750Hz	24	f750Hz	25	;
T	100	1	365	f750Hz	26	f750Hz	27	f750Hz	28	f750Hz	29	;
S	50	2	244	f750Hz	30	f750Hz	31	f750Hz	32	f750Hz	33	;
S	50	2	289	f900Hz100ms	1	f900Hz100ms	2	f900Hz100ms	3	f900Hz100ms	4	;
S	50	2	119	f900Hz100ms	5	f900Hz100ms	6	f900Hz100ms	7	f900Hz100ms	8	;
T	100	1	229	f900Hz100ms	9	f900Hz100ms	10	f900Hz100ms	11	f900Hz100ms	12	;
S	50	2	482	f900Hz100ms	13	f900Hz100ms	14	f900Hz100ms	15	f900Hz100ms	16	;
S	50	2	273	f900Hz100ms	17	f900Hz100ms	18	f900Hz100ms	19	f900Hz100ms	20	;
S	50	2	261	f900Hz100ms	21	f900Hz100ms	22	f900Hz100ms	23	f900Hz100ms	24	;
S	50	2	116	f900Hz100ms	25	f900Hz100ms	26	f900Hz100ms	27	f900Hz100ms	28	;
T	100	1	244	f900Hz100ms	29	f900Hz100ms	30	f900Hz100ms	31	f900Hz100ms	32	;
S	50	2	312	f900Hz100ms	33	f1100Hz	1	f1100Hz	2	f1100Hz	3	;
S	50	2	340	f1100Hz	4	f1100Hz	5	f1100Hz	6	f1100Hz	7	;
S	50	2	198	f1100Hz	8	f1250Hz100ms	1	f1250Hz100ms	2	f1250Hz100ms	3	;
S	50	2	184	f1250Hz100ms	4	f1250Hz100ms	5	f1250Hz100ms	6	f1250Hz100ms	7	;
S	50	2	494	f1250Hz100ms	8	f1250Hz100ms	9	f1250Hz100ms	10	f1250Hz100ms	11	;
S	50	2	19	f1250Hz100ms	12	f1250Hz100ms	13	f1250Hz100ms	14	f1250Hz100ms	15	;
T	100	1	443	f1250Hz100ms	16	f1250Hz100ms	17	f1250Hz100ms	18	f1250Hz100ms	19	;
S	50	2	457	f1250Hz100ms	20	f1250Hz100ms	21	f1250Hz100ms	22	f1250Hz100ms	23	;
S	50	2	398	f1250Hz100ms	24	f1250Hz100ms	25	f1250Hz100ms	26	f1250Hz100ms	27	;
T	100	1	49	f1250Hz100ms	28	f1250Hz100ms	29	f1250Hz100ms	30	f1250Hz100ms	31	;
S	50	2	131	f1250Hz100ms	32	f1250Hz100ms	33	f1150Hz	1	f1150Hz	2	;
S	50	2	168	f1150Hz	3	f1250Hz100ms	1	f1250Hz100ms	2	f1250Hz100ms	3	;
N	200	2	340	f1250Hz100ms	4	f1250Hz100ms	5	f1250Hz100ms	6	f1250Hz100ms	7	;
S	50	2	68	f1250Hz100ms	8	f1250Hz100ms	9	f1250Hz100ms	10	f1250Hz100ms	11	;
S	50	2	361	f1250Hz100ms	12	f1250Hz100ms	13	f1250Hz100ms	14	f1250Hz100ms	15	;
S	50	2	53	f1250Hz100ms	16	f1250Hz100ms	17	f1250Hz100ms	18	f1250Hz100ms	19	;
T	100	1	327	f1250Hz100ms	20	f1250Hz100ms	21	f1250Hz100ms	22	f1250Hz100ms	23	;
S	50	2	247	f1250Hz100ms	24	f1250Hz100ms	25	f1250Hz100ms	26	f1250Hz100ms	27	;
S	50	2	390	f1250Hz100ms	28	f1250Hz100ms	29	f1250Hz100ms	30	f1250Hz100ms	31	;
S	50	2	358	f1250Hz100ms	32	f1250Hz100ms	33	f950Hz	1	f950Hz	2	;
N	200	2	452	f950Hz	3	f700Hz100ms	1	f700Hz100ms	2	f700Hz100ms	3	;
S	50	2	445	f700Hz100ms	4	f700Hz100ms	5	f700Hz100ms	6	f700Hz100ms	7	;
S	50	2	167	f700Hz100ms	8	f700Hz100ms	9	f700Hz100ms	10	f700Hz100ms	11	;
T	100	1	349	f700Hz100ms	12	f700Hz100ms	13	f700Hz100ms	14	f700Hz100ms	15	;
S	50	2	99	f700Hz100ms	16	f700Hz100ms	17	f700Hz100ms	18	f700Hz100ms	19	;
S	50	2	15	f700Hz100ms	20	f700Hz100ms	21	f700Hz100ms	22	f700Hz100ms	23	;
S	50	2	372	f700Hz100ms	24	f700Hz100ms	25	f700Hz100ms	26	f700Hz100ms	27	;
N	200	2	250	f700Hz100ms	28	f700Hz100ms	29	f700Hz100ms	30	f700Hz100ms	31	;
S	50	2	240	f700Hz100ms	32	f700Hz100ms	33	f800Hz	1	f800Hz	2	;
T	100	1	452	f800Hz	3	f900Hz100ms	1	f900Hz100ms	2	f900Hz100ms	3	;
S	50	2	305	f900Hz100ms	4	f900Hz100ms	5	f900Hz100ms	6	f900Hz100ms	7	;
S	50	2	309	f900Hz100ms	8	f1050Hz	1	f1050Hz	2	f1050Hz	3	;
S	50	2	430	f1050Hz	4	f1050Hz	5	f1050Hz	6	f1050Hz	7	;
S	50	2	303	f1050Hz	8	f1050Hz	9	f1050Hz	10	f1050Hz	11	;
T	100	1	288	f1050Hz	12	f1050Hz	13	f1050Hz	14	f1050Hz	15	;
S	50	2	91	f1050Hz	16	f1050Hz	17	f1050Hz	18	f1050Hz	19	;
S	50	2	120	f1050Hz	20	f1050Hz	21	f1050Hz	22	f1050Hz	23	;
S	50	2	443	f1050Hz	24	f1050Hz	25	f1050Hz	26	f1050Hz	27	;
N	200	2	14	f1050Hz	28	f1050Hz	29	f1050Hz	30	f1050Hz	31	;
S	50	2	245	f1050Hz	32	f1050Hz	33	f1150Hz100ms	1	f1150Hz100ms	2	;
S	50	2	84	f1150Hz100ms	3	f950Hz	1	f950Hz	2	f950Hz	3	;
S	50	2	489	f750Hz100ms	1	f750Hz100ms	2	f750Hz100ms	3	f950Hz	1	;
S	50	2	356	f950Hz	2	f950Hz	3	f950Hz	4	f950Hz	5	;
S	50	2	250	f950Hz	6	f950Hz	7	f950Hz	8	f950Hz	9	;
S	50	2	236	f950Hz	10	f950Hz	11	f950Hz	12	f950Hz	13	;
N	200	2	30	f950Hz	14	f950Hz	15	f950Hz	16	f950Hz	17	;
S	50	2	341	f950Hz	18	f950Hz	19	f950Hz	20	f950Hz	21	;
S	50	2	261	f950Hz	22	f950Hz	23	f950Hz	24	f950Hz	25	;
S	50	2	48	f950Hz	26	f950Hz	27	f950Hz	28	f950Hz	29	;
S	50	2	409	f950Hz	30	f950Hz	31	f950Hz	32	f950Hz	33	;
S	50	2	409	f800Hz100ms	1	f800Hz100ms	2	f800Hz100ms	3	f800Hz100ms	4	;
S	50	2	361	f800Hz100ms	5	f800Hz100ms	6	f800Hz100ms	7	f800Hz100ms	8	;
S	50	2	75	f1050Hz	1	f1050Hz	2	f1050Hz	3	f1050Hz	4	;
S	50	2	330	f1050Hz	5	f1050Hz	6	f1050Hz	7	f1050Hz	8	;
N	200	2	259	f1050Hz	9	f1050Hz	10	f1050Hz	11	f1050Hz	12	;
S	50	2	486	f1050Hz	13	f1050Hz	14	f1050Hz	15	f1050Hz	16	;
S	50	2	324	f1050Hz	17	f1050Hz	18	f1050Hz	19	f1050Hz	20	;
S	50	2	500	f1050Hz	21	f1050Hz	22	f1050Hz	23	f1050Hz	24	;
S	50	2	227	f1050Hz	25	f1050Hz	26	f1050Hz	27	f1050Hz	28	;
S	50	2	216	f1050Hz	29	f1050Hz	30	f1050Hz	31	f1050Hz	32	;
S	50	2	413	f1050Hz	33	f750Hz100ms	1	f750Hz100ms	2	f750Hz100ms	3	;
T	100	1	42	f750Hz100ms	4	f750Hz100ms	5	f750Hz100ms	6	f750Hz100ms	7	;
S	50	2	67	f750Hz100ms	8	f1000Hz	1	f1000Hz	2	f1000Hz	3	;
S	50	2	87	f1000Hz	4	f1000Hz	5	f1000Hz	6	f1000Hz	7	;
S	50	2	195	f1000Hz	8	f700Hz100ms	1	f700Hz100ms	2	f700Hz100ms	3	;
S	50	2	416	f1000Hz	1	f1000Hz	2	f1000Hz	3	f1000Hz	4	;
N	200	2	202	f1000Hz	5	f1000Hz	6	f1000Hz	7	f1000Hz	8	;
S	50	2	30	f1250Hz100ms	1	f1250Hz100ms	2	f1250Hz100ms	3	f1250Hz100ms	4	;
S	50	2	200	f1250Hz100ms	5	f1250Hz100ms	6	f1250Hz100ms	7	f1250Hz100ms	8	;
T	100	1	263	f950Hz	1	f950Hz	2	f950Hz	3	f950Hz	4	;
S	50	2	208	f950Hz	5	f950Hz	6	f950Hz	7	f950Hz	8	;
S	50	2	328	f1050Hz100ms	1	f1050Hz100ms	2	f1050Hz100ms	3	f1050Hz100ms	4	;
S	50	2	314	f1050Hz100ms	5	f1050Hz100ms	6	f1050Hz100ms	7	f1050Hz100ms	8	;
S	50	2	146	f900Hz	1	f900Hz	2	f900Hz	3	f900Hz	4	;
S	50	2	216	f900Hz	5	f900Hz	6	f900Hz	7	f900Hz	8	;
S	50	2	8	f900Hz	9	f900Hz	10	f900Hz	11	f900Hz	12	;
T	100	1	492	f900Hz	13	f900Hz	14	f900Hz	15	f900Hz	16	;
S	50	2	84	f900Hz	17	f900Hz	18	f900Hz	19	f900Hz	20	;
S	50	2	53	f900Hz	21	f900Hz	22	f900Hz	23	f900Hz	24	;
S	50	2	186	f900Hz	25	f900Hz	26	f900Hz	27	f900Hz	28	;
S	50	2	99	f900Hz	29	f900Hz	30	f900Hz	31	f900Hz	32	;
S	50	2	245	f900Hz	33	f1100Hz100ms	1	f1100Hz100ms	2	f1100Hz100ms	3	;
N	200	2	170	f950Hz	1	f950Hz	2	f950Hz	3	f950Hz	4	;
S	50	2	476	f950Hz	5	f950Hz	6	f950Hz	7	f950Hz	8	;
S	50	2	460	f950Hz	9	f950Hz	10	f950Hz	11	f950Hz	12	;
S	50	2	26	f950Hz	13	f950Hz	14	f950Hz	15	f950Hz	16	;
T	100	1	369	f950Hz	17	f950Hz	18	f950Hz	19	f950Hz	20	;
S	50	2	135	f950Hz	21	f950Hz	22	f950Hz	23	f950Hz	24	;
S	50	2	211	f950Hz	25	f950Hz	26	f950Hz	27	f950Hz	28	;
T	100	1	274	f950Hz	29	f950Hz	30	f950Hz	31	f950Hz	32	;
S	50	2	471	f950Hz	33	f700Hz100ms	1	f700Hz100ms	2	f700Hz100ms	3	;
S	50	2	209	f700Hz100ms	4	f700Hz100ms	5	f700Hz100ms	6	f700Hz100ms	7	;
S	50	2	492	f700Hz100ms	8	f800Hz	1	f800Hz	2	f800Hz	3	;
S	50	2	151	f800Hz	4	f800Hz	5	f800Hz	6	f800Hz	7	;
S	50	2	351	f800Hz	8	f900Hz100ms	1	f900Hz100ms	2	f900Hz100ms	3	;
S	50	2	333	f1150Hz	1	f1150Hz	2	f1150Hz	3	f1150Hz	4	;
T	100	1	270	f1150Hz	5	f1150Hz	6	f1150Hz	7	f1150Hz	8	;
S	50	2	349	f1000Hz100ms	1	f1000Hz100ms	2	f1000Hz100ms	3	f1000Hz100ms	4	;
S	50	2	333	f1000Hz100ms	5	f1000Hz100ms	6	f1000Hz100ms	7	f1000Hz100ms	8	;
S	50	2	89	f850Hz	1	f850Hz	2	f850Hz	3	f850Hz	4	;
S	50	2	64	f850Hz	5	f850Hz	6	f850Hz	7	f850Hz	8	;
S	50	2	500	f850Hz	9	f850Hz	10	f850Hz	11	f850Hz	12	;
T	100	1	86	f850Hz	13	f850Hz	14	f850Hz	15	f850Hz	16	;
S	50	2	16	f850Hz	17	f850Hz	18	f850Hz	19	f850Hz	20	;
S	50	2	281	f850Hz	21	f850Hz	22	f850Hz	23	f850Hz	24	;
N	200	2	441	f850Hz	25	f850Hz	26	f850Hz	27	f850Hz	28	;
S	50	2	335	f850Hz	29	f850Hz	30	f850Hz	31	f850Hz	32	;
S	50	2	95	f850Hz	33	f750Hz100ms	1	f750Hz100ms	2	f750Hz100ms	3	;
S	50	2	184	f850Hz	1	f850Hz	2	f850Hz	3	f850Hz	4	;
S	50	2	230	f850Hz	5	f850Hz	6	f850Hz	7	f850Hz	8	;
S	50	2	491	f850Hz	9	f850Hz	10	f850Hz	11	f850Hz	12	;
S	50	2	78	f850Hz	13	f850Hz	14	f850Hz	15	f850Hz	16	;
S	50	2	428	f850Hz	17	f850Hz	18	f850Hz	19	f850Hz	20	;
T	100	1	322	f850Hz	21	f850Hz	22	f850Hz	23	f850Hz	24	;
S	50	2	188	f850Hz	25	f850Hz	26	f850Hz	27	f850Hz	28	;
S	50	2	95	f850Hz	29	f850Hz	30	f850Hz	31	f850Hz	32	;
S	50	2	214	f850Hz	33	f700Hz100ms	1	f700Hz100ms	2	f700Hz100ms	3	;
S	50	2	241	f700Hz100ms	4	f700Hz100ms	5	f700Hz100ms	6	f700Hz100ms	7	;
S	50	2	60	f700Hz100ms	8	f700Hz100ms	9	f700Hz100ms	10	f700Hz100ms	11	;
N	200	2	295	f700Hz100ms	12	f700Hz100ms	13	f700Hz100ms	14	f700Hz100ms	15	;
S	50	2	113	f700Hz100ms	16	f700Hz100ms	17	f700Hz100ms	18	f700Hz100ms	19	;
S	50	2	192	f700Hz100ms	20	f700Hz100ms	21	f700Hz100ms	22	f700Hz100ms	23	;
N	200	2	291	f700Hz100ms	24	f700Hz100ms	25	f700Hz100ms	26	f700Hz100ms	27	;
S	50	2	126	f700Hz100ms	28	f700Hz100ms	29	f700Hz100ms	30	f700Hz100ms	31	;
S	50	2	145	f700Hz100ms	32	f700Hz100ms	33	f800Hz	1	f800Hz	2	;
S	50	2	309	f800Hz	3	f800Hz	4	f800Hz	5	f800Hz	6	;
S	50	2	133	f800Hz	7	f800Hz	8	f1000Hz100ms	1	f1000Hz100ms	2	;
T	100	1	412	f1000Hz100ms	3	f850Hz	1	f850Hz	2	f850Hz	3	;
S	50	2	491	f1100Hz100ms	1	f1100Hz100ms	2	f1100Hz100ms	3	f1200Hz	1	;
S	50	2	365	f1200Hz	2	f1200Hz	3	f1200Hz	4	f1200Hz	5	;
S	50	2	172	f1200Hz	6	f1200Hz	7	f1200Hz	8	f900Hz100ms	1	;
S	50	2	292	f900Hz100ms	2	f900Hz100ms	3	f900Hz100ms	4	f900Hz100ms	5	;
T	100	1	54	f900Hz100ms	6	f900Hz100ms	7	f900Hz100ms	8	f900Hz100ms	9	;
S	50	2	453	f900Hz100ms	10	f900Hz100ms	11	f900Hz100ms	12	f900Hz100ms	13	;
S	50	2	440	f900Hz100ms	14	f900Hz100ms	15	f900Hz100ms	16	f900Hz100ms	17	;
S	50	2	409	f900Hz100ms	18	f900Hz100ms	19	f900Hz100ms	20	f900Hz100ms	21	;
S	50	2	130	f900Hz100ms	22	f900Hz100ms	23	f900Hz100ms	24	f900Hz100ms	25	;
S	50	2	297	f900Hz100ms	26	f900Hz100ms	27	f900Hz100ms	28	f900Hz100ms	29	;
N	200	2	11	f900Hz100ms	30	f900Hz100ms	31	f900Hz100ms	32	f900Hz100ms	33	;
S	50	2	213	f1050Hz	1	f1050Hz	2	f1050Hz	3	f1050Hz	4	;
S	50	2	156	f1050Hz	5	f1050Hz	6	f1050Hz	7	f1050Hz	8	;
S	50	2	81	f850Hz100ms	1	f850Hz100ms	2	f850Hz100ms	3	f850Hz100ms	4	;
S	50	2	89	f850Hz100ms	5	f850Hz100ms	6	f850Hz100ms	7	f850Hz100ms	8	;
}	;

trial {
stimulus_event {
      picture{ text { caption = "+"; 
               font_size = 28;
               font_color = 255,255,255;
               };
		x = 0; y = 0;
      };  
      time = 2000;
		duration = 1000;
		port_code = 129;
      }; 
};