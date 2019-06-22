world
	mob = /mob
	turf = /turf

obj/var/locked = 0
area/housing
	var/owner = null
	var/price
	var/welcomemsg = "Welcome to your house."
	var/goodbyemsg = "Don't forget about me!"
	var/list/invited = list()
	var/needtochange = null
	house1
		price = 75000
		name = "House 1"
	house2
		price = 75000
		name = "House 2"
	house3
		price = 75000
		name = "House 3"
	house4
		price = 75000
		name = "House 4"
	house5
		price = 75000
		name = "House 5"
	house6
		price = 75000
		name = "House 6"
	house7
		price = 75000
		name = "House 7"
	house8
		price = 75000
		name = "House 8"
	house9
		price = 75000
		name = "House 9"
	house10
		price = 75000
		name = "House 10"
	house11
		price = 75000
		name = "House 11"
	house12
		price = 75000
		name = "House 12"
	house13
		price = 75000
		name = "House 13"
	house14
		price = 75000
		name = "House 14"
	house15
		price = 75000
		name = "House 15"
	house16
		price = 75000
		name = "House 16"
	house17
		price = 75000
		name = "House 17"
	house18
		price = 75000
		name = "House 18"
	house19
		price = 75000
		name = "House 19"
	house20
		price = 75000
		name = "House 20"
	house21
		price = 75000
		name = "House 21"
	house22
		price = 75000
		name = "House 22"
	house23
		price = 75000
		name = "House 23"
	house24
		price = 75000
		name = "House 24"
	house25
		price = 75000
		name = "House 25"
	house26
		price = 75000
		name = "House 26"
	house27
		price = 75000
		name = "House 27"
	house28
		price = 75000
		name = "House 28"
	house29
		price = 75000
		name = "House 29"
	house30
		price = 75000
		name = "House 30"
	house31
		price = 75000
		name = "House 31"
	house32
		price = 75000
		name = "House 32"
	house33
		price = 75000
		name = "House 33"
	house34
		price = 75000
		name = "House 34"
	house35
		price = 75000
		name = "House 35"
	house36
		price = 75000
		name = "House 36"
	house37
		price = 75000
		name = "House 37"
	house38
		price = 75000
		name = "House 38"
	house39
		price = 75000
		name = "House 39"
	house40
		price = 75000
		name = "House 40"
	house41
		price = 75000
		name = "House 41"
	house42
		price = 75000
		name = "House 42"
	house43
		price = 75000
		name = "House 43"
	house44
		price = 75000
		name = "House 44"
	house45
		price = 75000
		name = "House 45"
	house46
		price = 75000
		name = "House 46"
	house47
		price = 75000
		name = "House 47"
	house48
		price = 75000
		name = "House 48"
	house49
		price = 75000
		name = "House 49"
	house50
		price = 75000
		name = "House 50"
	house51
		price = 75000
		name = "House 51"
	house52
		price = 75000
		name = "House 52"
	house53
		price = 75000
		name = "House 53"
	house54
		price = 75000
		name = "House 54"
	house55
		price = 75000
		name = "House 55"
	house56
		price = 75000
		name = "House 56"
	house57
		price = 75000
		name = "House 57"
	house58
		price = 75000
		name = "House 58"
	house59
		price = 75000
		name = "House 59"
	house60
		price = 75000
		name = "House 60"
	house61
		price = 75000
		name = "House 61"
	house62
		price = 75000
		name = "House 62"
	house63
		price = 75000
		name = "House 63"
	house64
		price = 75000
		name = "House 64"

area/housing
	Enter(mob/a)
		if(ismob(a))
			if(istype(a,/mob/summons)) return 1
			if(a.key == src.owner)
				a << "<i><b>[src.welcomemsg]</i></b>"
				a.drophouseitems = 1
				return 1
			if(a.houseowned == src.name)
				a << "<i><b>[src.welcomemsg]</i></b>"
				a.drophouseitems = 1
				return 1
			else if(a.key in src.invited)
				a << "<i><b>[src.welcomemsg]</i></b>"
				return 1
			else
				if(src.owner == null)
					a << "<i><b>You don't own this house!  But since no one owns this house, if you talk to the House Buyer, you can buy it!  This is [src.name]!</font>"
				else
					a << "<i><b>You don't own this house!  [src.owner] owns this house!</font>"
					a << "<i><b>[src.welcomemsg]</i></b>"
					if(a.Admin == 1)
						a << "<i><b>This is a GM msg.  The House Number for this House is [src.name].</b></i>"
				return 0

	Exit(atom/movable/A)
		if(istype(A,/obj/summons))return 0
		.=..()

	Entered(mob/M)
		if(M.key == src.owner)
			if(ismob(M))M.verbs+=typesof(/mob/houseverbs/verb)
		if(ismob(M))M.verbs+=typesof(/mob/visitorhouseverbs/verb)

	Exited(mob/a)
		a << "<i><b>[src.goodbyemsg]</i></b>"
		if(a.key == src.owner)
			if(ismob(a))a.verbs-=typesof(/mob/houseverbs/verb)
		if(ismob(a))a.verbs-=typesof(/mob/visitorhouseverbs/verb)
		a.drophouseitems = 0

#define DEBUG

var/list/objs = list ()
obj
	var/lastx
	var/lasty
	var/lastz

//client/New()
//     Newobjs()
//     ..()
//client/Del()
//     Delobjs()
//     ..()

