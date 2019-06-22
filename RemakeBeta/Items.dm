mob
	proc
		Item(mob/enemy)
			var/list/owitems = new()
			var/tempval
			var/useitem
			for(var/x in src.contents)
				owitems += x
			owitems += "Cancel"
			if (owitems.len == 1)
				src << "You don't have any items."
				Battle(enemy)
			else
				var/useordrop = input("Would you like to use an item") in list("Use","Cancel")
				switch(useordrop)
					if("Cancel")
						Battle(enemy)
					if("Use")
						useitem = input("Which item would you like to use?") in owitems
						if(useitem == "Cancel")
							Battle()
						else if(istype(useitem,/obj/NormalItems/Herb))
							src << "You use the [useitem]!"
							sleep(10)
							tempval = rand(10,30)
							src.hp += tempval
							src << "You were healed for [tempval] HP."
							if(src.hp >= src.maxhp)
								src.hp = src.maxhp
							del(useitem)
						else if(istype(useitem,/obj/NormalItems/Large_Herb))
							src << "You use the [useitem]!"
							sleep(10)
							tempval = rand(50,125)
							src.hp += tempval
							src << "You were healed for [tempval] HP."
							if(src.hp >= src.maxhp)
								src.hp = src.maxhp
							del(useitem)
						else if(istype(useitem,/obj/NormalItems/MagicHerb))
							src << "You use the [useitem]!"
							sleep(10)
							tempval = rand(10,20)
							src.mp += tempval
							src << "You were healed for [tempval] MP."
							if(src.mp >= src.maxmp)
								src.mp = src.maxmp
							del(useitem)
						else if(istype(useitem,/obj/NormalItems/Large_MagicHerb))
							src << "You use the [useitem]!"
							sleep(10)
							tempval = rand(50,125)
							src.mp += tempval
							src << "You were healed for [tempval] MP."
							if(src.mp >= src.maxmp)
								src.mp = src.maxmp
							del(useitem)
						else if(istype(useitem,/obj/NormalItems/Lunch))
							src << "You use the [useitem]!"
							sleep(10)
							tempval = rand(15,50)
							src.hp += tempval
							src << "You were healed for [tempval] HP."
							if(src.hp >= src.maxhp)
								src.hp = src.maxhp
							src.lunch = 0
							del(useitem)
						else if(istype(useitem,/obj/Food/Cooked_Tiny_Meat))
							src << "You use the [useitem]!"
							sleep(10)
							tempval = rand(50,150)
							src.hp += tempval
							src << "You were healed for [tempval] HP."
							if(src.hp >= src.maxhp)
								src.hp = src.maxhp
							del(useitem)
						else if(istype(useitem,/obj/Food/Cooked_Small_Meat))
							src << "You use the [useitem]!"
							sleep(10)
							tempval = rand(125,300)
							src.hp += tempval
							src << "You were healed for [tempval] HP."
							if(src.hp >= src.maxhp)
								src.hp = src.maxhp
							del(useitem)
						else if(istype(useitem,/obj/Food/Cooked_Meat))
							src << "You use the [useitem]!"
							sleep(10)
							tempval = rand(225,550)
							src.hp += tempval
							src << "You were healed for [tempval] HP."
							if(src.hp >= src.maxhp)
								src.hp = src.maxhp
							del(useitem)
						else if(istype(useitem,/obj/Food/Cooked_Large_Meat))
							src << "You use the [useitem]!"
							sleep(10)
							tempval = rand(525,950)
							src.hp += tempval
							src << "You were healed for [tempval] HP."
							if(src.hp >= src.maxhp)
								src.hp = src.maxhp
							del(useitem)
						else if(istype(useitem,/obj/Food/Cooked_Big_Meat))
							src << "You use the [useitem]!"
							sleep(10)
							tempval = rand(900,1250)
							src.hp += tempval
							src << "You were healed for [tempval] HP."
							if(src.hp >= src.maxhp)
								src.hp = src.maxhp
							del(useitem)
						else if(istype(useitem,/obj/Food/Cooked_Huge_Meat))
							src << "You use the [useitem]!"
							sleep(10)
							tempval = rand(1200,3550)
							src.hp += tempval
							src << "You were healed for [tempval] HP."
							if(src.hp >= src.maxhp)
								src.hp = src.maxhp
							del(useitem)
						else if(istype(useitem,/obj/Food/Cooked_Gigantic_Meat))
							src << "You use the [useitem]!"
							sleep(10)
							src << "Your HP was fully healed!"
							src.hp = src.maxhp
							del(useitem)
						else if(istype(useitem,/obj/Food/Cooked_Small_Package_Noodles))
							src << "You use the [useitem]!"
							sleep(10)
							tempval = rand(100,500)
							src.mp += tempval
							src << "You were healed for [tempval] MP."
							if(src.mp >= src.maxmp)
								src.mp = src.maxmp
							del(useitem)
						else if(istype(useitem,/obj/Food/Cooked_Package_Noodles))
							src << "You use the [useitem]!"
							sleep(10)
							tempval = rand(400,1200)
							src.mp += tempval
							src << "You were healed for [tempval] MP."
							if(src.mp >= src.maxmp)
								src.mp = src.maxmp
							del(useitem)
						else if(istype(useitem,/obj/Food/Cooked_Large_Package_Noodles))
							src << "You use the [useitem]!"
							sleep(10)
							tempval = rand(1100,3300)
							src.mp += tempval
							src << "You were healed for [tempval] MP."
							if(src.mp >= src.maxmp)
								src.mp = src.maxmp
							del(useitem)
						else if(istype(useitem,/obj/Food/Cooked_Overly_Sized_Package_Noodles))
							src << "You use the [useitem]!"
							sleep(10)
							src << "Your MP was fully healed!"
							src.mp = src.maxmp
							del(useitem)
						else if(istype(useitem,/obj/NormalItems/Antidote))
							if(src.poisoned == 0)
								src << "You cannot use this, because you are not poisoned!"
								Battle(enemy)
								return
							else
								src << "You use the [useitem]!"
								sleep(10)
								src << "The Poison has left your body!"
								src.poisoned = 0
								del(useitem)
						else if(istype(useitem,/obj/NormalItems/Nullifier))
							if(src.diseased == 0)
								src << "You cannot use this, because you are not diseased!"
								Battle(enemy)
								return
							else
								src << "You use the [useitem]!"
								sleep(10)
								src << "The diseases have fled from your body!"
								src.diseased = 0
								del(useitem)
						else
							src << "You can't use this item in combat!"
							Battle(enemy)

