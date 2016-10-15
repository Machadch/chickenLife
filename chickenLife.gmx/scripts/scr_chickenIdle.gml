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
else if (self.thirst > 500 and self.hunger > 500 and self.layDate < current_day){
    state = states.laying;
}
else if (current_hour >= 21 or current_hour <=6) {
    if (self.layDate < current_day) {
        state = states.laying;}
        else state = states.sleeping;
    }
else if (self.location = 'coop') {
    state = states.sleeping;
    }
else {
if (random(500)) < 5{
var dir = point_direction(x,y,random(room_width),256 + random(400));
if( dir <= 45 or dir > 300) {
    dir = 0;
    self.sprite_index = spr_chxRight;
  }
  if(dir <= 135 and dir > 45) {
    dir = 90;
    self.sprite_index = spr_chxUp;
  }
  if(dir <= 225 and dir > 135) {
    dir = 180;
    self.sprite_index = spr_chxLeft;
  }
  if(dir <= 300 and dir > 225) {
    dir = 270;
    self.sprite_index = spr_chxDown;
  }
    spd = 1;
    motion_set(dir,spd);
    }
if (self.y < 256) self.y = 256;
}


