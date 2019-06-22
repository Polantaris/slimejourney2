turf
	Stairs
		icon = 'turfs.dmi'
		Downwards
			icon_state = "stairsd"
			name = ""
			Dungeon2A
				Enter()
					usr.loc = locate(37,30,4)
					if(usr.monsterfollow != null)
						usr.monsterfollow.loc = usr.loc
			Dungeon2B
				Enter()
					usr.loc = locate(111,154,4)
					if(usr.monsterfollow != null)
						usr.monsterfollow.loc = usr.loc
			Dungeon2C
				Enter()
					usr.loc = locate(17,70,4)
					if(usr.monsterfollow != null)
						usr.monsterfollow.loc = usr.loc
			Dungeon3A1
				Enter()
					usr.loc = locate(17,38,6)
					if(usr.monsterfollow != null)
						usr.monsterfollow.loc = usr.loc

			Dungeon3B1
				Enter()
					usr.loc = locate(140,17,7)
					if(usr.monsterfollow != null)
						usr.monsterfollow.loc = usr.loc

			Dungeon3C1
				Enter()
					usr.loc = locate(154,154,8)
					if(usr.monsterfollow != null)
						usr.monsterfollow.loc = usr.loc

			Dungeon3A2
				Enter()
					usr.loc = locate(51,9,6)
					if(usr.monsterfollow != null)
						usr.monsterfollow.loc = usr.loc

			Dungeon3B2
				Enter()
					usr.loc = locate(107,69,7)
					if(usr.monsterfollow != null)
						usr.monsterfollow.loc = usr.loc

			Dungeon3C2
				Enter()
					usr.loc = locate(99,58,8)
					if(usr.monsterfollow != null)
						usr.monsterfollow.loc = usr.loc

			SouthTunnel
				Enter()
					usr.loc = locate(91,14,1)
					if(usr.monsterfollow != null)
						usr.monsterfollow.loc = usr.loc
					usr.whereat = "Tunnel"
					usr.CheckMusic()

			NorthTunnel
				Enter()
					usr.loc = locate(149,43,1)
					if(usr.monsterfollow != null)
						usr.monsterfollow.loc = usr.loc
					usr.whereat = "Tunnel"
					usr.CheckMusic()

		Upwards
			icon_state = "stairsu"
			Dungeon2A
				Enter()
					usr.loc = locate(11,154,5)
					if(usr.monsterfollow != null)
						usr.monsterfollow.loc = usr.loc
			Dungeon2B
				Enter()
					usr.loc = locate(121,36,5)
					if(usr.monsterfollow != null)
						usr.monsterfollow.loc = usr.loc
			Dungeon2C
				Enter()
					usr.loc = locate(86,89,5)
					if(usr.monsterfollow != null)
						usr.monsterfollow.loc = usr.loc

			Dungeon3A1
				Enter()
					usr.loc = locate(81,9,6)
					if(usr.monsterfollow != null)
						usr.monsterfollow.loc = usr.loc

			Dungeon3B1
				Enter()
					usr.loc = locate(154,21,7)
					if(usr.monsterfollow != null)
						usr.monsterfollow.loc = usr.loc

			Dungeon3C1
				Enter()
					usr.loc = locate(42,23,8)
					if(usr.monsterfollow != null)
						usr.monsterfollow.loc = usr.loc

			Dungeon3A2
				Enter()
					usr.loc = locate(154,21,6)
					if(usr.monsterfollow != null)
						usr.monsterfollow.loc = usr.loc

			Dungeon3B2
				Enter()
					usr.loc = locate(76,89,7)
					if(usr.monsterfollow != null)
						usr.monsterfollow.loc = usr.loc

			Dungeon3C2
				Enter()
					usr.loc = locate(42,141,8)
					if(usr.monsterfollow != null)
						usr.monsterfollow.loc = usr.loc

			SouthTunnel
				Enter()
					usr.loc = locate(90,24,1)
					if(usr.monsterfollow != null)
						usr.monsterfollow.loc = usr.loc
					usr.whereat = "Outside"
					usr.CheckMusic()

			NorthTunnel
				Enter()
					usr.loc = locate(15,54,1)
					if(usr.monsterfollow != null)
						usr.monsterfollow.loc = usr.loc
					usr.whereat = "Town 2"
					usr.CheckMusic()


	Signs
		icon = 'turfs.dmi'
		icon_state = "Sign"
		density = 1
		HouseSign
			name = "House Office"
			Click()
				if(src in oview(1))
					usr << "<i>You read the sign...<b>Welcome to the House Office!  We are devoted to getting you the house you want!</font>"

		RetrieverSign
			name = "Retriever's Guild!"
			Click()
				if(src in oview(1))
					usr << "<i>You read the sign carefully...<b>Welcome to the Retriever's Guild, all new recruits, please talk to the Recruiter at the front of the building!</font>"

		ItemSign
			name = "Item Shop"
			Click()
				if(src in oview(1))
					usr << "<i>You read the sign carefully...<b>Welcome to the Item Shop.  We have all your Item needs!</font>"

		DungeonSign
			opacity = 1
			name = "Dungeon Sign"
			Click()
				if(src in oview(1))
					usr << "<i>You read the sign carefully...<b>Welcome to the Southern Part of the Passage from Irmant to Parthant!  Enjoy your stay in whichever town you choose to go to.  This sign is closer too...Irmant!</font>"
					usr << ""
					usr << "<i>You notice something written smaller on the bottom of the sign...<b>Beware!  Monsters have infested this dungeon.  Only stay here if you can defeat them without trouble, and beware more!  This is not an easy Passage, the monsters around here have grown intelligence, they now block way for passagers to easily get through the dungeons. - The Wanderer</font>"

		DungeonSign2
			opacity = 1
			name = "Dungeon Sign"
			Click()
				if(src in oview(1))
					usr << "<i>You read the sign carefully...<b>Welcome to the Northern Part of the Passage from Irmant to Parthant!  Enjoy your stay in whichever town you choose to go to.  This sign is closer too...Parthant!</font>"
					usr << ""
					usr << "<i>You notice something written smaller on the bottom of the sign...<b>Beware!  Monsters have infested this dungeon.  Only stay here if you can defeat them without trouble, and beware more!  This is not an easy Passage, the monsters around here have grown intelligence, they now block way for passagers to easily get through the dungeons. - The Wanderer</font>"

		GuestRoom
			opacity = 0
			name = "Sign"
			Click()
				if(src in oview(1))
					usr << "<i>You read the sign carefully...<b>Guest Room</font>"

		MasterRoom
			opacity = 0
			name = "Sign"
			Click()
				if(src in oview(1))
					usr << "<i>You read the sign carefully...<b>Master Bedroom</font>"

	warper1
		icon = 'turfs.dmi'
		icon_state = "barrier"
		Enter()
			if(usr.gotitem1 == 1)
				usr.loc = locate(125,138,3)
				if(usr.monsterfollow != null)
					usr.monsterfollow.loc = usr.loc
				usr.dungeon = 1
				usr.whereat = "Dungeon 1"
				usr << sound('dungeon1.mid',1,0,0)
			else if(usr.gotitem2 == 1)
				usr.loc = locate(10,24,4)
				if(usr.monsterfollow != null)
					usr.monsterfollow.loc = usr.loc
				usr.dungeon = 1
				usr.whereat = "Dungeon 2"
				usr << sound('dungeon2.mid',1,0,0)
			else if(usr.gotitem3 == 1)
				usr.loc = locate(41,135,6)
				if(usr.monsterfollow != null)
					usr.monsterfollow.loc = usr.loc
				usr.dungeon = 1
				usr.whereat = "Dungeon 3"
				usr << sound('dungeon3.mid',1,0,0)
			else if(usr.gotitem4 == 1)
				usr << "<i>You hear someone screaming in the distance...</i><b><font color = olive>Mission Man:</b><font color = blue>  Hey, sorry [usr]!  The portal is refusing to bring you anywhere, I don't know whats going on, try the other two."
			else
				usr << "You have no quest!"

	warper2
		icon = 'turfs.dmi'
		icon_state = "barrier"
		Enter()
			if(usr.gotitem1 == 1)
				usr.loc = locate(15,10,3)
				if(usr.monsterfollow != null)
					usr.monsterfollow.loc = usr.loc
				usr.dungeon = 1
				usr.whereat = "Dungeon 1"
				usr << sound('dungeon1.mid',1,0,0)
			else if(usr.gotitem2 == 1)
				usr.loc = locate(153,153,4)
				if(usr.monsterfollow != null)
					usr.monsterfollow.loc = usr.loc
				usr.dungeon = 1
				usr.whereat = "Dungeon 2"
				usr << sound('dungeon2.mid',1,0,0)
			else if(usr.gotitem3 == 1)
				usr.loc = locate(78,36,7)
				if(usr.monsterfollow != null)
					usr.monsterfollow.loc = usr.loc
				usr.dungeon = 1
				usr.whereat = "Dungeon 3"
				usr << sound('dungeon3.mid',1,0,0)
			else if(usr.gotitem4 == 1)
				usr.loc = locate(122,120,9)
				if(usr.monsterfollow != null)
					usr.monsterfollow.loc = usr.loc
				usr.dungeon = 1
				usr.whereat = "Dungeon 4"
				usr << sound('dungeon4.mid',1,0,0)
			else
				usr << "You have no quest!"

	warper3
		icon = 'turfs.dmi'
		icon_state = "barrier"
		Enter()
			if(usr.gotitem1 == 1)
				usr.loc = locate(32,52,3)
				if(usr.monsterfollow != null)
					usr.monsterfollow.loc = usr.loc
				usr.dungeon = 1
				usr.whereat = "Dungeon 1"
				usr << sound('dungeon1.mid',1,0,0)
			else if(usr.gotitem2 == 1)
				usr.loc = locate(81,71,4)
				if(usr.monsterfollow != null)
					usr.monsterfollow.loc = usr.loc
				usr.dungeon = 1
				usr.whereat = "Dungeon 2"
				usr << sound('dungeon2.mid',1,0,0)
			else if(usr.gotitem3 == 1)
				usr.loc = locate(141,65,8)
				if(usr.monsterfollow != null)
					usr.monsterfollow.loc = usr.loc
				usr.dungeon = 1
				usr.whereat = "Dungeon 3"
				usr << sound('dungeon3.mid',1,0,0)
			else if(usr.gotitem4 == 1)
				usr.loc = locate(83,31,9)
				if(usr.monsterfollow != null)
					usr.monsterfollow.loc = usr.loc
				usr.dungeon = 1
				usr.whereat = "Dungeon 4"
				usr << sound('dungeon4.mid',1,0,0)
			else
				usr << "You have no quest!"

	warpbacker1a
		icon = 'turfs.dmi'
		icon_state = "redbarrier"
		Enter()
			usr.loc = locate(15,38,1)
			if(usr.monsterfollow != null)
				usr.monsterfollow.loc = usr.loc
			usr.dungeon = 0
			usr.whereat = "Town"
			usr << sound('town.mid',1,0,0)

	warpbacker1b
		icon = 'turfs.dmi'
		icon_state = "redbarrier"
		Enter()
			usr.loc = locate(17,38,1)
			if(usr.monsterfollow != null)
				usr.monsterfollow.loc = usr.loc
			usr.dungeon = 0
			usr << sound('town.mid',1,0,0)
			usr.whereat = "Town"

	warpbacker1c
		icon = 'turfs.dmi'
		icon_state = "redbarrier"
		Enter()
			usr.loc = locate(19,38,1)
			if(usr.monsterfollow != null)
				usr.monsterfollow.loc = usr.loc
			usr.dungeon = 0
			usr.whereat = "Town"
			usr << sound('town.mid',1,0,0)

	warpbacker2a
		icon = 'turfs.dmi'
		icon_state = "blackbarrier"
		Enter()
			usr.loc = locate(15,38,1)
			if(usr.monsterfollow != null)
				usr.monsterfollow.loc = usr.loc
			usr.dungeon = 0
			usr << sound('town.mid',1,0,0)

	warpbacker2b
		icon = 'turfs.dmi'
		icon_state = "blackbarrier"
		Enter()
			usr.loc = locate(17,38,1)
			if(usr.monsterfollow != null)
				usr.monsterfollow.loc = usr.loc
			usr.dungeon = 0
			usr.whereat = "Town"
			usr << sound('town.mid',1,0,0)

	warpbacker2c
		icon = 'turfs.dmi'
		icon_state = "blackbarrier"
		Enter()
			usr.loc = locate(19,38,1)
			if(usr.monsterfollow != null)
				usr.monsterfollow.loc = usr.loc
			usr.dungeon = 0
			usr.whereat = "Town"
			usr << sound('town.mid',1,0,0)

	warpbacker3a
		icon = 'turfs.dmi'
		icon_state = "barrier"
		Enter()
			usr.loc = locate(15,38,1)
			if(usr.monsterfollow != null)
				usr.monsterfollow.loc = usr.loc
			usr.dungeon = 0
			usr.whereat = "Town"
			usr << sound('town.mid',1,0,0)

	warpbacker3b
		icon = 'turfs.dmi'
		icon_state = "barrier"
		Enter()
			usr.loc = locate(17,38,1)
			if(usr.monsterfollow != null)
				usr.monsterfollow.loc = usr.loc
			usr.dungeon = 0
			usr.whereat = "Town"
			usr << sound('town.mid',1,0,0)

	warpbacker3c
		icon = 'turfs.dmi'
		icon_state = "barrier"
		Enter()
			usr.loc = locate(19,38,1)
			if(usr.monsterfollow != null)
				usr.monsterfollow.loc = usr.loc
			usr.dungeon = 0
			usr.whereat = "Town"
			usr << sound('town.mid',1,0,0)

	warpbacker4a
		icon = 'turfs.dmi'
		icon_state = "greenbarrier"
		Enter()
			usr.loc = locate(15,38,1)
			if(usr.monsterfollow != null)
				usr.monsterfollow.loc = usr.loc
			usr.dungeon = 0
			usr.whereat = "Town"
			usr << sound('town.mid',1,0,0)

	warpbacker4b
		icon = 'turfs.dmi'
		icon_state = "greenbarrier"
		Enter()
			usr.loc = locate(17,38,1)
			if(usr.monsterfollow != null)
				usr.monsterfollow.loc = usr.loc
			usr.dungeon = 0
			usr.whereat = "Town"
			usr << sound('town.mid',1,0,0)

	warpbacker4c
		icon = 'turfs.dmi'
		icon_state = "greenbarrier"
		Enter()
			usr.loc = locate(19,38,1)
			if(usr.monsterfollow != null)
				usr.monsterfollow.loc = usr.loc
			usr.dungeon = 0
			usr.whereat = "Town"
			usr << sound('town.mid',1,0,0)

	warpbacker4c2
		icon = 'turfs.dmi'
		icon_state = "greenbarrier"
		Enter()
			usr.loc = locate(83,33,9)
			if(usr.monsterfollow != null)
				usr.monsterfollow.loc = usr.loc
			usr.dungeon = 0

	warpbacker4b2
		icon = 'turfs.dmi'
		icon_state = "greenbarrier"
		Enter()
			usr.loc = locate(125,122,9)
			if(usr.monsterfollow != null)
				usr.monsterfollow.loc = usr.loc
			usr.dungeon = 0

	Quest
		icon = 'turfs.dmi'
		icon_state = "blackwater"
		density = 1
		Quest1Gettera
			name = "Black Water"
			Click()
				if(src in oview(1))
					Observe()
			verb
				Observe()
					set src in view(1)
					set category = "Other"
					if(usr.gotitem1 == 0)
						usr << "<i>You look at the water but you see nothing out of the ordinary.</i>"
					else if(usr.gotitem1 == 1)
						usr.islocked = 1
						usr.gotitem1 = 2
						usr << "<i>The water seems to have something shining in it, and you decide to check it out.</i>"
						sleep(10)
						usr << "<i>You found the Ruby of Lettergal!"
						new /obj/quest/Rubyoflettergal/ (usr)
						usr.loc = locate(147,37,3)
						if(usr.monsterfollow != null)
							usr.monsterfollow.loc = usr.loc
						usr << "<i>A mystical force warps you away from the Black Water.</i>"
						usr.islocked = 0
					else if(usr.gotitem1 == 2)
						usr << "<i>You look at the water but you see nothing out of the ordinary.</i>"

		Quest1Getterb
			name = "Black Water"
			Click()
				if(src in oview(1))
					Observe()
			verb
				Observe()
					set src in view(1)
					set category = "Other"
					if(usr.gotitem1 == 0)
						usr << "<i>You look at the water but you see nothing out of the ordinary.</i>"
					else if(usr.gotitem1 == 1)
						usr.islocked = 1
						usr.gotitem1 = 2
						usr << "<i>The water seems to have something shining in it, and you decide to check it out.</i>"
						sleep(10)
						usr << "<i>You found the Ruby of Lettergal!"
						new /obj/quest/Rubyoflettergal/ (usr)
						usr.loc = locate(136,12,3)
						if(usr.monsterfollow != null)
							usr.monsterfollow.loc = usr.loc
						usr << "<i>A mystical force warps you away from the Black Water.</i>"
						usr.islocked = 0
					else if(usr.gotitem1 == 2)
						usr << "<i>You look at the water but you see nothing out of the ordinary.</i>"

		Quest1Getterc
			name = "Black Water"
			Click()
				if(src in oview(1))
					Observe()
			verb
				Observe()
					set src in view(1)
					set category = "Other"
					if(usr.gotitem1 == 0)
						usr << "<i>You look at the water but you see nothing out of the ordinary.</i>"
					else if(usr.gotitem1 == 1)
						usr.islocked = 1
						usr.gotitem1 = 2
						usr << "<i>The water seems to have something shining in it, and you decide to check it out.</i>"
						sleep(10)
						usr << "<i>You found the Ruby of Lettergal!"
						new /obj/quest/Rubyoflettergal/ (usr)
						usr.loc = locate(64,153,3)
						if(usr.monsterfollow != null)
							usr.monsterfollow.loc = usr.loc
						usr << "<i>A mystical force warps you away from the Black Water.</i>"
						usr.islocked = 0
					else if(usr.gotitem1 == 2)
						usr << "<i>You look at the water but you see nothing out of the ordinary.</i>"

		Quest2GetterA
			name = "Black Water"
			Click()
				if(src in oview(1))
					Observe()
			verb
				Observe()
					set src in view(1)
					set category = "Other"
					if(usr.gotitem2 == 0)
						usr << "<i>You look at the water but you see nothing out of the ordinary.</i>"
					else if(usr.gotitem2 == 1)
						usr.islocked = 1
						usr.gotitem2 = 2
						usr << "<i>The water seems to have something shining in it, and you decide to check it out.</i>"
						sleep(10)
						usr << "<i>You found the Pendant of Demons!"
						new /obj/quest/pendantofdemons/ (usr)
						usr.loc = locate(109,113,5)
						if(usr.monsterfollow != null)
							usr.monsterfollow.loc = usr.loc
						usr << "<i>A mystical force warps you away from the Black Water.</i>"
						usr.islocked = 0
					else if(usr.gotitem2 == 2)
						usr << "<i>You look at the water but you see nothing out of the ordinary.</i>"

		Quest2GetterB
			name = "Black Water"
			Click()
				if(src in oview(1))
					Observe()
			verb
				Observe()
					set src in view(1)
					set category = "Other"
					if(usr.gotitem2 == 0)
						usr << "<i>You look at the water but you see nothing out of the ordinary.</i>"
					else if(usr.gotitem2 == 1)
						usr.islocked = 1
						usr.gotitem2 = 2
						usr << "<i>The water seems to have something shining in it, and you decide to check it out.</i>"
						sleep(10)
						usr << "<i>You found the Pendant of Demons!"
						new /obj/quest/pendantofdemons/ (usr)
						usr.loc = locate(16,94,5)
						if(usr.monsterfollow != null)
							usr.monsterfollow.loc = usr.loc
						usr << "<i>A mystical force warps you away from the Black Water.</i>"
						usr.islocked = 0
					else if(usr.gotitem2 == 2)
						usr << "<i>You look at the water but you see nothing out of the ordinary.</i>"

		Quest2GetterC
			name = "Black Water"
			Click()
				if(src in oview(1))
					Observe()
			verb
				Observe()
					set src in view(1)
					set category = "Other"
					if(usr.gotitem2 == 0)
						usr << "<i>You look at the water but you see nothing out of the ordinary.</i>"
					else if(usr.gotitem2 == 1)
						usr.islocked = 1
						usr.gotitem2 = 2
						usr << "<i>The water seems to have something shining in it, and you decide to check it out.</i>"
						sleep(10)
						usr << "<i>You found the Pendant of Demons!"
						new /obj/quest/pendantofdemons/ (usr)
						usr.loc = locate(47,36,5)
						if(usr.monsterfollow != null)
							usr.monsterfollow.loc = usr.loc
						usr << "<i>A mystical force warps you away from the Black Water.</i>"
						usr.islocked = 0
					else if(usr.gotitem2 == 2)
						usr << "<i>You look at the water but you see nothing out of the ordinary.</i>"

		Quest3GetterA
			name = "Black Water"
			Click()
				if(src in oview(1))
					Observe()
			verb
				Observe()
					set src in view(1)
					set category = "Other"
					if(usr.gotitem2 == 0)
						usr << "<i>You look at the water but you see nothing out of the ordinary.</i>"
					else if(usr.gotitem3 == 1)
						usr.islocked = 1
						usr.gotitem3 = 2
						usr << "<i>The water seems to have something shining in it, and you decide to check it out.</i>"
						sleep(10)
						usr << "<i>You found The Holy Ball of Water!"
						new /obj/quest/ballofholy/ (usr)
						usr.loc = locate(109,113,6)
						if(usr.monsterfollow != null)
							usr.monsterfollow.loc = usr.loc
						usr << "<i>A mystical force warps you away from the Black Water.</i>"
						usr.islocked = 0
					else if(usr.gotitem3 == 2)
						usr << "<i>You look at the water but you see nothing out of the ordinary.</i>"

		Quest3GetterB
			name = "Black Water"
			Click()
				if(src in oview(1))
					Observe()
			verb
				Observe()
					set src in view(1)
					set category = "Other"
					if(usr.gotitem2 == 0)
						usr << "<i>You look at the water but you see nothing out of the ordinary.</i>"
					else if(usr.gotitem3 == 1)
						usr.islocked = 1
						usr.gotitem3 = 2
						usr << "<i>The water seems to have something shining in it, and you decide to check it out.</i>"
						sleep(10)
						usr << "<i>You found The Holy Ball of Water!"
						new /obj/quest/ballofholy/ (usr)
						usr.loc = locate(48,115,7)
						if(usr.monsterfollow != null)
							usr.monsterfollow.loc = usr.loc
						usr << "<i>A mystical force warps you away from the Black Water.</i>"
						usr.islocked = 0
					else if(usr.gotitem3 == 2)
						usr << "<i>You look at the water but you see nothing out of the ordinary.</i>"

		Quest3GetterC
			name = "Black Water"
			Click()
				if(src in oview(1))
					Observe()
			verb
				Observe()
					set src in view(1)
					set category = "Other"
					if(usr.gotitem2 == 0)
						usr << "<i>You look at the water but you see nothing out of the ordinary.</i>"
					else if(usr.gotitem3 == 1)
						usr.islocked = 1
						usr.gotitem3 = 2
						usr << "<i>The water seems to have something shining in it, and you decide to check it out.</i>"
						sleep(10)
						usr << "<i>You found The Holy Ball of Water!"
						new /obj/quest/ballofholy/ (usr)
						usr.loc = locate(19,35,8)
						if(usr.monsterfollow != null)
							usr.monsterfollow.loc = usr.loc
						usr << "<i>A mystical force warps you away from the Black Water.</i>"
						usr.islocked = 0
					else if(usr.gotitem3 == 2)
						usr << "<i>You look at the water but you see nothing out of the ordinary.</i>"

		Quest4Getter
			name = "Table"
			icon_state = "tablemap"
			Click()
				if(src in oview(1))
					Look()
			verb
				Look()
					set src in view(1)
					set category = "Other"
					if(usr.gotitem4 == 0)
						usr << "<i>You look at the table and see a map.  On it is various worldmaps, but it's all in Monster, so you don't understand it!"
					else if(usr.gotitem4 == 1)
						usr.islocked = 1
						usr.gotitem4 = 2
						usr << "<i>The table has your Father's Emblem on it.  When you pick it up, you feel a surge of energy going through you!  You have picked up an Item from your Father's Set!  Congradulations!</i>"
						usr.maxhp += 50000
						usr.maxmp += 50000
						usr.attack += 15000
						usr.defense += 15000
						usr.intelligence += 15000
						usr.agility += 15000
						usr.monsterkilled = 0
						sleep(10)
						new /obj/quest/FatherEmblem/ (usr)
						usr.islocked = 0
					else if(usr.gotitem4 == 2)
						usr << "<i>You look at the table and see a map.  On it is various worldmaps, but it's all in Monster, so you don't understand it!"

		Quest4Scenery
			name = "Map Table"
			icon_state = "tablemap"
			Click()
				if(src in oview(1))
					Look()
			verb
				Look()
					set src in view(1)
					set category = "Other"
					usr << "<i>You look at the table and see a map.  On it is various worldmaps, but it's all in Monster, so you don't understand it!"

		BasementDoor
			name = "Door"
			icon_state = "door"
			verb
				Open()
					set src in view(1)
					set category = "Other"
					if(usr.basement == 0)
						usr << "<i>The door is stuck in!  You have nothing to unstick it."
					else if(usr.basement == 1)
						usr.basement = 2
						usr << "<i>The door is stuck in!  Your wedge should be able to get it unstuck!"
						sleep(20)
						usr << "<i>You use the wedge and unstick the door!"
						for(var/obj/quest/DoorWedge/D in usr.contents)
							del D
						icon_state = "invis"
						density = 0
						name = ""
						sleep(50)
						icon_state = "door"
						name = "Door"
						density = 1
					else
						icon_state = "invis"
						density = 0
						name = ""
						sleep(50)
						icon_state = "door"
						name = "Door"
						density = 1

