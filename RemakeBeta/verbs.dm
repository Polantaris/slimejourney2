mob
	Special
		verb
			Monster_Number_Chooser()
				set category = "Other"
				var/a = input("How many monsters do you wish to be able to fight at any given time? (4 - 10) WARNING: THIS IS IRREVERSABLE!  IF YOU DO NOT PICK THE NUMBER YOU WANT, DO NOT COMPLAIN, ITS YOUR FAULT!","Monster Pick")
				a = text2num(a)
				if(a < 4)
					a = 4
				else if (a > 10)
					a = 10
				src.mobsinbattle = a
				chosemonnum = 1
				src.verbs -= /mob/Special/verb/Monster_Number_Chooser

	proc
		Worldsay()
			if(src.cannottalk == 1)
				src << "You cannot talk so fast!  Wait about 3 seconds!"
				return
			var/msg = input("What would you like to say to the world?","World Say")
			if("http://s10.invisionfree.com/SJNewsBoard" in msg)
				var/mob/Mod/A
				A.Announcement("[src] was booted for posting illegal messages.")
				if(src.monsterinparty)
					del(src.monsterfollow)
				del(src)
				return
			var/notes = file("logs.txt")
			notes << "[html_encode:(usr.name)]: worldsays, ''[html_encode:(msg)]''"
			src.cannottalk = 1
			if(src.goldgain == 1)
				var/list/players=list()
				for(var/mob/M in world)
					if(M.client&&M!=src)players+=M
				var/randommsg = pick(mutedmsgs)
				src<<"<font color = blue><b>Your voice has been removed!</font>"
				players<<"\icon[usr] <font color=aqua><b>[usr] worldsays, ''[randommsg]''</font>"
			else
				if(length(msg)>1 && length(msg)<=700)
					for(var/mob/M in world)
						if(!M.worldsay_toggle&&!(src in M.ignore))
							if(usr.key == "Polantaris")
								M << "\icon[usr] <font color=#55AD99><b>[html_encode:(usr.name)] (Owner) worldsays, ''[html_encode:(msg)]''</font>"
							else if(usr.Admin == 1)
								M << "\icon[usr] <font color=lime><b>[html_encode:(usr.name)] (GM) worldsays, ''[html_encode:(msg)]''</font>"
							else
								M << "\icon[usr] <font color=white><b>[html_encode:(usr.name)] (Player) worldsays, ''[html_encode:(msg)]''</font>"
	//					world.log << "[src] wsays: [msg]"
			sleep(25)
			src.cannottalk = 0

		SayB()
			if(src.cannottalk == 1)
				src << "You cannot talk so fast!  Wait about 3 seconds!"
				return
			var/msg = input("What would you like to say to people that you can see?","View Say")
			if("http://s10.invisionfree.com/SJNewsBoard" in msg)
				var/mob/Mod/A
				A.Announcement("[src] was booted for posting illegal messages.")
				if(src.monsterinparty)
					del(src.monsterfollow)
				del(src)
				return
			var/notes = file("logs.txt")
			notes << "[html_encode:(usr.name)]: says, ''[html_encode:(msg)]''"
			src.cannottalk = 1
			if(src.goldgain == 1)
				var/list/players=list()
				for(var/mob/M in world)
					if(M.client&&M!=src)players+=M
				var/randommsg = pick(mutedmsgs)
				src<<"<font color = blue><b>Your voice has been removed!</font>"
				players<<"\icon[usr] <font color=aqua><b>[usr] worldsays, ''[randommsg]''</font>"
			else
				if(length(msg)>1 && length(msg)<=700)
					for(var/mob/M in view())
						if(!M.worldsay_toggle&&!(src in M.ignore))
							if(usr.key == "Polantaris")
								M << "\icon[usr] <font color=aqua><b>[html_encode:(usr.name)] (Owner) says, ''[html_encode:(msg)]''</font>"
							else if(usr.Admin == 1)
								M << "\icon[usr] <font color=lime><b>[html_encode:(usr.name)] (GM) says, ''[html_encode:(msg)]''</font>"
							else
								M << "\icon[usr] <font color=green><b>[html_encode:(usr.name)] (Player) says, ''[html_encode:(msg)]''</font>"
