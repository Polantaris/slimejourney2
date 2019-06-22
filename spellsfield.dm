mob
	player
		proc
			/*
			NON-BATTLE SPELL LIST
			Return
			Outside
			X-Ray
			*/
			Return(mob/player/P)
			Outside(mob/player/P)
				if(P.indungeon)
					P << "You cast Outside!"
					P << 'spell.ogg'
					P.loc = locate(P.dunx,P.duny,P.dunz)
				else
					P << "You are not in a Dungeon!"
