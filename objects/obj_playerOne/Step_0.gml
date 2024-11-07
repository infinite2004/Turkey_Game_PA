// Check for movement and change sprite accordingly
if (keyboard_check(vk_up)) {
    y -= player_speed;
    if (sprite_index != spr_player_one_up) {
        sprite_index = spr_player_one_up;
        image_index = 0; // Reset animation frame to start
    }
    image_speed = 1; // Enable animation playback
} else if (keyboard_check(vk_left)) {
    x -= player_speed;
    facing_direction = -1; // Set facing direction to left
    if (sprite_index != spr_player_one_left) {
        sprite_index = spr_player_one_left;
        image_index = 0; // Reset animation frame to start
    }
    image_speed = 1; // Enable animation playback
} else if (keyboard_check(vk_right)) {
    x += player_speed;
    facing_direction = 1; // Set facing direction to right
    if (sprite_index != spr_player_one_right) {
        sprite_index = spr_player_one_right;
        image_index = 0; // Reset animation frame to start
    }
    image_speed = 1; // Enable animation playback
} else {
    // Stop movement, set idle animation or keep the last sprite
    if (sprite_index == spr_player_one_up || sprite_index == spr_player_one_left || sprite_index == spr_player_one_right) {
        image_speed = 0; // Stop the animation if no key is pressed
        image_index = 0; // Optionally reset to the first frame if you want it to stay on the first frame
    }
}

// Shooting bullets vertically when the space bar is pressed
if (keyboard_check_pressed(vk_space)) {
    // Position the bullet slightly above the player's current position
    var bullet_x = x;         // Align with player's x position
    var bullet_y = y-100;    // Position 20 pixels above player's current y position

    // Create the projectile (bullet) at the adjusted position
    var proj = instance_create_layer(bullet_x, bullet_y, "Instances", obj_shooter);

    if (proj != noone) {  // Ensure the projectile was created successfully
        proj.yspd = -10;         // Set the bullet to move upwards with a negative y-speed
        proj.xspd = 0;           // Ensure no horizontal movement
    }
}