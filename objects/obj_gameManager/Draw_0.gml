// obj_manager Draw event

// Timer text
var timer_text = "Time Left: " + string(floor(timer)) + " seconds";
var turkeys_saved_text = "Turkeys Saved: " + string(turkeys_saved);

// Draw above the first camera viewport
var x1 = camera_get_view_x(view_camera[0]);
var y1 = camera_get_view_y(view_camera[0]);
draw_text(x1 + 10, y1 + 10, timer_text);           // Draw timer near the top left of camera 1
draw_text(x1 + 10, y1 + 30, turkeys_saved_text);    // Draw turkeys saved below the timer

// Draw above the second camera viewport
var x2 = camera_get_view_x(view_camera[1]);
var y2 = camera_get_view_y(view_camera[1]);
draw_text(x2 + 10, y2 + 10, timer_text);           // Draw timer near the top left of camera 2
draw_text(x2 + 10, y2 + 30, turkeys_saved_text);    // Draw turkeys saved below the timer_text);  // Draw near the top left of camera 2