if (self.thirst > 750 and self.hunger > 750 and self.layDate != current_day) {
    if (self.location = "yard" and x != 256 and y != 288 ) {
        mp_linear_step(256,288,1,0);
    }
    else if (self.location == "yard" and x = 256 and y = 288 and self.layDate != current_day) {
     self.visible = false;
     self.location = "roost";
    }
    else if (self.location == "roost" and self.layDate != current_day){
    self.x = 128;
    self.y = 448;
    self.layDate = current_day;
    self.state = states.idle;
    self.alarm[2] = 60;
    obj_inventory.eggArray[0,0] += 1;
    var i;
    i = obj_inventory.eggArray[0,0];
    randomize();
    obj_inventory.eggArray[i,0] = irandom(1);
    obj_inventory.eggArray[i,1] = 'white'
    obj_inventory.eggArray[i,2] = 'americana';
    obj_inventory.eggArray[i,3] = 0;
    obj_inventory.eggArray[i,4] = 0;
    obj_inventory.eggArray[i,5] = 0;
    obj_inventory.eggArray[i,6] = 0;
    obj_inventory.eggArray[i,7] = 1;
    }
}
else if (self.location == "roost" and self.layDate = current_day){ 
    self.location = 'yard';
    state = states.idle;
    }
else {
state = states.idle;
self.visible = true;
}
