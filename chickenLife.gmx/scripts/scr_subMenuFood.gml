if (subMenuFood = 'closed') {
    instance_create(96,96,obj_btnFeed);
    instance_create(156,96,obj_btnWater);
    instance_create(64,64,obj_subMenu);
    subMenuFood = 'open';
}
else if (subMenuFood = 'open') {
    subMenuFood = 'closed'
    with (obj_subMenu)
    instance_destroy();
    with (obj_btnFeed)
    instance_destroy();
    with (obj_btnWater)
    instance_destroy();
}  
