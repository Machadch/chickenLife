if (current_hour >= 21 or current_hour <=6) {
    mp_linear_step(96,288,2,0);
        if (obj_coopDoor.door = 'open'){
        self.location = 'coop';
        }
    }
    else {
        if (self.location = 'coop' and obj_coopDoor.door = 'open') {
        self.location = 'yard';
        state = states.idle;
    }
    
}