//							world.log << "[src] says: [msg]"
			sleep(25)
			src.cannottalk = 0

		Worldemote()
			if(src.cannottalk == 1)
				src << "You cannot talk so fast!  Wait about 3 seconds!"
				return
			var/msg = input("What would you like to emote to the world?","World Emote")
			if("http://s10.invisionfree.com/SJNewsBoard" in msg)
				var/mob/Mod/A
				A.Announcement("[src] was booted for posting illegal messages.")
				if(src.monsterinparty)
					del(src.monsterfollow)
				del(src)
				return
			var/notes = file("logs.txt")
			notes << "[html_encode:(usr.name)] [html_encode:(msg)]"
			src.cannottalk = 1
			if(src.goldgain == 1)
				var/list/players=list()
				for(var/mob/M in world)
					if(M.client&&M!=src)players+=M
				var/randommsg = pick(mutedmsgs)
				src<<"<font color = blue><b>Your voice has been removed!</font>"
				players<<"\icon[usr] <font color=aqua><b>[usr] worldsays, ''[randommsg]''</font>"
			else
				if(length(msg)>1 && length(msg)<=700)
					for(var/mob/M in world)
						if(!M.worldsay_toggle&&!(src in M.ignore))
							if(usr.key == "Polantaris")
								M << "<i><font color = #55AD99>*[html_encode:(usr.name)] [html_encode:(msg)]*"
							else if(usr.Admin == 1)
								M << "<i><font color = lime>*[html_encode:(usr.name)] [html_encode:(msg)]*"
							else
								M << "<i><font color = white>*[html_encode:(usr.name)] [html_encode:(msg)]*"
//							world.log << "*[src] [msg]* (world)"
			sleep(25)
			src.cannottalk = 0

		EmoteB()
			if(src.cannottalk == 1)
				src << "You cannot talk so fast!  Wait about 3 seconds!"
				return
			var/msg = input("What would you like to emote to people that you can see?","View Emote")
			if("http://s10.invisionfree.com/SJNewsBoard" in msg)
				var/mob/Mod/A
				A.Announcement("[src] was booted for posting illegal messages.")
				if(src.monsterinparty)
					del(src.monsterfollow)
				del(src)
				return
			var/notes = file("logs.txt")
			notes << "[html_encode:(usr.name)] [html_encode:(msg)]"
			src.cannottalk = 1
			if(src.goldgain == 1)
				var/list/players=list()
				for(var/mob/M in world)
					if(M.client&&M!=src)players+=M
				var/randommsg = pick(mutedmsgs)
				src<<"<font color = blue><b>Your voice has been removed!</font>"
				players<<"\icon[usr] <font color=aqua><b>[usr] worldsays, ''[randommsg]''</font>"
			else
				if(length(msg)>1 && length(msg)<=700)
					for(var/mob/M in view())
						if(!M.worldsay_toggle&&!(src in M.ignore))
							if(usr.key == "Polantaris")
								M << "<i><font color = aqua>*[html_encode:(usr.name)] [html_encode:(msg)]*"
							else if(usr.Admin == 1)
								M << "<i><font color = lime>*[html_encode:(usr.name)] [html_encode:(msg)]*"
							else
								M << "<i><font color = green>*[html_encode:(usr.name)] [html_encode:(msg)]*"
