if (self.thirst < -1) self.thirst = -1;
if (self.hunger <0) self.hunger = 0;
var dis = point_distance(x,y,obj_feeder.x,obj_feeder.y);
var dir = point_direction(x,y,obj_feeder.x,obj_feeder.y);

if (dis <= 32 and self.hunger <= 100 and obj_feeder.feedLevel > 0) {
self.image_index = spr_chickenEating;
image_speed = 0.10;
obj_feeder.feedLevel -= 1;
self.hunger += 100;

}
else if (dis > 32) {
state = states.hungry;
}
else {
state = states.idle;
}