sHunger = argument[0];
sThirst = argument[1];
sLayDate = argument[2];

var chx_inst = instance_create(96 + random(300),256 + random(400),obj_chicken);
chx_inst.hunger = argument[0];
chx_inst.thirst = argument[1];
chx_inst.layDate= argument[2];


//cCount = string(global.chickenCount + 1);
//
//(chickenSPN + string(cCount)) = instance_create(96 + random(259),288 + random(300),obj_chicken).id;
