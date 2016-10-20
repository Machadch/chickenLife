if (self.thirst > 750 and self.hunger > 750 and self.layDate < current_day) {
    if (self.location = "yard" and x != 256 and y != 288 ) {
        mp_linear_step(256,288,1,0);
    }
    else if (self.location == "yard" and x = 256 and y = 288 and self.layDate < current_day) {
     self.visible = false;
     self.location = "roost";
    }
    else if (self.location == "roost" and self.layDate < current_day){
    self.x = 128;
    self.y = 448;
    global.eggsLaid += 1;
    self.layDate = current_day;
    self.state = states.idle;
    self.alarm[2] = 60;
    }
}
else if (self.location == "roost" and self.layDate >= current_day){ 
    self.location = 'yard';
    state = states.idle;
    }
else {
state = states.idle;
self.visible = true;
}
