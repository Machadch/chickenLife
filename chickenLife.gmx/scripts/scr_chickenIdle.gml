self.hunger -= .15
self.thirst -= .25
image_speed = .05

if (self.hunger <= 50 and self.hunger < self.thirst) {
state = states.hungry;
} 
else if (self.thirst <= 50 and self.thirst < self.hunger) {
state = states.thirsty;
} 
else {
var dir = point_direction(x,y,random(room_width),random(room_height));
motion_set(dir,spd);
} 
