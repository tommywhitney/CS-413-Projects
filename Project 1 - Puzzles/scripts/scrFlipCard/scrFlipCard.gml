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
		else
		{
			
			flipCard(cardID, sprCardFace);
		
			
			if(global.prevCardID.sprite_index == sprite_index and sprite_index == sprAce)
			{
				room_goto(rmEnd);
			}
			else
			{
				
				
				flipCard(global.prevCardID, global.prevCardID.cardFace);
				flipCard(cardID, sprCardFace);

				global.cardCount = 0;
			
			}	
		}
	}
}
