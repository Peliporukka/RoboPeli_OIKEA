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
    }until( b > 64)
a = a + 1;
}until(a > 64)

/////////////////////////////////
// GENERATION RULES START HERE //
/////////////////////////////////

//Generate a dungeon 
//Coordinates that we start the generation from
coordx = 32
coordy = 32
roomArray[coordx,coordy] = rm_List[0];

//NUMBER OF ROOMS SET TO 64, MAX IS 4095
for( i = 1; i < 204; i++ )
{
    switch(irandom(3))
    {
        case 0:
        if(coordx != 64)
            coordx = coordx + 1;
        else i--;
        break;
        
        case 1:
        if(coordx != 0)
            coordx = coordx - 1;
        else i--;
        break;
        
        case 2:
        if(coordy != 64)
            coordy = coordy + 1;
        else i--;
        break;
        
        case 3:
        if(coordy != 0)
            coordy = coordy - 1;
        else i--;
        break;
    }
    if( roomArray[coordx,coordy] = -1 )
    {
    roomArray[coordx,coordy] = rm_List[random_range(1,3)];
    }else i--;
    
}

return roomArray;
