if (room==rm_horde) {
draw_text(10, 10, ("Score: "+string(points))); //Creates text assigned to Points at position 10, 10.
draw_text(10,40, ("HP: "+string(playerHealth)));
draw_text(10,70, ("Lives: " + string(playerLives)));
draw_text(10, 100, ("Round: "+ string(obj_PlayerStats.ArenaRound)));
draw_text(10, 130, ("Enemies Remaining: "+ string(EnemiesAlive)));
}
if (room==rm_survival) {
draw_text(10, 10, ("Score: "+string(obj_PlayerStats.points))); //Creates text assigned to Points at position 10, 10.
draw_text(10,40, ("HP: "+string(playerHealth)));
draw_text(10,70, ("Lives: " + string(playerLives)));
}

if (room==rm_menu||room==rm_select) {
	draw_text(683,324, "Welcome to End War");
	draw_text(683, 414, "Your Stats");
	draw_text(683,444, "Most Recent Arena Round Completed "+string(obj_PlayerStats.RecentRound));
	draw_text(683,474, "Highest Arena Round Completed "+string(obj_PlayerStats.HighestRound));
	draw_text(683, 504, "High Score: "+string(obj_PlayerStats.HighScore));
	if (obj_PlayerStats.HighestRound==2) {
		draw_text(683,534, "Current Rank: Soldier");
	}
	else if (obj_PlayerStats.HighestRound==1) {
		draw_text(683,534, "Current Rank: Cadet");
	}
	else if (obj_PlayerStats.HighestRound>2) {
		draw_text(683,534, "Current Rank: Hero");
	}
	else {
		draw_text(683,534, "Earn your rank in the Arena!");
	}
}

//Horde and stuff
	if (room==rm_over_h) {
		draw_text(683,384, "GAME OVER");
		draw_text(683, 400, "Your Score: " +string(obj_PlayerStats.RecentPoints));
		draw_text(683,430, "You made it to Round "+string(obj_PlayerStats.RecentRound)+"!");
		if (obj_PlayerStats.RecentRound>=20) {
			draw_text(683,470, "Rank: Champion");
		} 
		else if (obj_PlayerStats.RecentRound>10&&obj_PlayerStats.RecentRound<20) {
			draw_text(683,470, "Rank: Hero");
		}
		else if (obj_PlayerStats.RecentRound>5&&obj_PlayerStats.RecentRound<=10) {
			draw_text(683,470, "Rank: Soldier");
		}
		else if (obj_PlayerStats.RecentRound<=5&&obj_PlayerStats.RecentRound>1) {
			draw_text(683,470, "Rank: Cadet");
		}
		else if (obj_PlayerStats.RecentRound==1) {
			draw_text(683,470, "Rank: Noob");
		}
	}
	//Rocks and stuff
	else if (room==rm_over_s) {
		draw_text(683, 430, ("Rocks Destroyed: "+ string(obj_PlayerStats.RocksDestroyed)));
		if (obj_PlayerStats.RocksDestroyed<10&&obj_PlayerStats.RocksDestroyed>=1) {
			draw_text(683,570, "Rank: Cadet");
		}
		else if(obj_PlayerStats.RocksDestroyed>=10&&obj_PlayerStats.RocksDestroyed<15) {
			draw_text(683, 570, "Rank: Soldier");
		}
		else if(obj_PlayerStats.RocksDestroyed>=20) {
			draw_text(683, 570, "Rank: Hero");
		}
		else {
			draw_text(683,570, "Rank: Noob");
		}
	}