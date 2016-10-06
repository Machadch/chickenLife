var exitTime = global.savedTime
//iniFile = "save.ini"
ini_open(working_directory + "save.ini");
ini_write_real("Pause Date","Pause",exitTime);
ini_write_real("Chicken global","Count",global.chickenCount);
ini_close();
