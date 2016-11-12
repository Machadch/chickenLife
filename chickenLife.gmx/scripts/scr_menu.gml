if (menu = 'closed') {
    instance_create(0,0,obj_menuBG);
    instance_create(96,32,obj_btnFoodMenu);
    instance_create(416,32,obj_btnDebug);
    instance_create(150,32,obj_btnInventory);
    instance_create(300,32,obj_btnIncubator);
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
    with (obj_btnDebug)
    instance_destroy();
    with (obj_btnInventory)
    instance_destroy();
    with (obj_btnIncubator)
    instance_destroy();
}
