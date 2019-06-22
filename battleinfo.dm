			/*
			17t
			16t
			15t
			14t
			13c
			12c
			11c
			10c
			 9c
			 8m
			 7m
			 6m
			 5m
			 4s
			 3s
			 2s
			 1s
			*/
mob
	proc
		MonsterText(mob/player/P,monstername,color)
			var/client/C = P.client
			var/x = 1; var/px = 17; var/y = 17
			var/text = "Monsters Encountered!"
			for(var/leng = 1; leng <= length(text); leng++)
				var/obj/letter/let = new /obj/letter
				let.icon_state = "[color][copytext(text,leng,leng+1)]"
				let.screen_loc = "[x]:[px],[y]"
				px += 17
				P.textlist += let
				if(px > 32)
					x++
					px -= 32
				C.screen += let
			sleep()
			x = 1; px = 17; y = 16
			var/text2 = "[P.monstergroup.len] [monstername]!"
			for(var/leng = 1; leng <= length(text2); leng++)
				var/obj/letter/let = new /obj/letter
				let.icon_state = "[color][copytext(text2,leng,leng+1)]"
				let.screen_loc = "[x]:[px],[y]:9"
				px += 17
				P.textlist += let
				if(px > 32)
					x++
					px -= 32
				C.screen += let
			sleep()
			x = 1; y = 17
			for(var/leng = 0;leng <= 16; leng++)
				var/obj/back/bak = new /obj/back
				bak.screen_loc = "[x],[y]"
				P.textlist += bak
				C.screen += bak
				if(x == 1)
					bak.icon_state = "[color]ul"
				else if(x == 17)
					bak.icon_state = "[color]ur"
				else
					bak.icon_state = "[color]u"
				C.screen += bak
				x+=1
			sleep()
			x = 1; y = 16
			for(var/leng = 0;leng <= 16; leng++)
				var/obj/back/bak = new /obj/back
				bak.screen_loc = "[x],[y]"
				P.textlist += bak
				C.screen += bak
				if(x == 1)
					bak.icon_state = "[color]bl"
				else if(x ==  17)
					bak.icon_state = "[color]br"
				else
					bak.icon_state = "[color]b"
				x+=1

		InfoText(mob/player/P)
			var/client/C = P.client
			var/color
			if(round(P.hp/P.mhp*100) < 16)
				color = "red"
			else if(round(P.hp/P.mhp*100) < 36)
				color = "green"
			else
				color = "white"
			var/x = 1; var/y = 15
			for(var/leng = 0;leng <= 16; leng++)
				var/obj/back/bak2 = new /obj/back
				bak2.screen_loc = "[x],[y]"
				P.textlist += bak2
				if(x == 1)
					bak2.icon_state = "[color]ul"
				else if(x == 17)
					bak2.icon_state = "[color]ur"
				else
					bak2.icon_state = "[color]u"
				C.screen += bak2
				x+=1
			sleep()
			x = 1; y = 14
			for(var/leng = 0;leng <= 16; leng++)
				var/obj/back/bak2 = new /obj/back
				bak2.screen_loc = "[x],[y]"
				P.textlist += bak2
				C.screen += bak2
				if(x == 1)
					bak2.icon_state = "[color]bl"
				else if(x ==  17)
					bak2.icon_state = "[color]br"
				else
					bak2.icon_state = "[color]b"
				x+=1

		AddInfo(mob/player/P,string1,string2)
			for(var/obj/O in P.battlelist)
				del(O)
			var/color
			if(round(P.hp/P.mhp*100) < 16)
				color = "red"
			else if(round(P.hp/P.mhp*100) < 36)
				color = "green"
			else
				color = "white"
			var/client/C = P.client
			var/x = 1; var/px = 17; var/y = 15
			for(var/leng = 1; leng <= length(string1); leng++)
				var/obj/letter/let = new /obj/letter
				let.icon_state = "[color][copytext(string1,leng,leng+1)]"
				let.screen_loc = "[x]:[px],[y]"
				px += 17
				P.battlelist += let
				if(px > 32)
					x++
					px -= 32
				C.screen += let
			sleep()
			x = 1; px = 17; y = 14
			for(var/leng = 1; leng <= length(string2); leng++)
				var/obj/letter/let = new /obj/letter
				let.icon_state = "[color][copytext(string2,leng,leng+1)]"
				let.screen_loc = "[x]:[px],[y]:9"
				px += 17
				P.battlelist += let
				if(px > 32)
					x++
					px -= 32
				C.screen += let

		DamageAddInfo(mob/player/P,string1,string2,wav1,wav2,critstring)
			for(var/obj/O in P.battlelist)
				del(O)
			var/color
			if(round(P.hp/P.mhp*100) < 16)
				color = "red"
			else if(round(P.hp/P.mhp*100) < 36)
				color = "green"
			else
				color = "white"
			var/client/C = P.client
			var/x = 1; var/px = 17; var/y = 15
			for(var/leng = 1; leng <= length(string1); leng++)
				var/obj/letter/let = new /obj/letter
				let.icon_state = "[color][copytext(string1,leng,leng+1)]"
				let.screen_loc = "[x]:[px],[y]"
				px += 17
				P.battlelist += let
				if(px > 32)
					x++
					px -= 32
				C.screen += let
			sleep()
			if(wav1)P << wav1
			sleep(10)
			var/reset = 0
			if(critstring)
				x = 1; px = 17; y = 14
				for(var/leng = 1; leng <= length(critstring); leng++)
					var/obj/letter/let = new /obj/letter
					let.icon_state = "[color][copytext(critstring,leng,leng+1)]"
					let.screen_loc = "[x]:[px],[y]:9"
					px += 17
					P.battlelist += let
					if(px > 32)
						x++
						px -= 32
					C.screen += let
				P << 'criticalhit.ogg'
				sleep(5)
				reset = 1
			sleep()
			if(reset == 0)
				x = 1; px = 17; y = 14
			for(var/leng = 1; leng <= length(string2); leng++)
				var/obj/letter/let = new /obj/letter
				let.icon_state = "[color][copytext(string2,leng,leng+1)]"
				let.screen_loc = "[x]:[px],[y]:9"
				px += 17
				P.battlelist += let
				if(px > 32)
					x++
					px -= 32
				C.screen += let
			sleep()
			if(wav2)P << wav2

		CommandText(mob/player/P,mob/monsters/M)
			for(var/obj/O in P.textlist)
				del(O)
			var/color
			if(round(P.hp/P.mhp*100) < 16)
				color = "red"
			else if(round(P.hp/P.mhp*100) < 36)
				color = "green"
			else
				color = "white"
			var/client/C = P.client
			var/x = 1; var/px = 17; var/y = 13
			var/text = "Attack"
			for(var/leng = 1; leng <= length(text); leng++)
				var/obj/letter/let = new /obj/letter
				let.icon_state = "[color][copytext(text,leng,leng+1)]"
				let.screen_loc = "[x]:[px],[y]"
				px += 17
				P.textlist += let
				if(px > 32)
					x++
					px -= 32
				C.screen += let
			x = 1; px = 17; y = 12
			sleep()
			text = "Spell"
			for(var/leng = 1; leng <= length(text); leng++)
				var/obj/letter/let = new /obj/letter
				let.icon_state = "[color][copytext(text,leng,leng+1)]"
				let.screen_loc = "[x]:[px],[y]:2"
				px += 17
				P.textlist += let
				if(px > 32)
					x++
					px -= 32
				C.screen += let
			x = 1; px = 17; y = 11
			sleep()
			text = "Item"
			for(var/leng = 1; leng <= length(text); leng++)
				var/obj/letter/let = new /obj/letter
				let.icon_state = "[color][copytext(text,leng,leng+1)]"
				let.screen_loc = "[x]:[px],[y]:5"
				px += 17
				P.textlist += let
				if(px > 32)
					x++
					px -= 32
				C.screen += let
			x = 1; px = 17; y = 10
			sleep()
			text = "Defend"
			for(var/leng = 1; leng <= length(text); leng++)
				var/obj/letter/let = new /obj/letter
				let.icon_state = "[color][copytext(text,leng,leng+1)]"
				let.screen_loc = "[x]:[px],[y]:7"
				px += 17
				P.textlist += let
				if(px > 32)
					x++
					px -= 32
				C.screen += let
			x = 1; px = 17; y = 9
			sleep()
			text = "Run"
			for(var/leng = 1; leng <= length(text); leng++)
				var/obj/letter/let = new /obj/letter
				let.icon_state = "[color][copytext(text,leng,leng+1)]"
				let.screen_loc = "[x]:[px],[y]:9"
				px += 17
				P.textlist += let
				if(px > 32)
					x++
					px -= 32
				C.screen += let
			sleep()
			x = 1; y = 13
			for(var/leng = 0;leng <= 4; leng++)
				var/obj/back/bak = new /obj/back
				bak.screen_loc = "[x],[y]"
				P.textlist += bak
				if(x == 1)
					bak.icon_state = "[color]ul"
				else if(x ==  5)
					bak.icon_state = "[color]ur"
				else
					bak.icon_state = "[color]u"
				C.screen += bak
				x+=1
			sleep()
			x = 1; y = 12
			for(var/leng = 0;leng <= 4; leng++)
				var/obj/back/bak = new /obj/back
				bak.screen_loc = "[x],[y]"
				P.textlist += bak
				if(x == 1)
					bak.icon_state = "[color]l"
				else if(x ==  5)
					bak.icon_state = "[color]r"
				else
					bak.icon_state = ""
				C.screen += bak
				x+=1
			sleep()
			x = 1; y = 11
			for(var/leng = 0;leng <= 4; leng++)
				var/obj/back/bak = new /obj/back
				bak.screen_loc = "[x],[y]"
				P.textlist += bak
				if(x == 1)
					bak.icon_state = "[color]l"
				else if(x ==  5)
					bak.icon_state = "[color]r"
				else
					bak.icon_state = ""
				C.screen += bak
				x+=1
			sleep()
			x = 1; y = 10
			for(var/leng = 0;leng <= 4; leng++)
				var/obj/back/bak = new /obj/back
				bak.screen_loc = "[x],[y]"
				P.textlist += bak
				if(x == 1)
					bak.icon_state = "[color]l"
				else if(x ==  5)
					bak.icon_state = "[color]r"
				else
					bak.icon_state = ""
				C.screen += bak
				x+=1
			sleep()
			x = 1; y = 9
			for(var/leng = 0;leng <= 4; leng++)
				var/obj/back/bak = new /obj/back
				bak.screen_loc = "[x],[y]"
				P.textlist += bak
				if(x == 1)
					bak.icon_state = "[color]bl"
				else if(x ==  5)
					bak.icon_state = "[color]br"
				else
					bak.icon_state = "[color]b"
				C.screen += bak
				x+=1

		ChooseTargetInfo(mob/player/P,mob/monsters/M)
			var/client/C = P.client
			var/x = 1; var/px = 17; var/y = 8
			var/text
			var/far = 0
			var/movingup = 1
			var/color
			if(round(P.hp/P.mhp*100) < 16)
				color = "red"
			else if(round(P.hp/P.mhp*100) < 36)
				color = "green"
			else
				color = "white"
			for(var/mob/special in P.monstergroup)
				far++
				text = special.name
				for(var/leng = 1; leng <= length(text); leng++)
					var/obj/letter/let = new /obj/letter
					let.icon_state = "[color][copytext(text,leng,leng+1)]"
					let.screen_loc = "[x]:[px],[y]:[3*(8-y)]"
					px += 17
					P.chooselist += let
					if(px > 32)
						x++
						px -= 32
					C.screen += let
					if(leng == length(text) && far + 1 <= 4)
						y--
						x = 1
						px = 17
					if(leng == length(text) && far + 1 >= 5 && P.monstergroup.len >= 5)
						if(movingup == 1)
							y = 9
							movingup = 0
						x = 9
						px = 17
						y--
				sleep()

		SelectionBackground(mob/player/P)
			var/client/C = P.client
			var/x = 1; var/y = 8
			x = 1; y = 8
			var/color
			if(round(P.hp/P.mhp*100) < 16)
				color = "red"
			else if(round(P.hp/P.mhp*100) < 36)
				color = "green"
			else
				color = "white"
			for(var/leng = 0;leng <= 16; leng++)
				var/obj/back/bak = new /obj/back
				bak.screen_loc = "[x],[y]"
				P.chooselist += bak
				if(x == 1)
					bak.icon_state = "[color]ul"
				else if(x ==  17)
					bak.icon_state = "[color]ur"
				else
					bak.icon_state = "[color]u"
				C.screen += bak
				x+=1
			sleep()
			x = 1; y = 7
			for(var/leng = 0;leng <= 16; leng++)
				var/obj/back/bak = new /obj/back
				bak.screen_loc = "[x],[y]"
				P.chooselist += bak
				if(x == 1)
					bak.icon_state = "[color]l"
				else if(x ==  17)
					bak.icon_state = "[color]r"
				else
					bak.icon_state = ""
				C.screen += bak
				x+=1
			sleep()
			x = 1; y = 6
			for(var/leng = 0;leng <= 16; leng++)
				var/obj/back/bak = new /obj/back
				bak.screen_loc = "[x],[y]"
				P.chooselist += bak
				if(x == 1)
					bak.icon_state = "[color]l"
				else if(x ==  17)
					bak.icon_state = "[color]r"
				else
					bak.icon_state = ""
				C.screen += bak
				x+=1
			sleep()
			x = 1; y = 5
			for(var/leng = 0;leng <= 16; leng++)
				var/obj/back/bak = new /obj/back
				bak.screen_loc = "[x],[y]"
				P.chooselist += bak
				if(x == 1)
					bak.icon_state = "[color]bl"
				else if(x ==  17)
					bak.icon_state = "[color]br"
				else
					bak.icon_state = "[color]b"
				C.screen += bak
				x+=1

		SpellListing(mob/player/P,mob/monsters/M)
			for(var/obj/O in P.chooselist)
				del(O)
			var/client/C = P.client
			var/x = 1; var/px = 17; var/y = 8
			var/text
			var/far = 0
			var/movingup = 1
			if(P.spells.len == 0)
				AddInfo(P,"You have no spells!","")
				sleep(12)
				Battle(P,M)
				return
			for(var/i=1;i<=5;i++)
				P.spage[i] = P.spells.Copy(i*8-7,min(i*8+1,P.spells.len+1))
				if(i*8 >= P.spells.len)break
			SelectionBackground(P)
			var/list/pager = new/list()
			if(P.page < 1 || P.page > 5)
				world << "ERROR: PAGE NUMBER INCORRECT!  REPORT THIS BUG IMMEDIATLY!  BUG ERROR #2!"
				return
			pager = P.spage[P.page]
			for(var/special in pager)
				far++
				text = special
				for(var/leng = 1; leng <= length(text); leng++)
					var/obj/letter/let = new /obj/letter
					let.icon_state = copytext(text,leng,leng+1)
					let.screen_loc = "[x]:[px],[y]:[3*(8-y)]"
					px += 17
					P.chooselist += let
					if(px > 32)
						x++
						px -= 32
					C.screen += let
					if(leng == length(text) && far + 1 <= 4)
						y--
						x = 1
						px = 17
					if(leng == length(text) && far + 1 >= 5 && P.spage[P.page])
						if(movingup == 1)
							y = 9
							movingup = 0
						x = 9
						px = 17
						y--
			if(P.arrows.menu[3][1])
				var/obj/sarrow/arr = new /obj/sarrow
				arr.layer = MOB_LAYER + 2
				arr.screen_loc = "17:12,5:9"
				P.chooselist += arr
				C.screen += arr
			else
				var/obj/sarrow/arr = new /obj/sarrow
				arr.layer = MOB_LAYER + 2
				arr.screen_loc = "9:12,5:9"
				P.chooselist += arr
				C.screen += arr

		ItemListing(mob/player/P,mob/monsters/M)
			for(var/obj/O in P.chooselist)
				del(O)
			var/client/C = P.client
			var/x = 1; var/px = 17; var/y = 8
			var/text
			var/far = 0
			var/movingup = 1
			if(P.contents.len == 0)
				AddInfo(P,"You have no items!","")
				sleep(12)
				Battle(P,M)
				return
			for(var/i=1;i<=100;i++)
				P.ipage[i] = P.contents.Copy(i*8-7,min(i*8+1,P.contents.len+1))
				if(i*8 >= P.contents.len)break
			SelectionBackground(P)
			var/list/pager = new/list()
			if(P.page < 1 || P.page > 5)
				world << "ERROR: PAGE NUMBER INCORRECT!  REPORT THIS BUG IMMEDIATLY!  BUG ERROR #2!"
				return
			pager = P.ipage[P.page]
			for(var/obj/special in pager)
				far++
				text = special.name
				for(var/leng = 1; leng <= length(text); leng++)
					var/obj/letter/let = new /obj/letter
					let.icon_state = copytext(text,leng,leng+1)
					let.screen_loc = "[x]:[px],[y]:[3*(8-y)]"
					px += 17
					P.chooselist += let
					if(px > 32)
						x++
						px -= 32
					C.screen += let
					if(leng == length(text) && far + 1 <= 4)
						y--
						x = 1
						px = 17
					if(leng == length(text) && far + 1 >= 5 && P.spage[P.page])
						if(movingup == 1)
							y = 9
							movingup = 0
						x = 9
						px = 17
						y--
			if(P.arrows.menu[3][1])
				var/obj/sarrow/arr = new /obj/sarrow
				arr.layer = MOB_LAYER + 2
				arr.screen_loc = "17:12,5:9"
				P.chooselist += arr
				C.screen += arr
			else
				var/obj/sarrow/arr = new /obj/sarrow
				arr.layer = MOB_LAYER + 2
				arr.screen_loc = "9:12,5:9"
				P.chooselist += arr
				C.screen += arr