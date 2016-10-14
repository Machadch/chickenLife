if (file_exists("save.ini")) {
    ini_open("save.ini");
    global.savedTime = (ini_read_real("Pause Date","Pause",0));
    chickenSpawn = (ini_read_real("Chicken global","Count",2));
    chickenSpawn += 1;
    var i;
    for (i = 1; i < chickenSpawn; i++) {
        scr_chickenSpawner(ini_read_real("Chicken" + (string(i)),"hunger",250),ini_read_real("Chicken" + (string(i)),
        "thirst",250),ini_read_real("Chicken" + (string(i)),"layDate",0),ini_read_string("Chicken" + (string(i)),"location","yard"),
        ini_read_string("Chicken" + (string(i)),"name","chicken")
        );
    }

obj_feeder.feedLevel = ini_read_real("Yard","feeder",10);
obj_water.waterLevel = ini_read_real("Yard","water",10);
obj_inventory.inventoryArray[0,0 ] = ini_read_real("Inventory","egg",0);
obj_inventory.inventoryArray[1,0] = ini_read_real("Inventory","currency",0);
obj_coopDoor.door = ini_read_string("Yard","Door","open");
global.osPause = 1;
obj_control.alarm[1] = 10;

}

