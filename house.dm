area
	house
		var
			owner = null
			housenumber = 0
			list/access = new/list()
			entermsg = "Welcome to a Lot!"
			exitmsg = "Come back soon!"

		house1
			housenumber = 1

		Enter(mob/player/P)
			if(P.key in src.access)
				P.verbs += typesof(/mob/house/verb/)
				P << src.entermsg
				P.inhouse = 1
				return 1
			else if(owner)
				P << "<font color = red>You have no access to this lot!</font>"
				return 0
			else
				buy(P)
				return 0

		Exit(mob/player/P)
			P.verbs -= typesof(/mob/house/verb/)
			P << src.exitmsg
			return 1

		proc/buy(mob/player/P)
			var/own = 0
			for(var/area/house/H in world)
				if(H.owner == P)
					own = 1
			if(own == 1)
				P << "You already own a house, therefore you cannot buy another one.  If you wish to sell your house, you must find someone to sell it to, then sell it to them."
				return
			if(P.gold >= 50000)
				P << "<font color = yellow>No one owns this lot.  If you wish, you can buy it.  It is only 50,000 Gold."
				switch(alert(P,"Do you wish to buy this lot?  50,000 Gold.","Lot Purchasing","Yes","No"))
					if("Yes")
						switch(alert(P,"Are you sure?","House Purchasing","Yes","No"))
							if("Yes")
								src.owner = P.key
								src.access += P.key
								P.gold -= 50000
								world << "<font color = yellow>[P] has purchased Lot [src.housenumber]!"
							else
								return 0
					else
						return 0
			else
				P << "<font color = yellow>This lot is vaccant.  Unfortunatly though, you do not have enough Gold to purchase it for yourself.  Come back with 50,000 Gold."
				return 0
mob
	house
		verb
			Enter_Message()
				var/msg = input("What would you like your Enterance Message to be for your Lot?","Lot Stuff") as text
				for(var/area/house/H in world)
					if(H.owner == src.key)
						H.entermsg = msg
				src << "Enterance Message Changed."

			Leave_Message()
				var/msg = input("What would you like your Leaving Message to be for your Lot?","Lot Stuff") as text
				for(var/area/house/H in world)
					if(H.owner == src.key)
						H.exitmsg = msg
				src << "Leaving Message Changed."

			Add_Access()
				var/list/users
				for(var/mob/player/P in world)
					if(P.client)
						users += P.key
				if(src.key in users)users -= src.key
				for(var/area/house/H in world)
					for(var/P in users)
						if(P in H.access)
							users -= P
				if(users.len <= 0)
					src << "Everyone who is online is already added to your Access list."
					return
				var/add = input("Who would you like to add to your Access list from the list below?","Lot Stuff") in users
				for(var/area/house/H in world)
					if(H.owner == src.key)
						H.access += add
				src << "[add] has been added to your Access list."

			Remove_Access()
				var/list/users
				for(var/area/house/H in world)
					if(H.owner == src.key)
						for(var/P in H.access)
							users += P
				if(src.key in users)users -= src.key
				if(users.len <= 0)
					src << "There is no one in your Access list besides yourself."
					return
				var/sub = input("Who would you like to remove from your Access list from the list below?","Lot Stuff") in users
				for(var/area/house/H in world)
					if(H.owner == src.key)
						H.access -= sub
				src << "[sub] has been removed from your Access list."