//							world.log << "*[src] [msg]* (view)"
			sleep(25)
			src.cannottalk = 0

	verb
		TokenCheck()
			set name = "Token Check"
			set category = "Other"
			src.toks = 0
			for(var/obj/NormalItems/Token/T in src.contents)
				src.toks += 1
			src << "You have [src.toks] tokens."

		AFK()
			set category = "Other"
			if(src.afk == 1)
				src.afk = 0
				world << "<b><i><u>[src] has returned!</b></u></i>"
				src.awaymsg = "Available"
			else if(src.goldgain == 1)
				src << "You cannot set a Status when your muted!"
			else
				var/msg = input("What do you want your AFK message to be?","AFK Message")
				src.awaymsg = msg
				world << "<b><u><i>[html_encode:(usr)] is [html_encode:(msg)]!</b></u></i>"
				src.afk = 1

		Save()
			set category = "Other"
			usr.client.base_SaveMob()
			src << "Your character has been saved."

		Toggle_NPC_Say()
			set category = "Other"
			if(src.npcsay == 1)
				src.npcsay = 0
				src << "NPC say has been turned off."
			else
				src.npcsay = 1
				src << "NPC say has been turned on."

		World_Say(msg as text)
			set category = "Other"
			if("http://s10.invisionfree.com/SJNewsBoard" in msg)
				var/mob/Mod/A
				A.Announcement("[src] was booted for posting illegal messages.")
				if(src.monsterinparty)
					del(src.monsterfollow)
				del(src)
				return

			if(src.cannottalk == 1)
				src << "You cannot talk so fast!  Wait about 3 seconds!"
				return
			var/notes = file("logs.txt")
			notes << "[html_encode:(usr.name)]: worldsays, ''[html_encode:(msg)]''"
			src.cannottalk = 1
			if(src.goldgain == 1)
				var/list/players=list()
				for(var/mob/M in world)
					if(M.client&&M!=src)players+=M
				var/randommsg = pick(mutedmsgs)
				src<<"<font color = blue><b>Your voice has been removed!</font>"
				players<<"\icon[usr] <font color=aqua><b>[usr] worldsays, ''[randommsg]''</font>"
			else
				if(length(msg)>1 && length(msg)<=700)
					for(var/mob/M in world)
						if(!M.worldsay_toggle&&!(src in M.ignore))
							if(usr.key == "Polantaris")
								M << "\icon[usr] <font color=#55AD99><b>[html_encode:(usr.name)] (Owner) worldsays, ''[html_encode:(msg)]''</font>"
							else if(usr.Admin == 1)
								M << "\icon[usr] <font color=lime><b>[html_encode:(usr.name)] (GM) worldsays, ''[html_encode:(msg)]''</font>"
							else
								M << "\icon[usr] <font color=white><b>[html_encode:(usr.name)] (Player) worldsays, ''[html_encode:(msg)]''</font>"
	//					world.log << "[src] wsays: [msg]"
			sleep(25)
			src.cannottalk = 0

		Ws(msg as text)
			set category = "Other"
			set hidden = 1
			if("http://s10.invisionfree.com/SJNewsBoard" in msg)
				var/mob/Mod/A
				A.Announcement("[src] was booted for posting illegal messages.")
				if(src.monsterinparty)
					del(src.monsterfollow)
				del(src)
				return
			if(src.cannottalk == 1)
				src << "You cannot talk so fast!  Wait about 3 seconds!"
				return
			var/notes = file("logs.txt")
			notes << "[html_encode:(usr.name)]: worldsays, ''[html_encode:(msg)]''"
			src.cannottalk = 1
			if(src.goldgain == 1)
				var/list/players=list()
				for(var/mob/M in world)
					if(M.client&&M!=src)players+=M
				var/randommsg = pick(mutedmsgs)
				src<<"<font color = blue><b>Your voice has been removed!</font>"
				players<<"\icon[usr] <font color=aqua><b>[usr] worldsays, ''[randommsg]''</font>"
			else
				if(length(msg)>1 && length(msg)<=700)
					for(var/mob/M in world)
						if(!M.worldsay_toggle&&!(src in M.ignore))
							if(usr.key == "Polantaris")
								M << "\icon[usr] <font color=#55AD99><b>[html_encode:(usr.name)] (Owner) worldsays, ''[html_encode:(msg)]''</font>"
							else if(usr.Admin == 1)
								M << "\icon[usr] <font color=lime><b>[html_encode:(usr.name)] (GM) worldsays, ''[html_encode:(msg)]''</font>"
							else
								M << "\icon[usr] <font color=white><b>[html_encode:(usr.name)] (Player) worldsays, ''[html_encode:(msg)]''</font>"
