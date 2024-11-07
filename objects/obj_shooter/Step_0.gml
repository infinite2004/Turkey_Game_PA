// obj_shooter Step Event
x += xspd;
y += yspd;

// Destroy the bullet if it goes out of bounds (optional)
if (y < 0) { // Adjust based on room height
    instance_destroy();
}