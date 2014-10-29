#it does not match the risto "optimum MMN" paper
 
scenario = "PS3_roving_combination_MMNd_09082014";
#adapted from "nvMMNa5_napls06122009"; 
#attenuation updated for ER1 insert earphones and X-fi gamer card
#Note: this is based on the baldeweg-style of pitch deviance with
#the additional constraint that a transition be no more than 300Hz
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
T	100	1	201	f1100Hz	104	f1100Hz	2	f1100Hz	3	f1100Hz	4	;
S	50	2	38	f1100Hz	5	f1100Hz	6	f800Hz100ms	1	f800Hz100ms	2	;
S	50	2	120	f950Hz	1	f950Hz	2	f700Hz100ms	1	f700Hz100ms	2	;
T	100	1	62	f700Hz100ms	3	f700Hz100ms	4	f700Hz100ms	5	f700Hz100ms	6	;
S	50	2	92	f800Hz	1	f800Hz	2	f800Hz	3	f800Hz	4	;
S	50	2	120	f800Hz	5	f800Hz	6	f1100Hz100ms	1	f1100Hz100ms	2	;
S	50	2	451	f1000Hz	1	f1000Hz	2	f1000Hz	3	f1000Hz	4	;
S	50	2	472	f1000Hz	5	f1000Hz	6	f1000Hz	7	f1000Hz	8	;
S	50	2	245	f1000Hz	9	f1000Hz	10	f1000Hz	11	f1000Hz	12	;
N	200	2	245	f1000Hz	13	f1000Hz	14	f1000Hz	15	f1000Hz	16	;
S	50	2	169	f1000Hz	17	f1000Hz	18	f1000Hz	19	f1000Hz	20	;
S	50	2	450	f1000Hz	21	f1000Hz	22	f1000Hz	23	f1000Hz	24	;
T	100	1	185	f1000Hz	25	f1000Hz	26	f1000Hz	27	f1000Hz	28	;
S	50	2	56	f1000Hz	29	f1000Hz	30	f1000Hz	31	f1000Hz	32	;
S	50	2	390	f1000Hz	33	f1000Hz	34	f1000Hz	35	f1000Hz	36	;
S	50	2	195	f1250Hz100ms	1	f1250Hz100ms	2	f1250Hz100ms	3	f1250Hz100ms	4	;
T	100	1	121	f1250Hz100ms	5	f1250Hz100ms	6	f1150Hz	1	f1150Hz	2	;
S	50	2	202	f1150Hz	3	f1150Hz	4	f1150Hz	5	f1150Hz	6	;
S	50	2	48	f1250Hz100ms	1	f1250Hz100ms	2	f1250Hz100ms	3	f1250Hz100ms	4	;
S	50	2	66	f1250Hz100ms	5	f1250Hz100ms	6	f1250Hz100ms	7	f1250Hz100ms	8	;
S	50	2	471	f1250Hz100ms	9	f1250Hz100ms	10	f1250Hz100ms	11	f1250Hz100ms	12	;
S	50	2	478	f1250Hz100ms	13	f1250Hz100ms	14	f1250Hz100ms	15	f1250Hz100ms	16	;
S	50	2	288	f1250Hz100ms	17	f1250Hz100ms	18	f1250Hz100ms	19	f1250Hz100ms	20	;
N	200	2	30	f1250Hz100ms	21	f1250Hz100ms	22	f1250Hz100ms	23	f1250Hz100ms	24	;
S	50	2	117	f1250Hz100ms	25	f1250Hz100ms	26	f1250Hz100ms	27	f1250Hz100ms	28	;
S	50	2	177	f1250Hz100ms	29	f1250Hz100ms	30	f1250Hz100ms	31	f1250Hz100ms	32	;
S	50	2	411	f1250Hz100ms	33	f1250Hz100ms	34	f1250Hz100ms	35	f1250Hz100ms	36	;
S	50	2	8	f1050Hz	1	f1050Hz	2	f1050Hz	3	f1050Hz	4	;
S	50	2	22	f1050Hz	5	f1050Hz	6	f850Hz100ms	1	f850Hz100ms	2	;
S	50	2	84	f850Hz100ms	3	f850Hz100ms	4	f850Hz100ms	5	f850Hz100ms	6	;
N	200	2	325	f850Hz100ms	7	f850Hz100ms	8	f850Hz100ms	9	f850Hz100ms	10	;
S	50	2	366	f850Hz100ms	11	f850Hz100ms	12	f850Hz100ms	13	f850Hz100ms	14	;
S	50	2	324	f850Hz100ms	15	f850Hz100ms	16	f850Hz100ms	17	f850Hz100ms	18	;
S	50	2	225	f850Hz100ms	19	f850Hz100ms	20	f850Hz100ms	21	f850Hz100ms	22	;
T	100	1	274	f850Hz100ms	23	f850Hz100ms	24	f850Hz100ms	25	f850Hz100ms	26	;
S	50	2	148	f850Hz100ms	27	f850Hz100ms	28	f850Hz100ms	29	f850Hz100ms	30	;
S	50	2	372	f850Hz100ms	31	f850Hz100ms	32	f850Hz100ms	33	f850Hz100ms	34	;
S	50	2	94	f850Hz100ms	35	f850Hz100ms	36	f1150Hz	1	f1150Hz	2	;
S	50	2	343	f1150Hz	3	f1150Hz	4	f1150Hz	5	f1150Hz	6	;
N	200	2	92	f1150Hz	7	f1150Hz	8	f1150Hz	9	f1150Hz	10	;
S	50	2	184	f1150Hz	11	f1150Hz	12	f1150Hz	13	f1150Hz	14	;
S	50	2	313	f1150Hz	15	f1150Hz	16	f1150Hz	17	f1150Hz	18	;
S	50	2	390	f1150Hz	19	f1150Hz	20	f1150Hz	21	f1150Hz	22	;
S	50	2	41	f1150Hz	23	f1150Hz	24	f1150Hz	25	f1150Hz	26	;
S	50	2	465	f1150Hz	27	f1150Hz	28	f1150Hz	29	f1150Hz	30	;
S	50	2	388	f1150Hz	31	f1150Hz	32	f1150Hz	33	f1150Hz	34	;
S	50	2	243	f1150Hz	35	f1150Hz	36	f850Hz100ms	1	f850Hz100ms	2	;
N	200	2	218	f1050Hz	1	f1050Hz	2	f750Hz100ms	1	f750Hz100ms	2	;
S	50	2	223	f750Hz100ms	3	f750Hz100ms	4	f750Hz100ms	5	f750Hz100ms	6	;
S	50	2	153	f750Hz100ms	7	f750Hz100ms	8	f750Hz100ms	9	f750Hz100ms	10	;
S	50	2	254	f750Hz100ms	11	f750Hz100ms	12	f750Hz100ms	13	f750Hz100ms	14	;
S	50	2	255	f750Hz100ms	15	f750Hz100ms	16	f750Hz100ms	17	f750Hz100ms	18	;
N	200	2	409	f750Hz100ms	19	f750Hz100ms	20	f750Hz100ms	21	f750Hz100ms	22	;
S	50	2	397	f750Hz100ms	23	f750Hz100ms	24	f750Hz100ms	25	f750Hz100ms	26	;
S	50	2	322	f750Hz100ms	27	f750Hz100ms	28	f750Hz100ms	29	f750Hz100ms	30	;
S	50	2	189	f750Hz100ms	31	f750Hz100ms	32	f750Hz100ms	33	f750Hz100ms	34	;
S	50	2	306	f750Hz100ms	35	f750Hz100ms	36	f850Hz	1	f850Hz	2	;
S	50	2	266	f850Hz	3	f850Hz	4	f850Hz	5	f850Hz	6	;
T	100	1	175	f850Hz	7	f850Hz	8	f850Hz	9	f850Hz	10	;
S	50	2	470	f850Hz	11	f850Hz	12	f850Hz	13	f850Hz	14	;
S	50	2	438	f850Hz	15	f850Hz	16	f850Hz	17	f850Hz	18	;
S	50	2	275	f850Hz	19	f850Hz	20	f850Hz	21	f850Hz	22	;
N	200	2	311	f850Hz	23	f850Hz	24	f850Hz	25	f850Hz	26	;
S	50	2	294	f850Hz	27	f850Hz	28	f850Hz	29	f850Hz	30	;
S	50	2	104	f850Hz	31	f850Hz	32	f850Hz	33	f850Hz	34	;
S	50	2	151	f850Hz	35	f850Hz	36	f950Hz100ms	1	f950Hz100ms	2	;
S	50	2	235	f950Hz100ms	3	f950Hz100ms	4	f950Hz100ms	5	f950Hz100ms	6	;
S	50	2	115	f750Hz	1	f750Hz	2	f750Hz	3	f750Hz	4	;
S	50	2	422	f750Hz	5	f750Hz	6	f900Hz100ms	1	f900Hz100ms	2	;
N	200	2	97	f900Hz100ms	3	f900Hz100ms	4	f900Hz100ms	5	f900Hz100ms	6	;
S	50	2	113	f900Hz100ms	7	f900Hz100ms	8	f900Hz100ms	9	f900Hz100ms	10	;
S	50	2	85	f900Hz100ms	11	f900Hz100ms	12	f900Hz100ms	13	f900Hz100ms	14	;
S	50	2	114	f900Hz100ms	15	f900Hz100ms	16	f900Hz100ms	17	f900Hz100ms	18	;
S	50	2	218	f900Hz100ms	19	f900Hz100ms	20	f900Hz100ms	21	f900Hz100ms	22	;
S	50	2	156	f900Hz100ms	23	f900Hz100ms	24	f900Hz100ms	25	f900Hz100ms	26	;
N	200	2	462	f900Hz100ms	27	f900Hz100ms	28	f900Hz100ms	29	f900Hz100ms	30	;
S	50	2	215	f900Hz100ms	31	f900Hz100ms	32	f900Hz100ms	33	f900Hz100ms	34	;
S	50	2	92	f900Hz100ms	35	f900Hz100ms	36	f700Hz	1	f700Hz	2	;
S	50	2	452	f700Hz	3	f700Hz	4	f700Hz	5	f700Hz	6	;
S	50	2	490	f700Hz	7	f700Hz	8	f700Hz	9	f700Hz	10	;
S	50	2	219	f700Hz	11	f700Hz	12	f700Hz	13	f700Hz	14	;
T	100	1	56	f700Hz	15	f700Hz	16	f700Hz	17	f700Hz	18	;
S	50	2	129	f700Hz	19	f700Hz	20	f700Hz	21	f700Hz	22	;
S	50	2	204	f700Hz	23	f700Hz	24	f700Hz	25	f700Hz	26	;
S	50	2	297	f700Hz	27	f700Hz	28	f700Hz	29	f700Hz	30	;
S	50	2	131	f700Hz	31	f700Hz	32	f700Hz	33	f700Hz	34	;
T	100	1	301	f700Hz	35	f700Hz	36	f800Hz100ms	1	f800Hz100ms	2	;
S	50	2	356	f800Hz100ms	3	f800Hz100ms	4	f800Hz100ms	5	f800Hz100ms	6	;
S	50	2	111	f1000Hz	1	f1000Hz	2	f700Hz100ms	1	f700Hz100ms	2	;
S	50	2	59	f700Hz100ms	3	f700Hz100ms	4	f700Hz100ms	5	f700Hz100ms	6	;
S	50	2	148	f700Hz100ms	7	f700Hz100ms	8	f700Hz100ms	9	f700Hz100ms	10	;
S	50	2	159	f700Hz100ms	11	f700Hz100ms	12	f700Hz100ms	13	f700Hz100ms	14	;
S	50	2	212	f700Hz100ms	15	f700Hz100ms	16	f700Hz100ms	17	f700Hz100ms	18	;
N	200	2	254	f700Hz100ms	19	f700Hz100ms	20	f700Hz100ms	21	f700Hz100ms	22	;
S	50	2	43	f700Hz100ms	23	f700Hz100ms	24	f700Hz100ms	25	f700Hz100ms	26	;
S	50	2	131	f700Hz100ms	27	f700Hz100ms	28	f700Hz100ms	29	f700Hz100ms	30	;
S	50	2	501	f700Hz100ms	31	f700Hz100ms	32	f700Hz100ms	33	f700Hz100ms	34	;
S	50	2	15	f700Hz100ms	35	f700Hz100ms	36	f900Hz	1	f900Hz	2	;
S	50	2	464	f1150Hz100ms	1	f1150Hz100ms	2	f1050Hz	1	f1050Hz	2	;
T	100	1	365	f1050Hz	3	f1050Hz	4	f1050Hz	5	f1050Hz	6	;
S	50	2	244	f1050Hz	7	f1050Hz	8	f1050Hz	9	f1050Hz	10	;
S	50	2	289	f1050Hz	11	f1050Hz	12	f1050Hz	13	f1050Hz	14	;
S	50	2	119	f1050Hz	15	f1050Hz	16	f1050Hz	17	f1050Hz	18	;
T	100	1	229	f1050Hz	19	f1050Hz	20	f1050Hz	21	f1050Hz	22	;
S	50	2	482	f1050Hz	23	f1050Hz	24	f1050Hz	25	f1050Hz	26	;
S	50	2	273	f1050Hz	27	f1050Hz	28	f1050Hz	29	f1050Hz	30	;
S	50	2	261	f1050Hz	31	f1050Hz	32	f1050Hz	33	f1050Hz	34	;
S	50	2	116	f1050Hz	35	f1050Hz	36	f850Hz100ms	1	f850Hz100ms	2	;
T	100	1	244	f850Hz100ms	3	f850Hz100ms	4	f850Hz100ms	5	f850Hz100ms	6	;
S	50	2	312	f750Hz	1	f750Hz	2	f950Hz100ms	1	f950Hz100ms	2	;
S	50	2	340	f950Hz100ms	3	f950Hz100ms	4	f950Hz100ms	5	f950Hz100ms	6	;
S	50	2	198	f950Hz100ms	7	f950Hz100ms	8	f950Hz100ms	9	f950Hz100ms	10	;
S	50	2	184	f950Hz100ms	11	f950Hz100ms	12	f950Hz100ms	13	f950Hz100ms	14	;
S	50	2	494	f950Hz100ms	15	f950Hz100ms	16	f950Hz100ms	17	f950Hz100ms	18	;
S	50	2	19	f950Hz100ms	19	f950Hz100ms	20	f950Hz100ms	21	f950Hz100ms	22	;
T	100	1	443	f950Hz100ms	23	f950Hz100ms	24	f950Hz100ms	25	f950Hz100ms	26	;
S	50	2	457	f950Hz100ms	27	f950Hz100ms	28	f950Hz100ms	29	f950Hz100ms	30	;
S	50	2	398	f950Hz100ms	31	f950Hz100ms	32	f950Hz100ms	33	f950Hz100ms	34	;
T	100	1	49	f950Hz100ms	35	f950Hz100ms	36	f800Hz	1	f800Hz	2	;
S	50	2	131	f700Hz100ms	1	f700Hz100ms	2	f950Hz	1	f950Hz	2	;
S	50	2	168	f950Hz	3	f950Hz	4	f950Hz	5	f950Hz	6	;
N	200	2	340	f750Hz100ms	1	f750Hz100ms	2	f750Hz100ms	3	f750Hz100ms	4	;
S	50	2	68	f750Hz100ms	5	f750Hz100ms	6	f1050Hz	1	f1050Hz	2	;
S	50	2	361	f1050Hz	3	f1050Hz	4	f1050Hz	5	f1050Hz	6	;
S	50	2	53	f1050Hz	7	f1050Hz	8	f1050Hz	9	f1050Hz	10	;
T	100	1	327	f1050Hz	11	f1050Hz	12	f1050Hz	13	f1050Hz	14	;
S	50	2	247	f1050Hz	15	f1050Hz	16	f1050Hz	17	f1050Hz	18	;
S	50	2	390	f1050Hz	19	f1050Hz	20	f1050Hz	21	f1050Hz	22	;
S	50	2	358	f1050Hz	23	f1050Hz	24	f1050Hz	25	f1050Hz	26	;
N	200	2	452	f1050Hz	27	f1050Hz	28	f1050Hz	29	f1050Hz	30	;
S	50	2	445	f1050Hz	31	f1050Hz	32	f1050Hz	33	f1050Hz	34	;
S	50	2	167	f1050Hz	35	f1050Hz	36	f850Hz100ms	1	f850Hz100ms	2	;
T	100	1	349	f850Hz100ms	3	f850Hz100ms	4	f850Hz100ms	5	f850Hz100ms	6	;
S	50	2	99	f850Hz100ms	7	f850Hz100ms	8	f850Hz100ms	9	f850Hz100ms	10	;
S	50	2	15	f850Hz100ms	11	f850Hz100ms	12	f850Hz100ms	13	f850Hz100ms	14	;
S	50	2	372	f850Hz100ms	15	f850Hz100ms	16	f850Hz100ms	17	f850Hz100ms	18	;
N	200	2	250	f850Hz100ms	19	f850Hz100ms	20	f850Hz100ms	21	f850Hz100ms	22	;
S	50	2	240	f850Hz100ms	23	f850Hz100ms	24	f850Hz100ms	25	f850Hz100ms	26	;
T	100	1	452	f850Hz100ms	27	f850Hz100ms	28	f850Hz100ms	29	f850Hz100ms	30	;
S	50	2	305	f850Hz100ms	31	f850Hz100ms	32	f850Hz100ms	33	f850Hz100ms	34	;
S	50	2	309	f850Hz100ms	35	f850Hz100ms	36	f700Hz	1	f700Hz	2	;
S	50	2	430	f1000Hz100ms	1	f1000Hz100ms	2	f1000Hz100ms	3	f1000Hz100ms	4	;
S	50	2	303	f1000Hz100ms	5	f1000Hz100ms	6	f1000Hz100ms	7	f1000Hz100ms	8	;
T	100	1	288	f1000Hz100ms	9	f1000Hz100ms	10	f1000Hz100ms	11	f1000Hz100ms	12	;
S	50	2	91	f1000Hz100ms	13	f1000Hz100ms	14	f1000Hz100ms	15	f1000Hz100ms	16	;
S	50	2	120	f1000Hz100ms	17	f1000Hz100ms	18	f1000Hz100ms	19	f1000Hz100ms	20	;
S	50	2	443	f1000Hz100ms	21	f1000Hz100ms	22	f1000Hz100ms	23	f1000Hz100ms	24	;
N	200	2	14	f1000Hz100ms	25	f1000Hz100ms	26	f1000Hz100ms	27	f1000Hz100ms	28	;
S	50	2	245	f1000Hz100ms	29	f1000Hz100ms	30	f1000Hz100ms	31	f1000Hz100ms	32	;
S	50	2	84	f1000Hz100ms	33	f1000Hz100ms	34	f1000Hz100ms	35	f1000Hz100ms	36	;
S	50	2	489	f1150Hz	1	f1150Hz	2	f1150Hz	3	f1150Hz	4	;
S	50	2	356	f1150Hz	5	f1150Hz	6	f900Hz100ms	1	f900Hz100ms	2	;
S	50	2	250	f900Hz100ms	3	f900Hz100ms	4	f900Hz100ms	5	f900Hz100ms	6	;
S	50	2	236	f1100Hz	1	f1100Hz	2	f950Hz100ms	1	f950Hz100ms	2	;
N	200	2	30	f1200Hz	1	f1200Hz	2	f1200Hz	3	f1200Hz	4	;
S	50	2	341	f1200Hz	5	f1200Hz	6	f1200Hz	7	f1200Hz	8	;
S	50	2	261	f1200Hz	9	f1200Hz	10	f1200Hz	11	f1200Hz	12	;
S	50	2	48	f1200Hz	13	f1200Hz	14	f1200Hz	15	f1200Hz	16	;
S	50	2	409	f1200Hz	17	f1200Hz	18	f1200Hz	19	f1200Hz	20	;
S	50	2	409	f1200Hz	21	f1200Hz	22	f1200Hz	23	f1200Hz	24	;
S	50	2	361	f1200Hz	25	f1200Hz	26	f1200Hz	27	f1200Hz	28	;
S	50	2	75	f1200Hz	29	f1200Hz	30	f1200Hz	31	f1200Hz	32	;
S	50	2	330	f1200Hz	33	f1200Hz	34	f1200Hz	35	f1200Hz	36	;
N	200	2	259	f900Hz100ms	1	f900Hz100ms	2	f900Hz100ms	3	f900Hz100ms	4	;
S	50	2	486	f900Hz100ms	5	f900Hz100ms	6	f900Hz100ms	7	f900Hz100ms	8	;
S	50	2	324	f900Hz100ms	9	f900Hz100ms	10	f900Hz100ms	11	f900Hz100ms	12	;
S	50	2	500	f900Hz100ms	13	f900Hz100ms	14	f900Hz100ms	15	f900Hz100ms	16	;
S	50	2	227	f900Hz100ms	17	f900Hz100ms	18	f900Hz100ms	19	f900Hz100ms	20	;
S	50	2	216	f900Hz100ms	21	f900Hz100ms	22	f900Hz100ms	23	f900Hz100ms	24	;
S	50	2	413	f900Hz100ms	25	f900Hz100ms	26	f900Hz100ms	27	f900Hz100ms	28	;
T	100	1	42	f900Hz100ms	29	f900Hz100ms	30	f900Hz100ms	31	f900Hz100ms	32	;
S	50	2	67	f900Hz100ms	33	f900Hz100ms	34	f900Hz100ms	35	f900Hz100ms	36	;
S	50	2	87	f1200Hz	1	f1200Hz	2	f1100Hz100ms	1	f1100Hz100ms	2	;
S	50	2	195	f1000Hz	1	f1000Hz	2	f1000Hz	3	f1000Hz	4	;
S	50	2	416	f1000Hz	5	f1000Hz	6	f1150Hz100ms	1	f1150Hz100ms	2	;
N	200	2	202	f1150Hz100ms	3	f1150Hz100ms	4	f1150Hz100ms	5	f1150Hz100ms	6	;
S	50	2	30	f1250Hz	1	f1250Hz	2	f1250Hz	3	f1250Hz	4	;
S	50	2	200	f1250Hz	5	f1250Hz	6	f1250Hz	7	f1250Hz	8	;
T	100	1	263	f1250Hz	9	f1250Hz	10	f1250Hz	11	f1250Hz	12	;
S	50	2	208	f1250Hz	13	f1250Hz	14	f1250Hz	15	f1250Hz	16	;
S	50	2	328	f1250Hz	17	f1250Hz	18	f1250Hz	19	f1250Hz	20	;
S	50	2	314	f1250Hz	21	f1250Hz	22	f1250Hz	23	f1250Hz	24	;
S	50	2	146	f1250Hz	25	f1250Hz	26	f1250Hz	27	f1250Hz	28	;
S	50	2	216	f1250Hz	29	f1250Hz	30	f1250Hz	31	f1250Hz	32	;
S	50	2	8	f1250Hz	33	f1250Hz	34	f1250Hz	35	f1250Hz	36	;
T	100	1	492	f1100Hz100ms	1	f1100Hz100ms	2	f1100Hz100ms	3	f1100Hz100ms	4	;
S	50	2	84	f1100Hz100ms	5	f1100Hz100ms	6	f900Hz	1	f900Hz	2	;
S	50	2	53	f1050Hz100ms	1	f1050Hz100ms	2	f1050Hz100ms	3	f1050Hz100ms	4	;
S	50	2	186	f1050Hz100ms	5	f1050Hz100ms	6	f1050Hz100ms	7	f1050Hz100ms	8	;
S	50	2	99	f1050Hz100ms	9	f1050Hz100ms	10	f1050Hz100ms	11	f1050Hz100ms	12	;
S	50	2	245	f1050Hz100ms	13	f1050Hz100ms	14	f1050Hz100ms	15	f1050Hz100ms	16	;
N	200	2	170	f1050Hz100ms	17	f1050Hz100ms	18	f1050Hz100ms	19	f1050Hz100ms	20	;
S	50	2	476	f1050Hz100ms	21	f1050Hz100ms	22	f1050Hz100ms	23	f1050Hz100ms	24	;
S	50	2	460	f1050Hz100ms	25	f1050Hz100ms	26	f1050Hz100ms	27	f1050Hz100ms	28	;
S	50	2	26	f1050Hz100ms	29	f1050Hz100ms	30	f1050Hz100ms	31	f1050Hz100ms	32	;
T	100	1	369	f1050Hz100ms	33	f1050Hz100ms	34	f1050Hz100ms	35	f1050Hz100ms	36	;
S	50	2	135	f1200Hz	1	f1200Hz	2	f1000Hz100ms	1	f1000Hz100ms	2	;
S	50	2	211	f1000Hz100ms	3	f1000Hz100ms	4	f1000Hz100ms	5	f1000Hz100ms	6	;
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