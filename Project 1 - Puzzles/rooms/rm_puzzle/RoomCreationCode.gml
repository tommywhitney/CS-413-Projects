var lyr_instances = layer_get_id( "Instances" );

var padding = 4;

var grid_dimension = 4;

var cardWidth = sprite_get_width( sprCardBack );

var cards = array_create(grid_dimension*grid_dimension);

for( var indexOuter = 0; indexOuter < grid_dimension; indexOuter++ ) 
{	
	for(var indexinner = 0; indexinner < grid_dimension; indexinner++) 
	{
		var instCard = instance_create_layer
		(
			padding + indexinner * ( padding + cardWidth ), 
			padding + indexOuter * ( padding + cardWidth ),
			lyr_instances, 
			objCardBack
		);
			
		cards[ indexOuter * grid_dimension + indexinner ] = instCard;
	}
}