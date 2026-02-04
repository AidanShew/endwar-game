instance_destroy(other); //destroys other instance.
effect_create_above(ef_explosion, x, y, 1, c_white); // Creates explosive effect
direction=random(360); //Sets new rocks in a random direction value.

if sprite_index == spr_rock_big //This checks if the rock is a big sprite.
{
	sprite_index=spr_rock_small;
	instance_copy(true); //Instance is changed into a small rock and copied if true.
}

else if instance_number(obj_rock)<12 //Runs when rock is already small, checks if there are less than 12 rocks in the room.
{
	sprite_index=spr_rock_big; //changes rock into a big rock.
	x=-100; //Horizontal position is set to -100 so it can reenter
}

else //Runs when Rock is small and there are already 12 or more rocks in the room.
{
	instance_destroy(); //Rock is destroyed
}

obj_game.points+=50; //adding 50 points to variable in obj_game.