mob
	Houseppl
		icon = 'slimes.dmi'
		HouseTalker
			icon_state = "green"
			name = "House System Introducer"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = green> Hey!  If you are new here, I'll explain this whole system to you.  This is the House System, people can go to the House Warper, and look around at the houses there.  If you see a house you like, talk to the House Seller to buy a house. There are many special features to owning a House, but you'll have to figure it out for yourself!  At first, your house will be empty, but you can buy the stuff to put in it.  Have fun!"

		HouseFieldWarper
			icon_state = "blue"
			name = "House Warper"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
				//	if(global.housingon == 1)usr << "Sorry, the Housing System is disabled, I cannot warp you.";return
					usr.islocked = 1
					usr << "[src]: Any time you want to check out the houses we have for sale, or just want to go to your house, talk to me."
					switch(alert("Do you want to head to the houses?","House Warp?","Yes","No"))
						if("Yes")
							switch(alert("Which District?","Choose a House District!","District 1","District 2","-=Nevermind=-"))
								if("District 1")
									usr.housex = usr.x
									usr.housey = usr.y
									usr.housez = usr.z
									usr.loc=locate(16,15,2)
									if(usr.monsterfollow != null)
										usr.monsterfollow.loc = usr.loc
									usr << "<b><font color = olive>[src]:</b><font color = green> Seeya Later!"
									usr.housearea = 1
									usr.islocked = 0
								if("District 2")
									usr.housex = usr.x
									usr.housey = usr.y
									usr.housez = usr.z
									usr.loc=locate(16,15,50)
									if(usr.monsterfollow != null)
										usr.monsterfollow.loc = usr.loc
									usr.housearea = 1
									usr << "<b><font color = olive>[src]:</b><font color = green> Seeya Later!"
									usr.islocked = 0
								if("-=Nevermind=-")
									usr << "<b><font color = olive>[src]:</b><font color = green> Seeya Later!"
									usr.islocked = 0
						if("No")
							usr << "<b><font color = olive>[src]:</b><font color = green> Seeya Later!"
							usr.islocked = 0

		HouseFieldWarper2
			icon_state = "blue"
			name = "House Warper"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					usr.islocked = 1
					usr << "[src]: Anytime you want to head back, just give me a buzz."
					switch(alert("Do you want to head to the town?","Town Warp?","Yes","No"))
						if("Yes")
							usr.loc=locate(usr.housex,usr.housey,usr.housez)
							if(usr.monsterfollow != null)
								usr.monsterfollow.loc = usr.loc
							usr << "<b><font color = olive>[src]:</b><font color = green> Seeya Later!"
							usr.islocked = 0
							usr.housearea = 1
						if("No")
							usr << "<b><font color = olive>[src]:</b><font color = green> Seeya Later!"
							usr.islocked = 0

		Housesell
			icon_state = "metal"
			name = "House Seller"
			Click()
				if(src in oview(1))Converse()
			verb/Converse()
				set category = "Other"
				set src in view(2)
			//	if(global.housingon == 1)usr << "Sorry, the Housing System is disabled, I cannot sell you things.";return
				usr.islocked = 1
				usr << "[src]: I sell houses to you."
				var/list/houses = new/list()
				for(var/area/housing/h in world)
					if(!h.owner) houses += h
				var/h = input("Which house would you like to buy?  Note that Houses 1 - 47 are in District 1, the rest are in District 2.")in houses+"-=Nevermind=-"
				if(h == "-=Nevermind=-")
					usr.islocked = 0
					return
				for(var/area/housing/a in world)
					if(h == a)
						if(alert("This house is [a.price], do you still want it?","Buy a House","Yes","No")=="Yes")
							if(usr.gold <= a.price)
								usr << "[src]: You cheap bastard!  You don't have enough money!"
							else if(usr.ownerhouse == 1)
								usr << "[src]: Sorry, I cannot sell you more than 1 house.  Go sell your old one to someone else."
							else
								usr << "<b><font color = olive>[src]:</b><font color = green> You now own a house!  Go find it and live in it!"
								a.owner = usr.key
								usr.gold -= a.price
								usr.ownerhouse = 1
								usr.islocked = 0
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> If you change your mind, come back later!  Just remember, someone else might buy your house!"
							usr.islocked = 0

		housesellersell
			icon_state = "gold"
			name = "House NPC Seller"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					//if(global.housingon == 1)usr << "Sorry, the Housing System is disabled, I cannot sell you things.";return
					usr.islocked = 1
					switch(input("House NPC Seller: I am the House NPC Seller.  I sell the souls of the NPCs that you can hire in your house.  While they are REALLY expensive, they are really useful, and everything they sell is a lot cheaper than in the stores.  So they will be useful.  Pick which ever you need or want.","Buy House NPCs") in list("-=Cancel=-","Raw Meat Seller - 5,000,000 Gold","Raw Noodle Seller - 7,500,000 Gold","Bucket Seller - 1,500,000 Gold"))
						if("-=Cancel=-")
							usr.islocked = 0
							return
						if("Raw Meat Seller - 5,000,000 Gold")
							if(usr.gold >= 5000000)
								usr << "<b><font color = olive>[src]:</b><font color = green> Here is his soul, place it where you want him to be and his soul will be re-inhabited by his body."
								usr.gold -= 5000000
								new /obj/house_items/MeatSeller (usr)
							else
								usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
						if("Raw Noodle Seller - 7,500,000 Gold")
							if(usr.gold >= 7500000)
								usr << "<b><font color = olive>[src]:</b><font color = green> Here is his soul, place it where you want him to be and his soul will be re-inhabited by his body."
								usr.gold -= 7500000
								new /obj/house_items/NoodleSeller (usr)
							else
								usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
						if("Bucket Seller - 1,500,000 Gold")
							if(usr.gold >= 1500000)
								usr << "<b><font color = olive>[src]:</b><font color = green> Here is his soul, place it where you want him to be and his soul will be re-inhabited by his body."
								usr.gold -= 1500000
								new /obj/house_items/BucketSeller (usr)
							else
								usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
					usr.islocked = 0


		houseitemsell
			icon_state = "pink"
			name = "House Item Seller"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
				//	if(global.housingon == 1)usr << "Sorry, the Housing System is disabled, I cannot sell you things.";return
					usr.islocked = 1
					switch(input("House Item Seller: I sell your house's needs.  Because you buy an empty house, you can buy the items for the house from me!  This of course allows for more customization of your own special house.  So, do you want to buy from me?") in list("Yes","No"))
						if("Yes")
							switch(input("House Item Seller: What do you wanna buy?") in list("Bed - 5,000 Gold","Wood Table - 5,000 Gold","Wood Chair - 2,500 Gold","Wood Set - 12,000 Gold","Cloth Table - 10,000 Gold","Cloth Chair - 5,000 Gold","Cloth Set - 25,000 Gold","Stove - 75,000 Gold","Sink - 50,000 Gold","Dresser - 25,000 Gold","Wall - 15,000 Gold","Wall Edge - 15,000 Gold","Wall And Edge - 25,000 Gold","Grass Type 1 - 2,500 Gold","5 Grass Type 1 - 10,000 Gold","Grass Type 2 - 2,500 Gold","5 Grass Type 2 - 10,000 Gold","Brush - 3,000 Gold","5 Brush - 12,000 Gold","Fence - 5,000 Gold","5 Fences - 20,000 Gold","Tree - 5,000 Gold","5 Trees - 20,000 Gold","Water - 5,000 Gold","5 Waters - 20,000 Gold","Door - 5,000 Gold","Black Cobble - 10,000 Gold","White Cobble - 10,000 Gold","Red Cobble - 10,000 Gold","Light Red Cobble - 10,000 Gold","Blue Cobble - 10,000 Gold","Purple Cobble - 10,000 Gold","Green Cobble - 10,000 Gold","Nothing"))
								if("Bed - 5,000 Gold")
									if(usr.gold >= 5000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here are the Bed parts.  Enjoy!"
										usr.gold -= 5000
										new /obj/house_items/BedLeft (usr)
										new /obj/house_items/BedRight (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Wood Table - 5,000 Gold")
									if(usr.gold >= 5000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Wood Table.  Enjoy!"
										usr.gold -= 5000
										new /obj/house_items/WoodTable (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Wood Chair - 2,500 Gold")
									if(usr.gold >= 2500)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Wood Chair.  Enjoy!"
										usr.gold -= 2500
										new /obj/house_items/WoodChair (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Wood Set - 12,000 Gold")
									if(usr.gold >= 12000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Wood Set.  Enjoy!"
										usr.gold -= 12000
										new /obj/house_items/WoodTable (usr)
										new /obj/house_items/WoodChair (usr)
										new /obj/house_items/WoodChair (usr)
										new /obj/house_items/WoodChair (usr)
										new /obj/house_items/WoodChair (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Cloth Table - 10,000 Gold")
									if(usr.gold >= 10000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Cloth Table.  Enjoy!"
										usr.gold -= 10000
										new /obj/house_items/ClothTable (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Cloth Chair - 5,000 Gold")
									if(usr.gold >= 5000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Cloth Chair.  Enjoy!"
										usr.gold -= 5000
										new /obj/house_items/ClothChair (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Cloth Set - 25,000 Gold")
									if(usr.gold >= 25000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Cloth Set.  Enjoy!"
										usr.gold -= 25000
										new /obj/house_items/ClothTable (usr)
										new /obj/house_items/ClothChair (usr)
										new /obj/house_items/ClothChair (usr)
										new /obj/house_items/ClothChair (usr)
										new /obj/house_items/ClothChair (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Stove - 75,000 Gold")
									if(usr.gold >= 75000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Stove.  Enjoy!"
										usr.gold -= 75000
										new /obj/house_items/Stove (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Sink - 50,000 Gold")
									if(usr.gold >= 50000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Sink.  Enjoy!"
										usr.gold -= 50000
										new /obj/house_items/Sink (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Dresser - 25,000 Gold")
									if(usr.gold >= 25000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Dresser.  Enjoy!"
										usr.gold -= 25000
										new /obj/house_items/Dresser (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Wall - 15,000 Gold")
									if(usr.gold >= 15000)
										usr.gold -= 15000
										switch(alert("What type?","Wall type!","Green Wall","Ice Wall"))
											if("Green Wall")
												usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Wall.  Enjoy!"
												new /obj/house_items/Wall (usr)
											if("Ice Wall")
												usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Wall.  Enjoy!"
												new /obj/house_items/IceWall (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Wall Edge - 15,000 Gold")
									if(usr.gold >= 15000)
										usr.gold -= 15000
										switch(alert("What type?","Wall type!","Green Wall","Ice Wall"))
											if("Green Wall")
												usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Wall Edge.  Enjoy!"
												new /obj/house_items/Wall_Edge (usr)
											if("Ice Wall")
												usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Wall Edge.  Enjoy!"
												new /obj/house_items/IceWall_Edge (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Wall And Edge - 25,000 Gold")
									if(usr.gold >= 25000)
										usr.gold -= 25000
										switch(alert("What type?","Wall type!","Green Wall","Ice Wall"))
											if("Green Wall")
												new /obj/house_items/Wall (usr)
												new /obj/house_items/Wall_Edge (usr)
												usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Wall And Wall Edge.  Enjoy!"
											if("Ice Wall")
												usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Wall And Wall Edge.  Enjoy!"
												new /obj/house_items/IceWall_Edge (usr)
												new /obj/house_items/IceWall (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Grass Type 1 - 2,500 Gold")
									if(usr.gold >= 2500)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Type 1 Grass.  Enjoy!"
										usr.gold -= 25000
										new /obj/house_items/Grass1 (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("5 Grass Type 1 - 10,000 Gold")
									if(usr.gold >= 10000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here are the 5 Type 1 Grass.  Enjoy!"
										usr.gold -= 10000
										new /obj/house_items/Grass1 (usr)
										new /obj/house_items/Grass1 (usr)
										new /obj/house_items/Grass1 (usr)
										new /obj/house_items/Grass1 (usr)
										new /obj/house_items/Grass1 (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Grass Type 2 - 2,500 Gold")
									if(usr.gold >= 2500)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Type 2 Grass.  Enjoy!"
										usr.gold -= 2500
										new /obj/house_items/Grass2 (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("5 Grass Type 2 - 10,000 Gold")
									if(usr.gold >= 10000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here are the 5 Type 2 Grass.  Enjoy!"
										usr.gold -= 10000
										new /obj/house_items/Grass2 (usr)
										new /obj/house_items/Grass2 (usr)
										new /obj/house_items/Grass2 (usr)
										new /obj/house_items/Grass2 (usr)
										new /obj/house_items/Grass2 (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Brush - 3,000 Gold")
									if(usr.gold >= 3000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Brush.  Enjoy!"
										usr.gold -= 3000
										new /obj/house_items/Brush (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("5 Brush - 12,000 Gold")
									if(usr.gold >= 12000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here are the 5 Brush.  Enjoy!"
										usr.gold -= 12000
										new /obj/house_items/Brush (usr)
										new /obj/house_items/Brush (usr)
										new /obj/house_items/Brush (usr)
										new /obj/house_items/Brush (usr)
										new /obj/house_items/Brush (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Fence - 5,000 Gold")
									if(usr.gold >= 5000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Fence.  Enjoy!"
										usr.gold -= 5000
										new /obj/house_items/Fence (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("5 Fences - 20,000 Gold")
									if(usr.gold >= 20000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here are the 5 Fences.  Enjoy!"
										usr.gold -= 20000
										new /obj/house_items/Fence (usr)
										new /obj/house_items/Fence (usr)
										new /obj/house_items/Fence (usr)
										new /obj/house_items/Fence (usr)
										new /obj/house_items/Fence (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Tree - 5,000 Gold")
									if(usr.gold >= 5000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Tree.  Enjoy!"
										usr.gold -= 5000
										new /obj/house_items/Tree (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Water - 5,000 Gold")
									if(usr.gold >= 5000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Water.  Enjoy!"
										usr.gold -= 5000
										new /obj/house_items/Water (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("5 Trees - 20,000 Gold")
									if(usr.gold >= 20000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here are the 5 Trees.  Enjoy!"
										usr.gold -= 20000
										new /obj/house_items/Tree (usr)
										new /obj/house_items/Tree (usr)
										new /obj/house_items/Tree (usr)
										new /obj/house_items/Tree (usr)
										new /obj/house_items/Tree (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("5 Waters - 20,000 Gold")
									if(usr.gold >= 20000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here are the 5 Water.  Enjoy!"
										usr.gold -= 20000
										new /obj/house_items/Water (usr)
										new /obj/house_items/Water (usr)
										new /obj/house_items/Water (usr)
										new /obj/house_items/Water (usr)
										new /obj/house_items/Water (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Door - 5,000 Gold")
									if(usr.gold >= 5000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Door.  Enjoy!"
										usr.gold -= 5000
										var/obj/house_items/A = new /obj/house_items/Door (usr)
										A.owner = usr.key
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Black Cobble - 10,000 Gold")
									if(usr.gold >= 10000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Door.  Enjoy!"
										usr.gold -= 10000
										new /obj/house_items/BlackCobble (usr)
										new /obj/house_items/BlackCobble (usr)
										new /obj/house_items/BlackCobble (usr)
										new /obj/house_items/BlackCobble (usr)
										new /obj/house_items/BlackCobble (usr)
										new /obj/house_items/BlackCobble (usr)
										new /obj/house_items/BlackCobble (usr)
										new /obj/house_items/BlackCobble (usr)
										new /obj/house_items/BlackCobble (usr)
										new /obj/house_items/BlackCobble (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("White Cobble - 10,000 Gold")
									if(usr.gold >= 10000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Door.  Enjoy!"
										usr.gold -= 10000
										new /obj/house_items/WhiteCobble (usr)
										new /obj/house_items/WhiteCobble (usr)
										new /obj/house_items/WhiteCobble (usr)
										new /obj/house_items/WhiteCobble (usr)
										new /obj/house_items/WhiteCobble (usr)
										new /obj/house_items/WhiteCobble (usr)
										new /obj/house_items/WhiteCobble (usr)
										new /obj/house_items/WhiteCobble (usr)
										new /obj/house_items/WhiteCobble (usr)
										new /obj/house_items/WhiteCobble (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Red Cobble - 10,000 Gold")
									if(usr.gold >= 10000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Door.  Enjoy!"
										usr.gold -= 10000
										new /obj/house_items/RedCobble (usr)
										new /obj/house_items/RedCobble (usr)
										new /obj/house_items/RedCobble (usr)
										new /obj/house_items/RedCobble (usr)
										new /obj/house_items/RedCobble (usr)
										new /obj/house_items/RedCobble (usr)
										new /obj/house_items/RedCobble (usr)
										new /obj/house_items/RedCobble (usr)
										new /obj/house_items/RedCobble (usr)
										new /obj/house_items/RedCobble (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Blue Cobble - 10,000 Gold")
									if(usr.gold >= 10000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Door.  Enjoy!"
										usr.gold -= 10000
										new /obj/house_items/BlueCobble (usr)
										new /obj/house_items/BlueCobble (usr)
										new /obj/house_items/BlueCobble (usr)
										new /obj/house_items/BlueCobble (usr)
										new /obj/house_items/BlueCobble (usr)
										new /obj/house_items/BlueCobble (usr)
										new /obj/house_items/BlueCobble (usr)
										new /obj/house_items/BlueCobble (usr)
										new /obj/house_items/BlueCobble (usr)
										new /obj/house_items/BlueCobble (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Light Red Cobble - 10,000 Gold")
									if(usr.gold >= 10000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Door.  Enjoy!"
										usr.gold -= 10000
										new /obj/house_items/FireCobble (usr)
										new /obj/house_items/FireCobble (usr)
										new /obj/house_items/FireCobble (usr)
										new /obj/house_items/FireCobble (usr)
										new /obj/house_items/FireCobble (usr)
										new /obj/house_items/FireCobble (usr)
										new /obj/house_items/FireCobble (usr)
										new /obj/house_items/FireCobble (usr)
										new /obj/house_items/FireCobble (usr)
										new /obj/house_items/FireCobble (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Purple Cobble - 10,000 Gold")
									if(usr.gold >= 10000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Door.  Enjoy!"
										usr.gold -= 10000
										new /obj/house_items/PurpleCobble (usr)
										new /obj/house_items/PurpleCobble (usr)
										new /obj/house_items/PurpleCobble (usr)
										new /obj/house_items/PurpleCobble (usr)
										new /obj/house_items/PurpleCobble (usr)
										new /obj/house_items/PurpleCobble (usr)
										new /obj/house_items/PurpleCobble (usr)
										new /obj/house_items/PurpleCobble (usr)
										new /obj/house_items/PurpleCobble (usr)
										new /obj/house_items/PurpleCobble (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Green Cobble - 10,000 Gold")
									if(usr.gold >= 10000)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here is the Door.  Enjoy!"
										usr.gold -= 10000
										new /obj/house_items/GreenCobble (usr)
										new /obj/house_items/GreenCobble (usr)
										new /obj/house_items/GreenCobble (usr)
										new /obj/house_items/GreenCobble (usr)
										new /obj/house_items/GreenCobble (usr)
										new /obj/house_items/GreenCobble (usr)
										new /obj/house_items/GreenCobble (usr)
										new /obj/house_items/GreenCobble (usr)
										new /obj/house_items/GreenCobble (usr)
										new /obj/house_items/GreenCobble (usr)
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Get out of here, you cheap bastard!  Come back when you have enough money!"
								if("Nothing")
									usr << "<b><font color = olive>[src]:</b><font color = green>Seeya later..."
						if("No")
							usr << "<b><font color = olive>[src]:</b><font color = green> Seeya Later!"
					usr.islocked = 0

obj/house_items/var/owner = null

obj
	house_items
		verb
			Drop()
				set category = "Other"
				usr.islocked = 1
				if(usr.drophouseitems == 1)
					switch(alert("Once you drop this, you will NEVER be able to get it again!  Are you sure you want to drop it here?","Drop?","Yes","No"))
						if("Yes")
							if(usr.z == 2||usr.z == 50)
								usr << "<i>You steadly place the [src.name]!</i>"
								src.loc = locate(usr.x,usr.y,usr.z)
								usr.islocked = 0
								src.dropped = 1
							else
								world << "[usr]([usr.key]) has been caught dropping house items in Illegal places.  He has been banned.  Have a nice day.  Just as a note...All your base are belong to us now..."
								usr.BanSomeone(usr)
								del(usr)
						if("No")
							usr << "<i>You decide not to put the [src.name] here.</i>"
							usr.islocked = 0
				else
					usr << "You cannot drop house items outside of your house!"
				usr.islocked = 0
		var
			ownerkey = null
			ownername = null

		BlueCobble
			name = "Cobble"
			icon = 'turfs.dmi'
			icon_state = "bluecobble"
			layer = 2

		RedCobble
			name = "Cobble"
			icon = 'turfs.dmi'
			icon_state = "redcobble"
			layer = 2

		BlackCobble
			name = "Cobble"
			icon = 'turfs.dmi'
			icon_state = "blackcobble"
			layer = 2

		FireCobble
			name = "Cobble"
			icon = 'turfs.dmi'
			icon_state = "firecobble"
			layer = 2

		WhiteCobble
			name = "Cobble"
			icon = 'turfs.dmi'
			icon_state = "whitecobble"
			layer = 2

		PurpleCobble
			name = "Cobble"
			icon = 'turfs.dmi'
			icon_state = "purplecobble"
			layer = 2

		GreenCobble
			name = "Cobble"
			icon = 'turfs.dmi'
			icon_state = "greencobble"
			layer = 2

		BedLeft
			name = "Bed"
			icon = 'turfs.dmi'
			icon_state = "bedl"
			density = 1

		BedRight
			name = "Bed"
			icon = 'turfs.dmi'
			icon_state = "bedr"
			density = 0
			DblClick()
				if(src in oview(1))Sleep()
			verb
				Sleep()
					set category = "Other"
					if(src.dropped == 0)
						usr << "<i>You would be able to get to sleep, but you can't sleep in yourself!"
						return
					else
						set src in view(0)
						usr.islocked = 1
						usr << "<i>You get into bed and start to take a rest."
						usr.sight = 0
						sleep(150)
						usr.sight = 2
						usr << "<i>When you awaken, you are fully regenerated!"
						usr.hp = usr.maxhp
						usr.mp = usr.maxmp
						if(usr.monsterinparty)
							usr.monsterinparty.hp = usr.monsterinparty.maxhp
							usr.monsterinparty.mp = usr.monsterinparty.maxmp
						usr.islocked = 0

		WoodTable
			name = "Wooden Table"
			icon = 'turfs.dmi'
			icon_state = "woodtable"
			density = 1

		WoodChair
			name = "Wooden Chair"
			icon = 'turfs.dmi'
			icon_state = "woodchair"

		ClothTable
			name = "Clothed Table"
			icon = 'turfs.dmi'
			icon_state = "table"
			density = 1

		ClothChair
			name = "Normal Chair"
			icon = 'turfs.dmi'
			icon_state = "chair"

		Stove
			name = "Stove"
			icon = 'turfs.dmi'
			icon_state = "stove"
			density = 1
			DblClick()
				if(src in oview(1))Use()
			verb
				Use()
					set category = "Other"
					set src in view(1)
					if(src.dropped == 0)return
					var/c = input("What do you want to cook?","Cook Food") in usr.contents
					if(istype(c,/obj/Food/Tiny_Meat))
						for(var/obj/Food/Tiny_Meat/O in usr)
							var/obj/NormalItems/Bucket_Water/water=locate()in usr
							if(water)
								del(O);del(water);new/obj/Food/Cooked_Tiny_Meat(usr)
								usr << "Using your Bucket Filled with Water, and your Raw Tiny Meat, you have created Cooked Tiny Meat.  The bucket had to be disposed..."
								return
							else
								usr << "You do not have the required items to cook this item."
								break
					if(istype(c,/obj/Food/Small_Meat))
						for(var/obj/Food/Small_Meat/O in usr)
							var/obj/NormalItems/Bucket_Water/water=locate()in usr
							if(water)
								del(O);del(water);new/obj/Food/Cooked_Small_Meat(usr)
								usr << "Using your Bucket Filled with Water, and your Raw Small Meat, you have created Cooked Small Meat.  The bucket had to be disposed..."
								return
							else
								usr << "You do not have the required items to cook this item."
								break
					if(istype(c,/obj/Food/Meat))
						for(var/obj/Food/Meat/O in usr)
							var/obj/NormalItems/Bucket_Water/water=locate()in usr
							if(water)
								del(O);del(water);new/obj/Food/Cooked_Meat(usr)
								usr << "Using your Bucket Filled with Water, and your Raw Meat, you have created Cooked Meat.  The bucket had to be disposed..."
								return
							else
								usr << "You do not have the required items to cook this item."
								break
					if(istype(c,/obj/Food/Large_Meat))
						for(var/obj/Food/Large_Meat/O in usr)
							var/obj/NormalItems/Bucket_Water/water=locate()in usr
							if(water)
								del(O);del(water);new/obj/Food/Cooked_Large_Meat(usr)
								usr << "Using your Bucket Filled with Water, and your Raw Large Meat, you have created Cooked Large Meat.  The bucket had to be disposed..."
								return
							else
								usr << "You do not have the required items to cook this item."
								break
					if(istype(c,/obj/Food/Big_Meat))
						for(var/obj/Food/Big_Meat/O in usr)
							var/obj/NormalItems/Bucket_Water/water=locate()in usr
							if(water)
								del(O);del(water);new/obj/Food/Cooked_Big_Meat(usr)
								usr << "Using your Bucket Filled with Water, and your Raw Big Meat, you have created Cooked Big Meat.  The bucket had to be disposed..."
								return
							else
								usr << "You do not have the required items to cook this item."
								break
					if(istype(c,/obj/Food/Huge_Meat))
						for(var/obj/Food/Huge_Meat/O in usr)
							var/obj/NormalItems/Bucket_Water/water=locate()in usr
							if(water)
								del(O);del(water);new/obj/Food/Cooked_Huge_Meat(usr)
								usr << "Using your Bucket Filled with Water, and your Raw Huge Meat, you have created Cooked Huge Meat.  The bucket had to be disposed..."
								return
							else
								usr << "You do not have the required items to cook this item."
								break
					if(istype(c,/obj/Food/Gigantic_Meat))
						for(var/obj/Food/Gigantic_Meat/O in usr)
							var/obj/NormalItems/Bucket_Water/water=locate()in usr
							if(water)
								del(O);del(water);new/obj/Food/Cooked_Gigantic_Meat(usr)
								usr << "Using your Bucket Filled with Water, and your Raw Gigantic Meat, you have created Cooked Gigantic Meat.  The bucket had to be disposed..."
								return
							else
								usr << "You do not have the required items to cook this item."
								break
					if(istype(c,/obj/Food/Small_Package_Noodles))
						for(var/obj/Food/Small_Package_Noodles/O in usr)
							var/obj/NormalItems/Bucket_Water/water=locate()in usr
							if(water)
								del(O);del(water);new/obj/Food/Cooked_Small_Package_Noodles(usr)
								usr << "Using your Bucket Filled with Water, and your Raw Small Package of Noodles, you have created Cooked Small Noodles.  The bucket had to be used for the Noodles, and you know it will be useless afterwards..."
								return
							else
								usr << "You do not have the required items to cook this item."
								break
					if(istype(c,/obj/Food/Package_Noodles))
						for(var/obj/Food/Package_Noodles/O in usr)
							var/obj/NormalItems/Bucket_Water/water=locate()in usr
							if(water)
								del(O);del(water);new/obj/Food/Cooked_Package_Noodles(usr)
								usr << "Using your Bucket Filled with Water, and your Raw Package of Noodles, you have created Cooked Noodles.  The bucket had to be used for the Noodles, and you know it will be useless afterwards..."
								return
							else
								usr << "You do not have the required items to cook this item."
								break
					if(istype(c,/obj/Food/Large_Package_Noodles))
						for(var/obj/Food/Large_Package_Noodles/O in usr)
							var/obj/NormalItems/Bucket_Water/water=locate()in usr
							if(water)
								del(O);del(water);new/obj/Food/Cooked_Large_Package_Noodles(usr)
								usr << "Using your Bucket Filled with Water, and your Raw Large Package of Noodles, you have created Cooked Large Noodles.  The bucket had to be used for the Noodles, and you know it will be useless afterwards..."
								return
							else
								usr << "You do not have the required items to cook this item."
								break
					if(istype(c,/obj/Food/Overly_Sized_Package_Noodles))
						for(var/obj/Food/Overly_Sized_Package_Noodles/O in usr)
							var/obj/NormalItems/Bucket_Water/water=locate()in usr
							if(water)
								del(O);del(water);new/obj/Food/Cooked_Overly_Sized_Package_Noodles(usr)
								usr << "Using your Bucket Filled with Water, and your Raw Overly Sized Package of Noodles, you have created Cooked Overly Sized Noodles.  The bucket had to be used for the Noodles, and you know it will be useless afterwards..."
								return
							else
								usr << "You do not have the required items to cook this item."
								break
					else
						usr << "You fool!  That's not a cookable item!"
						return


		Sink
			name = "Sink"
			icon = 'turfs.dmi'
			icon_state = "sink"
			density = 1
			DblClick()
				if(src in oview(1))Use()
			verb
				Use()
					set category = "Other"
					set src in view(1)
					if(src.dropped == 0)return
					var/obj/NormalItems/Bucket/M
					var/C
					for(M in usr)
						del M
						C = 1
						new /obj/NormalItems/Bucket_Water (usr)
					if(C == 1)
						usr << "You fill your Buckets with water!"
					else
						usr << "You don't know what to do with the Sink, you must be missing something."

		Dresser
			name = "Dresser"
			icon = 'turfs.dmi'
			icon_state = "dresser"
			density = 1
			DblClick()
				if(src in oview(1))Use()
			verb
				Use()
					set category = "Other"
					set src in view(1)
					if(src.dropped == 0)return
					usr << "You change your clothes."

		Wall
			name = "Wall"
			icon = 'turfs.dmi'
			icon_state = "greenwall"
			density = 1

		Wall_Edge
			name = "Wall"
			icon = 'turfs.dmi'
			icon_state = "greenwalledge"
			density = 1

		IceWall
			name = "Wall"
			icon = 'turfs.dmi'
			icon_state = "bluewall"
			density = 1

		IceWall_Edge
			name = "Wall"
			icon = 'turfs.dmi'
			icon_state = "bluewalledge"
			density = 1

		Grass1
			name = "Grass"
			icon = 'turfs.dmi'
			icon_state = "grass1"
			layer = 2

		Grass2
			name = "Grass"
			icon = 'turfs.dmi'
			icon_state = "grass2"
			layer = 2

		Brush
			name = "Brush"
			icon = 'turfs.dmi'
			icon_state = "brush"
			layer = 2

		Fence
			name = "Fence"
			icon = 'turfs.dmi'
			icon_state = "fence"
			density = 1
			layer = 3

		Tree
			name = "Tree"
			icon = 'turfs.dmi'
			icon_state = "tree"
			density = 1
			layer = 3

		Water
			name = "Water"
			icon = 'turfs.dmi'
			icon_state = "water"
			density = 1

		Door
			name = "Door"
			icon = 'turfs.dmi'
			icon_state = "door"
			density = 1
			layer = 3
			Enter(atom/movable/a)
				if(istype(a,/obj/dolls))
					return 0
				else
					return 1
			Click()
				if(src in oview(1))
					if(src.locked == 1)
						usr << "The door is locked by [src.owner]!  Ask him to unlock it, or your not getting in!"
						return
					if(src.dropped == 0)return
					icon_state = "invis"
					density = 0
					sleep(50)
					icon_state = "door"
					density = 1
			verb
				Lock_Unlock()
					set category = "Other"
					set src in view(1)
					if(src.dropped == 0)return
					if(src.owner == null)
						for(var/area/housing/a in src.loc)
							src.owner = a.owner
					if(src.locked == 0 && src.owner == usr.key)
						src.locked = 1
						usr << "The door is now locked!  Only YOU can unlock it!"
					else if(src.locked == 1 && src.owner == usr.key)
						src.locked = 0
						usr << "You have unlocked the door!"
					else
						usr << "[src.owner] is the only one who can Lock/Unlock this Door!"

		MeatSeller
			icon = 'slimes.dmi'
			icon_state = "green"
			name = "Raw Meat Seller"
			storagelist = list("Tiny Meat - 300 Gold")
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in oview(1)
					if(src.dropped == 0)return
					usr.islocked = 1
					switch(input("Meat Seller: Hey!  Thanks again for hireing me in your house!  I can do one of two things.","Pick an Option!") in list("Get Raw Meat","Train for Meat Making Classes"))
						if("Get Raw Meat")
							switch(input("Meat Seller: Hey!  Thanks again for hireing me in your house.  I can give you any type of Meat in my storage plans!  Just remember, they are always Raw, you must find ways to cook them yourself!","Shop")in list("-=Cancel=-") + storagelist)
								if("-=Cancel=-")
									usr.islocked = 0
									return ..()
								if("Tiny Meat - 300 Gold")
									var/priceo = 300
									var/price = input("Meat Seller: How many?","Buy Something")
									price = text2num(price)
									if(price <= 0)
										usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy less than 1 meat!"
										return
									priceo = price * priceo
									switch(alert("Are you sure you want [price] Tiny Meats?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
										if("Yes")
											if(usr.gold >= priceo)
												usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
												for(var/C = 1 to price)
													new /obj/Food/Tiny_Meat (usr)
												usr.gold -= priceo
											else
												usr << "<b><font color = olive>[src]:</b><font color = green> Not enough Gold, my friend!"
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Okay."
								if("Small Meat - 1,000 Gold")
									var/priceo = 1000
									var/price = input("Meat Seller: How many?","Buy Something")
									price = text2num(price)
									if(price <= 0)
										usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy less than 1 meat!"
										return
									priceo = price * priceo
									switch(alert("Are you sure you want [price] Small Meats?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
										if("Yes")
											if(usr.gold >= priceo)
												usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
												for(var/C = 1 to price)
													new /obj/Food/Small_Meat (usr)
												usr.gold -= priceo
											else
												usr << "<b><font color = olive>[src]:</b><font color = green> Not enough Gold, my friend!"
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Okay."
								if("Meat - 2,500 Gold")
									var/priceo = 2500
									var/price = input("Meat Seller: How many?","Buy Something")
									price = text2num(price)
									if(price <= 0)
										usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy less than 1 meat!"
										return
									priceo = price * priceo
									switch(alert("Are you sure you want [price] Meats?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
										if("Yes")
											if(usr.gold >= priceo)
												usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
												for(var/C = 1 to price)
													new /obj/Food/Meat (usr)
												usr.gold -= priceo
											else
												usr << "<b><font color = olive>[src]:</b><font color = green> Not enough Gold, my friend!"
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Okay."
								if("Big Meat - 10,000 Gold")
									var/priceo = 10000
									var/price = input("Meat Seller: How many?","Buy Something")
									price = text2num(price)
									if(price <= 0)
										usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy less than 1 meat!"
										return
									priceo = price * priceo
									switch(alert("Are you sure you want [price] Big Meats?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
										if("Yes")
											if(usr.gold >= priceo)
												usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
												for(var/C = 1 to price)
													new /obj/Food/Big_Meat (usr)
												usr.gold -= priceo
											else
												usr << "<b><font color = olive>[src]:</b><font color = green> Not enough Gold, my friend!"
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Okay."
								if("Huge Meat - 25,000 Gold")
									var/priceo = 25000
									var/price = input("Meat Seller: How many?","Buy Something")
									price = text2num(price)
									if(price <= 0)
										usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy less than 1 meat!"
										return
									priceo = price * priceo
									switch(alert("Are you sure you want [price] Huge Meats?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
										if("Yes")
											if(usr.gold >= priceo)
												usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
												for(var/C = 1 to price)
													new /obj/Food/Huge_Meat (usr)
												usr.gold -= priceo
											else
												usr << "<b><font color = olive>[src]:</b><font color = green> Not enough Gold, my friend!"
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Okay."
								if("Gigantic Meat - 100,000 Gold")
									var/priceo = 100000
									var/price = input("Meat Seller: How many?","Buy Something")
									price = text2num(price)
									if(price <= 0)
										usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy less than 1 meat!"
										return
									priceo = price * priceo
									switch(alert("Are you sure you want [price] Gigantic Meats?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
										if("Yes")
											if(usr.gold >= priceo)
												usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
												for(var/C = 1 to price)
													new /obj/Food/Gigantic_Meat (usr)
												usr.gold -= priceo
											else
												usr << "<b><font color = olive>[src]:</b><font color = green> Not enough Gold, my friend!"
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Okay."
						if("Train for Meat Making Classes")
							var/list/addto = new/list()
							if(!storagelist.Find("Small Meat - 1,000 Gold"))
								addto += "Small Meat - 1,000 Gold"
							if(!storagelist.Find("Meat - 2,500 Gold"))
								addto += "Meat - 2,500 Gold"
							if(!storagelist.Find("Big Meat - 10,000 Gold"))
								addto += "Big Meat - 10,000 Gold"
							if(!storagelist.Find("Huge Meat - 25,000 Gold"))
								addto += "Huge Meat - 25,000 Gold"
							if(!storagelist.Find("Gigantic Meat - 100,000 Gold"))
								addto += "Gigantic Meat - 100,000 Gold"
							if(!addto)
								usr << "<b><font color = olive>[src]:</b><font color = green> Sorry, there's no Meats left that I can't make!"
								usr.islocked = 0
								return
							switch(input("Meat Seller: Hey!  What type of Meat do you want me to learn how to make?  Remember all types are RAW!  You still have to cook them yourself!","New Meats!")in list("-=Cancel=-") + addto)
								if("-=Cancel=-")
									usr.islocked = 0
									return ..()
								if("Small Meat - 1,000 Gold")
									switch(alert("Meat Seller: Are you sure you want me to learn how to make Small Meats?  The class to learn it will cost 1,000 Gold!","Confirm Design.","Yes","No"))
										if("Yes")
											if(usr.gold >= 1000)
												usr << "<b><font color = olive>[src]:</b><font color = green> Alright!  I can now make Small Meats!"
												src.storagelist += "Small Meat - 1,000 Gold"
												usr.gold -= 1000
											else
												usr << "<b><font color = olive>[src]:</b><font color = green> Not enough Gold, my friend."
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Okay."
								if("Meat - 2,500 Gold")
									switch(alert("Meat Seller: Are you sure you want me to learn how to make Meats?  The class to learn it will cost 2,500 Gold!","Confirm Design.","Yes","No"))
										if("Yes")
											if(usr.gold >= 2500)
												usr << "<b><font color = olive>[src]:</b><font color = green> Alright!  I can now make Meats!"
												src.storagelist += "Meat - 2,500 Gold"
												usr.gold -= 2500
											else
												usr << "<b><font color = olive>[src]:</b><font color = green> Not enough Gold, my friend."
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Okay."
								if("Big Meat - 10,000 Gold")
									switch(alert("Meat Seller: Are you sure you want me to learn how to make Big Meats?  The class to learn it will cost 10,000 Gold!","Confirm Design.","Yes","No"))
										if("Yes")
											if(usr.gold >= 10000)
												usr << "<b><font color = olive>[src]:</b><font color = green> Alright!  I can now make Big Meats!"
												src.storagelist += "Big Meat - 10,000 Gold"
												usr.gold -= 10000
											else
												usr << "<b><font color = olive>[src]:</b><font color = green> Not enough Gold, my friend."
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Okay."
								if("Huge Meat - 25,000 Gold")
									switch(alert("Meat Seller: Are you sure you want me to learn how to make Huge Meats?  The class to learn it will cost 25,000 Gold!","Confirm Design.","Yes","No"))
										if("Yes")
											if(usr.gold >= 25000)
												usr << "<b><font color = olive>[src]:</b><font color = green> Alright!  I can now make Huge Meats!"
												src.storagelist += "Huge Meat - 25,000 Gold"
												usr.gold -= 25000
											else
												usr << "<b><font color = olive>[src]:</b><font color = green> Not enough Gold, my friend."
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Okay."
								if("Gigantic Meat - 100,000 Gold")
									switch(alert("Meat Seller: Are you sure you want me to learn how to make Gigantic Meats?  The class to learn it will cost 100,000 Gold!","Confirm Design.","Yes","No"))
										if("Yes")
											if(usr.gold >= 100000)
												usr << "<b><font color = olive>[src]:</b><font color = green> Alright!  I can now make Gigantic Meats!"
												src.storagelist += "Gigantic Meat - 100,000 Gold"
												usr.gold -= 100000
											else
												usr << "<b><font color = olive>[src]:</b><font color = green> Not enough Gold, my friend."
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Okay."
					usr.islocked = 0

		NoodleSeller
			icon = 'slimes.dmi'
			icon_state = "metal"
			name = "Raw Noodle Seller"
			storagelist = list("Small Package of Noodles - 750 Gold")
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in oview(1)
					if(src.dropped == 0)return
					usr.islocked = 1
					switch(input("Noodle Seller: Hey!  Thanks again for hireing me in your house!  I can do one of two things.","Pick an Option!") in list("Get Raw Noodles","Train for Noodle Making Classes"))
						if("Get Raw Noodles")
							switch(input("Noodle Seller: Hey!  Thanks again for hireing me in your house.  I can give you any type of Meat in my storage plans!  Just remember, they are always Raw, you must find ways to cook them yourself!","Shop")in list("-=Cancel=-") + storagelist)
								if("-=Cancel=-")
									usr.islocked = 0
									return ..()
								if("Small Package of Noodles - 750 Gold")
									var/priceo = 750
									var/price = input("Noodle Seller: How many?","Buy Something")
									price = text2num(price)
									if(price <= 0)
										usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy less than 1 meat!"
										return
									priceo = price * priceo
									switch(alert("Are you sure you want [price] Small Packages of Noodles?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
										if("Yes")
											if(usr.gold >= priceo)
												usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
												for(var/C = 1 to price)
													new /obj/Food/Small_Package_Noodles (usr)
												usr.gold -= priceo
											else
												usr << "<b><font color = olive>[src]:</b><font color = green> Not enough Gold, my friend!"
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Okay."
								if("Package of Noodles - 5,000 Gold")
									var/priceo = 5000
									var/price = input("Noodle Seller: How many?","Buy Something")
									price = text2num(price)
									if(price <= 0)
										usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy less than 1 meat!"
										return
									priceo = price * priceo
									switch(alert("Are you sure you want [price] Packages of Noodles?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
										if("Yes")
											if(usr.gold >= priceo)
												usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
												for(var/C = 1 to price)
													new /obj/Food/Package_Noodles (usr)
												usr.gold -= priceo
											else
												usr << "<b><font color = olive>[src]:</b><font color = green> Not enough Gold, my friend!"
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Okay."
								if("Large Package of Noodles - 35,000 Gold")
									var/priceo = 35000
									var/price = input("Noodle Seller: How many?","Buy Something")
									price = text2num(price)
									if(price <= 0)
										usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy less than 1 meat!"
										return
									priceo = price * priceo
									switch(alert("Are you sure you want [price] Large Packages of Noodles?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
										if("Yes")
											if(usr.gold >= priceo)
												usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
												for(var/C = 1 to price)
													new /obj/Food/Large_Package_Noodles (usr)
												usr.gold -= priceo
											else
												usr << "<b><font color = olive>[src]:</b><font color = green> Not enough Gold, my friend!"
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Okay."
								if("Overly Sized Package of Noodles - 200,000 Gold")
									var/priceo = 200000
									var/price = input("Noodle Seller: How many?","Buy Something")
									price = text2num(price)
									if(price <= 0)
										usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy less than 1 meat!"
										return
									priceo = price * priceo
									switch(alert("Are you sure you want [price] Overly Sized Packages of Noodles?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
										if("Yes")
											if(usr.gold >= priceo)
												usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
												for(var/C = 1 to price)
													new /obj/Food/Overly_Sized_Package_Noodles (usr)
												usr.gold -= priceo
											else
												usr << "<b><font color = olive>[src]:</b><font color = green> Not enough Gold, my friend!"
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Okay."
						if("Train for Noodle Making Classes")
							var/list/addto = new/list()
							if(!storagelist.Find("Package of Noodles - 5,000 Gold"))
								addto += "Package of Noodles - 5,000 Gold"
							if(!storagelist.Find("Large Package of Noodles - 35,000 Gold"))
								addto += "Large Package of Noodles - 35,000 Gold"
							if(!storagelist.Find("Overly Sized Package of Noodles - 200,000 Gold"))
								addto += "Overly Sized Package of Noodles - 200,000 Gold"
							if(!addto)
								usr << "<b><font color = olive>[src]:</b><font color = green> Sorry, there's no Meats left that I can't make!"
								usr.islocked = 0
								return
							switch(input("Meat Seller: Hey!  What type of Meat do you want me to learn how to make?  Remember all types are RAW!  You still have to cook them yourself!","New Meats!")in list("-=Cancel=-") + addto)
								if("-=Cancel=-")
									usr.islocked = 0
									return ..()
								if("Package of Noodles - 5,000 Gold")
									switch(alert("Noodle Seller: Are you sure you want me to learn how to make Small Meats?  The class to learn it will cost 5,000 Gold!","Confirm Design.","Yes","No"))
										if("Yes")
											if(usr.gold >= 5000)
												usr << "<b><font color = olive>[src]:</b><font color = green> Alright!  I can now make Packages of Noodles!"
												src.storagelist += "Package of Noodles - 5,000 Gold"
												usr.gold -= 5000
											else
												usr << "<b><font color = olive>[src]:</b><font color = green> Not enough Gold, my friend."
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Okay."
								if("Large Package of Noodles - 35,000 Gold")
									switch(alert("Noodle Seller: Are you sure you want me to learn how to make Meats?  The class to learn it will cost 35,000 Gold!","Confirm Design.","Yes","No"))
										if("Yes")
											if(usr.gold >= 35000)
												usr << "<b><font color = olive>[src]:</b><font color = green> Alright!  I can now make Large Packages of Noodles!"
												src.storagelist += "Large Package of Noodles - 35,000 Gold"
												usr.gold -= 35000
											else
												usr << "<b><font color = olive>[src]:</b><font color = green> Not enough Gold, my friend."
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Okay."
								if("Overly Sized Package of Noodles - 200,000 Gold")
									switch(alert("Noodle Seller: Are you sure you want me to learn how to make Big Meats?  The class to learn it will cost 200,000 Gold!","Confirm Design.","Yes","No"))
										if("Yes")
											if(usr.gold >= 200000)
												usr << "<b><font color = olive>[src]:</b><font color = green> Alright!  I can now make Overly Sized Packages of Noodles!"
												src.storagelist += "Overly Sized Package of Noodles - 200,000 Gold"
												usr.gold -= 200000
											else
												usr << "<b><font color = olive>[src]:</b><font color = green> Not enough Gold, my friend."
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Okay."
					usr.islocked = 0

		BucketSeller
			icon = 'slimes.dmi'
			icon_state = "fire"
			name = "Bucket Seller"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in oview(2)
					switch(input("Bucket Seller:  Hey man!  Thanks for hiring me!  So, do you want any Buckets?","Shop")in list("-=Cancel=-","Bucket - 2,000 Gold"))
						if("-=Cancel=-")
							return ..()
						if("Bucket - 2,000 Gold")
							var/priceo = 2000
							var/price = input("Shopkeeper: How many?","Buy Something")
							price = text2num(price)
							if(price <= 0)
								usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy negative items!"
								return
							priceo = price * priceo
							switch(alert("Are you sure you want [price] Buckets?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
								if("Yes")
									if(usr.gold >= priceo)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
										for(var/C = 1 to price)
											new /obj/NormalItems/Bucket (usr)
										usr.gold -= priceo
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
								if("No")
									usr << "<b><font color = olive>[src]:</b><font color = green> Then go away!"


#define DEBUG
world
	mob = /mob
	turf = /turf

/*proc/Newobjs()
//	..()
	if(fexists("Map.sav"))
		var/savefile/F = new ("Map.sav")
		F >> objs
		for(var/obj/o in objs)
			o.loc = locate(o.lastx, o.lasty, o.lastz)
		objs.Cut()
	if(fexists("Housing.sav"))
		var/savefile/f = new("Housing.sav")
		f["areas"] >> areas
		for(var/area/housing/h in world)
			for(var/i in areas)
				if(i["[h.x] [h.y]"])
					h = i["[h.x] [h.y]"]
//	return ..()

proc/Delobjs()
	var/savefile/F = new("Map.sav")
	for(var/obj/o in world.contents)
		o.lastx = o.x
		o.lasty = o.y
		o.lastz = o.z
		objs.Add(o)
	F << objs
	var/savefile/f = new("Housing.sav")
	for(var/area/housing/a in world)
		areas += "[a.x] [a.y]"
		areas["[a.x] [a.y]"] = a
	f["areas"] << areas

var/list/areas=list()*/

proc/Newobjs()
	if(fexists("Map.sav"))
		var/savefile/F = new ("Map.sav")
		F >> objs
		for(var/obj/o in objs)
			o.loc = locate(o.lastx, o.lasty, o.lastz)
		objs.Cut()

proc/Delobjs()
	var/savefile/F = new("Map.sav")
	for(var/obj/o in world.contents)
		o.lastx = o.x
		o.lasty = o.y
		o.lastz = o.z
		objs.Add(o)
	F << objs

proc
	SaveHouses()
		var/savefile/S=new("houses")
		var/area/housing/A
		for(var/area in typesof(/area/housing)-/area/housing)
			A=locate(area)
			S["/[A.name]"]<<A.owner
			S["/[A.name]/welcomemsg"]<<A.welcomemsg
			S["/[A.name]/goodbyemsg"]<<A.goodbyemsg
			S["/[A.name]/invited"]<<A.invited

	LoadHouses()
		var/savefile/S=new("houses")
		var/area/housing/A
		for(var/area in typesof(/area/housing)-/area/housing)
			A=locate(area)
			S["/[A.name]"]>>A.owner
			S["/[A.name]/welcomemsg"]>>A.welcomemsg
			S["/[A.name]/goodbyemsg"]>>A.goodbyemsg
			S["/[A.name]/invited"]>>A.invited
/*Second: Your object saving is tossing about a zillion lists into the savefile that it doesn't need.
Consider what DM is going to do when it tries to load that.
Better to simply modify obj/Read() and obj/Write() to save the position info you want, and restore its position on load.*/

proc
	SaveObjects()
		var/savefile/F = new ("objects.sav")
		var/list/L = new
		spawn()
			for(var/obj/O in world)
				O.savex = O.x
				O.savey = O.y
				O.savez = O.z
				L += O
		F[""] << L

proc
	LoadObjects()
		var/savefile/F = new ("objects.sav")
		var/list/L = new
		F[""] >> L
		if(!L) return
		for(var/obj/O in world) if(O.loc) del(O)
		spawn()
			for(var/obj/O in L)
				O.loc = locate(O.savex,O.savey,O.savez)

obj
	var
		savex
		savey
		savez

var/list/houses=list()

obj/house_tag
	var
		owner
		cost=0
		X;Y;Z
	New()
		if(x&&y&&z)
			X=x;Y=y;Z=z
		else if(X&&Y&&Z)
			loc=locate(X,Y,Z)