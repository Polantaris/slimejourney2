obj
	dolls
		proc
			RandWalk()
				spawn while(1)
					met_step_rand(src)
					var/B = rand(20,60)
					sleep(B)

		New()
			..()
		//	var/B = rand(20,60)
		//	sleep(B)
		//	if(isturf(src.loc))src.RandWalk()

		icon = 'slimes.dmi'

		Bump()
			usr << "Ouch! Bitch, leave me the **** alone!  I'm not one to be ****ed with!"

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
								src.RandWalk()
							else
								world << "[usr]([usr.key]) has been caught dropping dolls in Illegal places.  He has been banned.  Have a nice day.  Just as a note...All your base are belong to us now..."
								usr.BanSomeone(usr)
								del(usr)
						if("No")
							usr << "<i>You decide not to put the [src.name] here.</i>"
							usr.islocked = 0
				else
					usr << "You cannot drop house items outside of your house!"
				usr.islocked = 0

		BlueSlime
			name = "Blue Slime Doll"
			icon_state = "blue"
			density = 1

		RedSlime
			name = "Red Slime Doll"
			icon_state = "red"
			density = 1

		YellowSlime
			name = "Yellow Slime Doll"
			icon_state = "yellow"
			density = 1

		PinkSlime
			name = "Pink Slime Doll"
			icon_state = "pink"
			density = 1

		PurpleSlime
			name = "Purple Slime Doll"
			icon_state = "purple"
			density = 1

		BrownSlime
			name = "Brown Slime Doll"
			icon_state = "brown"
			density = 1

		GreenSlime
			name = "Green Slime Doll"
			icon_state = "green"
			density = 1

		TealSlime
			name = "Teal Slime Doll"
			icon_state = "teal"
			density = 1

		BlackSlime
			name = "Black Slime Doll"
			icon_state = "black"
			density = 1

		WhiteSlime
			name = "White Slime Doll"
			icon_state = "white"
			density = 1

		FlameSlime
			name = "Flame Slime Doll"
			icon_state = "fire"
			density = 1

		MetalSlime
			name = "Metal Slime Doll"
			icon_state = "metal"
			density = 1

		GoldSlime
			name = "Gold Slime Doll"
			icon_state = "gold"
			density = 1

		KingBlueSlime
			name = "Blue King Slime Doll"
			icon_state = "kingblue"
			density = 1

		KingRedSlime
			name = "Red King Slime Doll"
			icon_state = "kingred"
			density = 1

		KingYellowSlime
			name = "Yellow King Slime Doll"
			icon_state = "kingyellow"
			density = 1

		KingPinkSlime
			name = "Pink King Slime Doll"
			icon_state = "kingpink"
			density = 1

		KingPurpleSlime
			name = "Purple King Slime Doll"
			icon_state = "kingpurple"
			density = 1

		KingBrownSlime
			name = "Brown King Slime Doll"
			icon_state = "kingbrown"
			density = 1

		KingGreenSlime
			name = "Green King Slime Doll"
			icon_state = "kinggreen"
			density = 1

		KingTealSlime
			name = "Teal King Slime Doll"
			icon_state = "kingteal"
			density = 1

		KingBlackSlime
			name = "Black King Slime Doll"
			icon_state = "kingblack"
			density = 1

		KingWhiteSlime
			name = "White King Slime Doll"
			icon_state = "kingwhite"
			density = 1

		KingFlameSlime
			name = "Flame King Slime Doll"
			icon_state = "kingfire"
			density = 1

		KingMetalSlime
			name = "Metal King Slime Doll"
			icon_state = "kingmetal"
			density = 1

		KingGoldSlime
			name = "Gold King Slime Doll"
			icon_state = "kinggold"
			density = 1

		HammerMan
			name = "Hammer Man Doll"
			icon_state = "hammerman"
			icon = 'monsters.dmi'
			density = 1

		HammerLord
			name = "Hammer Lord Doll"
			icon_state = "hammerlord"
			icon = 'monsters.dmi'
			density = 1

		HammerGod
			name = "Hammer God Doll"
			icon_state = "hammergod"
			icon = 'monsters.dmi'
			density = 1

		Babble
			name = "Babble Doll"
			icon_state = "babble"
			icon = 'babbles.dmi'
			density = 1

		IceBabble
			name = "Ice Babble Doll"
			icon_state = "bluebabble"
			icon = 'babbles.dmi'
			density = 1

		BloodBabble
			name = "Blood Babble Doll"
			icon_state = "bloodbabble"
			icon = 'babbles.dmi'
			density = 1

		FireBabble
			name = "Fire Babble Doll"
			icon_state = "bloodyfirebabble"
			icon = 'babbles.dmi'
			density = 1

		Skeleton
			name = "Skeleton Doll"
			icon_state = "skeleton"
			icon = 'monsters.dmi'
			density = 1

		Demonite
			name = "Demonite Doll"
			icon_state = "demonite"
			icon = 'monsters.dmi'
			density = 1

		FireDemonite
			name = "Fire Demonite Doll"
			icon_state = "fdemonite"
			icon = 'monsters.dmi'
			density = 1

		Warrior
			name = "Warrior Doll"
			icon_state = "ragnar"
			icon = 'monsters.dmi'
			density = 1

		Dragon
			name = "Dragon Doll"
			icon_state = "bdragon"
			icon = 'monsters.dmi'
			density = 1

		WingBeast
			name = "Winged Beast Doll"
			icon_state = "wingedbeast"
			icon = 'monsters.dmi'
			density = 1

		Bear
			name = "Bear Doll"
			icon_state = "bearbeast"
			icon = 'monsters.dmi'
			density = 1

		FireBear
			name = "Fire Bear Doll"
			icon_state = "firebear"
			icon = 'monsters.dmi'
			density = 1

		Lion
			name = "Lion Doll"
			icon_state = "lion"
			icon = 'monsters.dmi'
			density = 1

		Human
			name = "Human Doll"
			icon_state = "guy"
			icon = 'monsters.dmi'
			density = 1

		FlamedHuman
			name = "Flamed Human Doll"
			icon_state = "flamedhuman"
			icon = 'monsters.dmi'
			density = 1

		GoatHorn
			name = "Goat Horn Doll"
			icon_state = "goathorn"
			icon = 'monsters.dmi'
			density = 1

		Mage
			name = "Mage Doll"
			icon_state = "mage"
			icon = 'monsters.dmi'
			density = 1

		Merchant
			name = "Merchant Doll"
			icon_state = "merchant"
			icon = 'monsters.dmi'
			density = 1

		LiveTree
			name = "Living Tree Doll"
			icon_state = "livingtree"
			icon = 'monsters.dmi'
			density = 1

		LiveFireTree
			name = "Living Flame Tree Doll"
			icon_state = "livingftree"
			icon = 'monsters.dmi'
			density = 1

		LiveIceTree
			name = "Living Ice Tree Doll"
			icon_state = "livingitree"
			icon = 'monsters.dmi'
			density = 1

		JewelBag
			name = "Jewel Bag Doll"
			icon_state = "jewelbag"
			icon = 'monsters.dmi'
			density = 1

		ThiefBag
			name = "Thief Bag Doll"
			icon_state = "thiefbag"
			icon = 'monsters.dmi'
			density = 1

		Slimenite
			name = "Slime Knight Doll"
			icon_state = "slimenite"
			icon = 'monsters.dmi'
			density = 1

		Yellownite
			name = "Yellow Knight Doll"
			icon_state = "yellownite"
			icon = 'monsters.dmi'
			density = 1

		Golem
			name = "Golem Doll"
			icon_state = "golem"
			icon = 'monsters.dmi'
			density = 1

		Wildcat
			name = "Wild Cat Doll"
			icon_state = "wildcat"
			icon = 'monsters.dmi'
			density = 1

		Healer
			name = "Healer Doll"
			icon_state = "healer"
			icon = 'monsters.dmi'
			density = 1

		IceSloth
			name = "Ice Sloth Doll"
			icon_state = "icesloth"
			icon = 'monsters.dmi'
			density = 1

		Curer
			name = "Curer Doll"
			icon_state = "curer"
			icon = 'monsters.dmi'
			density = 1

