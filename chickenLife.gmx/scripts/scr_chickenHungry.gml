if (self.thirst < -1) self.thirst = -1;
if (self.hunger < 0) self.hunger = 0;
if instance_exists(obj_feeder){
var dis = point_distance(x,y,obj_feeder.x,obj_feeder.y);
//var dir = point_direction(x,y,obj_feeder.x,obj_feeder.y);
    
if (dis > 32) {
    self.thirst -= .02
    mp_linear_step(obj_feeder.x,obj_feeder.y,1,1);
}
else {
    speed = 0;
    state = states.eating;
    }
}