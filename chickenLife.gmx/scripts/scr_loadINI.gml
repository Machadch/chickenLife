if (file_exists("save.ini")) {
ini_open("save.ini");
global.savedTime = (ini_read_real("Pause Date","Pause",0));
global.iniLoad = (ini_read_real("Test","Test",0));
global.osPause = 1;
obj_control.alarm[1] = 1;
}

