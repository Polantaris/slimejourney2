mob
	ZT
		icon = 'slimes.dmi'
		Jalack
			icon_state = "bluewing"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set src in oview(1)
					set category = "Other"
					usr << "<b><font color = olive>[src]:</b><font color = green> Welcome, Welcome!  I, as you know, am Jalack.  As you travel through the Temple, please do not worry about falling off, we have put in a special barrier over the edge of the floor to stop you from falling off.  If you look down enough...you can see...NOTHING!"
					sleep(20)
					usr << "<b><font color = olive>[src]:</b><font color = green> ANYWAY, this is the Zenithian Temple.  This is where all with Zenithian Blood are taught.  Pass the trials and you will be welcomed into the ranks of the Zenithian!"
					sleep(20)
					usr << "<b><font color = olive>[usr]:</b><font color = green> But what about the Zenithian Dragon?  I have questions for him!"
					sleep(20)
					usr << "<b><font color = olive>[src]:</b><font color = green> You are a long way away from the Zenithian Castle, my friend.  Please be patcient, all will be told sooner or later."
					sleep(20)
					usr << "<b><font color = olive>[usr]:</b><font color = green> So what's so special about this place?"
					sleep(20)
					usr << "<b><font color = olive>[src]:</b><font color = green> AHHHH!  I was waiting for that question!  The Temple is a temple in the sky.  During the special tests we give you here, you will unleash your abilities to higher levels, and even unleash newer and unknown ones!"
					sleep(20)
					usr << "<b><font color = olive>[usr]:</b><font color = green> But how do I continue and learn these things?"
					sleep(20)
					usr << "<b><font color = olive>[src]:</b><font color = green> Go on, and talk to all of those on your path.  If all of your tasks that are given to you are completed, than the High Zenithian will be able to show you what the training has to do with you!  Continue my friend, and do not give up hope!"

		Teacher1
			name = "Teacher"
			icon_state = "bluewing"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set src in oview(1)
					set category = "Other"
					usr << "<b><font color = olive>[src]:</b><font color = green> Ahhh welcome to the first trial!   This is a very simple task.  The monster down there...kill it.  It will drop an item, take it with you onward into the next area."

		Teacher2
			name = "Teacher"
			icon_state = "redwing"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set src in oview(1)
					set category = "Other"
					usr << "<b><font color = olive>[src]:</b><font color = green> Welcome to the second trial!  The monsters you see as you come cannot be hurt by normal attacks.  Find the right one, and use your skills like theres no tommorow!  But remember, your summon will not attack!"

		Teacher3
			name = "Teacher"
			icon_state = "yellowwing"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set src in oview(1)
					set category = "Other"
					usr << "<b><font color = olive>[src]:</b><font color = green> Welcome to the third trial.  Here you must solve a puzzle.  While the spaces behind me are just a sheet of floor, it is not so.  There are invisible walls in your midist.  Find the path through and you will be rewarded by the chest at the end!  Take the treasure inside, and then go on to the next trial."

		Teacher4
			name = "Teacher"
			icon_state = "pinkwing"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set src in oview(1)
					set category = "Other"
					usr << "<b><font color = olive>[src]:</b><font color = green> Welcome to the fourth trial.  All the Pots here except for one, have a Pot Monster inside.  the Pot that does not have a Pot Monster will have your reward.  After you get the reward, continue to the next trial."

		Teacher5
			name = "Teacher"
			icon_state = "purplewing"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set src in oview(1)
					set category = "Other"
					usr << "<b><font color = olive>[src]:</b><font color = green> Welcome to the final trial!  Here is the most dangerous trial.  There are barriers on the floor.  They do 2,500 damage a step.  You must make it through to the end without dieing, but its not that simple!  If you go to far in the wrong direction, you will be warped to the start!  So make haste, but do not screw up!"

		Gorban
			name = "Gorban"
			icon_state = "bluewing"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set src in oview(1)
					set category = "Other"
					var/a;var/b;var/c;var/d;var/e
					usr << "<b><font color = olive>[src]:</b><font color = green> Jalack told me you were coming.  I am Gorban, Master of the Zenithian Temple.  Yes, the fifth trial was the last.  But there is something else here you much accomplish before continuing.  If you are ready...I'll see the Charms you gained on your way here."
					alert("Show them to me, will you please?","Gorban","Yes","No")
					if("Yes")
						for(var/obj/ZTItems/Charm1/r in usr.contents)
							a = 1
						for(var/obj/ZTItems/Charm2/r in usr.contents)
							b = 1
						for(var/obj/ZTItems/Charm3/r in usr.contents)
							c = 1
						for(var/obj/ZTItems/Charm4/r in usr.contents)
							d = 1
						for(var/obj/ZTItems/Charm5/r in usr.contents)
							e = 1
					else if("No")
						return
					if(a && b && c && d && e)
						usr << "<b><font color = olive>[src]:</b><font color = green> As you wish.  Defeat me now!"
						var/mob/monster/ZTChallengeMonsters/Gorban/P = new /mob/monster/ZTChallengeMonsters/Gorban
						usr.Bump(P)
						if(usr.gorbanwon)
							for(var/obj/ZTItems/Charm1/r in usr.contents)
								del(r)
							for(var/obj/ZTItems/Charm2/r in usr.contents)
								del(r)
							for(var/obj/ZTItems/Charm3/r in usr.contents)
								del(r)
							for(var/obj/ZTItems/Charm4/r in usr.contents)
								del(r)
							for(var/obj/ZTItems/Charm5/r in usr.contents)
								del(r)
							usr << "<b><font color = olive>[src]:</b><font color = green> Continue...and see the Void that is after me... Observe it, and you will go to where you are headed, and you will also learn what you came here for..."
					else
						usr << "<b><font color = olive>[src]:</b><font color = green> You do not have all of the charms!  Fool!  Get them all and return!"

