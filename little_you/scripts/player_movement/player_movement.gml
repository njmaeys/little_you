
function determine_input_type() {
	// This likely goes beyond movement but putting here because it makes sense for now
	
	// Controller Input
	var _controller_h = gamepad_axis_value(0, gp_axislh);
	var _controller_active = abs(_controller_h) > 0.2 or gamepad_button_check(0, gp_face1);

	// Keyboard Input
	var _keyboard_h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var _keyboard_active = _keyboard_h != 0 or keyboard_check_pressed(vk_space);

	// Update Input Mode
	if (_controller_active) {
	    input_mode = input_mode_options.controller;
		h_input = _controller_h;
	} else if (_keyboard_active) {
	    input_mode = input_mode_options.keyboard;
		h_input = _keyboard_h;
	} else {
		// If the player has stopped moving left or right then h_input should stop
		// NOTE: This will be a little weird for jumping and carrying the player forward in an arc... figure that out later
		h_input = 0;
	}
}


function player_move() {	
	// Make sure the head bonk zone keeps moving with the player
	head_bonk_y = y - (sprite_height / 2);
	head_bonk_x = x;
	
	// Normalize input
	if (abs(obj_game_manager.h_input) < 0.2) {
	    obj_game_manager.h_input = 0;
	} else {
	    obj_game_manager.h_input = clamp(obj_game_manager.h_input, -1, 1);
	}
	
	x += obj_game_manager.h_input * player_speed;

}


function player_jump() {
	// Apply gravity
	vertical_speed += gravity_force;

	// Update vertical position
	y += vertical_speed;

	// Check if player is on the ground
	if place_meeting(x, y + 1, obj_ground) {
	    can_jump = true;
    
	    // Stop falling when on ground
	    if vertical_speed > 0 {
	        vertical_speed = 0;
	    }
	}

	// Jump logic
	if (
		keyboard_check(obj_game_manager.keyboard_movement.jump) 
			or gamepad_button_check(0, obj_game_manager.controller_movement.jump)
		) 
		and can_jump 
	{
		// NOTE: May need to do some sort of jump cooldown... otherwise the player can just bounc like crazy... it's kinda funny tho
	    vertical_speed = jump_speed;
	    can_jump = false;
	}
	
	// Check if player's head hits the ground
	if place_meeting(head_bonk_x, head_bonk_y, obj_ground) {
	    // Stop upward movement
		show_debug_message($"Above head: {vertical_speed}");
	    if vertical_speed < 0 {
			// Stop moving up
			vertical_speed = 0;
			
			// Start falling
			vertical_speed += gravity_force;
	    }
	}

	// Prevent getting stuck in ground
	if place_meeting(x, y, obj_ground) {
	    // Move player up until they're not inside ground
	    while (place_meeting(x, y, obj_ground)) {
	        y -= 1;
	    }
	    vertical_speed = 0;
	}

	// Terminal velocity to prevent falling too fast
	if vertical_speed > 12 {
		// NOTE: Toy around with this
	    vertical_speed = 12;
	}
}