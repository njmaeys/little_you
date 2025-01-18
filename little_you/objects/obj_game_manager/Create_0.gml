// Display props
fullscreen = false;


// Pause
game_paused = false;


// Movement vars
input_mode_options = {
	keyboard: "keyboard",
	controller: "controller"
}

input_mode = input_mode_options.keyboard; // Default to keyboard on initialize
h_input = 0;



keyboard_movement = {
	left: "A",
	right: "D",
	jump: vk_space
}

controller_movement = {
	left: noone,
	right: noone,
	jump: gp_face1,
}