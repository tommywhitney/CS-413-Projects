/// @description Insert description here
// You can write your code in this editor
//when alarm[0] goes off 
//test if both cards flipped are aces
if(global.prevCardID.sprite_index == sprite_index and sprite_index == sprAce)
{
	//go to end room
	room_goto(rmEnd);
}


else
{
	//since both cards not aces flip cards back over
	flipCard(global.prevCardID, global.prevCardID.cardFace);
	flipCard(id, id.cardFace);
    
	//reset cardCount to start a new turn
	global.cardCount = 0;
}