//							world.log << "[src] wsays: [msg]"
			sleep(25)
			src.cannottalk = 0

		Say(msg as text)
			set category = "Other"
			if("http://s10.invisionfree.com/SJNewsBoard" in msg)
				var/mob/Mod/A
				A.Announcement("[src] was booted for posting illegal messages.")
				if(src.monsterinparty)
					del(src.monsterfollow)
				del(src)
				return
			if(src.cannottalk == 1)
				src << "You cannot talk so fast!  Wait about 3 seconds!"
				return
			var/notes = file("logs.txt")
			notes << "[html_encode:(usr.name)]: says, ''[html_encode:(msg)]''"
			src.cannottalk = 1
			if(src.goldgain == 1)
				var/list/players=list()
				for(var/mob/M in world)
					if(M.client&&M!=src)players+=M
				var/randommsg = pick(mutedmsgs)
				src<<"<font color = blue><b>Your voice has been removed!</font>"
				players<<"\icon[usr] <font color=aqua><b>[usr] worldsays, ''[randommsg]''</font>"
			else
				if(length(msg)>1 && length(msg)<=700)
					for(var/mob/M in view())
						if(!M.worldsay_toggle&&!(src in M.ignore))
							if(usr.key == "Polantaris")
								M << "\icon[usr] <font color=aqua><b>[html_encode:(usr.name)] (Owner) says, ''[html_encode:(msg)]''</font>"
							else if(usr.Admin == 1)
								M << "\icon[usr] <font color=lime><b>[html_encode:(usr.name)] (GM) says, ''[html_encode:(msg)]''</font>"
							else
								M << "\icon[usr] <font color=green><b>[html_encode:(usr.name)] (Player) says, ''[html_encode:(msg)]''</font>"
//							world.log << "[src] says: [msg]"
			sleep(25)
			src.cannottalk = 0

		World_Emote(msg as text)
			set category = "Other"
			if("http://s10.invisionfree.com/SJNewsBoard" in msg)
				var/mob/Mod/A
				A.Announcement("[src] was booted for posting illegal messages.")
				if(src.monsterinparty)
					del(src.monsterfollow)
				del(src)
				return
			if(src.cannottalk == 1)
				src << "You cannot talk so fast!  Wait about 3 seconds!"
				return
			var/notes = file("logs.txt")
			notes << "[html_encode:(usr.name)] [html_encode:(msg)]"
			src.cannottalk = 1
			if(src.goldgain == 1)
				var/list/players=list()
				for(var/mob/M in world)
					if(M.client&&M!=src)players+=M
				var/randommsg = pick(mutedmsgs)
				src<<"<font color = blue><b>Your voice has been removed!</font>"
				players<<"\icon[usr] <font color=aqua><b>[usr] worldsays, ''[randommsg]''</font>"
			else
				if(length(msg)>1 && length(msg)<=700)
					for(var/mob/M in world)
						if(!M.worldsay_toggle&&!(src in M.ignore))
							if(usr.key == "Polantaris")
								M << "<i><font color = #55AD99>*[html_encode:(usr.name)] [html_encode:(msg)]*"
							else if(usr.Admin == 1)
								M << "<i><font color = lime>*[html_encode:(usr.name)] [html_encode:(msg)]*"
							else
								M << "<i><font color = white>*[html_encode:(usr.name)] [html_encode:(msg)]*"
//							world.log << "*[src] [msg]*"
			sleep(25)
			src.cannottalk = 0

		We(msg as text)
			set hidden = 1
			set category = "Other"
			if("http://s10.invisionfree.com/SJNewsBoard" in msg)
				var/mob/Mod/A
				A.Announcement("[src] was booted for posting illegal messages.")
				if(src.monsterinparty)
					del(src.monsterfollow)
				del(src)
				return
			if(src.cannottalk == 1)
				src << "You cannot talk so fast!  Wait about 3 seconds!"
				return
			var/notes = file("logs.txt")
			notes << "[html_encode:(usr.name)] [html_encode:(msg)]"
			src.cannottalk = 1
			if(src.goldgain == 1)
				var/list/players=list()
				for(var/mob/M in world)
					if(M.client&&M!=src)players+=M
				var/randommsg = pick(mutedmsgs)
				src<<"<font color = blue><b>Your voice has been removed!</font>"
				players<<"\icon[usr] <font color=aqua><b>[usr] worldsays, ''[randommsg]''</font>"
			else
				if(length(msg)>1 && length(msg)<=700)
					for(var/mob/M in world)
						if(!M.worldsay_toggle&&!(src in M.ignore))
							if(usr.key == "Polantaris")
								M << "<i><font color = #55AD99>*[html_encode:(usr.name)] [html_encode:(msg)]*"
							else if(usr.Admin == 1)
								M << "<i><font color = lime>*[html_encode:(usr.name)] [html_encode:(msg)]*"
							else
								M << "<i><font color = white>*[html_encode:(usr.name)] [html_encode:(msg)]*"
