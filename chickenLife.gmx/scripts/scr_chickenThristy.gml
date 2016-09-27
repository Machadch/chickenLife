if (self.thirst < -1) self.thirst = -1;
if (self.hunger < 0) self.hunger = 0;
if instance_exists(obj_water){
var dis = point_distance(x,y,obj_water.x,obj_water.y);
var dir = point_direction(x,y,obj_water.x,obj_water.y);
    
if (dis > 32) {
    self.hunger -= self.hungerDegrade;
mp_linear_step(obj_water.x,obj_water.y,1,1);
    }
    else {
    speed = 0;
    state = states.drinking;
    }
}
