scenario = "LTP vb/pb instructions revised for gray bar target";
scenario_type = trials;

# sets the default text font
default_font = "Arial";
default_font_size = 14;
default_text_color = 0,0,0; # sets text to black

# sets the background colour to gray    
default_background_color = 128,128,128; 
#center the text
default_text_align = align_center;

active_buttons = 2;
button_codes = 8,3;

write_codes = true;
pulse_width = 10;
response_matching = simple_matching;

begin;

bitmap {filename = "defaultblack.png";} def; 


# this tells the scenario to show the default picture (a blank
# background with red fixation cross) if no stimuli are being shown: 
picture {
		bitmap def;
		x = 0; y = 0;
}default;               


bitmap {filename = "R90.png";} R50;
bitmap {filename = "R90i.png";} R50i;
bitmap {filename = "R180.png";} R50t;
bitmap {filename = "R180i.png";} R130;
bitmap {filename = "R90.png";} C0;
bitmap {filename = "R180.png";} C45;
bitmap { filename = "SleepLookCircle.bmp";} NoSleep;
bitmap { filename = "SleepLook.bmp";} Sleep;
bitmap { filename = "BlinkLookCircle.bmp";} NoBlink;
bitmap { filename = "BlinkLook.bmp";} Blink;
bitmap { filename = "IncorrectLookCircle.bmp";} NoLookAway;
bitmap { filename = "IncorrectLook.bmp";} LookAway;
bitmap { filename = "CorrectLookCircle.bmp";} YesLook;
bitmap { filename = "CorrectLook.bmp";} Look;
bitmap { filename = "BlankSubject.bmp";} sub;


