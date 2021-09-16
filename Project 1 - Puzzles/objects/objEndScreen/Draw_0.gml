/// @description Insert description here
// You can write your code in this editor

//set draw color to black
draw_set_color(c_black);

//draw on bottom middle of screen "Score: #"
draw_text(85, 190, "Score: " + string(global.totalClicks));

//draw under score "Click to Restart")
draw_text(60, 220, "Click To Restart");