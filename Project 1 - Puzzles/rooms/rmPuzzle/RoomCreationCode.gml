var lyr_instances = layer_get_id( "Instances" );

// randomize for setting up our game board
randomize();

// Global variables for on click events
global.cardCount = 0;
global.totalClicks = 0;
global.prevCardID = noone;



// local variables for setting up game board
var padding = 4;
var gridCols = 5;
var gridRows = 3;
var cardWidth = sprite_get_width( sprCardBack );


// create list of cards to randomize and set up a new game
// every time
cardList = ds_list_create();

ds_list_add(cardList, sprAce);
ds_list_add(cardList, sprAce);
ds_list_add(cardList, sprTwo);
ds_list_add(cardList, sprThree);
ds_list_add(cardList, sprFour);
ds_list_add(cardList, sprFive);
ds_list_add(cardList, sprSix);
ds_list_add(cardList, sprSeven);
ds_list_add(cardList, sprEight);
ds_list_add(cardList, sprNine);
ds_list_add(cardList, sprTen);
ds_list_add(cardList, sprJack);
ds_list_add(cardList, sprQueen);
ds_list_add(cardList, sprKing);
ds_list_add(cardList, sprJoker);

ds_list_shuffle(cardList);



// create game board with spacing and cards
for( var indexOuter = 0; indexOuter < gridRows; indexOuter++ ) 
{	
	for(var indexInner = 0; indexInner < gridCols; indexInner++) 
	{
		var xPostion = padding + indexInner * ( padding + cardWidth );
		var yPostion = padding + indexOuter * ( padding + cardWidth );	
		
		instCard = instance_create_layer
		(
			xPostion -64,
			yPostion,
			lyr_instances, 
			objCard
		);

		
		// assign each card its face, from the randomized list
		instCard.cardFace = ds_list_find_value(cardList, indexInner + (indexOuter *5));
		
		// tween each card to bounce onto the board
		with(instCard)
		{
			TweenEasyMove(xPostion-64, yPostion, xPostion, yPostion, 2 * (indexOuter * 25),  60, EaseOutBounce);
		}
	}
}

