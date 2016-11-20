if (file_exists("save.ini")) {
    ini_open("save.ini");
    global.savedTime = (ini_read_real("Pause Date","Pause",0));
    chickenSpawn = (ini_read_real("Chicken global","Count",2));
    chickenSpawn += 1;
    var i;
    for (i = 1; i < chickenSpawn; i++) {
        scr_chickenSpawner(ini_read_real("Chicken" + (string(i)),"hunger",250),
        ini_read_real("Chicken" + (string(i)),"thirst",250),
        ini_read_real("Chicken" + (string(i)),"layDate",0),
        ini_read_string("Chicken" + (string(i)),"location","yard"),
        ini_read_string("Chicken" + (string(i)),"name","chicken"),
        ini_read_string("Chicken" + (string(i)),"gender","female"),
        ini_read_string("Chicken" + (string(i)),"breed",'Americana'),
        ini_read_string("Chicken" + (string(i)),"lifeStage","Adult")
        );
    }

tmpEggCount = (ini_read_real("Egg","Count",0));
obj_inventory.eggArray[0,0] = ini_read_real("Egg","Count",0);
var e;
for (e = 1; e <= tmpEggCount; e++) {
        obj_inventory.eggArray[e,0] = ini_read_real("Egg","ID",1);
        obj_inventory.eggArray[e,1] = ini_read_string("Egg"+ (string(e)),"Color","White");
        obj_inventory.eggArray[e,2] = ini_read_string("Egg" + (string(e)),"Breed","Americana");
        obj_inventory.eggArray[e,3] = ini_read_real("Egg" + (string(e)),"Days incubated",0);
        obj_inventory.eggArray[e,4] = ini_read_real("Egg" + (string(e)),"In Incubator",0);
        obj_inventory.eggArray[e,5] = ini_read_real("Egg" + (string(e)),"Incubator slot",0);
        obj_inventory.eggArray[e,6] = ini_read_real("Egg" + (string(e)),"Collected",0);
        obj_inventory.eggArray[e,7] = ini_read_real("Egg" + (string(e)),"Fertilized",0);
}    
    
obj_feeder.feedLevel = ini_read_real("Yard","feeder",10);
obj_feeder.maxFeed = ini_read_real("Yard","feederMax",10);
obj_water.waterLevel = ini_read_real("Yard","water",10);
obj_water.maxWater = ini_read_real("Yard","waterMax",10);
obj_inventory.inventoryArray[0,0 ] = ini_read_real("Inventory","egg",0);
obj_inventory.inventoryArray[1,0] = ini_read_real("Inventory","currency",0);
obj_coopDoor.door = ini_read_string("Yard","Door","open");
global.savedDay = ini_read_real("Global","Day",current_day);
global.osPause = 1;
obj_control.alarm[1] = 10;

}

