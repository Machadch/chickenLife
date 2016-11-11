sHunger = argument[0];
sThirst = argument[1];
sLayDate = argument[2];
sLocation = argument[3];

var sCount = global.chickenCount + 1;
var chx_inst = instance_create(96 + random(300),256 + random(400),obj_chicken);


chx_inst.hunger = argument[0];
chx_inst.thirst = argument[1];
chx_inst.layDate= argument[2];
chx_inst.location = argument[3];
chx_inst.name = argument[4];
chx_inst.gender = argument[5];
chx_inst.breed = argument[7];
chx_inst.lifeStage = argument[8];

global.chickenArray[sCount,0] = argument[0];
global.chickenArray[sCount,1] = argument[1];
global.chickenArray[sCount,2] = argument[2];
global.chickenArray[sCount,3] = argument[3];
global.chickenArray[sCount,4] = argument[4];
global.chickenArray[sCount,5] = chx_inst;
global.chickenArray[sCount,6] = argument[5];
global.chickenArray[sCount,7] = argument[7];
global.chickenArray[sCount,8] = argument[8];


/*
Array mapping
0 hunger
1 thirst
2 layDate
3 location
4 name
5 object instance id
6 gender
7 breed
8 lifeStage
*/ 
