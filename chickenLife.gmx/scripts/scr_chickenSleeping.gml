if (current_hour >= 21 or current_hour <=6) {
    mp_linear_step(96,288,2,0);
    self.location = 'coop';
    }
    else {
    self.location = 'yard';
    state = states.idle;
    }
