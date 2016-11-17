//egg array
// X = ID
// X,0 = Gender
// X,1 = Color
// X,2 = Breed
// X,3 = Days incubated
// X,4 = In incubator. 1 = yes 0 = no
// X,5 = Incubator slot
// X,6 = Collected. 1 = yes 0 = no
tmpEggCount = eggArray[0,0];
tmpGender = 'female';
tmpColor = 'white';
tmpBreed = 'Americana';
tmpDaysIncubated = 0;;
tmpInInc = 'no';
tmpCollected = 'no';

var i;
for (i = 1; i < tmpEggCount; i++) {
    tmpGender = eggArray[i,0];
    tmpColor = eggArray[i,1];
    tmpBreed =eggArray[i,2];
    tmpDaysIncubater = eggArray[i,3];
    tmpInInc = eggArray[i,4];
    tmpCollected = eggArray[i,6];



    
}

/*
Assumed array spawned positions
32,512 128,512 224,512 320,512 416,512

608

736
\*
