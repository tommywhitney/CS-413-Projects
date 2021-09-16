// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function flipCard(cardID, sprCardFace)
{
	
	with(cardID)
	{
        //if card sprite is cardBack
		if(sprite_index == sprCardBack)
		{
			//change sprite to respective cardFace
			sprite_index = sprCardFace;
		}
		else
		{   
			//flip the card back over
			sprite_index = sprCardBack;
		}
	}
}


function compareCards(cardID, sprCardFace)
{	
	with(cardID)
	{
		//test if first card flipped in turn
		if(global.cardCount == 0)
		{
			//flip card
			flipCard(cardID, sprCardFace);
			
			//increase cardCount for turn
			global.cardCount++;
			
			//set prevCardID to cardID
			global.prevCardID = cardID;
			
		}
		//if second card in turn
		else if(global.cardCount == 1)
		{
			//flip card
			flipCard(cardID, sprCardFace);
			
			//set alarm[0] to 50 to keep cards flipped
		    alarm_set(0,50);
			
			//increase cardCount 
			global.cardCount++;
			
		}
		//if user tries to turn more than two cards in a turn
		else
		{
			//do nothing
			return
		}
	}
}
