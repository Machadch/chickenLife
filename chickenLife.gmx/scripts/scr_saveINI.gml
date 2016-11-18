var exitTime = global.savedTime
//iniFile = "save.ini"
ini_open(working_directory + "save.ini");
ini_write_real("Pause Date","Pause",exitTime);
ini_write_real("Yard","feeder",obj_feeder.feedLevel);
ini_write_real("Yard","feederMax",obj_feeder.maxFeed);
ini_write_real("Yard","water",obj_water.waterLevel);
ini_write_real("Yard","waterMax",obj_water.maxWater);
ini_write_string("Yard","Door",obj_coopDoor.door);
ini_write_real("Inventory","egg",obj_inventory.inventoryArray[0,0]);
ini_write_real("Inventory","currency",obj_inventory.inventoryArray[1,0]);
ini_write_real("Chicken global","Count",global.chickenCount);
ini_write_real("Global","Day",global.savedDay);

var i;
for (i = 1; i <= global.chickenCount; i++) {
    ini_write_real("Chicken" + (string(i)),"hunger",global.chickenArray[i,0]);
    ini_write_real("Chicken" + (string(i)),"thirst",global.chickenArray[i,1]);
    ini_write_real("Chicken" + (string(i)),"layDate",global.chickenArray[i,2]);
    ini_write_string("Chicken" + (string(i)),"location",global.chickenArray[i,3]);
    ini_write_string("Chicken" + (string(i)),"name",global.chickenArray[i,4]);
    ini_write_string("Chicken" + (string(i)),"gender",global.chickenArray[i,6]);
    ini_write_string("Chicken" + (string(i)),"breed",global.chickenArray[i,7]);
    ini_write_string("Chicken" + (string(i)),"lifeStage",global.chickenArray[i,8]);
}

tmpEggCount = obj_inventory.eggArray[0,0];
ini_write_real("Egg","Count",obj_inventory.eggArray[0,0]);
var e;
for (e = 1; e <= tmpEggCount; e++) {
        ini_write_real("Egg" + (string(e)),"ID",obj_inventory.eggArray[e,0]);
        ini_write_string("Egg" + (string(e)),"Color",obj_inventory.eggArray[e,1]);
        ini_write_string("Egg" + (string(e)),"Breed",obj_inventory.eggArray[e,2]);
        ini_write_real("Egg" + (string(e)),"Days incubated",obj_inventory.eggArray[e,3]);
        ini_write_real("Egg" + (string(e)),"In Incubator",obj_inventory.eggArray[e,4]);
        ini_write_real("Egg" + (string(e)),"Incubator slot",obj_inventory.eggArray[e,5]);
        ini_write_real("Egg" + (string(e)),"Collected",obj_inventory.eggArray[e,6]);
        ini_write_real("Egg" + (string(e)),"Fertilized",obj_inventory.eggArray[e,7]);
}
ini_close();
