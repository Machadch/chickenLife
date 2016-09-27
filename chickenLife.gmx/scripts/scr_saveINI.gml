if (file_exists("save.ini")) file_delete("save.ini");
ini_open("save.ini");
var exitTime = date_current_datetime();
ini_write_real("Pause Date","Pause",exitTime);
ini_close();

