var exitTime = global.savedTime
//iniFile = "save.ini"
ini_open(working_directory + "save.ini");
ini_write_real("Pause Date","Pause",exitTime);
ini_write_real("Chicken global","Count",global.chickenCount);
ini_write_real("Chicken","hunger",obj_chicken.hunger);
ini_write_real("Chicken","thirst",obj_chicken.thirst);
ini_write_real("Chicken","layDate",obj_chicken.layDate);
ini_write_real("Yard","feeder",obj_feeder.feedLevel);
ini_write_real("Yard","water",obj_water.waterLevel);
ini_write_real("Inventory","egg",obj_inventory.inventoryArray[0,0]);
ini_write_real("Inventory","currency",obj_inventory.inventoryArray[1,0]);
ini_close();
