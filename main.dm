//Debugging
#define DEBUG
//Character Moving (So you cannot move insanly fast, 0.2 second delay.)
client
	perspective = EDGE_PERSPECTIVE
	var/moving=0
	Move()
		if(!moving)
			moving=1
			.=..()
			sleep(2)
			moving=0
		else
			return 0


//Auto Reboot
proc
	AutoReboot()
		spawn(264000)
			world << "<font color = teal><font size = 4><b>The world will reboot in 10 minutes!</font>"
			sleep(3000)
			world << "<font color = teal><font size = 4><b>The world will reboot in 5 minutes!</font>"
			sleep(2400)
			world << "<font color = teal><font size = 4><b>The world will reboot in 1 minute!</font>"
			sleep(600)
			world << "<font color = teal><font size = 4><b>The world is rebooting!</font>"
			world.Reboot()

//Auto Saving (Objs and Players) (Obj is disabled until fixed.)
//proc
//	AutoSaveObjs()
//		sleep(6000)
//		SaveObjects()
//		spawn(1)
//			AutoSaveObjs()

proc
	AutoSave()
		sleep(600)
		for(var/mob/player/m in world)
			if(m && m.client)
				m.saveme(m.log)
		world << "Players saved."
		spawn(600)
			AutoSave()

//World "Repop" (Recreation of everything deleted since last "repop".)
proc
	Repopcall()
		spawn
		while(1)
			sleep(300)
			for(var/obj in world)
			for(var/mob/M in world)
				sleep(300)
				world.Repop()

//Player Count
client/New()
	..()
	global.players+=1

//World Creation
world/New()
	..()
	//world.log="Runtime.txt" // World Log - Off for testing until Public Version comes out.
	load_houses(0)
	Repopcall()
	AutoSave()
	AutoReboot()

world/Del()
	save_houses()
	..()

//World Declarations
world
	mob = /mob/players/creation
	view = 8
	name = "Slime Journey II: Revised(Private Testing)"
	status = "Version 0"
	hub = "Polantaris.SlimeJourney2RevisedTheRetrieversGuild"
	hub_password = "Parabaarais"

//Client Coloring (Text main color.)
client
	script = "<STYLE>BODY {background: black; color: #66CC66}</STYLE>"

//Main Player Login
mob
	Login()
		..()
		world << "\icon[usr] <font color = teal>[html_encode(src.name)]([src.key]) logs in."
		src.om = -10000
		src.oh = -10000
		for(var/obj/O in src.battlelist)
			del(O)
		for(var/obj/O in src.textlist)
			del(O)
		for(var/obj/O in src.chooselist)
			del(O)
		if(src.arrows)del(src.arrows)
		CheckBan(src)
		//Log IP
		var/ips = file("ip.txt")
		var/ips2 = file("keysip.txt")
		if(!(src.key in ips2))
			ips << "[src.key]'s IP is [src.client.address]!"
			ips2 << src.key
		//People who are perminatly banned, no exceptions.  Their keys go here.
		if(src.key == "Communist Marx")
			del(src)
			return
		//GM Check
		else if(src.key == "Polantaris")
			src.Owner_Commands()
	//	else if(src.key == "Corrandon")
	//		src.Host_Commands()
		//If GM, Give GM Message
		if(src.Admin == 1)
			src << "GM Note:  Abusal of Power = Removal of Power.  You are welcome to change your icon, but do not make it something that is not a Slime.  NO EDITING STATS, PERIOD."
		src.loc = locate(src.savex, src.savey, src.savez)
		src.sight = 2
		src << "Welcome to Slime Journey II: The Retriever's Guild (Revised)!  Any questions or commends should be voiced to a GM or put on the forums (If we ever get stable forums)!"
		var/ab
		for(var/mob/monsters/M in world)
			ab += 1
		src << "There are [ab] monsters in the world at this time."
		src << ""
		src << "This version is 0."
		src.icon = 'slimes.dmi'
		if(src.loggedin == 0)
			var/a = alert("This is the first time you have logged on!  Do you wish to go to the Newbie Zone?","Newb Zone","Yes","No")
			if(a == "Yes")
				src.loggedin = 1
				src.loc = locate(2,6,1)
				src.savex = 2;src.savey = 6;src.savez = 1
			if(a == "No")
				src.loggedin = 1
				src.loc = locate(12,8,2)
				src.savex = 12;src.savey = 8;src.savez = 2
				src.CreateText(src,"You awaken.","''Ahhh, another beautiful day.","Time to go see what's","going on in town.''","",50)
		if(src.savex == 191 && src.savez == 2)
			src.savex = 12
			src.savey = 8
			src.savez = 2
/*Summon Stuff, Disabled because not implemented yet.
		if(src.monsterfollow != null)
			//var/mob/m = new src.monsterfollow.type(usr.x-1,usr.y,usr.z)
			new src.monsterfollow.type(src.x,src.y,src.z)
			AddVerbSummons()
			//src.monsterfollow = m
		if(src.monsterinparty)
			if(src.monsterinparty.x != 0)src.monsterinparty.x = 0*/
		src.verbs -= typesof(/mob/guild/verb)
		if(src.guild != "None!")
			src.verbs+=typesof(/mob/guild/verb)
		if(src.guildleader == src.key)
			src.verbs+=typesof(/mob/guild/leader/verb)
		src.cannottalk = 0
		src.monstersinbattle = 0
		src.inbattle = 0
		src.islocked = 0
		src.lib = 0
		if(src.level == "Cow")
			src.level = 1
		del(src.arrows)
		src.SuperEnd(src)

//Disable usage of diagnal keys.
client
	Northeast()return
	Northwest()return
	Southeast()return
	Southwest()return

//Players Leaving(Logout)
mob/player
	Logout()
		for(var/obj/O in src.battlelist)
			del(O)
		for(var/obj/O in src.textlist)
			del(O)
		for(var/obj/O in src.chooselist)
			del(O)
		if(src.arrows)del(src.arrows)
		if(!usr || !src)
			del(src)
			return
//		if(src.monsterfollow != null)
//			del(src.monsterfollow)
		if(src.libs == 1)
			for(var/mob/player/M in world)
				if(!M)
					return
		saveme(log)
		world << "<font color = teal>[html_encode(src.name)] logs out."
		del(src)

//Players Leaving(Client Disconnection)
client/Del()
	..()
	global.players-=1

/*mob
	Move()
		if(src.islocked == 1)
			return 0
		else
			return ..()*/