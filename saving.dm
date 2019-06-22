#define DEBUG
mob/var/log

mob/player
	proc
		saveme()
			var/logname
			if(isnum(log)||length(log)==1)logname = "Adventure Log [log]"
			else logname = log
			src.savex = src.x
			src.savey = src.y
			src.savez = src.z
			var/savefile/S = new("saves/[ckey(key)].plt")
			S[logname] << src

client
	proc

		load_me(log)
			var/logname
			if(isnum(log)||length(log)==1)logname = "Adventure Log [log]"
			else logname = log
			var/savefile/S = new("saves/[ckey(key)].plt")
			var/mob/player/new_mob
			var/mob/old_mob = mob
			S[logname] >> new_mob
			mob = new_mob
			del old_mob
			mob.loc=locate(mob.savex,mob.savey,mob.savez)

client/proc
	CharacterSelectionSetup()
		var/list/logs = get_logs() //or whatever the name of that function was
		var/list/options[0]
		if(logs.len >= 1) options += "Continue An Adventure"
		if(logs.len <= 3) options += "Start A New Adventure"
		if(logs.len >= 1) options += "End An Adventure"
		options += "Leave The Game"
		var/option = input(src,"Welcome to [world.name]!  Please choose an option from below to start the game.","Character Selection") in options
		switch(option)
			if("Continue An Adventure") continues(logs)
			if("Start A New Adventure") news(logs)
			if("End An Adventure") delete(logs)
			if("Leave The Game") del(src)
	continues(list/logs)
		logs += "-=Cancel=-"
		var/log = input(src,"You have chosen to continue an old adventure.  Please choose which adventure to continue, or hit Cancel to return to the main screen.","Character Selection") in logs
		if(log == "-=Cancel=-")
			CharacterSelectionSetup(src)
			return 0
		load_me(log)  //need to add support for passing "saves/[ckey(key)].sav"ectory "saves/[ckey(key)].sav"ectly to do it this way
	news(logs)
		var/list/available_logs = list("Adventure Log 1", "Adventure Log 2", "Adventure Log 3","-=Cancel=-")
		available_logs.Remove(logs)
		var/logst = input(src,"You have chosen to start a new adventure.  Please choose which adventure log to record your game upon.  If you do not wish to start a new adventure, please hit Cancel then choose the correct option.","Character Selection") in available_logs
		if(logst == "-=Cancel=-")
			CharacterSelectionSetup(src)
			return 0
		var/mob/players/creation2/player = new
		mob = player
		player.newy()
		mob.log = logst
	delete(logs)
		logs += "-=Cancel=-"
		var/log = input(src,"You have chosen to delete an adventure log.  Please choose which adventure log to delete.  This is not reversable.  If you do not wish to delete an adventure log, please hit Cancel.","Character Selection") in logs
		if(log == "-=Cancel=-")
			CharacterSelectionSetup(src)
			return 0
		switch(alert(src,"Are you sure you want to delete [log]?  This is irreversable!","Character Selection","Yes","No"))
			if("No")
				CharacterSelectionSetup(src)
				return 0
		delete_log(log)
		CharacterSelectionSetup(src)

	get_logs()
		var/savefile/S = new("saves/[ckey(key)].plt")
		return S.dir.Copy()

	delete_log(log)
		var/logname
		if(isnum(log)||length(log)==1)logname = "Adventure Log [log]"
		else logname = log
		var/savefile/S = new("saves/[ckey(key)].plt")
		S.dir.Remove(logname)