/// @description Insert description here
// You can write your code in this editor
// Check for player instance and move towards them
var player = instance_find(obj_player, 0); // Assuming player object is obj_player
if (player != noone) {
    var direction_to_player = point_direction(x, y, player.x, player.y);
    var follow_speed = 3; // Adjust follow speed as needed

    // Move towards the player
    x += lengthdir_x(follow_speed, direction_to_player);
    y += lengthdir_y(follow_speed, direction_to_player);
}