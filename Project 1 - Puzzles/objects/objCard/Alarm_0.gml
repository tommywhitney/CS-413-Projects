/// @description Insert description here
// You can write your code in this editor

			if(global.prevCardID.sprite_index == sprite_index and sprite_index == sprAce)
			{
				room_goto(rmEnd);
			}
			else
			{
				flipCard(global.prevCardID, global.prevCardID.cardFace);
				flipCard(id, id.cardFace);

				global.cardCount = 0;
			
			}