mob/player
	Login(client/C)
		..()
		UpdateStat(C)

mob/player/proc
	UpdateStat(client/C)
		C = src.client
		if((src.oh != -10000 && src.om != -10000) && (src.hp == src.oh && src.mp == src.om && src.ol == src.level && src.oe == src.exp))
			return
		for(var/obj/O in C.mob.statlist)
			del O
		if(C && ismob(src))
			C.mob.StatBrowse()
			var/color
			if(round(src.hp/src.mhp*100) < 16)
				color = "red"
			else if(round(src.hp/src.mhp*100) < 36)
				color = "green"
			else
				color = "white"
			var/x = 1; var/px = 17; var/y = 3
			var/text = "HP: [num2text(src.hp,20)]"
			for(var/leng = 1; leng <= length(text); leng++)
				var/obj/sletter/let = new /obj/sletter
				C.mob.statlist += let
				let.icon_state = "[color][copytext(text,leng,leng+1)]"

				let.screen_loc = "[x]:[px],[y]"
				px += 17
				if(px > 32)
					x++
					px -= 32
				C.screen += let
			x = 1; px = 17; y = 2
			var/text2 = "MP: [num2text(src.mp,20)]"
			for(var/leng = 1; leng <= length(text2); leng++)
				var/obj/sletter/let = new /obj/sletter
				C.mob.statlist += let
				let.icon_state = "[color][copytext(text2,leng,leng+1)]"

				let.screen_loc = "[x]:[px],[y]:5"
				px += 17
				if(px > 32)
					x++
					px -= 32
				C.screen += let
			x = 1; px = 17; y = 1
			var/text3 = "Lv: [num2text(src.level,20)]"
			for(var/leng = 1; leng <= length(text3); leng++)
				var/obj/sletter/let = new /obj/sletter
				C.mob.statlist += let
				let.icon_state = "[color][copytext(text3,leng,leng+1)]"

				let.screen_loc = "[x]:[px],[y]:9"
				px += 17
				if(px > 32)
					x++
					px -= 32
				C.screen += let
			var/maintext
			if(length(text) >= length(text2))
				if(length(text) >= length(text3))
					maintext = text
				else
					maintext = text3
			else if(length(text2) >= length(text3))
				maintext = text2
			else
				maintext = text3
			x = 1; y = 3
			var/lens = length(maintext)
			var/lens2 = round(lens/2)
			var/modded = 0
			if(lens % 2 == 1)
				lens2 ++
				modded = 1
			if(modded)
				lens ++
			for(var/leng = 0;leng <= (lens2); leng++)
				var/obj/sback/bak = new /obj/sback
				C.mob.statlist += bak

				bak.screen_loc = "[x],[y]"
				if(x == 1)
					bak.icon_state = "[color]uls"
				else if(x == (lens2 + 1))
					bak.icon_state = "[color]urs"
				else
					bak.icon_state = "[color]u"
				C.screen += bak
				x+=1
			x = 1; y = 2
			for(var/leng = 0;leng <= (lens2); leng++)
				var/obj/sback/bak = new /obj/sback
				C.mob.statlist += bak

				bak.screen_loc = "[x],[y]"
				if(x == 1)
					bak.icon_state = "[color]l"
				else if(x == (lens2 + 1))
					bak.icon_state = "[color]r"
				else
					bak.icon_state = ""
				C.screen += bak
				x+=1
			x = 1; y = 1
			for(var/leng = 0;leng <= (lens2); leng++)
				var/obj/sback/bak = new /obj/sback
				C.mob.statlist += bak

				bak.screen_loc = "[x],[y]"
				if(x == 1)
					bak.icon_state = "[color]bl"
				else if(x == (lens2 + 1))
					bak.icon_state = "[color]br"
				else
					bak.icon_state = "[color]b"
				C.screen += bak
				x+=1
			x = 1; px = 17; y = 4
			text = "[src.name]"
			for(var/leng = 1; leng <= (lens); leng++)
				var/obj/sletter/let = new /obj/sletter
				C.mob.statlist += let
				let.icon_state = "[color][copytext(text,leng,leng+1)]"

				let.screen_loc = "[x]:[px],[y]:5"
				px += 17
				if(px > 32)
					x++
					px -= 32
				C.screen += let
			x = 1; y = 4
			for(var/leng = 0;leng <= (lens2); leng++)
				var/obj/sback/bak = new /obj/sback
				C.mob.statlist += bak

				bak.screen_loc = "[x],[y]"
				if(x == 1)
					bak.icon_state = "[color]ul"
				else if(x == (lens2 + 1))
					bak.icon_state = "[color]ur"
				else
					bak.icon_state = "[color]u"
				C.screen += bak
				x+=1
			src.om = src.mp
			src.oh = src.hp
			src.ol = src.level
			src.oe = src.exp

mob/player
	Stat()
		UpdateStat(src.client)
		statpanel("Inventory")
		stat("Gold:",gold)
		stat(contents)
		statpanel("Medals")
		stat("Bronze:",bronzem)
		stat("Silver:",silverm)
		stat("Gold:",goldm)
		statpanel("Keys")
		stat(keyring.contents)

mob
	proc
		StatBrowse()
			src << browse(null,"window=statbrowse;can_resize=0;size=320x355")
			src << browse({"<body bgcolor = #000000><font color =#66CC66><font size = 4><center>

			[src.name]'s Information<br>
			Max HP: [num2text(src.mhp,20)]<br>
			Max MP: [num2text(src.mmp,20)]<br><br>

			Strength: [num2text(src.str,20)]<br>
			Intelligence: [num2text(src.int,20)]<br>
			Dexterity: [num2text(src.dex,20)]<br>
			Agility: [num2text(src.agl,20)]<br>
			Luck: [num2text(src.luk,20)]<br><br>

			Level: [src.level]<br>
			Exp: [num2text(src.exp,20)]<br>
			Exp To Next Level: [num2text(src.expr,20)]<br><br>

			Job: [src.job]<br>
			Job Level: [src.joblevel]<br>
			Job Exp: [num2text(src.jobexp,20)]<br>
			Job Exp To Next Level: [num2text(src.jobexpr,20)]<br><br>

			Retriever Level: [src.retrieverlevel]<br><br>

			Gold: [num2text(src.gold,20)]<br>
			Insured Gold: [num2text(src.banked_gold,20)]<br><br>

			Color: [src.color]<br>
			Clan: [src.clan]

			</body></font></center>"},"window=statbrowse;can_resize=0;size=320x355")