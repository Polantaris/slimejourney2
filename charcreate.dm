mob
	players
		creation
			Login()
				src.loc = locate(191,191,1)
				client.CharacterSelectionSetup()

		creation2
			Login()
				return 1
			proc
				newy()
					src.loc = locate(191,191,1)
					src << "Welcome to Slime Journey II.  It seems you wish to create a new Slime today."
					nameit()

				nameit()
					usr = src
					//Name Selection
					src.name = input("What would you like to name your new Slime?  Keep in mind, there is a text limit of 3-10 characters for your name.  Also, there is, as always, rules to your name.  No names that consist of curse or inappropriate text.  If a name breaks this rule, it will be deleted.","Name Input",src.key)
					//Name Confirmation
					switch(alert("Are you sure this name is correct?  [src.name]","Confirmation","Yes","No"))
						if("No")
							src << "Then choose a name you would like for your Slime."
							nameit()
							return
					//Checking for invalid names
					if(length(src.name) >= 11)
						src << "This name does not agree with the rules.  Please change it."
						nameit()
					else if(length(src.name) <= 2)
						src << "This name does not agree with the rules.  Please change it."
						nameit()
					else if(src.name == "     " || src.name == "      " || src.name == "       " || src.name == "        " || src.name == "         ")
						src << "This name does not agree with the rules.  Please change it."
						nameit()
					else if(src.name == "          " || src.name == "           " || src.name == "            " || src.name == "             ")
						src << "This name does not agree with the rules.  Please change it."
						nameit()
					else if(src.name == "    " || src.name == "   ")
						src << "This name does not agree with the rules.  Please change it."
						nameit()
					else
						classit()

				classit()
					usr = src
					//Class selection
					src.job = input("What class is this Slime?","Class Selection") in list ("Warrior","Mage","Thief","Priest","Merchant")
					//Class Confirmation
					switch(alert("Are you sure you want this Slime to be a [src.job]?","Confirmation","Yes","No"))
						if("No")
							src << "Then choose the class you would like your Slime to be."
							classit()
							return
						else if("Yes")
							if(src.job == "Mage")
								src.spells += "Blaze"
							else if(src.job == "Priest")
								src.spells += "Heal"
					clanit()

				clanit()
					usr = src
					switch(input("What clan do you wish to be?","Clan Selection") in list("Voris (HP + MP)","Arin (HP + Str)","Feith (MP + Str)","Koran (HP + Int)","Pore (MP + Int)","Zor (HP + Dex)","Yela (MP + Dex)","Ipith (HP + Agi)","Searen (MP + Agi)","Larin (HP + Luk)","Sore (MP + Luk)"))
						if("Voris (HP + MP)")
							src.clan = "Voris"
							alert("You are now part of the Voris clan!  This clan specializes on HP and MP gain.", "Clan Information")
						else if("Arin (HP + Str)")
							src.clan = "Arin"
							alert("You are now part of the Arin clan!  This clan specializes on HP and Strength gain.", "Clan Information")
						else if("Feith (MP + Str)")
							src.clan = "Feith"
							alert("You are now part of the Feith clan!  This clan specializes on MP and Strength gain.", "Clan Information")
						else if("Koran (HP + Int)")
							src.clan = "Koran"
							alert("You are now part of the Koran clan!  This clan specializes on HP and Intelligence gain.", "Clan Information")
						else if("Pore (MP + Int)")
							src.clan = "Pore"
							alert("You are now part of the Pore clan!  This clan specializes on MP and Intelligence gain.", "Clan Information")
						else if("Zor (HP + Dex)")
							src.clan = "Zor"
							alert("You are now part of the Zor clan!  This clan specializes on HP and Dexterity gain.", "Clan Information")
						else if("Yela (MP + Dex)")
							src.clan = "Yela"
							alert("You are now part of the Yela clan!  This clan specializes on MP and Dexterity gain.", "Clan Information")
						else if("Ipith (HP + Agi)")
							src.clan = "Ipith"
							alert("You are now part of the Ipith clan!  This clan specializes on HP and Agility gain.", "Clan Information")
						else if("Searen (MP + Agi)")
							src.clan = "Searen"
							alert("You are now part of the Searen clan!  This clan specializes on MP and Agility gain.", "Clan Information")
						else if("Larin (HP + Luk)")
							src.clan = "Larin"
							alert("You are now part of the Larin clan!  This clan specializes on HP and Luck gain.", "Clan Information")
						else if("Sore (MP + Luk)")
							src.clan = "Sore"
							alert("You are now part of the Sore clan!  This clan specializes on MP and Luck gain.", "Clan Information")
					finishit()

				finishit()
					usr = src
					var/mob/player/P = new /mob/player
					P.name = src.name
					P.job = src.job
					P.clan = src.clan
					P.icon = 'slimes.dmi'
					P.icon_state = "blue"
					src.client.mob = P
					P.saveme()