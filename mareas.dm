mob
	Special
		Slime
			icon = 'slimes.dmi'
			New(state,nx,ny,nz)
				icon_state = state
				src.loc = locate(nx,ny,nz)
area
	cantleave
		Enter(mob/player/P)
			if(P.story)
				P.CreateText(P,"I can't leave yet.","I have more to do here.","","",10)
				return 0
			else
				return 1
	start1
		Entered(mob/player/P)
			if(P.start1 == 0)
				P.islocked = 1
				P.savex = 12
				P.savey = 8
				P.savez = 2
				P.story = 1
				var/mob/Special/Slime/R = new /mob/Special/Slime("red",20,44,1)
				var/mob/Special/Slime/G = new /mob/Special/Slime("green",25,42,1)
				P.CreateText(P,"???: AHHHHHHHHHHHHHH!!!","","","",5)
				var/movement = 5
				R.dir = SOUTH
				do
					R.y -= 1
					movement -= 1
					sleep(1)
				while(movement >= 1)
				movement = 6
				R.dir = EAST
				do
					R.x += 1
					G.y -= 1
					movement -= 1
					sleep(1)
				while(movement >= 1)
				movement = 15
				R.dir = SOUTH
				do
					R.y -= 1
					movement -= 1
					sleep(1)
				while(movement >= 1)
				del R
				P.CreateText(P,"[P]: Joe!","What's going on?","","",30)
				P.CreateText(P,"Joe: This hole just broke","the square apart and I think","I'm seeing something coming","out!",30)
				P.CreateText(P,"[P]: What?!","","","",20)
				var/mob/monsters/DemonWorld/Valley/WeakSlime/W = new /mob/monsters/DemonWorld/Valley/WeakSlime
				W.loc = locate(25,43,1)
				P.CreateText(P,"Monster: Kikikiki!","KILL ALL!  Kiki!  KILL ALL!","MASTER SAYS KILL ALL!","Kikikikikiki!",30)
				P.CreateText(P,"Joe: Oh shit!","I'm getting the hell","out of here!","",30)
				movement = 5
				G.dir = EAST
				G.x += 1
				G.dir = SOUTH
				do
					G.y -= 1
					sleep(1)
					G.y -= 1
					W.y -= 1
					movement -= 1
					sleep(1)
				while(movement >= 1)
				movement = 3
				P.dir = NORTH
				do
					G.y -= 1
					P.y += 1
					sleep(1)
					movement -= 1
				while(movement >= 1)
				movement = 7
				do
					G.y -= 1
					movement -= 1
					sleep(1)
				while(movement >= 1)
				del G
				P.monstersfighting = 1
				P.Bump(W)
				while(P.battling)
					sleep(1)
				del W
				if(P.story == 0)
					P.CreateText(P,"[P]: AHHH!","Huh?  Must have been a dream.","","",30)
					P.islocked = 0
					return
				P.CreateText(P,"[P]: That...","was close...",".......................","Huh?!",30)
				P.y += 1
				sleep(15)
				P.CreateText(P,"[P]: What's","going on?  I'm being","sucked in!","",30)
				P.y += 1
				sleep(12)
				P.y += 1
				sleep(8)
				P.y += 1
				P.CreateText(P,"[P]: Oh crap!","","","",30)
				P.y += 1
				sleep(5)
				P.y += 1
				sleep(2)
				P.loc = locate(10,7,3)
				P.story = 0
				P.start1 = 1
				P.CreateText(P,"[P]: Where","the hell am I?  Hmm...","I should probably get","away from here.",30)
				P.CreateText(P,"I need to find a","relativly safe spot","to find more about this","place.",30)
				P.resx = 10
				P.resy = 7
				P.resz = 3
				P.islocked = 0

	start2
		Entered(mob/player/P)
			if(P.start1 == 1)
				P.islocked = 1
				var/mob/town2/informer/I = new /mob/town2/informer
				I.dir = WEST
				I.loc = locate(P.x + 2, P.y, P.z)
				P.CreateText(P,"The guy who told you","to go north from town","appears before you.","",30)
				P.CreateText(P,"[I]: You made it.","You are just north of your","home town.  Head there.","...Go!",30)
				del I
				P.CreateText(P,"The guy disappears.","","","",20)
				P.start1 = 2
				P.islocked = 0

