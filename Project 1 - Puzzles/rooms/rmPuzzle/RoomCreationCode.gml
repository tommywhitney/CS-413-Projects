var lyr_instances = layer_get_id( "Instances" );

var padding = 4;

var gridCols = 5;

var gridRows = 3;

var cardWidth = sprite_get_width( sprCardBack );

var cards = array_create( gridCols * gridRows );

for( var indexOuter = 0; indexOuter < gridRows; indexOuter++ ) 
{	
	for(var indexinner = 0; indexinner < gridCols; indexinner++) 
	{
		var instCard = instance_create_layer
		(
			padding + indexinner * ( padding + cardWidth ), 
			padding + indexOuter * ( padding + cardWidth ),
			lyr_instances, 
			objCardBack
		);
			
		cards[ indexOuter * gridRows + indexinner ] = instCard;
	}
}