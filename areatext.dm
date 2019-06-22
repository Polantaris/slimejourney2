area
	proc
		EnterCall(mob/M,text,text2,locations)
			if(M.location == locations)
				return
			for(var/obj/O in M.textlist)
				del(O)
			if(locations)M.location = locations
			var/client/C = M.client
			var/x = 1; var/px = 17; var/y = 17
			var/list/list = new/list()
			for(var/leng = 1; leng <= length(text); leng++)
				var/obj/letter/let = new /obj/letter
				let.icon_state = copytext(text,leng,leng+1)
				let.screen_loc = "[x]:[px],[y]"
				px += 17
				list += let; M.textlist += let
				if(px > 32)
					x++
					px -= 32
				C.screen += let
			x = 1; px = 17; y = 16
			for(var/leng = 1; leng <= length(text2); leng++)
				var/obj/letter/let = new /obj/letter
				let.icon_state = copytext(text2,leng,leng+1)
				let.screen_loc = "[x]:[px],[y]:9"
				px += 17
				list += let; M.textlist += let
				if(px > 32)
					x++
					px -= 32
				C.screen += let
			var/maintext
			if(length(text) >= length(text2))
				maintext = text
			else if(length(text2) >= length(text))
				maintext = text2
			else
				maintext = text
			x = 1; y = 17
			var/lens = length(maintext)
			var/lens2 = round(lens/2) + 1
			for(var/leng = 0;leng <= (lens2); leng++)
				var/obj/back/bak = new /obj/back
				bak.screen_loc = "[x],[y]"
				list += bak; M.textlist += bak
				if(x == 1)
					bak.icon_state = "ul"
				else if(x == (lens2 + 1))
					bak.icon_state = "ur"
				else
					bak.icon_state = "u"
				C.screen += bak
				x+=1
			x = 1; y = 16
			for(var/leng = 0;leng <= (lens2); leng++)
				var/obj/back/bak = new /obj/back
				bak.screen_loc = "[x],[y]"
				list += bak; M.textlist += bak
				if(x == 1)
					bak.icon_state = "bl"
				else if(x == (lens2 + 1))
					bak.icon_state = "br"
				else
					bak.icon_state = "b"
				C.screen += bak
				x+=1
			sleep(100)
			for(var/obj/O in list)
				del(O)


	enflamed
		Entered(mob/M)
			..()
			EnterCall(M,"Entering:","Enflamed Lands","EnflamedLands")

	almenhestfields
		Entered(mob/M)
			..()
			EnterCall(M,"Entering:","Fields of Almenhest","AlmenhestFields")

	mysterioustown
		Entered(mob/M)
			..()
			EnterCall(M,"Entering:","Mysterious Town","MysteriousTown")

	almenhest
		Entered(mob/M)
			..()
			EnterCall(M,"Entering:","The Town of Almenhest","Almenhest")

	house
		Entered(mob/M)
			..()
			EnterCall(M,"Entering: Housing Lot: [src.housenumber]","Owner is: [src.owner]")
