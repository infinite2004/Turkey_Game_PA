/// @description Insert description here
// You can write your code in this editor
// obj_manager Step event
if (timer_running) {
    // Decrease timer by the amount of time passed since the last frame
    timer -= delta_time / 1000000;

    // Check if the timer has reached 0
    if (timer <= 0) {
        timer = 0;
        timer_running = false; // Stop the timer
        // Add any additional code here to handle when the timer runs out
        show_message("Time's up!");
    }
}