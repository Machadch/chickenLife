self.hunger -= self.hungerDegrade;
self.thirst -= self.thirstDegrade;
image_speed = .05
if (self.hunger <0) self.hunger = 0;
if (self.thirst < -1) self.thirst = -1;
if (self.hunger <= 5 and self.hunger < self.thirst) {
state = states.hungry;
} 
else if (self.thirst <= 0 and self.thirst < self.hunger) {
state = states.thirsty;
} 
else {

if (random(200)) < 10{
mp_linear_step(random(room_width), random(room_height), 1.5, 0);
}
//var dir = point_direction(x,y,random(room_width),random(room_height));
//motion_set(dir,spd);
} 