mob
	DollSeller
		icon = 'slimes.dmi'
		icon_state = "teal"
		name = "Slime Doll Seller"
		Click()
			if(src in oview(1))Converse()
		verb
			Converse()
				set category = "Other"
				set src in view(1)
				switch(input("Hey [usr]!  Do you want to check out my dolls?  They are awesome!  Just pick one that you wanna buy.","Dolls!")in list("Blue Slime - 1,000 Gold","Red Slime - 1,500 Gold","Yellow Slime - 2,500 Gold","Pink Slime - 4,000 Gold","Purple Slime - 6,000 Gold","Brown Slime - 8,500 Gold","Green Slime - 11,500 Gold","Teal Slime - 15,000 Gold","Black Slime - 19,000 Gold","White Slime - 23,500 Gold","Flame Slime - 28,500 Gold","Metal Slime - 34,000 Gold","Gold Slime - 40,000 Gold","Blue King Slime - 48,500 Gold","Red King Slime - 57,500 Gold","Yellow King Slime - 67,000 Gold","Pink King Slime - 76,500 Gold","Purple King Slime - 86,500 Gold","Brown King Slime - 97,000 Gold","Green King Slime - 108,000 Gold","Teal King Slime - 119,500 Gold","Black King Slime - 131,500 Gold","White King Slime - 144,000 Gold","Flame King Slime - 156,500 Gold","Metal King Slime - 169,500 Gold","Gold King Slime - 183,000 Gold","Hammer Man - 197,000 Gold","Hammer Lord - 201,500 Gold","Hammer God - 216,500 Gold","Babble - 232,000 Gold","Ice Babble - 248,000 Gold","Blood Babble - 264,500 Gold","Fire Babble - 281,500 Gold","Skeleton - 300,000 Gold","Fire Demonite - 350,000 Gold","Warrior - 375,000 Gold","Dragon - 400,000 Gold","Winged Beast - 425,000 Gold","Bear - 450,000 Gold","Fire Bear - 475,000 Gold","Lion - 500,000 Gold","Human - 525,000 Gold","Flamed Human - 550,000 Gold","Goat Horn - 575,000 Gold","Mage - 600,000 Gold","Merchant - 625,000 Gold","Living Tree - 650,000 Gold","Living Flame Tree - 675,000 Gold","Living Ice Tree - 700,000 Gold","Jewel Bag - 725,000 Gold","Thief Bag - 750,000 Gold","Slime Knight - 775,000 Gold","Yellow Knight - 800,000 Gold","Golem - 825,000 Gold","Wild Cat - 850,000 Gold","Healer - 875,000 Gold","Curer - 900,000 Gold","Ice Sloth - 950,000 Gold","-=Nevermind=-"))
					if("Blue Slime - 1,000 Gold")
						if(usr.gold >= 1000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/BlueSlime (usr)
							usr.gold -= 1000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Red Slime - 1,500 Gold")
						if(usr.gold >= 1500)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/RedSlime (usr)
							usr.gold -= 1500
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Yellow Slime - 2,500 Gold")
						if(usr.gold >= 2500)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/YellowSlime (usr)
							usr.gold -= 2500
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Pink Slime - 4,000 Gold")
						if(usr.gold >= 4000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/PinkSlime (usr)
							usr.gold -= 4000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Purple Slime - 6,000 Gold")
						if(usr.gold >= 6000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/PurpleSlime (usr)
							usr.gold -= 6000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Brown Slime - 8,500 Gold")
						if(usr.gold >= 8500)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/BrownSlime (usr)
							usr.gold -= 8500
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Green Slime - 11,500 Gold")
						if(usr.gold >= 11500)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/GreenSlime (usr)
							usr.gold -= 11500
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Teal Slime - 15,000 Gold")
						if(usr.gold >= 15000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/TealSlime (usr)
							usr.gold -= 15000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Black Slime - 19,000 Gold")
						if(usr.gold >= 19000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/BlackSlime (usr)
							usr.gold -= 19000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("White Slime - 23,500 Gold")
						if(usr.gold >= 23500)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/WhiteSlime (usr)
							usr.gold -= 23500
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Flame Slime - 28,500 Gold")
						if(usr.gold >= 28500)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/FlameSlime (usr)
							usr.gold -= 28500
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Metal Slime - 34,000 Gold")
						if(usr.gold >= 34000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/MetalSlime (usr)
							usr.gold -= 34000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Gold Slime - 40,000 Gold")
						if(usr.gold >= 40000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/GoldSlime (usr)
							usr.gold -= 40000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Blue King Slime - 48,500 Gold")
						if(usr.gold >= 48500)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/KingBlueSlime (usr)
							usr.gold -= 48500
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Red King Slime - 57,500 Gold")
						if(usr.gold >= 57500)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/KingRedSlime (usr)
							usr.gold -= 57500
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Yellow King Slime - 67,000 Gold")
						if(usr.gold >= 67000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/KingYellowSlime (usr)
							usr.gold -= 67000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Pink King Slime - 76,500 Gold")
						if(usr.gold >= 76500)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/KingPinkSlime (usr)
							usr.gold -= 76500
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Purple King Slime - 86,500 Gold")
						if(usr.gold >= 86500)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/KingPurpleSlime (usr)
							usr.gold -= 86500
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Brown King Slime - 97,000 Gold")
						if(usr.gold >= 97000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/KingBrownSlime (usr)
							usr.gold -= 97000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Green King Slime - 108,000 Gold")
						if(usr.gold >= 108000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/KingGreenSlime (usr)
							usr.gold -= 108000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Teal King Slime - 119,500 Gold")
						if(usr.gold >= 119500)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/KingTealSlime (usr)
							usr.gold -= 119500
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Black King Slime - 131,500 Gold")
						if(usr.gold >= 131500)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/KingBlackSlime (usr)
							usr.gold -= 131500
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("White King Slime - 144,000 Gold")
						if(usr.gold >= 144000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/KingWhiteSlime (usr)
							usr.gold -= 144000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Flame King Slime - 156,500 Gold")
						if(usr.gold >= 156500)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/KingFlameSlime (usr)
							usr.gold -= 156500
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Metal King Slime - 169,500 Gold")
						if(usr.gold >= 169500)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/KingMetalSlime (usr)
							usr.gold -= 169500
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Gold King Slime - 183,000 Gold")
						if(usr.gold >= 183000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/KingGoldSlime (usr)
							usr.gold -= 183000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Hammer Man - 197,000 Gold")
						if(usr.gold >= 197000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/HammerMan (usr)
							usr.gold -= 197000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Hammer Lord - 201,500 Gold")
						if(usr.gold >= 201500)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/HammerLord (usr)
							usr.gold -= 201500
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Hammer God - 216,500 Gold")
						if(usr.gold >= 216500)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/HammerGod (usr)
							usr.gold -= 216500
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Babble - 232,000 Gold")
						if(usr.gold >= 232000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/Babble (usr)
							usr.gold -= 232000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Ice Babble - 248,000 Gold")
						if(usr.gold >= 248000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/IceBabble (usr)
							usr.gold -= 248000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Blood Babble - 264,500 Gold")
						if(usr.gold >= 264500)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/BloodBabble (usr)
							usr.gold -= 264500
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Fire Babble - 281,500 Gold")
						if(usr.gold >= 281500)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/FireBabble (usr)
							usr.gold -= 281500
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Skeleton - 300,000 Gold")
						if(usr.gold >= 300000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/Skeleton (usr)
							usr.gold -= 300000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Demonite - 325,000 Gold")
						if(usr.gold >= 325000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/Demonite (usr)
							usr.gold -= 325000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Fire Demonite - 350,000 Gold")
						if(usr.gold >= 350000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/FireDemonite (usr)
							usr.gold -= 350000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Warrior - 375,000 Gold")
						if(usr.gold >= 375000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/Warrior (usr)
							usr.gold -= 375000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Dragon - 400,000 Gold")
						if(usr.gold >= 400000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/Dragon (usr)
							usr.gold -= 400000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Winged Beast - 425,000 Gold")
						if(usr.gold >= 425000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/WingBeast (usr)
							usr.gold -= 425000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Bear - 450,000 Gold")
						if(usr.gold >= 450000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/Bear (usr)
							usr.gold -= 450000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Fire Bear - 475,000 Gold")
						if(usr.gold >= 475000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/FireBear (usr)
							usr.gold -= 475000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Lion - 500,000 Gold")
						if(usr.gold >= 500000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/Lion (usr)
							usr.gold -= 500000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Human - 525,000 Gold")
						if(usr.gold >= 525000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/Human (usr)
							usr.gold -= 525000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Flamed Human - 550,000 Gold")
						if(usr.gold >= 550000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/FlamedHuman (usr)
							usr.gold -= 550000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Goat Horn - 575,000 Gold")
						if(usr.gold >= 575000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/GoatHorn (usr)
							usr.gold -= 575000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Mage - 600,000 Gold")
						if(usr.gold >= 600000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/Mage (usr)
							usr.gold -= 600000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Merchant - 625,000 Gold")
						if(usr.gold >= 625000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/Merchant (usr)
							usr.gold -= 625000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Living Tree - 650,000 Gold")
						if(usr.gold >= 650000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/LiveTree (usr)
							usr.gold -= 650000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Living Flame Tree - 675,000 Gold")
						if(usr.gold >= 675000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/LiveFireTree (usr)
							usr.gold -= 675000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Living Ice Tree - 700,000 Gold")
						if(usr.gold >= 700000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/LiveIceTree (usr)
							usr.gold -= 700000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Jewel Bag - 725,000 Gold")
						if(usr.gold >= 725000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/JewelBag (usr)
							usr.gold -= 725000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Thief Bag - 750,000 Gold")
						if(usr.gold >= 750000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/ThiefBag (usr)
							usr.gold -= 750000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Slime Knight - 775,000 Gold")
						if(usr.gold >= 775000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/Slimenite (usr)
							usr.gold -= 775000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Yellow Knight - 800,000 Gold")
						if(usr.gold >= 800000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/Yellownite (usr)
							usr.gold -= 800000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Golem - 825,000 Gold")
						if(usr.gold >= 825000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/Golem (usr)
							usr.gold -= 825000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Wild Cat - 850,000 Gold")
						if(usr.gold >= 850000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/Wildcat (usr)
							usr.gold -= 850000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Healer - 875,000 Gold")
						if(usr.gold >= 875000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/Healer (usr)
							usr.gold -= 875000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Curer - 900,000 Gold")
						if(usr.gold >= 900000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/Curer (usr)
							usr.gold -= 900000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("Ice Sloth - 950,000 Gold")
						if(usr.gold >= 950000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
							new /obj/dolls/IceSloth (usr)
							usr.gold -= 950000
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
					if("-=Nevermind=-")
						usr << "[src]: Alright, seeya later."
						return ..()