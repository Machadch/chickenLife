if (file_exists("save.ini")) {
ini_open("save.ini");
global.savedTime = ini_read_real("Pause Date","Pause",0);
global.loadDiff = date_second_span(global.savedTime,date_current_datetime());
    if (global.loadDiff > 0) {
scr_handleTimeHunger();
    }
}
