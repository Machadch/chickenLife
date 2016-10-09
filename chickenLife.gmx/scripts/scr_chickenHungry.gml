if (self.thirst < -1) self.thirst = -1;
if (self.hunger < 0) self.hunger = 0;

if instance_exists(obj_feeder and obj_feeder.feedLevel > 0){
var dis = point_distance(x,y,obj_feeder.x,obj_feeder.y);
    
if (dis > 34) {
    self.thirst -= self.thirstDegrade;
    mp_linear_step(obj_feeder.x,obj_feeder.y,1,0);
}
else {
    speed = 0;
    state = states.eating;
    }
}
