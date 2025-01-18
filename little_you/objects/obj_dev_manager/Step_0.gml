// This prevents any unwanted behavior when not in dev mode
if dev_mode {

	/*

	Put all your helper functions in here.

	- Be aware of conflicting key controls
	- Clean up any unecessary items over time
	- Put a brief comment on what it does

	*/


	// Fullscreen
	if keyboard_check_pressed(ord("F")) {
		obj_game_manager.fullscreen = !obj_game_manager.fullscreen;
		window_set_fullscreen(obj_game_manager.fullscreen);
	}

}