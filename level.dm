mob
	player
		proc
			Levelup(mob/player/P)
				if(P.exp >= P.expr)
					P << 'levelup.ogg'
					P << "Congradulations!  You have made it to Level [P.level + 1]!"
					var/gain
					if(P.job == "Warrior")
						gain = rand(2,14); if(gain!= 0) P << "You gain [gain] HP!"; P.mhp += gain //HP Gain
						gain = rand(1,5); if(gain!= 0) P << "You gain [gain] MP!"; P.mmp += gain //MP Gain
						gain = rand(1,4); if(gain!= 0) P << "You gain [gain] Strength!"; P.str += gain //Strength Gain
						gain = rand(1,3); if(gain!= 0) P << "You gain [gain] Dexterity!"; P.dex += gain // Dexterity Gain
						gain = rand(0,2); if(gain!= 0) P << "You gain [gain] Agility!"; P.agl += gain //Agility Gain
						gain = rand(0,2); if(gain!= 0) P << "You gain [gain] Intelligence!"; P.int += gain //Intelligence Gain
						gain = rand(0,1); if(gain!= 0) P << "You gain [gain] Luck!"; P.luk += gain //Luck Gain
						P.level += 1
					else if(P.job == "Mage")
						gain = rand(1,5); if(gain!= 0) P << "You gain [gain] HP!"; P.mhp += gain //HP Gain
						gain = rand(2,14); if(gain!= 0) P << "You gain [gain] MP!"; P.mmp += gain //MP Gain
						gain = rand(0,1); if(gain!= 0) P << "You gain [gain] Strength!"; P.str += gain //Strength Gain
						gain = rand(0,2); if(gain!= 0) P << "You gain [gain] Dexterity!"; P.dex += gain // Dexterity Gain
						gain = rand(1,3); if(gain!= 0) P << "You gain [gain] Agility!"; P.agl += gain //Agility Gain
						gain = rand(2,5); if(gain!= 0) P << "You gain [gain] Intelligence!"; P.int += gain //Intelligence Gain
						gain = rand(1,3); if(gain!= 0) P << "You gain [gain] Luck!"; P.luk += gain //Luck Gain
						P.level += 1
					else if(P.job == "Thief")
						gain = rand(1,6); if(gain!= 0) P << "You gain [gain] HP!"; P.mhp += gain //HP Gain
						gain = rand(1,6); if(gain!= 0) P << "You gain [gain] MP!"; P.mmp += gain //MP Gain
						gain = rand(0,3); if(gain!= 0) P << "You gain [gain] Strength!"; P.str += gain //Strength Gain
						gain = rand(1,3); if(gain!= 0) P << "You gain [gain] Dexterity!"; P.dex += gain // Dexterity Gain
						gain = rand(1,5); if(gain!= 0) P << "You gain [gain] Agility!"; P.agl += gain //Agility Gain
						gain = rand(0,2); if(gain!= 0) P << "You gain [gain] Intelligence!"; P.int += gain //Intelligence Gain
						gain = rand(0,2); if(gain!= 0) P << "You gain [gain] Luck!"; P.luk += gain //Luck Gain
						P.level += 1
					else if(P.job == "Priest")
						gain = rand(1,8); if(gain!= 0) P << "You gain [gain] HP!"; P.mhp += gain //HP Gain
						gain = rand(2,10); if(gain!= 0) P << "You gain [gain] MP!"; P.mmp += gain //MP Gain
						gain = rand(1,3); if(gain!= 0) P << "You gain [gain] Strength!"; P.str += gain //Strength Gain
						gain = rand(0,3); if(gain!= 0) P << "You gain [gain] Dexterity!"; P.dex += gain // Dexterity Gain
						gain = rand(0,4); if(gain!= 0) P << "You gain [gain] Agility!"; P.agl += gain //Agility Gain
						gain = rand(1,5); if(gain!= 0) P << "You gain [gain] Intelligence!"; P.int += gain //Intelligence Gain
						gain = rand(0,2); if(gain!= 0) P << "You gain [gain] Luck!"; P.luk += gain //Luck Gain
						P.level += 1
					else if(P.job == "Merchant")
						gain = rand(2,5); if(gain!= 0) P << "You gain [gain] HP!"; P.mhp += gain //HP Gain
						gain = rand(2,5); if(gain!= 0) P << "You gain [gain] MP!"; P.mmp += gain //MP Gain
						gain = rand(0,4); if(gain!= 0) P << "You gain [gain] Strength!"; P.str += gain //Strength Gain
						gain = rand(0,4); if(gain!= 0) P << "You gain [gain] Dexterity!"; P.dex += gain // Dexterity Gain
						gain = rand(0,4); if(gain!= 0) P << "You gain [gain] Agility!"; P.agl += gain //Agility Gain
						gain = rand(0,4); if(gain!= 0) P << "You gain [gain] Intelligence!"; P.int += gain //Intelligence Gain
						gain = rand(0,4); if(gain!= 0) P << "You gain [gain] Luck!"; P.luk += gain //Luck Gain
						P.level += 1
					P.ClanGain(P)
					P.SpellGain(P)
					P.NewExp(P)

			ClanGain(mob/player/P)
				var/gain1 = rand(2,5)
				var/gain2 = rand(0,2)
				if(P.clan == "Voris")
					gain2 = rand(2.5)
					P << "You gain [gain1] HP and [gain2] MP due to your clan!"
					P.mhp += gain1
					P.mmp += gain2
				else if(P.clan == "Arin")
					P << "You gain [gain1] HP and [gain2] Strength due to your clan!"
					P.mhp += gain1
					P.str += gain2
				else if(P.clan == "Feith")
					P << "You gain [gain1] MP and [gain2] Strength due to your clan!"
					P.mmp += gain1
					P.str += gain2
				else if(P.clan == "Koran")
					P << "You gain [gain1] HP and [gain2] Intelligence due to your clan!"
					P.mhp += gain1
					P.int += gain2
				else if(P.clan == "Pore")
					P << "You gain [gain1] MP and [gain2] Intelligence due to your clan!"
					P.mmp += gain1
					P.int += gain2
				else if(P.clan == "Zor")
					P << "You gain [gain1] HP and [gain2] Dexterity due to your clan!"
					P.mhp += gain1
					P.dex += gain2
				else if(P.clan == "Yela")
					P << "You gain [gain1] MP and [gain2] Dexterity due to your clan!"
					P.mmp += gain1
					P.dex += gain2
				else if(P.clan == "Ipith")
					P << "You gain [gain1] HP and [gain2] Agility due to your clan!"
					P.mhp += gain1
					P.agl += gain2
				else if(P.clan == "Searen")
					P << "You gain [gain1] MP and [gain2] Agility due to your clan!"
					P.mmp += gain1
					P.agl += gain2
				else if(P.clan == "Larin")
					P << "You gain [gain1] HP and [gain2] Luck due to your clan!"
					P.mhp += gain1
					P.luk += gain2
				else if(P.clan == "Sore")
					P << "You gain [gain1] MP and [gain2] Luck due to your clan!"
					P.mmp += gain1
					P.luk += gain2

			SpellGain(mob/player/P)
				if(P.job == "Warrior")
					if(P.level == 10)
						P << "You learn Fire Slash!"
						P << "You learn Lit Slash!"
						P << "You learn Ice Slash!"
						P << "You learn Wind Slash!"
						P << "You learn Earth Slash!"
						P.spells += "Fire Slash"
						P.spells += "Lit Slash"
						P.spells += "Ice Slash"
						P.spells += "Wind Slash"
						P.spells += "Earth Slash"
				else if(P.job == "Mage")
					if(P.level == 3)
						P << "You learn Icebolt!"
						P.spells += "Icebolt"
					if(P.level == 4)
						P << "You learn Bolt!"
						P.spells += "Bolt"
						P << "You learn Sap!"
						P.spells += "Sap"
					if(P.level == 6)
						P << "You learn Bang!"
						P.spells += "Bang"
					if(P.level == 10)
						P << "You learn Firebal!"
						P.spells += "Firebal"
					if(P.level == 14)
						P << "You learn Blazemore!"
						P.spells += "Blazemore"
					if(P.level == 15)
						P << "You learn Snowstorm!"
						P.spells += "Snowstorm"
					if(P.level == 17)
						P << "You learn Zap!"
						P.spells += "Zap"
						P << "You learn Decrease!"
						P.spells += "Decrease"
					if(P.level == 20)
						P << "You learn Boom!"
						P.spells += "Boom"
					if(P.level == 23)
						P << "You learn Firebane!"
						P.spells += "Firebane"
					if(P.level == 28)
						P << "You learn Blizzard!"
						P.spells += "Blizzard"
					if(P.level == 30)
						P << "You learn Blazemost!"
						P.spells += "Blazemost"
					if(P.level == 32)
						P << "You learn Firebolt!"
						P.spells += "Firebolt"
					if(P.level == 34)
						P << "You learn Bounce!"
						P.spells += "Bounce"
					if(P.level == 37)
						P << "You learn Thordain!"
						P.spells += "Thordain"
					if(P.level == 40)
						P << "You learn Bikill!"
						P.spells += "Bikill"
					if(P.level == 45)
						P << "You learn Explodet!"
						P.spells += "Explodet"
					if(P.level == 50)
						P << "You learn BeDragon!"
						P.spells += "BeDragon"
				else if(P.job == "Priest")
					if(P.level == 2)
						P << "You learn Upper!"
						P.spells += "Upper"
					if(P.level == 5)
						P << "You learn Infernos!"
						P.spells += "Infernos"
					if(P.level == 6)
						P << "You learn Antidote!"
						P.spells += "Antidote"
					if(P.level == 11)
						P << "You learn Stopspell!"
						P.spells += "Stopspell"
					if(P.level == 12)
						P << "You learn Surround!"
						P.spells += "Surround"
					if(P.level == 14)
						P << "You learn Healmore!"
						P.spells += "Healmore"
					if(P.level == 15)
						P << "You learn Increase!"
						P.spells += "Increase"
					if(P.level == 16)
						P << "You learn Infermore!"
						P.spells += "Infermore"
					if(P.level == 18)
						P << "You learn Healus!"
						P.spells += "Healus"
					if(P.level == 20)
						P << "You learn Barrier!"
						P.spells += "Barrier"
					if(P.level == 33)
						P << "You learn Healall!"
						P.spells += "Healall"
					if(P.level == 38)
						P << "You learn Infermost!"
						P.spells += "Infermost"
					if(P.level == 40)
						P << "You learn Beat!"
						P.spells += "Beat"
					if(P.level == 42)
						P << "You learn Healusall!"
						P.spells += "Healusall"
					if(P.level == 105)
						P << "You learn Defeat!"
						P.spells += "Defeat"

			NewExp(mob/player/P)
				//New Exp Req.
				P.exp -= P.expr
				if(P.level <= 5)
					P.expr += 15
				else if(P.level <= 15)
					P.expr += 56
				else if(P.level <= 23)
					P.expr += 102
				else if(P.level <= 31)
					P.expr += 178
				else if(P.level <= 40)
					P.expr += 277
				else if(P.level <= 45)
					P.expr += 534
				else if(P.level <= 51)
					P.expr += 997
				else if(P.level <= 60)
					P.expr += 1653
				else if(P.level <= 68)
					P.expr += 2330
				else if(P.level <= 75)
					P.expr += 3302
				else if(P.level <= 83)
					P.expr += 4507
				else if(P.level <= 92)
					P.expr += 6735
				else if(P.level <= 99)
					P.expr += 8120
				//Recheck for another level.
				if(P.exp >= P.expr)
					Levelup(P)

			JobLevelup(mob/player/P)
				if(P.jobexp >= P.jobexpr)
					P << "Congradulations!  You have made it to Job Level [P.joblevel + 1]!"
					P.joblevel += 1
					var/special = rand(1,3)
					P.ap += special
					P << "You have gained [special] Ability Points!  You can spend them on any stat..."
					while(ap > 0)
						switch(input("You have [P.ap] more Ability Points!  What stat do you wish to spend them on? (Note: Stats take 2 Ability Points)") in list("Max HP","Max MP","Strength","Dexterity","Agility","Intelligence","Luck"))
							if("Max HP")
								P.mhp += 3
								P << "You increase your Max HP by 3 by using an Ability Point!"
								P.ap -= 1
							if("Max MP")
								P.mmp += 1
								P << "You increase your Max MP by 1 by using an Ability Point!"
								P.ap -= 1
							if("Strength")
								if(P.ap >= 2)
									P.str += 1
									P << "You increase your Strength by 1 by using 2 Ability Points!"
									P.ap -= 2
								else
									P << "You do not have enough Ability Points."
							if("Dexterity")
								if(P.ap >= 2)
									P.dex += 1
									P << "You increase your Dexterity by 1 by using 2 Ability Points!"
									P.ap -= 2
								else
									P << "You do not have enough Ability Points."
							if("Agility")
								if(P.ap >= 2)
									P.agl += 1
									P << "You increase your Agility by 1 by using 2 Ability Points!"
									P.ap -= 2
								else
									P << "You do not have enough Ability Points."
							if("Intelligence")
								if(P.ap >= 2)
									P.int += 1
									P << "You increase your Intelligence by 1 by using 2 Ability Points!"
									P.ap -= 2
								else
									P << "You do not have enough Ability Points."
							if("Luck")
								if(P.ap >= 2)
									P.luk += 1
									P << "You increase your Luck by 1 by using 2 Ability Points!"
									P.ap -= 2
								else
									P << "You do not have enough Ability Points."
				NewJobExp(P)

			NewJobExp(mob/player/P)
				P.jobexp -= P.jobexpr
				if(P.joblevel <= 5)
					P.jobexpr += 23
				else if(P.joblevel <= 15)
					P.jobexpr += 94
				else if(P.joblevel <= 23)
					P.jobexpr += 156
				else if(P.joblevel <= 31)
					P.jobexpr += 223
				else if(P.joblevel <= 40)
					P.jobexpr += 405
				else if(P.joblevel <= 45)
					P.jobexpr += 785
				else if(P.joblevel <= 51)
					P.jobexpr += 1205
				else if(P.joblevel <= 60)
					P.jobexpr += 1556
				else if(P.joblevel <= 68)
					P.jobexpr += 2876
				else if(P.joblevel <= 75)
					P.jobexpr += 4526
				else if(P.joblevel <= 83)
					P.jobexpr += 6452
				else if(P.joblevel <= 92)
					P.jobexpr += 8452
				else if(P.joblevel <= 99)
					P.jobexpr += 11542
				if(P.jobexp >= P.jobexpr)
					JobLevelup(P)


