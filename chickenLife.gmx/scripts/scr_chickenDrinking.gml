var dis = point_distance(x,y,obj_water.x,obj_water.y);
var dir = point_direction(x,y,obj_water.x,obj_water.y);

if (dis <= 32 and self.thirst <= 100) {
self.image_index = spr_chickenEating;
self.thirst += 5;
}
else if (dis > 32) {
state = states.thirsty;
}
else {
state = states.idle;
}
