if (self.thirst > 750 and self.hunger > 750 and self.layDate < current_day) {
    if (self.location = "yard" and x != 256 and y != 288 ) {
        mp_linear_step(256,288,1,0);
    }
    else if (self.location = "yard" and x = 256 and y = 288 and self.layDate < current_day) {
     self.visible = false;
     self.location = "roost";
    }
    else if (self.location = "roost" and self.layDate < current_day){
    global.eggsLaid += 1;
    self.layDate = current_day;
    self.state = states.idle;
    self.alarm[2] = 60;
    }
    else state = states.idle;
} 