mob
	monster
		ZTChallengeMonsters
			MetalBabble
				icon = 'babbles.dmi'
				icon_state = "metalbabble"
				name = "Metal Babble"
				hp = 15
				attack = 1050000
				defense = 1000000000000000000
				intelligence =  890000
				agility = 890000
				expreward = 0
				gold = 0
				jobexpreward = 0
				spell = list("Attack")
				items = list("Charm 1")

			GreenSlime
				icon = 'slimes.dmi'
				icon_state = "green"
				name = "Green Slime"
				hp = 50000000
				attack = 1150000
				defense = 1000000
				intelligence =  890000
				agility = 890000
				expreward = 0
				gold = 0
				jobexpreward = 0
				spell = list("Green Storm")
				items = list("Gigantic Meat","Overly Sized Noodles")

			RedSlime
				icon = 'slimes.dmi'
				icon_state = "red"
				name = "Red Slime"
				hp = 50000000
				attack = 1150000
				defense = 1000000
				intelligence =  890000
				agility = 890000
				expreward = 0
				gold = 0
				jobexpreward = 0
				spell = list("Red Storm")
				items = list("Gigantic Meat","Overly Sized Noodles")

			BlueSlime
				icon = 'slimes.dmi'
				icon_state = "blue"
				name = "Blue Slime"
				hp = 50000000
				attack = 1150000
				defense = 1000000
				intelligence =  890000
				agility = 890000
				expreward = 0
				gold = 0
				jobexpreward = 0
				spell = list("Blue Storm")
				items = list("Gigantic Meat","Overly Sized Noodles")

			PurpleSlime
				icon = 'slimes.dmi'
				icon_state = "purple"
				name = "Purple Slime"
				hp = 50000000
				attack = 1150000
				defense = 1000000
				intelligence =  890000
				agility = 890000
				expreward = 0
				gold = 0
				jobexpreward = 0
				spell = list("Purple Storm")
				items = list("Gigantic Meat","Overly Sized Noodles")

			TealSlime
				icon = 'slimes.dmi'
				icon_state = "teal"
				name = "Teal Slime"
				hp = 50000000
				attack = 1150000
				defense = 1000000
				intelligence =  890000
				agility = 890000
				expreward = 0
				gold = 0
				jobexpreward = 0
				spell = list("Teal Storm")
				items = list("Gigantic Meat","Overly Sized Noodles")

			SpecialSlime
				icon = 'slimes.dmi'
				icon_state = "green"
				name = "Green Slime"
				hp = 50000000
				attack = 1150000
				defense = 1000000
				intelligence =  890000
				agility = 890000
				expreward = 0
				gold = 0
				jobexpreward = 0
				spell = list("Green Storm")
				items = list("Charm2")

			PotMonster
				icon = 'turfs.dmi'
				icon_state = "pot"
				name = "Pot Monster"
				hp = 60000000
				attack = 1250000
				defense = 1050000
				intelligence =  1000000
				agility = 1000000
				expreward = 0
				gold = 0
				jobexpreward = 0
				items = list("Gigantic Meat","Overly Sized Noodles")
				spell = list("Attack")

			Gorban
				icon = 'slimes.dmi'
				icon_state = "bluewing"
				name = "Gorban"
				hp = 100000000
				attack = 1400000
				defense = 1150000
				intelligence =  1200000
				agility = 12000000
				expreward = 0
				gold = 0
				jobexpreward = 0
				items = list("The Sacred Jewel")
				spell = list("Critical")

