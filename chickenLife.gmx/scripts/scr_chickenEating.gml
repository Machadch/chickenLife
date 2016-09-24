var dis = point_distance(x,y,obj_feed.x,obj_feed.y);
var dir = point_direction(x,y,obj_feed.x,obj_feed.y);

if (dis <= 32 and self.hunger <= 100) {
self.image_index = spr_chickenEating;
image_speed = 0.10;
self.hunger += 1;
}
else if (dis > 32) {
state = states.hungry;
}
else {
state = states.idle;
}