//							world.log << "*[src] [msg]* (world)"
			sleep(25)
			src.cannottalk = 0

		Emote(msg as text)
			set category = "Other"
			if("http://s10.invisionfree.com/SJNewsBoard" in msg)
				var/mob/Mod/A
				A.Announcement("[src] was booted for posting illegal messages.")
				if(src.monsterinparty)
					del(src.monsterfollow)
				del(src)
				return
			if(src.cannottalk == 1)
				src << "You cannot talk so fast!  Wait about 3 seconds!"
				return
			var/notes = file("logs.txt")
			notes << "[html_encode:(usr.name)] [html_encode:(msg)]"
			src.cannottalk = 1
			if(src.goldgain == 1)
				var/list/players=list()
				for(var/mob/M in world)
					if(M.client&&M!=src)players+=M
				var/randommsg = pick(mutedmsgs)
				src<<"<font color = blue><b>Your voice has been removed!</font>"
				players<<"\icon[usr] <font color=aqua><b>[usr] worldsays, ''[randommsg]''</font>"
			else
				if(length(msg)>1 && length(msg)<=700)
					for(var/mob/M in view())
						if(!M.worldsay_toggle&&!(src in M.ignore))
							if(usr.key == "Polantaris")
								M << "<i><font color = aqua>*[html_encode:(usr.name)] [html_encode:(msg)]*"
							else if(usr.Admin == 1)
								M << "<i><font color = lime>*[html_encode:(usr.name)] [html_encode:(msg)]*"
							else
								M << "<i><font color = green>*[html_encode:(usr.name)] [html_encode:(msg)]*"
//							world.log << "*[src] [msg]* (view)"
			sleep(25)
			src.cannottalk = 0

		Search()
			set category = "Other"
			for(var/obj/O in oview(0))
				if(O.dropped == 0)
					usr << "<b><font color = blue>You get [O.name]."
					O.Move(usr)

mob/var
	tmp/worldsay_toggle=0
	list
		ignore=list()

mob/verb/World_Say_Toggle()
	set category = "Other"
	worldsay_toggle=!worldsay_toggle
	if(!worldsay_toggle)
		src<<"You have turned on World Say."
	else
		src<<"You have turned off World Say."

mob/verb/Ignore()
	set category = "Other"
	var/list/players=list()
	for(var/mob/Newchar/M in world)
		if(M.client)
			players+=M
	var/mob/ignore_mob=input("Who do you wish to ignore?","Ignore")in players as mob|null
	if(!ignore_mob)return
	if(alert("Ignore [ignore_mob], are you sure?","Ignore","Yes","No")=="Yes")
		ignore+=ignore_mob

mob/verb/Un_Ignore(unignore_mob in ignore)
	set category = "Other"
	ignore-=unignore_mob

mob
	verb
		Who()
			set category = "Other"
			var/mob/Newchar/M
			var/count
			for(M in world)
				if(M.name != "Newchar" && M.key)
					if(M.monsterinparty)
						usr << "<font color = teal><b>\icon[M] [M.name]([M.key]) - Level: [M.level] - Color: [M.color] - Job: [M.job]: Level [M.joblevel] - Clan: [M.clan] - Retriever Level: [M.retrieverlevel] - Summon: \icon[M.monsterinparty] [M.monsterinparty] - Level: [M.monsterinparty.level] - Guild: [M.guild] - Status: [M.awaymsg]!</font>"
					else
						usr << "<font color = teal><b>\icon[M] [M.name]([M.key]) - Level: [M.level] - Color: [M.color] - Job: [M.job]: Level [M.joblevel] - Clan: [M.clan] - Retriever Level: [M.retrieverlevel] - Summon: None! - Guild: [M.guild] - Status: [M.awaymsg]!</font>"
					count += 1
		//			else
		//				world << "I'm fucked!"
			usr << "<font color = teal><b>There are [count] people online!"

mob
	verb
		Give_Gold()
			set category = "Other"
			var/list/L = new/list()
			for(var/mob/Newchar/S in view(2))
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
mob
	verb
		ViewChange()
			set hidden = 1
			var/view_size=input("What would you like to change your view to?") in list ("6","7","8","9","10")
			client.view=text2num(view_size)