turf
	PotMonster
		density = 1
		icon = 'turfs.dmi'
		icon_state = "pot"
		name = "Pot"
		Click()
			if(src in oview(1))Search()
		verb
			Search()
				set src in oview(1)
				set category = "Other"
				usr << "You look inside the pot..."
				sleep(10)
				usr << "A face pops out at you!"
				sleep(10)
				usr << "It's a Pot Monster!"
				var/mob/monster/ZTChallengeMonsters/PotMonster/P = new /mob/monster/ZTChallengeMonsters/PotMonster
				usr.Bump(P)

	Pot
		density = 1
		icon = 'turfs.dmi'
		icon_state = "pot"
		name = "Pot"
		Click()
			if(src in oview(1))Search()
		verb
			Search()
				set src in oview(1)
				set category = "Other"
				usr << "You look inside the pot..."
				sleep(10)
				usr << "You think you see something..."
				sleep(10)
				usr << "It's the Charm of Luck!"
				new /obj/ZTItems/Charm4(usr)

	notouchy
		density = 0
		name = ""
		Enter()
			usr.loc = locate(15,124,10)
			usr << "<b><font color = olive>Teacher:</b><font color = green> You touched the wrong spot!  Try again!"

	Void
		name = "Void"
		icon = 'turfs.dmi'
		icon_state = "blackbarrier"
		density = 1
		Click()
			if(src in oview(1))Observe()
		verb
			Observe()
				set src in oview(1)
				set category = "Other"
				usr << "<i>You look into the void...</i>"
				sleep(20)
				usr << "<i>It starts to speak out to you!</i>"
				sleep(15)
				usr << "<b><font color = olive>Void:</b><font color = green> If you have Gorban's Sacred Jewel, drop it into me, and you will get what you have been training for..."
				sleep(20)
				var/sj2
				for(var/obj/ZTItems/SJ/A in usr.contents)
					sj2 = 1
				if(sj2)
					alert("Do you wish to drop the Sacred Jewel into the Void?","Drop it?","Yes","No")
					if("Yes")
						for(var/obj/ZTItems/SJ/S in usr.contents)
							del S
						usr << "<b><font color = olive>Void:</b><font color = green> Excellent...Hold still...."
						sleep(20)
						usr << "<i>Suddenly a magic white cloud surrounds you!</i>"
						usr.ChangeClass()
					if("No")
						return
				else
					usr << "<i>You don't have the Sacred Jewel!  You can't do anything!</i>"
					return

	Chests
		Chest36
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest36 == 0)
						usr.chest36 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find the Charm of Intelligence!"
						new /obj/ZTItems/Charm3(usr)
						usr.islocked = 0
						sleep(30)
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest37
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest37 == 0)
						usr.chest37 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find the Charm of Endurance!"
						new /obj/ZTItems/Charm5(usr)
						usr.islocked = 0
						sleep(30)
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

obj
	ZTItems
		icon = 'turfs.dmi'
		icon_state = "coin"
		Charm1
			name = "Charm of Metal"

		Charm2
			name = "Charm of Skill"

		Charm3
			name = "Charm of Intelligence"

		Charm4
			name = "Charm of Luck"

		Charm5
			name = "Charm of Endurance"

		SJ
			icon_state = "item"
			name = "Sacred Jewel"

mob
	proc
		ChangeClass()
			if(src.job == "Warrior")
				src.job = "Level 2 Warrior"
			else if(src.job == "Mage")
				src.job = "Level 2 Mage"
			else if(src.job == "Priest")
				src.job = "Level 2 Priest"
			else if(src.job == "Assassin")
				src.job = "Level 2 Assassin"
			else
				src << "BUGGED!  TELL POLANTARIS WITH YOUR CLASS!"
				return
			world << "<font size = 3> CONGRADULATIONS!  [src] has become A [job]!</font>"
			src.loc = locate (149,49.1)
			src.x = 149
			src.y = 49
			src.z = 1
			checkjoblevel()

