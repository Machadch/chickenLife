//for (i = 0; i < global.chickenCount; i++) {
//obj_chicken
currentTime = date_current_datetime();
global.loadDiff =  currentTime - global.savedTime;
    if (global.loadDiff > 2 ) {
obj_chicken.hunger -= (global.loadDiff * (30 * obj_chicken.hungerDegrade));
}
