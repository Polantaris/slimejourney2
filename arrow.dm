obj
	sarrow
		icon = 'arrow.dmi'
		icon_state = "next"
		//name = ""

	arrow
		icon = 'arrow.dmi'
	//	name = ""
		var/command
		var/mob/monsterselected
		var/spellchoice
		var/cursor_x = 1; var/cursor_y = 1
		var/list/menu[0][0]

		proc/North()
			var/num = Dimension2(menu)
			if(!menu[cursor_x][4])
				num = 3
			if(!menu[cursor_x][3])
				num = 2
			if(!menu[cursor_x][2])
				num = 1
			if(cursor_y <= 1)
				cursor_y = num
			else
				cursor_y -= 1
			if(!menu[cursor_x][cursor_y])
				cursor_y = num
			screen_loc = menu[cursor_x][cursor_y]

		proc/South()
			var/num = Dimension2(menu)
			if(cursor_y >= num)
				cursor_y = 1
			else
				cursor_y += 1
			if(!menu[cursor_x][cursor_y])
				cursor_y = 1
			screen_loc = menu[cursor_x][cursor_y]

		proc/East()
			var/num = menu.len
			if(!menu[2][cursor_y])
				num = 1
			if(cursor_x >= num)
				cursor_x = 1
			else
				cursor_x += 1
			if(!menu[cursor_x][cursor_y])
				cursor_x = 1
			screen_loc = menu[cursor_x][cursor_y]

		proc/West()
			var/num = menu.len
			if(!menu[2][cursor_y])
				num = 1
			if(cursor_x<=1)
				cursor_x=num
			else
				cursor_x-=1
			if(!menu[cursor_x][cursor_y])
				cursor_x = 1
			screen_loc = menu[cursor_x][cursor_y]

proc/Dimension2(list/L)
	var/list/L2 = L[1]
	if(!istype(L2))return 0
	return L2.len

mob
	proc
		MakeArrow(mob/player/P,x2,y2)
			for(var/obj/arrow/O in P.client.screen)
				del(O)
			if(P.arrows)
				del(P.arrows)
			var/client/C = P.client
			var/obj/arrow/arrow = new /obj/arrow
			arrow.layer = MOB_LAYER + 2
			arrow.screen_loc = "[x2],[y2]"
			arrow.cursor_x = 1
			arrow.cursor_y = 1
			var/color
			if(round(P.hp/P.mhp*100) < 16)
				color = "red"
			else if(round(P.hp/P.mhp*100) < 36)
				color = "green"
			else
				color = "white"
			arrow.icon_state = "[color]ar"
			C.screen += arrow
			P.arrows = arrow
			P.arrows.command = 0

		CheckArrows(mob/player/P)
			for(var/obj/arrow/O in P.client.screen)
				del(O)
			if(P.arrows)
				del(P.arrows)

client
	North()
		if(src.mob.arrows)
			src.mob.arrows.North()
		else if(src.mob.islocked == 1)
			return 0
		else
			.=..()

	South()
		if(src.mob.arrows)
			src.mob.arrows.South()
		else if(src.mob.islocked == 1)
			return 0
		else
			.=..()

	East()
		if(src.mob.arrows)
			if(src.mob.stage == "Targeting"||src.mob.stage == "Spell Selection")
				src.mob.arrows.East()
		else if(src.mob.islocked == 1)
			return 0
		else
			.=..()

	West()
		if(src.mob.arrows)
			if(src.mob.stage == "Targeting"||src.mob.stage == "Spell Selection")
				src.mob.arrows.West()
		else if(src.mob.islocked == 1)
			return 0
		else
			.=..()

client
	Center()
		if(src.mob.islocked == 1)
			if(src.mob.arrows)
				src.mob << 'beep.ogg'
				//Command Selection
				if(src.mob.arrows.screen_loc == "1,13")
					src.mob.arrows.command = 1
				else if(src.mob.arrows.screen_loc == "1,12:2")
					src.mob.arrows.command = 2
				else if(src.mob.arrows.screen_loc == "1,11:5")
					src.mob.arrows.command = 3
				else if(src.mob.arrows.screen_loc == "1,10:7")
					src.mob.arrows.command = 4
				else if(src.mob.arrows.screen_loc == "1,9:9")
					src.mob.arrows.command = 5
				//Target Selection
				if(src.mob.stage == "Targeting")
					if(src.mob.arrows.screen_loc == "1,8")
						src.mob.arrows.monsterselected = src.mob.monstergroup[1]
					else if(src.mob.arrows.screen_loc == "1,7:3")
						src.mob.arrows.monsterselected = src.mob.monstergroup[2]
					else if(src.mob.arrows.screen_loc == "1,6:6")
						src.mob.arrows.monsterselected = src.mob.monstergroup[3]
					else if(src.mob.arrows.screen_loc == "1,5:9")
						src.mob.arrows.monsterselected = src.mob.monstergroup[4]
					else if(src.mob.arrows.screen_loc == "9,8")
						src.mob.arrows.monsterselected = src.mob.monstergroup[5]
					else if(src.mob.arrows.screen_loc == "9,7:3")
						src.mob.arrows.monsterselected = src.mob.monstergroup[6]
					else if(src.mob.arrows.screen_loc == "9,6:6")
						src.mob.arrows.monsterselected = src.mob.monstergroup[7]
					else if(src.mob.arrows.screen_loc == "9,5:9")
						src.mob.arrows.monsterselected = src.mob.monstergroup[8]
				else if(src.mob.stage == "Spell Selection")
					if(src.mob.arrows.screen_loc == "1,8")
						src.mob.arrows.spellchoice = 1
					else if(src.mob.arrows.screen_loc == "1,7:3")
						src.mob.arrows.spellchoice = 2
					else if(src.mob.arrows.screen_loc == "1,6:6")
						src.mob.arrows.spellchoice = 3
					else if(src.mob.arrows.screen_loc == "1,5:9")
						src.mob.arrows.spellchoice = 4
					else if(src.mob.arrows.screen_loc == "9,8")
						src.mob.arrows.spellchoice = 5
					else if(src.mob.arrows.screen_loc == "9,7:3")
						src.mob.arrows.spellchoice = 6
					else if(src.mob.arrows.screen_loc == "9,6:6")
						src.mob.arrows.spellchoice = 7
					else if(src.mob.arrows.screen_loc == "9,5:9")
						src.mob.arrows.spellchoice = 8
					else if(src.mob.arrows.screen_loc == "17,5:9")
						src.mob.arrows.spellchoice = 9
		else
			var/dun = 0
			for(var/turf/doorred/D in oview(1))
				if(!dun)
					D.Open()
					dun = 1
			for(var/mob/town1/T in oview(1))
				if(!dun)
					T.Talk(src.mob)
					dun = 1
			for(var/mob/town2/T in oview(1))
				if(!dun)
					T.Talk(src.mob)
					dun = 1
			for(var/mob/Shopkeepers/S in oview(2))
				if(!dun)
					S.Talk(src.mob)
					dun = 1

