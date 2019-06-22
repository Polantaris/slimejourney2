obj
	quest
		icon = 'turfs.dmi'
		icon_state = "item"
		Rubyoflettergal
			name = "The Ruby of Lettergal"
		pendantofdemons
			name = "The Pendant Of Demons"
		ballofholy
			name = "The Holy Ball of Water"
		RetrieverMedal
			name = "Badge of the Retrievers"
		MineKey
			name = "Key to the Mine Door"
		DoorWedge
			name = "Wedge to the Rich Man's Basement"
		FatherEmblem
			icon_state = "coin"
			name = "Father's Emblem"
			DblClick()
				Use()
			verb
				Info()
					set category = "Other"
					usr << "You feel great power flowing through this Emblem.  You feel that after you achieve something great, it will give you more power."
				Use()
					set category = "Other"
					if(usr.monsterkilled >= 150)
						usr << "Suddenly, your body is overwhelmed with power!  Your stats have increased!"
						usr.maxhp += 50000
						usr.maxmp += 50000
						usr.attack += 15000
						usr.defense += 15000
						usr.intelligence += 15000
						usr.agility += 15000
						usr.monsterkilled = 0
					else
						usr << "Nothing happens."
