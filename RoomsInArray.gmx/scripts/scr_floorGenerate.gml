var rm_List;
var roomArray;
var a = 0;
var b = 0;
var coordx;
var coordy;
rm_List = argument0;

//Format roomArray to be 16 by 16
do
{
b = 0;
    do
    {
    roomArray[a,b] = -1;
    b = b + 1;
    }until( b > 14)
a = a + 1;
}until(a > 14)

/////////////////////////////////
// GENERATION RULES START HERE //
/////////////////////////////////

//Generate a five room dungeon
//Coordinates that we start the generation from
coordx = 8
coordy = 8
roomArray[coordx,coordy] = rm_List[0];

for( i = 1; i < 5; i++ )
{
    switch(irandom(3))
    {
        case 0:
        coordx = coordx + 1;
        break;
        case 1:
        coordx = coordx - 1;
        break;
        case 2:
        coordy = coordy + 1;
        break;
        case 3:
        coordy = coordy - 1;
        break;
    }
    
    roomArray[coordx,coordy] = rm_List[random_range(1,3)];
    
}

return roomArray;