line_graphic {
   coordinates = -60, -255, -60, 255;
   line_width = 6;
	line_color=128,128,128;
	background_color=128,128,128;
	fill_color=128,128,128;
}lineLeft;
line_graphic {
   coordinates = 60, -255, 60, 255;
   line_width = 6;
	line_color=128,128,128;
	background_color=128,128,128;
	fill_color=128,128,128;
}lineRight;
line_graphic {
   coordinates = -255, 60, 255, 60;
   line_width = 6;
	line_color=128,128,128;
	background_color=128,128,128;
	fill_color=128,128,128;
}lineTop;
line_graphic {
   coordinates = -255, -60, 255, -60;
   line_width = 6;
	line_color=128,128,128;
	background_color=128,128,128;
	fill_color=128,128,128;
}lineBottom;

   
trial{
   trial_duration = 5200;
   
   picture{
      text{
         font_size = 24;
         caption = "During this experiment you will see the
following images, presented in blocks:";};
      x = 0; y = 0;
      };
      
   time = 0;
   duration = 5000;
};      

trial{
   picture{
      bitmap R50;
      x = 0; y = 0;
      };
   time = 0;
   duration = 1000;  
   code = "s50";
};       

trial{
   picture{
      bitmap R130;
      x = 0; y = 0;
      };
   time = 500;
   duration = 1500;  
   code = "s130";
};       

trial{
   picture{
      bitmap C0;
      x = 0; y = 0;
      };
   time = 500;
   duration = 1500;  
   code = "s0";
}; 

trial{
   picture{
      bitmap C45;
      x = 0; y = 0;
      };
   time = 500;
   duration = 1500;  
   code = "s45";
}; 

trial{
   trial_duration = 5200;
   
   picture{
      text{
         font_size = 24;
         caption = "During a block, each will flash many times like this..."
          ;};
      x = 0; y = 0;
      };
      
   time = 100;
   duration = 5000;
};                      

trial{      
   trial_duration = 465;
   picture{
      bitmap R50;
      x = 0; y = 0;
      };   
   time = 0;
   duration = 25;  
   code = "50";
};   

trial{      
   trial_duration = 632;
   picture{
      bitmap R50i;
      x = 0; y = 0;
      };
   time = 0;
   duration = 25;  
   code = "50i";
};                         

trial{      
   trial_duration = 565;
   picture{
      bitmap R50;
      x = 0; y = 0;
      };   
   time = 0;
   duration = 25;  
   code = "50";
}; 

trial{      
   trial_duration = 615;
   picture{
      bitmap R50i;
      x = 0; y = 0;
      };
   time = 0;
   duration = 25;  
   code = "50i";
};                         

  
trial{
   #all_responses = true;
   trial_duration = 19000;
   #trial_type = first_response;
   
   picture{
      text{
         font_size = 24;
         caption = "Your job will be to relax, stay focused, 
and stare directly at the images on the screen. 

Respond with a button-press whenever 
you see different patterns, like these:";};  
         x = 0; y = 0;};  
   duration = 9000;
   time = 0;
   
#blue0n is 45 deg patch, normal
picture {
		bitmap R50;
		x = 0; y = 0;
      #text {caption = "+";
		#		font_size = 72;
		#		font_color = 255,0,0;}; # fixation cross
      line_graphic lineLeft;
		x = 0; y = 0; # centre of screen
}blue0n;

   time = 9000;
   duration = 2000;  
   code = "target";

#blue0n is 45 deg patch, normal
picture {
		bitmap R50i;
		x = 0; y = 0;
      #text {caption = "+";
		#		font_size = 72;
		#		font_color = 255,0,0;}; # fixation cross
      line_graphic lineRight;
		x = 0; y = 0; # centre of screen
};

   time = 11000;
   duration = 2000;  
   code = "target";
   
#blue0n is 45 deg patch, normal
picture {
		bitmap R50t;
		x = 0; y = 0;
      #text {caption = "+";
		#		font_size = 72;
		#		font_color = 255,0,0;}; # fixation cross
      line_graphic lineTop;
		x = 0; y = 0; # centre of screen
};

   time = 13000;
   duration = 2000;  
   code = "target";

#blue0n is 45 deg patch, normal
picture {
		bitmap R130;
		x = 0; y = 0;
      #text {caption = "+";
		#		font_size = 72;
		#		font_color = 255,0,0;}; # fixation cross
      line_graphic lineBottom;
		x = 0; y = 0; # centre of screen
};

   time = 15000;
   duration = 2000;  
   code = "target";

   picture{
   text{
      font_size = 24;
      caption = "Please try not to blink
after the picture changes  
      ";};
      x = 0; y = 0;
      };
      
   time = 17000;
   duration = next_picture;  
};                                
 

trial{
   trial_duration = 500;
   picture{
      bitmap sub;
      x = 0; y = 0;
      };
      
   time = 0;
   duration = next_picture;  
};   

##########
#blinking#
##########  

trial{
   trial_duration = 200;
   picture{
      bitmap Look;
      x = 0; y = 0;
      };
      
   time = 0;
   duration = next_picture;  
};
              
trial{
   trial_duration = 500;
   picture{
      bitmap Blink;
      x = 0; y = 0;
      };
      
   time = 0;
   duration = next_picture;  
};     

trial{
   trial_duration = 500;
   picture{
      bitmap NoBlink;
      x = 0; y = 0;
      };
      
   time = 0;
   duration = next_picture;  
};   
trial{
   trial_duration = 500;
   picture{
      bitmap Blink;
      x = 0; y = 0;
      };
      
   time = 0;
   duration = next_picture;  
};     

trial{
   trial_duration = 500;
   picture{
      bitmap NoBlink;
      x = 0; y = 0;
      };
      
   time = 0;
   duration = next_picture;  
};
trial{
   trial_duration = 500;
   picture{
      bitmap Blink;
      x = 0; y = 0;
      };
      
   time = 0;
   duration = next_picture;  
};     

trial{
   trial_duration = 500;
   picture{
      bitmap NoBlink;
      x = 0; y = 0;
      };
      
   time = 0;
   duration = next_picture;  
}; 

trial{
   trial_duration = 500;
   picture{
      bitmap Blink;
      x = 0; y = 0;
      };
      
   time = 0;
   duration = next_picture;  
};
#3rd blink
trial{
   trial_duration = 500;
   picture{
      bitmap sub;
      x = 0; y = 0;
      };
      
   time = 0;
   duration = next_picture;  
};  

trial{
  # all_responses = true;
   trial_duration = 5000;
   #trial_type = first_response;
   
   picture{
      text{
         font_size = 24;
         caption = "Keep your eyes focused 
on the red fixation cross and 
try not to fall asleep";};
		x = 0; y = 0;
      };
      
   time = 0;
   duration = next_picture;  
};           

trial{
   trial_duration = 1000;
   picture{
      bitmap sub;
      x = 0; y = 0;
      };
      
   time = 0;
   duration = next_picture;  
};

trial{
   trial_duration = 500;
   picture{
      bitmap Blink;
      x = 0; y = 0;
      };
      
   time = 0;
   duration = next_picture;  
};   

trial{
   trial_duration = 500;
   picture{
      bitmap Sleep;
      x = 0; y = 0;
      };
      
   time = 0;
   duration = next_picture;  
};       

trial{
   trial_duration = 500;
   picture{
      bitmap NoSleep;
      x = 0; y = 0;
      };
      
   time = 0;
   duration = next_picture;  
};   

trial{
   trial_duration = 500;
   picture{
      bitmap Sleep;
      x = 0; y = 0;
      };
      
   time = 0;
   duration = next_picture;  
};       

trial{
   trial_duration = 500;
   picture{
      bitmap NoSleep;
      x = 0; y = 0;
      };
      
   time = 0;
   duration = next_picture;  
};

trial{
   trial_duration = 500;
   picture{
      bitmap Sleep;
      x = 0; y = 0;
      };
      
   time = 0;
   duration = next_picture;  
};       

trial{
   trial_duration = 500;
   picture{
      bitmap NoSleep;
      x = 0; y = 0;
      };
      
   time = 0;
   duration = next_picture;  
};

trial{
   trial_duration = 500;
   picture{
      bitmap Sleep;
      x = 0; y = 0;
      };
      
   time = 0;
   duration = next_picture;  
};       

trial{
   trial_duration = 500;
   picture{
      bitmap NoSleep;
      x = 0; y = 0;
      };
      
   time = 0;
   duration = next_picture;  
};

trial{
   trial_duration = 500;
   picture{
      bitmap sub;
      x = 0; y = 0;
      };
      
   time = 0;
   duration = next_picture;  
};            

trial{
   
   picture{
      text{
         font_size = 24;
         caption = "Please let the experimenter
know if you have any questions.

Thank you!";};
      x = 0; y = 0;
   };       
   
   time = 100;
   duration = 4000;
}; 
