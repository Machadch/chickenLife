if (self.thirst < -1) self.thirst = -1;
if (self.hunger < 0) self.hunger = 0;
var dis = point_distance(x,y,obj_water.x,obj_water.y);
var dir = point_direction(x,y,obj_water.x,obj_water.y);

if (dis <= 32 and self.thirst <= 100) {
self.image_index = spr_chickenEating;
self.thirst += 5;
obj_water.waterLevel -= 1;
}
else if (dis > 32) {
state = states.thirsty;
}
else {
state = states.idle;
}
