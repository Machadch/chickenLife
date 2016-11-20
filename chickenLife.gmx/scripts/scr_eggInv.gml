//egg array
// X = ID
// X,0 = Gender
// X,1 = Color
// X,2 = Breed
// X,3 = Days incubated
// X,4 = In incubator. 1 = yes 0 = no
// X,5 = Incubator slot
// X,6 = Collected. 1 = yes 0 = no
// X,7 = Fertilized 1 = yes 0 = no
tmpEggCount = obj_inventory.eggArray[0,0];
tmpX = 32;
tmpY = 64;
eggInvSlot = 1;

var i;
for (i = 1; i <= tmpEggCount; i++) {
    if (obj_inventory.eggArray[i,7] == 1 and obj_inventory.eggArray[i,6] == 1 and obj_inventory.eggArray[i,4] == 0) {
        if (eggInvSlot == 1) {
                tmpX = obj_incubatorControl.column1;
                tmpY = obj_incubatorControl.row1;
                }
            else if (eggInvSlot == 2) {
                tmpX = obj_incubatorControl.column2;
                tmpY = obj_incubatorControl.row1;
                }
            else if (eggInvSlot == 3) {
                tmpX = obj_incubatorControl.column3;
                tmpY = obj_incubatorControl.row1;
                }
            else if (eggInvSlot == 4) {
                tmpX = obj_incubatorControl.column4;
                tmpY = obj_incubatorControl.row1;
                }
            else if (eggInvSlot == 5) {
                tmpX = obj_incubatorControl.column5;
                tmpY = obj_incubatorControl.row1;
                }
            else if (eggInvSlot == 6) {
                tmpX = obj_incubatorControl.column1;
                tmpY = obj_incubatorControl.row2;
                }
            else if (eggInvSlot == 7) {
                tmpX = obj_incubatorControl.column2;
                tmpY = obj_incubatorControl.row2;
                }
            else if (eggInvSlot == 8) {
                tmpX = obj_incubatorControl.column3;
                tmpY = obj_incubatorControl.row2;
                }
            else if (eggInvSlot == 9) {
                tmpX = obj_incubatorControl.column4;
                tmpY = obj_incubatorControl.row2;
                }
            else if (eggInvSlot == 10) {
                tmpX = obj_incubatorControl.column5;
                tmpY = obj_incubatorControl.row2;
                }
            
            var tmpEgg = instance_create(tmpX,tmpY,obj_eggInv); 
            tmpEgg.Gender = obj_inventory.eggArray[i,0];
            tmpEgg.Color = obj_inventory.eggArray[i,1];
            tmpEgg.Breed =obj_inventory.eggArray[i,2];
            tmpEgg.DaysIncubater = obj_inventory.eggArray[i,3];
            tmpEgg.InInc = obj_inventory.eggArray[i,4];
            tmpEgg.Collected = obj_inventory.eggArray[i,6];
            tmpEgg.eggArrayID = i;
            tmpEgg.spawnX = tmpEgg.x;
            tmpEgg.spawnY = tmpEgg.y;
            eggInvSlot += 1;   
        }
    
    else if (obj_inventory.eggArray[i,7] == 1 and obj_inventory.eggArray[i,6] == 1 and obj_inventory.eggArray[i,4] == 1) {
        if (obj_inventory.eggArray[i,5] == 1) {
            tmpX = 112;
            tmpY = 176;
        }
        else if (obj_inventory.eggArray[i,5] == 2) {
            tmpX = 176;
            tmpY = 176;
        }
        else if (obj_inventory.eggArray[i,5] == 3) {
            tmpX = 240;
            tmpY = 176;
        }
        else if (obj_inventory.eggArray[i,5] == 4) {
            tmpX = 304;
            tmpY = 176;
        }
    
      
        var tmpEgg = instance_create(tmpX,tmpY,obj_eggInv); 
        tmpEgg.Gender = obj_inventory.eggArray[i,0];
        tmpEgg.Color = obj_inventory.eggArray[i,1];
        tmpEgg.Breed =obj_inventory.eggArray[i,2];
        tmpEgg.DaysIncubater = obj_inventory.eggArray[i,3];
        tmpEgg.InInc = obj_inventory.eggArray[i,4];
        tmpEgg.Collected = obj_inventory.eggArray[i,6];
        tmpEgg.eggArrayID = i;
        tmpEgg.spawnX = tmpEgg.x;
        tmpEgg.spawnY = tmpEgg.y;
        eggInvSlot += 1;
    }
}
