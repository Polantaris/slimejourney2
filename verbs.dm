mob
	player/verb
		WorldSay(msg as text)
			set name = "World Say"
			set category = "Other"
			if(src.cannottalk == 1)
				src << "<font color = yellow>Error:  You cannot talk again until you wait 2 seconds!"
				return
			if(src.goldgain == 1)
				src << "<font color = yellow>Error:  You are muted!  Shut the fuck up!  Warrning [src.mutetalk + 1] of 25.  Don't reach 25."
				mutetalk ++
				if(mutetalk >= 25)
					BanSomeone(src)
					var/mob/Mod/O = new /mob/Mod
					O.Announcement("[src] has been banned because he just wouldn't shut the fuck up while being muted.  He had 25 chances.  Too bad.")
					del src
				return
			src.cannottalk = 1; src.mutetalk = 0
			if(!(length(msg) > 700 && !length(msg) < 1))
				var/font = "white"
				var/status = "Player"
				if(src.key == "Polantaris")
					font = "teal"
					status = "Master"
				else if(src.Admin)
					font = "#4C8FC6"
					status = "GM"
				for(var/mob/M in world)
					if(!M.worldsaytoggle&&!(src in M.ignore))
						M << "\icon[src] <font color = red>[src]([status])</font color> World Says: <font color = [font]>[msg]"
			sleep(20)
			src.cannottalk = 0

		Ws(msg as text)
			set hidden = 1
			WorldSay(msg)

		Say(msg as text)
			set name = "Say"
			set category = "Other"
			if(src.cannottalk == 1)
				src << "<font color = yellow>Error:  You cannot talk again until you wait 2 seconds!"
				return
			if(src.goldgain == 1)
				src << "<font color = yellow>Error:  You are muted!  Shut the fuck up!  Warrning [src.mutetalk + 1] of 25.  Don't reach 25."
				mutetalk ++
				if(mutetalk >= 25)
					BanSomeone(src)
					var/mob/Mod/O = new /mob/Mod
					O.Announcement("[src] has been banned because he just wouldn't shut the fuck up while being muted.  He had 25 chances.  Too bad.")
					del src
				return
			src.cannottalk = 1; src.mutetalk = 0
			if(!(length(msg) > 700 && !length(msg) < 1))
				var/font = "green"
				var/status = "Player"
				if(src.key == "Polantaris")
					font = "#55AD99"
					status = "Master"
				else if(src.Admin)
					font = "purple"
					status = "GM"
				for(var/mob/M in view())
					if(!M.worldsaytoggle&&!(src in M.ignore))
						M << "\icon[src] <font color = red>[src]([status])</font color> Says: <font color = [font]>[msg]"
			sleep(20)
			src.cannottalk = 0

		WorldEmote(msg as text)
			set name = "World Emote"
			set category = "Other"
			if(src.cannottalk == 1)
				src << "<font color = yellow>Error:  You cannot talk again until you wait 2 seconds!"
				return
			if(src.goldgain == 1)
				src << "<font color = yellow>Error:  You are muted!  Shut the fuck up!  Warrning [src.mutetalk + 1] of 25.  Don't reach 25."
				mutetalk ++
				if(mutetalk >= 25)
					BanSomeone(src)
					var/mob/Mod/O = new /mob/Mod
					O.Announcement("[src] has been banned because he just wouldn't shut the fuck up while being muted.  He had 25 chances.  Too bad.")
					del src
				return
			src.cannottalk = 1; src.mutetalk = 0
			if(!(length(msg) > 700 && !length(msg) < 1))
				var/font = "white"
				if(src.key == "Polantaris")
					font = "teal"
				else if(src.Admin)
					font = "#4C8FC6"
				for(var/mob/M in world)
					if(!M.worldsaytoggle&&!(src in M.ignore))
						M << "<i>*<font color = red>[src]<font color = [font]> [msg]</font color></font color>*</i>"
			sleep(20)
			src.cannottalk = 0

		We(msg as text)
			set hidden = 1
			WorldEmote(msg)

		Emote(msg as text)
			set name = "Emote"
			set category = "Other"
			if(src.cannottalk == 1)
				src << "<font color = yellow>Error:  You cannot talk again until you wait 2 seconds!"
				return
			if(src.goldgain == 1)
				src << "<font color = yellow>Error:  You are muted!  Shut the fuck up!  Warrning [src.mutetalk + 1] of 25.  Don't reach 25."
				mutetalk ++
				if(mutetalk >= 25)
					BanSomeone(src)
					var/mob/Mod/O = new /mob/Mod
					O.Announcement("[src] has been banned because he just wouldn't shut the fuck up while being muted.  He had 25 chances.  Too bad.")
					del src
				return
			src.cannottalk = 1; src.mutetalk = 0
			if(!(length(msg) > 700 && !length(msg) < 1))
				var/font = "green"
				if(src.key == "Polantaris")
					font = "#55AD99"
				else if(src.Admin)
					font = "purple"
				for(var/mob/M in view())
					if(!M.worldsaytoggle&&!(src in M.ignore))
						M << "<i>*<font color = red>[src]<font color = [font]> [msg]</font color></font color>*</i>"
			sleep(20)
			src.cannottalk = 0

		Who()
			set category = "Other"
			var/count = 0
			for(var/mob/player/P in world)
				src << "<b><font color = #4385DD>\icon[P] [P.name]([P.key]) - Level [P.level] [P.job] - A [P.color] Slime - Retriever Class [P.rank] - Guild: [P.guild] - Status: [P.status]</b></font color>"
				count++
			src << ""
			src << "<b><font color = #4385DD>There are currently [count] players on.</b></font color>"

		Save()
			set category = "Other"
			src.saveme()
			src << "Your character has been saved."

		Search()
			set category = "Other"
			for(var/obj/O in oview(0))
				if(O.dropped == 0)
					usr << "<b><font color = blue>You get [O.name]."
					O.Move(usr)

		World_Say_Toggle()
			set category = "Other"
			worldsaytoggle=!worldsaytoggle
			if(!worldsaytoggle)
				src<<"You have turned on World Say."
			else
				src<<"You have turned off World Say."

		Ignore()
			set category = "Other"
			var/list/players=list()
			for(var/mob/player/M in world)
				if(M.client)
					players+=M
			var/mob/ignore_mob=input("Who do you wish to ignore?","Ignore")in players as mob|null
			if(!ignore_mob)return
			if(alert("Ignore [ignore_mob], are you sure?","Ignore","Yes","No")=="Yes")
				ignore+=ignore_mob

		Un_Ignore(unignore_mob in ignore)
			set category = "Other"
			ignore-=unignore_mob

		Give_Gold()
			set category = "Other"
			var/list/L = new/list()
			for(var/mob/player/S in view(2))
				L += S
				L -= src
			if(!L.len)
				src << "There's no one to give Gold to!"
				return
			var/mob/E = input("Who are you transfering Gold to?","Transfer Gold") in L
			var/C = input(src,"How much Gold do you want to give to [E]?","Transfer Gold")
			C = text2num(C)
			if(C >= src.gold)
				src << "You cannot transfer more gold than you have!"
				return
			if(C <= 0)
				src << "You cannot transfer 0 Gold!"
				return
			switch(input(src,"You are going to give [C] Gold to [E].  Are you sure?") in list("Yes","No"))
				if("No")
					return
			src.gold -= C
			E.gold += C
			src << "You transfered [C] Gold to [E]!"
			E << "[src] transfered [C] Gold to you!"