if instance_exists(obj_feed){
var dis = point_distance(x,y,obj_feed.x,obj_feed.y);
var dir = point_direction(x,y,obj_feed.x,obj_feed.y);
    
if (dis > 32) {
    self.hunger -= .10;
    self.thirst -= .10;
    motion_set(dir,2);
    }
    else {
    speed = 0;
    state = states.eating;
    }
}
