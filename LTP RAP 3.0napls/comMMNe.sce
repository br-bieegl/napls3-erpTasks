#it does not match the risto "optimum MMN" paper
 
scenario = "PS3_roving_combination_MMNe_09082014";
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
T	100	1	274	f1000Hz	105	f1000Hz	2	f1000Hz	3	f1000Hz	4	;
S	50	2	471	f1000Hz	5	f1000Hz	6	f850Hz100ms	1	f850Hz100ms	2	;
S	50	2	209	f700Hz	1	f700Hz	2	f700Hz	3	f700Hz	4	;
S	50	2	492	f700Hz	5	f700Hz	6	f700Hz	7	f700Hz	8	;
S	50	2	151	f700Hz	9	f700Hz	10	f700Hz	11	f700Hz	12	;
S	50	2	351	f700Hz	13	f700Hz	14	f700Hz	15	f700Hz	16	;
S	50	2	333	f700Hz	17	f700Hz	18	f700Hz	19	f700Hz	20	;
T	100	1	270	f700Hz	21	f700Hz	22	f700Hz	23	f700Hz	24	;
S	50	2	349	f700Hz	25	f700Hz	26	f700Hz	27	f700Hz	28	;
S	50	2	333	f700Hz	29	f700Hz	30	f700Hz	31	f700Hz	32	;
S	50	2	89	f700Hz	33	f700Hz	34	f700Hz	35	f700Hz	36	;
S	50	2	64	f800Hz100ms	1	f800Hz100ms	2	f800Hz100ms	3	f800Hz100ms	4	;
S	50	2	500	f800Hz100ms	5	f800Hz100ms	6	f950Hz	1	f950Hz	2	;
T	100	1	86	f950Hz	3	f950Hz	4	f950Hz	5	f950Hz	6	;
S	50	2	16	f950Hz	7	f950Hz	8	f950Hz	9	f950Hz	10	;
S	50	2	281	f950Hz	11	f950Hz	12	f950Hz	13	f950Hz	14	;
N	200	2	441	f950Hz	15	f950Hz	16	f950Hz	17	f950Hz	18	;
S	50	2	335	f950Hz	19	f950Hz	20	f950Hz	21	f950Hz	22	;
S	50	2	95	f950Hz	23	f950Hz	24	f950Hz	25	f950Hz	26	;
S	50	2	184	f950Hz	27	f950Hz	28	f950Hz	29	f950Hz	30	;
S	50	2	230	f950Hz	31	f950Hz	32	f950Hz	33	f950Hz	34	;
S	50	2	491	f950Hz	35	f950Hz	36	f850Hz100ms	1	f850Hz100ms	2	;
S	50	2	78	f1150Hz	1	f1150Hz	2	f1150Hz	3	f1150Hz	4	;
S	50	2	428	f1150Hz	5	f1150Hz	6	f1050Hz100ms	1	f1050Hz100ms	2	;
T	100	1	322	f950Hz	1	f950Hz	2	f950Hz	3	f950Hz	4	;
S	50	2	188	f950Hz	5	f950Hz	6	f850Hz100ms	1	f850Hz100ms	2	;
S	50	2	95	f1150Hz	1	f1150Hz	2	f1150Hz	3	f1150Hz	4	;
S	50	2	214	f1150Hz	5	f1150Hz	6	f1150Hz	7	f1150Hz	8	;
S	50	2	241	f1150Hz	9	f1150Hz	10	f1150Hz	11	f1150Hz	12	;
S	50	2	60	f1150Hz	13	f1150Hz	14	f1150Hz	15	f1150Hz	16	;
N	200	2	295	f1150Hz	17	f1150Hz	18	f1150Hz	19	f1150Hz	20	;
S	50	2	113	f1150Hz	21	f1150Hz	22	f1150Hz	23	f1150Hz	24	;
S	50	2	192	f1150Hz	25	f1150Hz	26	f1150Hz	27	f1150Hz	28	;
N	200	2	291	f1150Hz	29	f1150Hz	30	f1150Hz	31	f1150Hz	32	;
S	50	2	126	f1150Hz	33	f1150Hz	34	f1150Hz	35	f1150Hz	36	;
S	50	2	145	f1000Hz100ms	1	f1000Hz100ms	2	f850Hz	1	f850Hz	2	;
S	50	2	309	f850Hz	3	f850Hz	4	f850Hz	5	f850Hz	6	;
S	50	2	133	f850Hz	7	f850Hz	8	f850Hz	9	f850Hz	10	;
T	100	1	412	f850Hz	11	f850Hz	12	f850Hz	13	f850Hz	14	;
S	50	2	491	f850Hz	15	f850Hz	16	f850Hz	17	f850Hz	18	;
S	50	2	365	f850Hz	19	f850Hz	20	f850Hz	21	f850Hz	22	;
S	50	2	172	f850Hz	23	f850Hz	24	f850Hz	25	f850Hz	26	;
S	50	2	292	f850Hz	27	f850Hz	28	f850Hz	29	f850Hz	30	;
T	100	1	54	f850Hz	31	f850Hz	32	f850Hz	33	f850Hz	34	;
S	50	2	453	f850Hz	35	f850Hz	36	f1100Hz100ms	1	f1100Hz100ms	2	;
S	50	2	440	f1100Hz100ms	3	f1100Hz100ms	4	f1100Hz100ms	5	f1100Hz100ms	6	;
S	50	2	409	f1100Hz100ms	7	f1100Hz100ms	8	f1100Hz100ms	9	f1100Hz100ms	10	;
S	50	2	130	f1100Hz100ms	11	f1100Hz100ms	12	f1100Hz100ms	13	f1100Hz100ms	14	;
S	50	2	297	f1100Hz100ms	15	f1100Hz100ms	16	f1100Hz100ms	17	f1100Hz100ms	18	;
N	200	2	11	f1100Hz100ms	19	f1100Hz100ms	20	f1100Hz100ms	21	f1100Hz100ms	22	;
S	50	2	213	f1100Hz100ms	23	f1100Hz100ms	24	f1100Hz100ms	25	f1100Hz100ms	26	;
S	50	2	156	f1100Hz100ms	27	f1100Hz100ms	28	f1100Hz100ms	29	f1100Hz100ms	30	;
S	50	2	81	f1100Hz100ms	31	f1100Hz100ms	32	f1100Hz100ms	33	f1100Hz100ms	34	;
S	50	2	89	f1100Hz100ms	35	f1100Hz100ms	36	f1250Hz	1	f1250Hz	2	;
T	100	1	211	f1250Hz	3	f1250Hz	4	f1250Hz	5	f1250Hz	6	;
S	50	2	47	f1250Hz	7	f1250Hz	8	f1250Hz	9	f1250Hz	10	;
S	50	2	299	f1250Hz	11	f1250Hz	12	f1250Hz	13	f1250Hz	14	;
S	50	2	235	f1250Hz	15	f1250Hz	16	f1250Hz	17	f1250Hz	18	;
S	50	2	348	f1250Hz	19	f1250Hz	20	f1250Hz	21	f1250Hz	22	;
N	200	2	350	f1250Hz	23	f1250Hz	24	f1250Hz	25	f1250Hz	26	;
S	50	2	319	f1250Hz	27	f1250Hz	28	f1250Hz	29	f1250Hz	30	;
S	50	2	17	f1250Hz	31	f1250Hz	32	f1250Hz	33	f1250Hz	34	;
S	50	2	34	f1250Hz	35	f1250Hz	36	f1050Hz100ms	1	f1050Hz100ms	2	;
S	50	2	160	f1050Hz100ms	3	f1050Hz100ms	4	f1050Hz100ms	5	f1050Hz100ms	6	;
T	100	1	265	f750Hz	1	f750Hz	2	f900Hz100ms	1	f900Hz100ms	2	;
S	50	2	327	f900Hz100ms	3	f900Hz100ms	4	f900Hz100ms	5	f900Hz100ms	6	;
S	50	2	204	f900Hz100ms	7	f900Hz100ms	8	f900Hz100ms	9	f900Hz100ms	10	;
S	50	2	410	f900Hz100ms	11	f900Hz100ms	12	f900Hz100ms	13	f900Hz100ms	14	;
S	50	2	359	f900Hz100ms	15	f900Hz100ms	16	f900Hz100ms	17	f900Hz100ms	18	;
S	50	2	484	f900Hz100ms	19	f900Hz100ms	20	f900Hz100ms	21	f900Hz100ms	22	;
N	200	2	266	f900Hz100ms	23	f900Hz100ms	24	f900Hz100ms	25	f900Hz100ms	26	;
S	50	2	163	f900Hz100ms	27	f900Hz100ms	28	f900Hz100ms	29	f900Hz100ms	30	;
S	50	2	53	f900Hz100ms	31	f900Hz100ms	32	f900Hz100ms	33	f900Hz100ms	34	;
S	50	2	305	f900Hz100ms	35	f900Hz100ms	36	f1200Hz	1	f1200Hz	2	;
N	200	2	389	f1100Hz100ms	1	f1100Hz100ms	2	f1100Hz100ms	3	f1100Hz100ms	4	;
S	50	2	212	f1100Hz100ms	5	f1100Hz100ms	6	f850Hz	1	f850Hz	2	;
S	50	2	45	f700Hz100ms	1	f700Hz100ms	2	f800Hz	1	f800Hz	2	;
S	50	2	133	f800Hz	3	f800Hz	4	f800Hz	5	f800Hz	6	;
T	100	1	77	f800Hz	7	f800Hz	8	f800Hz	9	f800Hz	10	;
S	50	2	141	f800Hz	11	f800Hz	12	f800Hz	13	f800Hz	14	;
S	50	2	220	f800Hz	15	f800Hz	16	f800Hz	17	f800Hz	18	;
S	50	2	264	f800Hz	19	f800Hz	20	f800Hz	21	f800Hz	22	;
S	50	2	229	f800Hz	23	f800Hz	24	f800Hz	25	f800Hz	26	;
N	200	2	438	f800Hz	27	f800Hz	28	f800Hz	29	f800Hz	30	;
S	50	2	259	f800Hz	31	f800Hz	32	f800Hz	33	f800Hz	34	;
S	50	2	472	f800Hz	35	f800Hz	36	f1000Hz100ms	1	f1000Hz100ms	2	;
S	50	2	319	f1000Hz100ms	3	f1000Hz100ms	4	f1000Hz100ms	5	f1000Hz100ms	6	;
N	200	2	479	f900Hz	1	f900Hz	2	f1050Hz100ms	1	f1050Hz100ms	2	;
S	50	2	120	f750Hz	1	f750Hz	2	f750Hz	3	f750Hz	4	;
S	50	2	338	f750Hz	5	f750Hz	6	f750Hz	7	f750Hz	8	;
S	50	2	145	f750Hz	9	f750Hz	10	f750Hz	11	f750Hz	12	;
T	100	1	336	f750Hz	13	f750Hz	14	f750Hz	15	f750Hz	16	;
S	50	2	348	f750Hz	17	f750Hz	18	f750Hz	19	f750Hz	20	;
S	50	2	34	f750Hz	21	f750Hz	22	f750Hz	23	f750Hz	24	;
S	50	2	127	f750Hz	25	f750Hz	26	f750Hz	27	f750Hz	28	;
S	50	2	112	f750Hz	29	f750Hz	30	f750Hz	31	f750Hz	32	;
T	100	1	334	f750Hz	33	f750Hz	34	f750Hz	35	f750Hz	36	;
S	50	2	422	f900Hz100ms	1	f900Hz100ms	2	f1000Hz	1	f1000Hz	2	;
S	50	2	172	f1000Hz	3	f1000Hz	4	f1000Hz	5	f1000Hz	6	;
N	200	2	390	f1000Hz	7	f1000Hz	8	f1000Hz	9	f1000Hz	10	;
S	50	2	338	f1000Hz	11	f1000Hz	12	f1000Hz	13	f1000Hz	14	;
S	50	2	133	f1000Hz	15	f1000Hz	16	f1000Hz	17	f1000Hz	18	;
N	200	2	301	f1000Hz	19	f1000Hz	20	f1000Hz	21	f1000Hz	22	;
S	50	2	193	f1000Hz	23	f1000Hz	24	f1000Hz	25	f1000Hz	26	;
S	50	2	458	f1000Hz	27	f1000Hz	28	f1000Hz	29	f1000Hz	30	;
N	200	2	151	f1000Hz	31	f1000Hz	32	f1000Hz	33	f1000Hz	34	;
S	50	2	231	f1000Hz	35	f1000Hz	36	f750Hz100ms	1	f750Hz100ms	2	;
S	50	2	212	f750Hz100ms	3	f750Hz100ms	4	f750Hz100ms	5	f750Hz100ms	6	;
S	50	2	407	f750Hz100ms	7	f750Hz100ms	8	f750Hz100ms	9	f750Hz100ms	10	;
N	200	2	453	f750Hz100ms	11	f750Hz100ms	12	f750Hz100ms	13	f750Hz100ms	14	;
S	50	2	63	f750Hz100ms	15	f750Hz100ms	16	f750Hz100ms	17	f750Hz100ms	18	;
S	50	2	457	f750Hz100ms	19	f750Hz100ms	20	f750Hz100ms	21	f750Hz100ms	22	;
S	50	2	316	f750Hz100ms	23	f750Hz100ms	24	f750Hz100ms	25	f750Hz100ms	26	;
S	50	2	49	f750Hz100ms	27	f750Hz100ms	28	f750Hz100ms	29	f750Hz100ms	30	;
T	100	1	139	f750Hz100ms	31	f750Hz100ms	32	f750Hz100ms	33	f750Hz100ms	34	;
S	50	2	273	f750Hz100ms	35	f750Hz100ms	36	f950Hz	1	f950Hz	2	;
S	50	2	479	f950Hz	3	f950Hz	4	f950Hz	5	f950Hz	6	;
S	50	2	482	f800Hz100ms	1	f800Hz100ms	2	f800Hz100ms	3	f800Hz100ms	4	;
S	50	2	79	f800Hz100ms	5	f800Hz100ms	6	f950Hz	1	f950Hz	2	;
S	50	2	485	f950Hz	3	f950Hz	4	f950Hz	5	f950Hz	6	;
T	100	1	479	f700Hz100ms	1	f700Hz100ms	2	f700Hz100ms	3	f700Hz100ms	4	;
S	50	2	243	f700Hz100ms	5	f700Hz100ms	6	f700Hz100ms	7	f700Hz100ms	8	;
S	50	2	300	f700Hz100ms	9	f700Hz100ms	10	f700Hz100ms	11	f700Hz100ms	12	;
S	50	2	71	f700Hz100ms	13	f700Hz100ms	14	f700Hz100ms	15	f700Hz100ms	16	;
N	200	2	211	f700Hz100ms	17	f700Hz100ms	18	f700Hz100ms	19	f700Hz100ms	20	;
S	50	2	458	f700Hz100ms	21	f700Hz100ms	22	f700Hz100ms	23	f700Hz100ms	24	;
S	50	2	396	f700Hz100ms	25	f700Hz100ms	26	f700Hz100ms	27	f700Hz100ms	28	;
S	50	2	480	f700Hz100ms	29	f700Hz100ms	30	f700Hz100ms	31	f700Hz100ms	32	;
S	50	2	328	f700Hz100ms	33	f700Hz100ms	34	f700Hz100ms	35	f700Hz100ms	36	;
S	50	2	18	f800Hz	1	f800Hz	2	f700Hz100ms	1	f700Hz100ms	2	;
S	50	2	425	f800Hz	1	f800Hz	2	f900Hz100ms	1	f900Hz100ms	2	;
N	200	2	467	f900Hz100ms	3	f900Hz100ms	4	f900Hz100ms	5	f900Hz100ms	6	;
S	50	2	339	f900Hz100ms	7	f900Hz100ms	8	f900Hz100ms	9	f900Hz100ms	10	;
S	50	2	379	f900Hz100ms	11	f900Hz100ms	12	f900Hz100ms	13	f900Hz100ms	14	;
T	100	1	372	f900Hz100ms	15	f900Hz100ms	16	f900Hz100ms	17	f900Hz100ms	18	;
S	50	2	196	f900Hz100ms	19	f900Hz100ms	20	f900Hz100ms	21	f900Hz100ms	22	;
S	50	2	328	f900Hz100ms	23	f900Hz100ms	24	f900Hz100ms	25	f900Hz100ms	26	;
S	50	2	86	f900Hz100ms	27	f900Hz100ms	28	f900Hz100ms	29	f900Hz100ms	30	;
S	50	2	353	f900Hz100ms	31	f900Hz100ms	32	f900Hz100ms	33	f900Hz100ms	34	;
S	50	2	16	f900Hz100ms	35	f900Hz100ms	36	f1200Hz	1	f1200Hz	2	;
S	50	2	138	f1200Hz	3	f1200Hz	4	f1200Hz	5	f1200Hz	6	;
T	100	1	23	f1200Hz	7	f1200Hz	8	f1200Hz	9	f1200Hz	10	;
S	50	2	49	f1200Hz	11	f1200Hz	12	f1200Hz	13	f1200Hz	14	;
S	50	2	412	f1200Hz	15	f1200Hz	16	f1200Hz	17	f1200Hz	18	;
T	100	1	347	f1200Hz	19	f1200Hz	20	f1200Hz	21	f1200Hz	22	;
S	50	2	159	f1200Hz	23	f1200Hz	24	f1200Hz	25	f1200Hz	26	;
S	50	2	475	f1200Hz	27	f1200Hz	28	f1200Hz	29	f1200Hz	30	;
S	50	2	17	f1200Hz	31	f1200Hz	32	f1200Hz	33	f1200Hz	34	;
S	50	2	219	f1200Hz	35	f1200Hz	36	f1100Hz100ms	1	f1100Hz100ms	2	;
S	50	2	191	f1100Hz100ms	3	f1100Hz100ms	4	f1100Hz100ms	5	f1100Hz100ms	6	;
S	50	2	383	f1200Hz	1	f1200Hz	2	f1200Hz	3	f1200Hz	4	;
T	100	1	398	f1200Hz	5	f1200Hz	6	f950Hz100ms	1	f950Hz100ms	2	;
S	50	2	93	f950Hz100ms	3	f950Hz100ms	4	f950Hz100ms	5	f950Hz100ms	6	;
S	50	2	245	f950Hz100ms	7	f950Hz100ms	8	f950Hz100ms	9	f950Hz100ms	10	;
S	50	2	223	f950Hz100ms	11	f950Hz100ms	12	f950Hz100ms	13	f950Hz100ms	14	;
S	50	2	323	f950Hz100ms	15	f950Hz100ms	16	f950Hz100ms	17	f950Hz100ms	18	;
N	200	2	355	f950Hz100ms	19	f950Hz100ms	20	f950Hz100ms	21	f950Hz100ms	22	;
S	50	2	377	f950Hz100ms	23	f950Hz100ms	24	f950Hz100ms	25	f950Hz100ms	26	;
S	50	2	138	f950Hz100ms	27	f950Hz100ms	28	f950Hz100ms	29	f950Hz100ms	30	;
T	100	1	340	f950Hz100ms	31	f950Hz100ms	32	f950Hz100ms	33	f950Hz100ms	34	;
S	50	2	328	f950Hz100ms	35	f950Hz100ms	36	f1050Hz	1	f1050Hz	2	;
S	50	2	81	f1050Hz	3	f1050Hz	4	f1050Hz	5	f1050Hz	6	;
S	50	2	59	f1250Hz100ms	1	f1250Hz100ms	2	f1250Hz100ms	3	f1250Hz100ms	4	;
N	200	2	249	f1250Hz100ms	5	f1250Hz100ms	6	f1150Hz	1	f1150Hz	2	;
S	50	2	480	f1150Hz	3	f1150Hz	4	f1150Hz	5	f1150Hz	6	;
S	50	2	170	f1150Hz	7	f1150Hz	8	f1150Hz	9	f1150Hz	10	;
S	50	2	293	f1150Hz	11	f1150Hz	12	f1150Hz	13	f1150Hz	14	;
S	50	2	112	f1150Hz	15	f1150Hz	16	f1150Hz	17	f1150Hz	18	;
S	50	2	376	f1150Hz	19	f1150Hz	20	f1150Hz	21	f1150Hz	22	;
S	50	2	128	f1150Hz	23	f1150Hz	24	f1150Hz	25	f1150Hz	26	;
S	50	2	253	f1150Hz	27	f1150Hz	28	f1150Hz	29	f1150Hz	30	;
T	100	1	350	f1150Hz	31	f1150Hz	32	f1150Hz	33	f1150Hz	34	;
S	50	2	445	f1150Hz	35	f1150Hz	36	f1050Hz100ms	1	f1050Hz100ms	2	;
N	200	2	480	f1200Hz	1	f1200Hz	2	f1200Hz	3	f1200Hz	4	;
S	50	2	274	f1200Hz	5	f1200Hz	6	f1100Hz100ms	1	f1100Hz100ms	2	;
T	100	1	69	f1100Hz100ms	3	f1100Hz100ms	4	f1100Hz100ms	5	f1100Hz100ms	6	;
S	50	2	75	f1250Hz	1	f1250Hz	2	f1250Hz	3	f1250Hz	4	;
S	50	2	129	f1250Hz	5	f1250Hz	6	f1100Hz100ms	1	f1100Hz100ms	2	;
S	50	2	420	f1100Hz100ms	3	f1100Hz100ms	4	f1100Hz100ms	5	f1100Hz100ms	6	;
S	50	2	127	f1200Hz	1	f1200Hz	2	f1200Hz	3	f1200Hz	4	;
S	50	2	407	f1200Hz	5	f1200Hz	6	f1200Hz	7	f1200Hz	8	;
S	50	2	122	f1200Hz	9	f1200Hz	10	f1200Hz	11	f1200Hz	12	;
S	50	2	465	f1200Hz	13	f1200Hz	14	f1200Hz	15	f1200Hz	16	;
N	200	2	175	f1200Hz	17	f1200Hz	18	f1200Hz	19	f1200Hz	20	;
S	50	2	98	f1200Hz	21	f1200Hz	22	f1200Hz	23	f1200Hz	24	;
S	50	2	126	f1200Hz	25	f1200Hz	26	f1200Hz	27	f1200Hz	28	;
S	50	2	308	f1200Hz	29	f1200Hz	30	f1200Hz	31	f1200Hz	32	;
S	50	2	237	f1200Hz	33	f1200Hz	34	f1200Hz	35	f1200Hz	36	;
S	50	2	176	f900Hz100ms	1	f900Hz100ms	2	f750Hz	1	f750Hz	2	;
S	50	2	415	f750Hz	3	f750Hz	4	f750Hz	5	f750Hz	6	;
N	200	2	293	f750Hz	7	f750Hz	8	f750Hz	9	f750Hz	10	;
S	50	2	275	f750Hz	11	f750Hz	12	f750Hz	13	f750Hz	14	;
S	50	2	459	f750Hz	15	f750Hz	16	f750Hz	17	f750Hz	18	;
S	50	2	143	f750Hz	19	f750Hz	20	f750Hz	21	f750Hz	22	;
N	200	1	379	f750Hz	23	f750Hz	24	f750Hz	25	f750Hz	26	;
S	50	2	377	f750Hz	27	f750Hz	28	f750Hz	29	f750Hz	30	;
S	50	2	190	f750Hz	31	f750Hz	32	f750Hz	33	f750Hz	34	;
S	50	2	284	f750Hz	35	f750Hz	36	f1000Hz100ms	1	f1000Hz100ms	2	;
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