obj
	var/check = 0
//	DblClick()
//		Use()
	NormalItems
		icon = 'turfs.dmi'
		icon_state = "item"
		Token
			DblClick()
				Use()
			verb
				Info()
					set category = "Other"
					usr << "This is a Token.  It has some value somewhere, but you don't know what!"
				Use()
					set category = "Other"
					usr << "Nothing happens."
				Drop()
					set category = "Other"
					usr << "A feel in your body makes you unable to drop the Token!"

		MagicDoor
			name = "Magic Door of Return"
			DblClick()
				Use()
			verb
				Info()
					set category = "Other"
					usr << "This is a Magic Door of Return.  It will return you to town!"
				Use()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until battle is over to use this item!"
					else
						usr << "A Door appears, and you enter, then you are suddenly back at town!"
						usr.loc = locate(usr.innx,usr.inny,usr.innz)
						usr.gotpass = 0
						usr.housearea = 0
						if(usr.monsterfollow != null)
							usr.monsterfollow.loc = usr.loc
						usr.dungeon = 0
						usr.drophouseitems = 0
						usr.verbs-=typesof(/mob/houseverbs/verb)
						usr.verbs-=typesof(/mob/visitorhouseverbs/verb)
						usr.drophouseitems = 0
						usr.whereat = "Town"
						usr.CheckMusic()
						usr << 'wing.wav'
						del(src)
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Antidote
			DblClick()
				Use()
			verb
				Info()
					set category = "Other"
					usr << "This item cures the Poisoned alignment."
				Use()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Use this item in the battle screen!"
					else if(usr.poisoned == 0)
						usr << "You are not poisoned, so there is no reason to use this item!"
					else
						usr << "You use the Antidote!"
						sleep(10)
						usr << "The poison has fled from your body!"
						usr.poisoned = 0
						del(src)
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Nullifier
			DblClick()
				Use()
			verb
				Info()
					set category = "Other"
					usr << "This item cures the Diseased alignment."
				Use()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Use this item in the battle screen!"
					else if(usr.diseased == 0)
						usr << "You are not diseased, so there is no reason to use this item!"
					else
						usr << "You use the Nullifier!"
						sleep(10)
						usr << "The diseases have fled from your body!"
						usr.diseased = 0
						del(src)
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Herb
			DblClick()
				Use()
			verb
				Info()
					set category = "Other"
					usr << "This item heals from 10 to 25 HP."
				Use()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Use this item in the battle screen!"
					else
						var
							healed = rand(10,25)
						usr << "You use the Herb!"
						sleep(10)
						usr << "You are healed [healed] HP!"
						usr.hp += healed
						if(usr.hp >= usr.maxhp)
							usr.hp = usr.maxhp
						del(src)
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Large_Herb
			DblClick()
				Use()
			verb
				Info()
					set category = "Other"
					usr << "This item heals from 50 to 125 HP."
				Use()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Use this item in the battle screen!"
					else
						var
							healed = rand(50,125)
						usr << "You use the Large Herb!"
						sleep(10)
						usr << "You are healed [healed] HP!"
						usr.hp += healed
						if(usr.hp >= usr.maxhp)
							usr.hp = usr.maxhp
						del(src)
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		MagicHerb
			name = "Magic Herb"
			DblClick()
				Use()
			verb
				Info()
					set category = "Other"
					usr << "This item heals from 10 to 20 MP."
				Use()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Use this item in the battle screen!"
					else
						var
							healed = rand(10,20)
						usr << "You use the Magic Herb!"
						sleep(10)
						usr << "You are healed [healed] MP!"
						usr.mp += healed
						if(usr.mp >= usr.maxmp)
							usr.mp = usr.maxmp
						del(src)
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Large_MagicHerb
			name = "Large Magic Herb"
			DblClick()
				Use()
			verb
				Info()
					set category = "Other"
					usr << "This item heals from 40 to 110 MP."
				Use()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Use this item in the battle screen!"
					else
						var
							healed = rand(50,125)
						usr << "You use the Large Magic Herb!"
						sleep(10)
						usr << "You are healed [healed] MP!"
						usr.mp += healed
						if(usr.mp >= usr.maxmp)
							usr.mp = usr.maxmp
						del(src)
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Lunch
			DblClick()
				Use()
			verb
				Info()
					set category = "Other"
					usr << "This item heals from 15 to 50 life."
				Use()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Use this item in the battle screen!"
					else
						var
							healed = rand(15,50)
						usr << "You use the Lunch!"
						sleep(10)
						usr << "You are healed [healed] HP!"
						usr.hp += healed
						if(usr.hp >= usr.maxhp)
							usr.hp = usr.maxhp
						usr.lunch = 0
						del(src)
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You think that this item is to useful to drop."

		Bucket
			verb
				Info()
					set category = "Other"
					usr << "It's a Bucket.  You have a feeling that you should keep it."
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Bucket_Water
			name = "Bucket Filled with Water"
			verb
				Info()
					set category = "Other"
					usr << "It's a Bucket Filled with Water.  You have a feeling that you should keep it."
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

	Special
		icon = 'turfs.dmi'
		icon_state = "item"
		PotExp
			name = "Potion of Experience"
			DblClick()
				Use()
			verb
				Info()
					set category = "Other"
					usr << "It's a Potion of Experience.  You have a feeling that using it will do something good, but its like a drug, too much is bad, this is why its not in stores and only monsters have it...Drugged bastards."
				Use()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Use this item in the battle screen!"
					else
						var/expgained = rand(50000,100000)
						usr << "You use the Potion of Experience!"
						del(src)
						sleep(15)
						usr << "You gain [expgained] Experience!"
						usr.exp += expgained
						usr.gotexp += expgained

						usr.checklevel()
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		SuperPotExp
			name = "Super Potion of Experience"
			DblClick()
				Use()
			verb
				Info()
					set category = "Other"
					usr << "It's a Super Potion of Experience.  You have a feeling that using it will do something good, but its like a drug, too much is bad, this is why its not in stores and only monsters have it...Drugged bastards."
				Use()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Use this item in the battle screen!"
					else
						var/expgained = rand(5000000,10000000)
						usr << "You use the Potion of Experience!"
						del(src)
						sleep(15)
						usr << "You gain [expgained] Experience!"
						usr.exp += expgained
						usr.gotexp += expgained

						usr.checklevel()
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		UnknownPot
			name = "Unknown Potion"
			DblClick()
				Use()
			verb
				Info()
					set category = "Other"
					usr << "It's an Unknown Potion.  You have no clue what it does or what it can do.  For all you know, it will reduce your stats by 100, then again, it could give them 100."
				Use()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Use this item in the battle screen!"
					else
						var/changestats = rand(-100,100)
						usr << "You use the Unknown Potion!"
						sleep(15)
						if(changestats >> 0)
							usr << "All of your stats go up by [changestats] points!"
							usr.maxhp += changestats
							usr.maxmp += changestats
							usr.attack += changestats
							usr.defense += changestats
							usr.intelligence += changestats
							usr.agility += changestats
							del(src)
						else if(changestats << 0)
							usr << "All of your stats go down by [changestats] points!"
							usr.maxhp += changestats
							usr.maxmp += changestats
							usr.attack += changestats
							usr.defense += changestats
							usr.intelligence += changestats
							usr.agility += changestats
							del(src)
						else
							usr << "Nothing happens, the Unknown Potion was useless."
							del(src)
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		SuperUnknownPot
			name = "Super Unknown Potion"
			DblClick()
				Use()
			verb
				Info()
					set category = "Other"
					usr << "It's a Super Unknown Potion.  You have no clue what it does or what it can do.  For all you know, it will reduce your stats by 100, then again, it could give them 100."
				Use()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Use this item in the battle screen!"
					else
						var/changestats = rand(-10000,10000)
						usr << "You use the Unknown Potion!"
						sleep(15)
						if(changestats >> 0)
							usr << "All of your stats go up by [changestats] points!"
							usr.maxhp += changestats
							usr.maxmp += changestats
							usr.attack += changestats
							usr.defense += changestats
							usr.intelligence += changestats
							usr.agility += changestats
							del(src)
						else if(changestats << 0)
							usr << "All of your stats go down by [changestats] points!"
							usr.maxhp += changestats
							usr.maxmp += changestats
							usr.attack += changestats
							usr.defense += changestats
							usr.intelligence += changestats
							usr.agility += changestats
							del(src)
						else
							usr << "Nothing happens, the Unknown Potion was useless."
							del(src)
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc