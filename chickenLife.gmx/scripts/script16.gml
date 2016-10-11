if (current_hour > 10) {
    if (self.location = 'yard' and self.x = 96 and self.y = 288 and obj_coopDoor = 'open')  {
       self.location = 'coop'
       }
    else {
        mp_linear_step(96,288,2,0);
     } 
}
if (self.location = 'coop' and current_hour < 20 or current_hour > 7 and obj_coopDoor = 'open') {
self.location = 'yard';
}
