if music == (snd_ending){
	room_speed = 30
	timer = room_speed *5

	//Step event

	timer -= 1

	if (timer == 0)
	{
	    room_goto_next()
	}
}