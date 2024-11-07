// Variables for movement speed
var player_speed = 6;

// Check for movement and change sprite accordingly
if (keyboard_check(ord("W"))) { // W key for up
    y -= player_speed;
    if (sprite_index != spr_player_two_up) {
        sprite_index = spr_player_two_up;
        image_index = 0; // Reset animation frame to start
    }
    image_speed = 1; // Enable animation playback
} else if (keyboard_check(ord("A"))) { // A key for left
    x -= player_speed;
    if (sprite_index != spr_player_two_left) {
        sprite_index = spr_player_two_left;
        image_index = 0; // Reset animation frame to start
    }
    image_speed = 1; // Enable animation playback
} else if (keyboard_check(ord("D"))) { // D key for right
    x += player_speed;
    if (sprite_index != spr_player_two_right) {
        sprite_index = spr_player_two_right;
        image_index = 0; // Reset animation frame to start
    }
    image_speed = 1; // Enable animation playback
} else {
    // Stop movement, set idle animation or keep the last sprite
    if (sprite_index == spr_player_two_up || sprite_index == spr_player_two_left || sprite_index == spr_player_two_right) {
        image_speed = 0; // Stop the animation if no key is pressed
        image_index = 0; // Optionally reset to the first frame if you want it to stay on the first frame
    }
}
