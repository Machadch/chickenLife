//for (i = 0; i < global.chickenCount; i++) {
//obj_chicken

global.loadDiff = date_second_span(global.savedTime,date_current_datetime());
    if (global.loadDiff > 2 ) {
obj_chicken.hunger -= (global.loadDiff * (30 * obj_chicken.hungerDegrade));
scr_menu();
}
