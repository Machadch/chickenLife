if (self.chickenMenu = 'closed') {
self.chickenMenu = 'open'
room_goto(rm_chickenProfile);



}
else if (self.chickenMenu = 'open') {
self.chickenMenu = 'closed'
with (obj_chickenMenu)
instance_destroy();

}
