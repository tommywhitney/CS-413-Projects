// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function flipCard(cardID, sprCardFace)
{

	with(cardID)
	{
		if(sprite_index == sprCardBack)
		{
			sprite_index = sprCardFace;
		}
		else
		{
			sprite_index = sprCardBack;
		}
		
	}
}


function compareCards(cardID, sprCardFace)
{	
	with(cardID)
	{
		if(global.cardCount == 0)
		{
			flipCard(cardID, sprCardFace);
			global.cardCount++;
			global.prevCardID = cardID;
			
		}
		else if(global.cardCount == 1)
		{
			
			flipCard(cardID, sprCardFace);
		    alarm_set(0,50);
			global.cardCount++;
			if(alarm[0] == 0)
			{
				
			}
			
		}
		else
		{
			return
		}
	}
}
