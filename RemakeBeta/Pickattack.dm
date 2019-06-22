mob
	Newchar
		proc
			PickSpell(mob/enemy2)
				var/choice = input("What skill do you wish to use?")in src.spell
				if(choice == "Bash")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					Bash(enemy,enemy2)
				else if(choice == "Super Bash")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					SuperBash(enemy,enemy2)
				else if(choice == "Multi Swing")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					MultiSwing(enemy,enemy2)
				else if(choice == "Mega Multi Swing")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					MegaMultiSwing(enemy,enemy2)
				else if(choice == "Enflamed Attack")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					EnflamedAttack(enemy,enemy2)
				else if(choice == "Super Enflamed Attack")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					SuperEnflamedAttack(enemy,enemy2)
				else if(choice == "Iced Attack")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					IcedAttack(enemy,enemy2)
				else if(choice == "Super Iced Attack")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					SuperIcedAttack(enemy,enemy2)
				else if(choice == "Tornado Attack")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					TornAttack(enemy,enemy2)
				else if(choice == "Super Tornado Attack")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					SuperTornAttack(enemy,enemy2)
				else if(choice == "Consentrated Attack")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					ConsentratedAttack(enemy,enemy2)
				else if(choice == "Super Consentrated Attack")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					SuperConsentratedAttack(enemy,enemy2)
				else if(choice == "Speed Strike")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					SpeedStrike(enemy,enemy2)
				else if(choice == "Assassinate")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					Assassinate(enemy,enemy2)
				else if(choice == "Glare")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					Glare(enemy,enemy2)
				else if(choice == "Poison Bottle")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					PoisonBottle(enemy,enemy2)
				else if(choice == "MP Drain")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					MPDrain(enemy,enemy2)
				else if(choice == "Silent Death")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					SilentDeath(enemy,enemy2)
				else if(choice == "Masterful Death")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					MasterfulDeath(enemy,enemy2)
				else if(choice == "Heal")
					var/list/list = new/list()
					list += "-=Cancel=-"
					list += src
					if(src.monsterinparty)
						list += src.monsterinparty
					var/mob/enemy=input("Who will you heal?","Select Target")in list
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					PriestHeal(enemy,enemy2)
				else if(choice == "Super Heal")
					var/list/list = new/list()
					list += "-=Cancel=-"
					list += src
					if(src.monsterinparty)
						list += src.monsterinparty
					var/mob/enemy=input("Who will you heal?","Select Target")in list
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					SuperHeal(enemy,enemy2)
				else if(choice == "Holy Bolt")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					HolyBolt(enemy,enemy2)
				else if(choice == "Holy Lightning")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					HolyLightning(enemy,enemy2)
				else if(choice == "Holy Cross")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					HolyCross(enemy,enemy2)
				else if(choice == "Holy Hammer")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					HolyHammer(enemy,enemy2)
				else if(choice == "Holy Hammers")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					HolyHammers(enemy,enemy2)
				else if(choice == "Beat")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					Beat(enemy,enemy2)
				else if(choice == "Cosmic Blast")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					CosmicBlast(enemy,enemy2)
				else if(choice == "Master's Cosmic Blast")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					MastersCosmicBlast(enemy,enemy2)
				else if(choice == "Fire Burst")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					FireBurst(enemy,enemy2)
				else if(choice == "Super Fire Burst")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					SuperFireBurst(enemy,enemy2)
				else if(choice == "Ice Burst")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					IceBurst(enemy,enemy2)
				else if(choice == "Super Ice Burst")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					SuperIceBurst(enemy,enemy2)
				else if(choice == "Wind Burst")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					WindBurst(enemy,enemy2)
				else if(choice == "Super Wind Burst")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					SuperWindBurst(enemy,enemy2)
				else if(choice == "Lightning Burst")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					LightningBurst(enemy,enemy2)
				else if(choice == "Super Lightning Burst")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					SuperLightningBurst(enemy,enemy2)
				else if(choice == "Earth Burst")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					EarthBurst(enemy,enemy2)
				else if(choice == "Super Earth Burst")
					var/list/selection = new/list()
					selection += "-=Cancel=-"
					selection += monstergroup
					var/mob/enemy=input("Who will you attack?","Select Target")in selection
					if(enemy == "-=Cancel=-")
						Battle(enemy2)
						return
					if(istype(enemy,/mob/monster/Area3C/MetalSlime7)||istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
						src << "You know that The [enemy] is immune to all attack spells, so you decide not to even try."
						Battle(enemy2)
						return
					SuperEarthBurst(enemy,enemy2)
				else if(choice == "-=Cancel=-")
					Battle(enemy2)
					return