obj
	house
		var
			sx
			sy
			sz
		icon = 'turfs.dmi'
		wall
			name = "Wall"
			icon_state = "wall"
			density = 1
		walledge
			name = "Wall"
			icon_state = "walledge"
			density = 1
		wallb
			name = "Wall"
			icon_state = "blackwall"
			density = 1
		walledgeb
			name = "Wall"
			icon_state = "blackwalledge"
			density = 1
		water
			name = "Water"
			icon_state = "water"
			density = 1
		path
			name = "Path"
			icon_state = "path"
		cobblered
			name = "Cobble"
			icon_state = "redcobble"
		cobbleblue
			name = "Cobble"
			icon_state = "bluecobble"
		cobbleblack
			name = "Cobble"
			icon_state = "blackcobble"
		cobblewhite
			name = "Cobble"
			icon_state = "whitecobble"
		cobblegreen
			name = "Cobble"
			icon_state = "greencobble"
		cobblepurple
			name = "Cobble"
			icon_state = "purplecobble"
		brush
			name = "Brush"
			icon_state = "brush"
		grass1
			name = "Grass"
			icon_state = "grass1"
		grass2
			name = "Grass"
			icon_state = "grass2"

		verb
			Drop()
				set category = "Other"
				if(usr.inhouse == 0)
					return 0
				if(usr.islocked == 1)
					return 0
				switch(alert("Are you sure this is where you would like to drop this Lot Item?  You will NOT be able to pick it up again!","Drop Confirmation","Yes","No"))
					if("Yes")
						src.loc = usr.loc
						for(var/turf/t in world)
							if(t.loc == src.loc)
								del t
								return
						for(var/obj/house/h in world)
							if(h.loc == src.loc)
								del h
								return
					else
						return 0

/*
Simple Housing System
created by Loduwijk
May 2006

If you will be using save_houses/load_houses functions you must define and set a variable
called house_file. This tells it where to save the file and what to call it.
Example:*/
var/house_file = "house.sav"

/*Houses are of type /area/house, and house objects can be spread around wherever you want on the map.
The houses list must contain all the instances of /area/house objects.
save_houses does just what it sounds like
load_houses does too, though with a parameter
	if a true value is sent to load_houses, it deletes houses currently on the map before loading
	if false value is passed to load_houses, it leaves existing houses alone; this can cause problems
	the argument defaults to 1 (true)
transfer_house takes a list of turfs and gives them to a house; this can be used in various ways
	if the second argument is an instance of /area/house, it gives the turfs to that house
	if the second argument is a text string, it a new house, named after the argument, the turfs
	either way, the function returns whatever house was given the turfs
	as it returns the house, you can leave the second argument null and modify a new house from elsewhere
	the main uses of transfer_house are:
		split one house into two smaller houses
		give part of one house to another house
		combine two houses into one house
		expand a house
	if your house objects have ties to other objects (are owned by players, for instance), you can use
	  this function to just reset those ties to default by calling transfer_house(house.contents)

This does not have to be used just for houses; it can be used for anything that needs to keep track
of a variable number of areas which can move, merge, seperate, and/or possibly need to be saved.
*/

var/list/houses[0]
proc/save_houses()
	for(var/obj/house/H in world)
		H.sx = H.x
		H.sy = H.y
		H.sz = H.z
	var/savefile/S = new(house_file)
	var/list/house_setup[0]
	for(var/area/house/A in houses)
		house_setup[A] = A.save_setup()
	S << houses
	for(var/area/house/A in houses)
		A.save_complete(house_setup[A])

proc/load_houses(reset_current = 1)
	if(reset_current)
		for(var/area/house/A)
			del(A)
	var/savefile/S = new(house_file)
	S >> houses
	if(!houses) houses = new
	add_dmp_houses()
	for(var/obj/house/H in world)
		H.x = H.sx
		H.y = H.sy
		H.z = H.sz

proc/add_dmp_houses()
	for(var/area/house/A)
		if(A in houses) continue
		if(!A.contents.len) continue
		houses += A

area/house
	proc
		save_setup()
			var/list/players[0]
			for(var/mob/M in contents)
				if(M.client)
					players[M] = M.loc
					M.loc = null
			return players
		save_complete(list/players)
			for(var/mob/M in players)
				M.loc = players[M]
	Del()
		houses.Remove(src)
		var/area/A = locate()
		for(var/turf/T in contents)
			A.contents += T
		..()
proc
	transfer_house(list/target_area, x)
	//x can be either a text string or an instance of an /area/house
	//if x is a text string, A will be created as a new house for the area, and will be named x
	//if x is an instance of /area/house, A will be set to it
		var/area/house/A
		if(isarea(x))
			A = x
		else
			A = new
			if(istext(x))
				A.name = x
		for(var/turf/T in target_area)
			A.contents += T
		return A