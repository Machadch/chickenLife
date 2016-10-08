if (file_exists("save.ini")) {
ini_open("save.ini");
global.savedTime = (ini_read_real("Pause Date","Pause",0));
chickenSpawn = (ini_read_real("Chicken global","Count",0));
var i;
for (i = 0; i < chickenSpawn; i++) {
scr_chickenSpawner(ini_read_real("Chicken","hunger",250),ini_read_real("Chicken","thirst",250));
}
obj_feeder.feedLevel = ini_read_real("Yard","feeder",10);
obj_water.waterLevel = ini_read_real("Yard","water",10);
global.osPause = 1;
obj_control.alarm[1] = 1;
}

