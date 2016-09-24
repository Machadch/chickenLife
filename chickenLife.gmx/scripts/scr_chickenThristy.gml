if instance_exists(obj_water){
var dis = point_distance(x,y,obj_water.x,obj_water.y);
var dir = point_direction(x,y,obj_water.x,obj_water.y);
    
if (dis > 32) {
    self.thirst -= .50;
    self.hunger -= .10;
    motion_set(dir,2);
    }
    else {
    speed = 0;
    state = states.drinking;
    }
}
