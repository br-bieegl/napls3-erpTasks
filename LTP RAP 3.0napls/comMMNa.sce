#it does not match the risto "optimum MMN" paper
 
scenario = "PS3_roving_combination_MMNa_09082014";
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
S	50	2	407	f1200Hz	101	f1200Hz	2	f900Hz100ms	1	f900Hz100ms	2	;
N	200	2	453	f900Hz100ms	3	f900Hz100ms	4	f900Hz100ms	5	f900Hz100ms	6	;
S	50	2	63	f750Hz	1	f750Hz	2	f1050Hz100ms	1	f1050Hz100ms	2	;
S	50	2	457	f1050Hz100ms	3	f1050Hz100ms	4	f1050Hz100ms	5	f1050Hz100ms	6	;
S	50	2	316	f900Hz	1	f900Hz	2	f900Hz	3	f900Hz	4	;
S	50	2	49	f900Hz	5	f900Hz	6	f900Hz	7	f900Hz	8	;
T	100	1	139	f900Hz	9	f900Hz	10	f900Hz	11	f900Hz	12	;
S	50	2	273	f900Hz	13	f900Hz	14	f900Hz	15	f900Hz	16	;
S	50	2	479	f900Hz	17	f900Hz	18	f900Hz	19	f900Hz	20	;
S	50	2	482	f900Hz	21	f900Hz	22	f900Hz	23	f900Hz	24	;
S	50	2	79	f900Hz	25	f900Hz	26	f900Hz	27	f900Hz	28	;
S	50	2	485	f900Hz	29	f900Hz	30	f900Hz	31	f900Hz	32	;
T	100	1	479	f900Hz	33	f900Hz	34	f900Hz	35	f900Hz	36	;
S	50	2	243	f1050Hz100ms	1	f1050Hz100ms	2	f1050Hz100ms	3	f1050Hz100ms	4	;
S	50	2	300	f1050Hz100ms	5	f1050Hz100ms	6	f1250Hz	1	f1250Hz	2	;
S	50	2	71	f1250Hz	3	f1250Hz	4	f1250Hz	5	f1250Hz	6	;
N	200	2	211	f1150Hz100ms	1	f1150Hz100ms	2	f1150Hz100ms	3	f1150Hz100ms	4	;
S	50	2	458	f1150Hz100ms	5	f1150Hz100ms	6	f1150Hz100ms	7	f1150Hz100ms	8	;
S	50	2	396	f1150Hz100ms	9	f1150Hz100ms	10	f1150Hz100ms	11	f1150Hz100ms	12	;
S	50	2	480	f1150Hz100ms	13	f1150Hz100ms	14	f1150Hz100ms	15	f1150Hz100ms	16	;
S	50	2	328	f1150Hz100ms	17	f1150Hz100ms	18	f1150Hz100ms	19	f1150Hz100ms	20	;
S	50	2	18	f1150Hz100ms	21	f1150Hz100ms	22	f1150Hz100ms	23	f1150Hz100ms	24	;
S	50	2	425	f1150Hz100ms	25	f1150Hz100ms	26	f1150Hz100ms	27	f1150Hz100ms	28	;
N	200	2	467	f1150Hz100ms	29	f1150Hz100ms	30	f1150Hz100ms	31	f1150Hz100ms	32	;
S	50	2	339	f1150Hz100ms	33	f1150Hz100ms	34	f1150Hz100ms	35	f1150Hz100ms	36	;
S	50	2	379	f900Hz	1	f900Hz	2	f900Hz	3	f900Hz	4	;
T	100	1	372	f900Hz	5	f900Hz	6	f750Hz100ms	1	f750Hz100ms	2	;
S	50	2	196	f1050Hz	1	f1050Hz	2	f1050Hz	3	f1050Hz	4	;
S	50	2	328	f1050Hz	5	f1050Hz	6	f1250Hz100ms	1	f1250Hz100ms	2	;
S	50	2	86	f1250Hz100ms	3	f1250Hz100ms	4	f1250Hz100ms	5	f1250Hz100ms	6	;
S	50	2	353	f1250Hz100ms	7	f1250Hz100ms	8	f1250Hz100ms	9	f1250Hz100ms	10	;
S	50	2	16	f1250Hz100ms	11	f1250Hz100ms	12	f1250Hz100ms	13	f1250Hz100ms	14	;
S	50	2	138	f1250Hz100ms	15	f1250Hz100ms	16	f1250Hz100ms	17	f1250Hz100ms	18	;
T	100	1	23	f1250Hz100ms	19	f1250Hz100ms	20	f1250Hz100ms	21	f1250Hz100ms	22	;
S	50	2	49	f1250Hz100ms	23	f1250Hz100ms	24	f1250Hz100ms	25	f1250Hz100ms	26	;
S	50	2	412	f1250Hz100ms	27	f1250Hz100ms	28	f1250Hz100ms	29	f1250Hz100ms	30	;
T	100	1	347	f1250Hz100ms	31	f1250Hz100ms	32	f1250Hz100ms	33	f1250Hz100ms	34	;
S	50	2	159	f1250Hz100ms	35	f1250Hz100ms	36	f1150Hz	1	f1150Hz	2	;
S	50	2	475	f1150Hz	3	f1150Hz	4	f1150Hz	5	f1150Hz	6	;
S	50	2	17	f1150Hz	7	f1150Hz	8	f1150Hz	9	f1150Hz	10	;
S	50	2	219	f1150Hz	11	f1150Hz	12	f1150Hz	13	f1150Hz	14	;
S	50	2	191	f1150Hz	15	f1150Hz	16	f1150Hz	17	f1150Hz	18	;
S	50	2	383	f1150Hz	19	f1150Hz	20	f1150Hz	21	f1150Hz	22	;
T	100	1	398	f1150Hz	23	f1150Hz	24	f1150Hz	25	f1150Hz	26	;
S	50	2	93	f1150Hz	27	f1150Hz	28	f1150Hz	29	f1150Hz	30	;
S	50	2	245	f1150Hz	31	f1150Hz	32	f1150Hz	33	f1150Hz	34	;
S	50	2	223	f1150Hz	35	f1150Hz	36	f950Hz100ms	1	f950Hz100ms	2	;
S	50	2	323	f950Hz100ms	3	f950Hz100ms	4	f950Hz100ms	5	f950Hz100ms	6	;
N	200	2	355	f1250Hz	1	f1250Hz	2	f1250Hz	3	f1250Hz	4	;
S	50	2	377	f1250Hz	5	f1250Hz	6	f1250Hz	7	f1250Hz	8	;
S	50	2	138	f1250Hz	9	f1250Hz	10	f1250Hz	11	f1250Hz	12	;
T	100	1	340	f1250Hz	13	f1250Hz	14	f1250Hz	15	f1250Hz	16	;
S	50	2	328	f1250Hz	17	f1250Hz	18	f1250Hz	19	f1250Hz	20	;
S	50	2	81	f1250Hz	21	f1250Hz	22	f1250Hz	23	f1250Hz	24	;
S	50	2	59	f1250Hz	25	f1250Hz	26	f1250Hz	27	f1250Hz	28	;
N	200	2	249	f1250Hz	29	f1250Hz	30	f1250Hz	31	f1250Hz	32	;
S	50	2	480	f1250Hz	33	f1250Hz	34	f1250Hz	35	f1250Hz	36	;
S	50	2	170	f1150Hz100ms	1	f1150Hz100ms	2	f1150Hz100ms	3	f1150Hz100ms	4	;
S	50	2	293	f1150Hz100ms	5	f1150Hz100ms	6	f1000Hz	1	f1000Hz	2	;
S	50	2	112	f1000Hz	3	f1000Hz	4	f1000Hz	5	f1000Hz	6	;
S	50	2	376	f1000Hz	7	f1000Hz	8	f1000Hz	9	f1000Hz	10	;
S	50	2	128	f1000Hz	11	f1000Hz	12	f1000Hz	13	f1000Hz	14	;
S	50	2	253	f1000Hz	15	f1000Hz	16	f1000Hz	17	f1000Hz	18	;
T	100	1	350	f1000Hz	19	f1000Hz	20	f1000Hz	21	f1000Hz	22	;
S	50	2	445	f1000Hz	23	f1000Hz	24	f1000Hz	25	f1000Hz	26	;
N	200	2	480	f1000Hz	27	f1000Hz	28	f1000Hz	29	f1000Hz	30	;
S	50	2	274	f1000Hz	31	f1000Hz	32	f1000Hz	33	f1000Hz	34	;
T	100	1	69	f1000Hz	35	f1000Hz	36	f700Hz100ms	1	f700Hz100ms	2	;
S	50	2	75	f700Hz100ms	3	f700Hz100ms	4	f700Hz100ms	5	f700Hz100ms	6	;
S	50	2	129	f700Hz100ms	7	f700Hz100ms	8	f700Hz100ms	9	f700Hz100ms	10	;
S	50	2	420	f700Hz100ms	11	f700Hz100ms	12	f700Hz100ms	13	f700Hz100ms	14	;
S	50	2	127	f700Hz100ms	15	f700Hz100ms	16	f700Hz100ms	17	f700Hz100ms	18	;
S	50	2	407	f700Hz100ms	19	f700Hz100ms	20	f700Hz100ms	21	f700Hz100ms	22	;
S	50	2	122	f700Hz100ms	23	f700Hz100ms	24	f700Hz100ms	25	f700Hz100ms	26	;
S	50	2	465	f700Hz100ms	27	f700Hz100ms	28	f700Hz100ms	29	f700Hz100ms	30	;
N	200	2	175	f700Hz100ms	31	f700Hz100ms	32	f700Hz100ms	33	f700Hz100ms	34	;
S	50	2	98	f700Hz100ms	35	f700Hz100ms	36	f900Hz	1	f900Hz	2	;
S	50	2	126	f900Hz	3	f900Hz	4	f900Hz	5	f900Hz	6	;
S	50	2	308	f1100Hz100ms	1	f1100Hz100ms	2	f800Hz	1	f800Hz	2	;
S	50	2	237	f700Hz100ms	1	f700Hz100ms	2	f900Hz	1	f900Hz	2	;
S	50	2	176	f900Hz	3	f900Hz	4	f900Hz	5	f900Hz	6	;
S	50	2	415	f750Hz100ms	1	f750Hz100ms	2	f1000Hz	1	f1000Hz	2	;
N	200	2	293	f1000Hz	3	f1000Hz	4	f1000Hz	5	f1000Hz	6	;
S	50	2	275	f1100Hz100ms	1	f1100Hz100ms	2	f850Hz	1	f850Hz	2	;
S	50	2	459	f850Hz	3	f850Hz	4	f850Hz	5	f850Hz	6	;
S	50	2	143	f850Hz	7	f850Hz	8	f850Hz	9	f850Hz	10	;
T	100	1	379	f850Hz	11	f850Hz	12	f850Hz	13	f850Hz	14	;
S	50	2	377	f850Hz	15	f850Hz	16	f850Hz	17	f850Hz	18	;
S	50	2	190	f850Hz	19	f850Hz	20	f850Hz	21	f850Hz	22	;
S	50	2	284	f850Hz	23	f850Hz	24	f850Hz	25	f850Hz	26	;
S	50	2	38	f850Hz	27	f850Hz	28	f850Hz	29	f850Hz	30	;
S	50	2	27	f850Hz	31	f850Hz	32	f850Hz	33	f850Hz	34	;
S	50	2	265	f850Hz	35	f850Hz	36	f1000Hz100ms	1	f1000Hz100ms	2	;
S	50	2	390	f1100Hz	1	f1100Hz	2	f1100Hz	3	f1100Hz	4	;
S	50	2	467	f1100Hz	5	f1100Hz	6	f1100Hz	7	f1100Hz	8	;
T	100	1	65	f1100Hz	9	f1100Hz	10	f1100Hz	11	f1100Hz	12	;
S	50	2	284	f1100Hz	13	f1100Hz	14	f1100Hz	15	f1100Hz	16	;
S	50	2	235	f1100Hz	17	f1100Hz	18	f1100Hz	19	f1100Hz	20	;
S	50	2	166	f1100Hz	21	f1100Hz	22	f1100Hz	23	f1100Hz	24	;
S	50	2	169	f1100Hz	25	f1100Hz	26	f1100Hz	27	f1100Hz	28	;
N	200	2	81	f1100Hz	29	f1100Hz	30	f1100Hz	31	f1100Hz	32	;
S	50	2	397	f1100Hz	33	f1100Hz	34	f1100Hz	35	f1100Hz	36	;
S	50	2	156	f800Hz100ms	1	f800Hz100ms	2	f800Hz100ms	3	f800Hz100ms	4	;
S	50	2	264	f800Hz100ms	5	f800Hz100ms	6	f800Hz100ms	7	f800Hz100ms	8	;
S	50	2	83	f800Hz100ms	9	f800Hz100ms	10	f800Hz100ms	11	f800Hz100ms	12	;
N	200	2	301	f800Hz100ms	13	f800Hz100ms	14	f800Hz100ms	15	f800Hz100ms	16	;
S	50	2	131	f800Hz100ms	17	f800Hz100ms	18	f800Hz100ms	19	f800Hz100ms	20	;
S	50	2	327	f800Hz100ms	21	f800Hz100ms	22	f800Hz100ms	23	f800Hz100ms	24	;
S	50	2	345	f800Hz100ms	25	f800Hz100ms	26	f800Hz100ms	27	f800Hz100ms	28	;
N	200	2	374	f800Hz100ms	29	f800Hz100ms	30	f800Hz100ms	31	f800Hz100ms	32	;
S	50	2	225	f800Hz100ms	33	f800Hz100ms	34	f800Hz100ms	35	f800Hz100ms	36	;
S	50	2	42	f700Hz	1	f700Hz	2	f700Hz	3	f700Hz	4	;
T	100	1	114	f700Hz	5	f700Hz	6	f700Hz	7	f700Hz	8	;
S	50	2	457	f700Hz	9	f700Hz	10	f700Hz	11	f700Hz	12	;
S	50	2	76	f700Hz	13	f700Hz	14	f700Hz	15	f700Hz	16	;
S	50	2	413	f700Hz	17	f700Hz	18	f700Hz	19	f700Hz	20	;
S	50	2	269	f700Hz	21	f700Hz	22	f700Hz	23	f700Hz	24	;
S	50	2	498	f700Hz	25	f700Hz	26	f700Hz	27	f700Hz	28	;
S	50	2	39	f700Hz	29	f700Hz	30	f700Hz	31	f700Hz	32	;
S	50	2	221	f700Hz	33	f700Hz	34	f700Hz	35	f700Hz	36	;
N	200	2	53	f800Hz100ms	1	f800Hz100ms	2	f700Hz	1	f700Hz	2	;
S	50	2	481	f700Hz	3	f700Hz	4	f700Hz	5	f700Hz	6	;
S	50	2	222	f950Hz100ms	1	f950Hz100ms	2	f750Hz	1	f750Hz	2	;
S	50	2	387	f750Hz	3	f750Hz	4	f750Hz	5	f750Hz	6	;
T	100	1	409	f850Hz100ms	1	f850Hz100ms	2	f1050Hz	1	f1050Hz	2	;
S	50	2	434	f1050Hz	3	f1050Hz	4	f1050Hz	5	f1050Hz	6	;
S	50	2	42	f1050Hz	7	f1050Hz	8	f1050Hz	9	f1050Hz	10	;
S	50	2	200	f1050Hz	11	f1050Hz	12	f1050Hz	13	f1050Hz	14	;
S	50	2	130	f1050Hz	15	f1050Hz	16	f1050Hz	17	f1050Hz	18	;
N	200	2	500	f1050Hz	19	f1050Hz	20	f1050Hz	21	f1050Hz	22	;
S	50	2	216	f1050Hz	23	f1050Hz	24	f1050Hz	25	f1050Hz	26	;
S	50	2	455	f1050Hz	27	f1050Hz	28	f1050Hz	29	f1050Hz	30	;
S	50	2	91	f1050Hz	31	f1050Hz	32	f1050Hz	33	f1050Hz	34	;
S	50	2	132	f1050Hz	35	f1050Hz	36	f1200Hz100ms	1	f1200Hz100ms	2	;
N	200	2	73	f1200Hz100ms	3	f1200Hz100ms	4	f1200Hz100ms	5	f1200Hz100ms	6	;
S	50	2	68	f1200Hz100ms	7	f1200Hz100ms	8	f1200Hz100ms	9	f1200Hz100ms	10	;
S	50	2	435	f1200Hz100ms	11	f1200Hz100ms	12	f1200Hz100ms	13	f1200Hz100ms	14	;
S	50	2	290	f1200Hz100ms	15	f1200Hz100ms	16	f1200Hz100ms	17	f1200Hz100ms	18	;
S	50	2	275	f1200Hz100ms	19	f1200Hz100ms	20	f1200Hz100ms	21	f1200Hz100ms	22	;
S	50	2	72	f1200Hz100ms	23	f1200Hz100ms	24	f1200Hz100ms	25	f1200Hz100ms	26	;
S	50	2	427	f1200Hz100ms	27	f1200Hz100ms	28	f1200Hz100ms	29	f1200Hz100ms	30	;
N	200	2	311	f1200Hz100ms	31	f1200Hz100ms	32	f1200Hz100ms	33	f1200Hz100ms	34	;
S	50	2	175	f1200Hz100ms	35	f1200Hz100ms	36	f950Hz	1	f950Hz	2	;
S	50	2	257	f750Hz100ms	1	f750Hz100ms	2	f750Hz100ms	3	f750Hz100ms	4	;
T	100	1	201	f750Hz100ms	5	f750Hz100ms	6	f750Hz100ms	7	f750Hz100ms	8	;
S	50	2	38	f750Hz100ms	9	f750Hz100ms	10	f750Hz100ms	11	f750Hz100ms	12	;
S	50	2	120	f750Hz100ms	13	f750Hz100ms	14	f750Hz100ms	15	f750Hz100ms	16	;
T	100	1	62	f750Hz100ms	17	f750Hz100ms	18	f750Hz100ms	19	f750Hz100ms	20	;
S	50	2	92	f750Hz100ms	21	f750Hz100ms	22	f750Hz100ms	23	f750Hz100ms	24	;
S	50	2	120	f750Hz100ms	25	f750Hz100ms	26	f750Hz100ms	27	f750Hz100ms	28	;
S	50	2	451	f750Hz100ms	29	f750Hz100ms	30	f750Hz100ms	31	f750Hz100ms	32	;
S	50	2	472	f750Hz100ms	33	f750Hz100ms	34	f750Hz100ms	35	f750Hz100ms	36	;
S	50	2	245	f850Hz	1	f850Hz	2	f850Hz	3	f850Hz	4	;
N	200	2	245	f850Hz	5	f850Hz	6	f1150Hz100ms	1	f1150Hz100ms	2	;
S	50	2	169	f1150Hz100ms	3	f1150Hz100ms	4	f1150Hz100ms	5	f1150Hz100ms	6	;
S	50	2	450	f1150Hz100ms	7	f1150Hz100ms	8	f1150Hz100ms	9	f1150Hz100ms	10	;
T	100	1	185	f1150Hz100ms	11	f1150Hz100ms	12	f1150Hz100ms	13	f1150Hz100ms	14	;
S	50	2	56	f1150Hz100ms	15	f1150Hz100ms	16	f1150Hz100ms	17	f1150Hz100ms	18	;
S	50	2	390	f1150Hz100ms	19	f1150Hz100ms	20	f1150Hz100ms	21	f1150Hz100ms	22	;
S	50	2	195	f1150Hz100ms	23	f1150Hz100ms	24	f1150Hz100ms	25	f1150Hz100ms	26	;
T	100	1	121	f1150Hz100ms	27	f1150Hz100ms	28	f1150Hz100ms	29	f1150Hz100ms	30	;
S	50	2	202	f1150Hz100ms	31	f1150Hz100ms	32	f1150Hz100ms	33	f1150Hz100ms	34	;
S	50	2	48	f1150Hz100ms	35	f1150Hz100ms	36	f1250Hz	1	f1250Hz	2	;
S	50	2	66	f1250Hz	3	f1250Hz	4	f1250Hz	5	f1250Hz	6	;
S	50	2	471	f1150Hz100ms	1	f1150Hz100ms	2	f1050Hz	1	f1050Hz	2	;
S	50	2	478	f1050Hz	3	f1050Hz	4	f1050Hz	5	f1050Hz	6	;
S	50	2	288	f1050Hz	7	f1050Hz	8	f1050Hz	9	f1050Hz	10	;
N	200	2	30	f1050Hz	11	f1050Hz	12	f1050Hz	13	f1050Hz	14	;
S	50	2	117	f1050Hz	15	f1050Hz	16	f1050Hz	17	f1050Hz	18	;
S	50	2	177	f1050Hz	19	f1050Hz	20	f1050Hz	21	f1050Hz	22	;
S	50	2	411	f1050Hz	23	f1050Hz	24	f1050Hz	25	f1050Hz	26	;
S	50	2	8	f1050Hz	27	f1050Hz	28	f1050Hz	29	f1050Hz	30	;
S	50	2	22	f1050Hz	31	f1050Hz	32	f1050Hz	33	f1050Hz	34	;
S	50	2	84	f1050Hz	35	f1050Hz	36	f950Hz100ms	1	f950Hz100ms	2	;
N	200	2	325	f950Hz100ms	3	f950Hz100ms	4	f950Hz100ms	5	f950Hz100ms	6	;
S	50	2	366	f800Hz	1	f800Hz	2	f800Hz	3	f800Hz	4	;
S	50	2	324	f800Hz	5	f800Hz	6	f800Hz	7	f800Hz	8	;
S	50	2	225	f800Hz	9	f800Hz	10	f800Hz	11	f800Hz	12	;
T	100	1	274	f800Hz	13	f800Hz	14	f800Hz	15	f800Hz	16	;
S	50	2	148	f800Hz	17	f800Hz	18	f800Hz	19	f800Hz	20	;
S	50	2	372	f800Hz	21	f800Hz	22	f800Hz	23	f800Hz	24	;
S	50	2	94	f800Hz	25	f800Hz	26	f800Hz	27	f800Hz	28	;
S	50	2	343	f800Hz	29	f800Hz	30	f800Hz	31	f800Hz	32	;
N	200	2	92	f800Hz	33	f800Hz	34	f800Hz	35	f800Hz	36	;
S	50	2	184	f1000Hz100ms	1	f1000Hz100ms	2	f1000Hz100ms	3	f1000Hz100ms	4	;
S	50	2	313	f1000Hz100ms	5	f1000Hz100ms	6	f1000Hz100ms	7	f1000Hz100ms	8	;
S	50	2	390	f1000Hz100ms	9	f1000Hz100ms	10	f1000Hz100ms	11	f1000Hz100ms	12	;
S	50	2	41	f1000Hz100ms	13	f1000Hz100ms	14	f1000Hz100ms	15	f1000Hz100ms	16	;
S	50	2	465	f1000Hz100ms	17	f1000Hz100ms	18	f1000Hz100ms	19	f1000Hz100ms	20	;
S	50	2	388	f1000Hz100ms	21	f1000Hz100ms	22	f1000Hz100ms	23	f1000Hz100ms	24	;
S	50	2	243	f1000Hz100ms	25	f1000Hz100ms	26	f1000Hz100ms	27	f1000Hz100ms	28	;
N	200	2	218	f1000Hz100ms	29	f1000Hz100ms	30	f1000Hz100ms	31	f1000Hz100ms	32	;
S	50	2	223	f1000Hz100ms	33	f1000Hz100ms	34	f1000Hz100ms	35	f1000Hz100ms	36	;
S	50	2	153	f1250Hz	1	f1250Hz	2	f1100Hz100ms	1	f1100Hz100ms	2	;
S	50	2	254	f1000Hz	1	f1000Hz	2	f1100Hz100ms	1	f1100Hz100ms	2	;
S	50	2	255	f1100Hz100ms	3	f1100Hz100ms	4	f1100Hz100ms	5	f1100Hz100ms	6	;
N	200	2	409	f1200Hz	1	f1200Hz	2	f1200Hz	3	f1200Hz	4	;
S	50	2	397	f1200Hz	5	f1200Hz	6	f950Hz100ms	1	f950Hz100ms	2	;
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