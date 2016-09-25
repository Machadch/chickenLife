if (menu = 'closed') {
    instance_create(0,0,obj_menuBG);
    instance_create(32,96,obj_btnFoodMenu);
    menu = 'open';
}
else if (menu = 'open') {
    menu = 'closed'
    with (obj_menuBG)
    instance_destroy();
    with (obj_btnFoodMenu)
        if (obj_btnFoodMenu.subMenuFood = 'open') {
            with (obj_subMenu)
            instance_destroy();
            with (obj_btnFeed)
            instance_destroy();
            with (obj_btnWater)
            instance_destroy();
        }
    with (obj_btnFoodMenu)
    instance_destroy();
}
