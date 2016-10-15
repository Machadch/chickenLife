var exitTime = global.savedTime
//iniFile = "save.ini"
ini_open(working_directory + "save.ini");
ini_write_real("Pause Date","Pause",exitTime);
ini_write_real("Yard","feeder",obj_feeder.feedLevel);
ini_write_real("Yard","feederMax",obj_feeder.feedMax);
ini_write_real("Yard","water",obj_water.waterLevel);
ini_write_real("Yard","waterMax",obj_water.maxWater);
ini_write_string("Yard","Door",obj_coopDoor.door);
ini_write_real("Inventory","egg",obj_inventory.inventoryArray[0,0]);
ini_write_real("Inventory","currency",obj_inventory.inventoryArray[1,0]);
ini_write_real("Chicken global","Count",global.chickenCount);
ini_write_real("Chicken global","eggsLaid",global.eggsLaid);

var i;
for (i = 1; i <= global.chickenCount; i++) {

ini_write_real("Chicken" + (string(i)),"hunger",global.chickenArray[i,0]);
ini_write_real("Chicken" + (string(i)),"thirst",global.chickenArray[i,1]);
ini_write_real("Chicken" + (string(i)),"layDate",global.chickenArray[i,2]);
ini_write_string("Chicken" + (string(i)),"location",global.chickenArray[i,3]);
ini_write_string("Chicken" + (string(i)),"name",global.chickenArray[i,4]);
}

ini_close();
