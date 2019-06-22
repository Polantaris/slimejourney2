mob
	proc
		CreateText(mob/player/P,s1,s2,s3,s4,st)
			for(var/obj/O in P.statlist)
				del(O)
			CreateNPCTalk(P,s1,s2,s3,s4,st)

		CreateNPCTalk(mob/player/P,s1,s2,s3,s4,st)
			var/list/npctextlist = new/list()
			var/client/C = P.client
			var/color
			if(round(P.hp/P.mhp*100)<16)
				color = "red"
			else if(round(P.hp/P.mhp*100)<36)
				color = "green"
			else
				color = "white"
			var/x = 1;var/y = 4
			for(var/leng = 0;leng <= 16; leng++)
				var/obj/back/bak2 = new /obj/back
				bak2.screen_loc = "[x],[y]"
				npctextlist += bak2
				if(x == 1)
					bak2.icon_state = "[color]ul"
				else if(x == 17)
					bak2.icon_state = "[color]ur"
				else
					bak2.icon_state = "[color]u"
				C.screen += bak2
				x+=1
			x = 1;y = 3
			for(var/leng = 0;leng <= 16; leng++)
				var/obj/back/bak2 = new /obj/back
				bak2.screen_loc = "[x],[y]"
				npctextlist += bak2
				if(x == 1)
					bak2.icon_state = "[color]l"
				else if(x == 17)
					bak2.icon_state = "[color]r"
				else
					bak2.icon_state = ""
				C.screen += bak2
				x+=1
			x = 1;y = 2
			for(var/leng = 0;leng <= 16; leng++)
				var/obj/back/bak2 = new /obj/back
				bak2.screen_loc = "[x],[y]"
				npctextlist += bak2
				if(x == 1)
					bak2.icon_state = "[color]l"
				else if(x == 17)
					bak2.icon_state = "[color]r"
				else
					bak2.icon_state = ""
				C.screen += bak2
				x+=1
			x=1;y=1
			for(var/leng = 0;leng <= 16; leng++)
				var/obj/back/bak2 = new /obj/back
				bak2.screen_loc = "[x],[y]"
				npctextlist += bak2
				if(x == 1)
					bak2.icon_state = "[color]bl"
				else if(x == 17)
					bak2.icon_state = "[color]br"
				else
					bak2.icon_state = "[color]b"
				C.screen += bak2
				x+=1
			x = 1; var/px = 17;y = 4
			for(var/leng = 1; leng <= length(s1); leng++)
				var/obj/letter/let = new /obj/letter
				let.icon_state = "[color][copytext(s1,leng,leng+1)]"
				let.screen_loc = "[x]:[px],[y]"
				px += 17
				npctextlist += let
				if(px > 32)
					x++
					px -= 32
				C.screen += let
				if(prob(25))sleep(1)
			x = 1;px = 17;y = 3
			for(var/leng = 1; leng <= length(s2); leng++)
				var/obj/letter/let = new /obj/letter
				let.icon_state = "[color][copytext(s2,leng,leng+1)]"
				let.screen_loc = "[x]:[px],[y]:3"
				px += 17
				npctextlist += let
				if(px > 32)
					x++
					px -= 32
				C.screen += let
				if(prob(25))sleep(1)
			x = 1;px = 17;y = 2
			for(var/leng = 1; leng <= length(s3); leng++)
				var/obj/letter/let = new /obj/letter
				let.icon_state = "[color][copytext(s3,leng,leng+1)]"
				let.screen_loc = "[x]:[px],[y]:6"
				px += 17
				npctextlist += let
				if(px > 32)
					x++
					px -= 32
				C.screen += let
				if(prob(25))sleep(1)
			x = 1;px = 17;y = 1
			for(var/leng = 1; leng <= length(s4); leng++)
				var/obj/letter/let = new /obj/letter
				let.icon_state = "[color][copytext(s4,leng,leng+1)]"
				let.screen_loc = "[x]:[px],[y]:9"
				px += 17
				npctextlist += let
				if(px > 32)
					x++
					px -= 32
				C.screen += let
				if(prob(25))sleep(1)
			sleep(st)
			P.oh = -10000
			for(var/obj/O in npctextlist)
				del O
			P.UpdateStat(C)

