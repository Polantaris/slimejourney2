mob
	proc
		//Priest Learning Proc
		PriestLevel()
			switch(input("What skill do you want to level up?","You have leveled up!") in list("Heal","Holy Bolt","Holy Hammer","Holy Cross","Beat"))
				if("Heal")
					if(src.priestheal == 0)
						switch(alert("One of the most useful spells a Priest owns, the Heal spell will heal your HP by your intelligence minus the enemy times the level.  It will cost 25 MP.  Once you have learnt this spell, the spell Super Heal will be available.  The max level for this skill is level 5.  Are you sure you want to learn Heal?","Learn Heal?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Heal"))
									src.spell += "Heal"
								if(src.priestheal == 0)
									src.priestheal = 1
								else if(src.priestheal == 5)
									src << "This skill is at its maximum level!"
									PriestLevel()
							if("No")
								PriestLevel()
					else if(src.priestheal == 1)
						switch(alert("One of the most useful spells a Priest owns, the Heal spell will heal your HP by your intelligence minus the enemy times the level.  It will cost 25 MP.  Once you have learnt this spell, the spell Super Heal will be available.  The max level for this skill is level 5.  Are you sure you want to learn Heal?","Learn Heal?","Yes","No"))
							if("Yes")
								if(src.priestheal == 1)
									src.priestheal = 2
								else if(src.priestheal == 5)
									src << "This skill is at its maximum level!"
									PriestLevel()
							if("No")
								PriestLevel()
					else if(src.priestheal == 2)
						switch(alert("One of the most useful spells a Priest owns, the Heal spell will heal your HP by your intelligence minus the enemy times the level.  It will cost 25 MP.  Once you have learnt this spell, the spell Super Heal will be available.  The max level for this skill is level 5.  Are you sure you want to learn Heal?","Learn Heal?","Yes","No"))
							if("Yes")
								if(src.priestheal == 2)
									src.priestheal = 3
								else if(src.priestheal == 5)
									src << "This skill is at its maximum level!"
									PriestLevel()
							if("No")
								PriestLevel()
					else if(src.priestheal == 3)
						switch(alert("One of the most useful spells a Priest owns, the Heal spell will heal your HP by your intelligence minus the enemy times the level.  It will cost 25 MP.  Once you have learnt this spell, the spell Super Heal will be available.  The max level for this skill is level 5.  Are you sure you want to learn Heal?","Learn Heal?","Yes","No"))
							if("Yes")
								if(src.priestheal == 3)
									src.priestheal = 4
								else if(src.priestheal == 5)
									src << "This skill is at its maximum level!"
									PriestLevel()
							if("No")
								PriestLevel()
					else if(src.priestheal == 4)
						switch(alert("One of the most useful spells a Priest owns, the Heal spell will heal your HP by your intelligence minus the enemy times the level.  It will cost 25 MP.  Once you have learnt this spell, the spell Super Heal will be available.  The max level for this skill is level 5.  Are you sure you want to learn Heal?","Learn Heal?","Yes","No"))
							if("Yes")
								if(src.priestheal == 4)
									src.priestheal = 5
								else if(src.priestheal == 5)
									src << "This skill is at its maximum level!"
									PriestLevel()
							if("No")
								PriestLevel()
					else if(src.priestheal == 5)
						switch(alert("You want to learn the Heal spell, but you have alread mastered it, so you can now learn Super Heal.  Super Heal is like the Heal spell, except it heals your intelligence times the level times 3 minus the enemy Intelligence.  It costs 200 MP.  The max level for this skill is level 5.  Are you sure you wish to learn this spell?","Learn Super Heal?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Super Heal"))
									src.spell += "Super Heal"
								if(src.superheal == 0)
									src.superheal = 1
								else if(src.superheal == 1)
									src.superheal = 2
								else if(src.superheal == 2)
									src.superheal = 3
								else if(src.superheal == 3)
									src.superheal = 4
								else if(src.superheal == 4)
									src.superheal = 5
								else if(src.superheal == 5)
									src << "This skill is at its maximum level!"
									PriestLevel()
							if("No")
								PriestLevel()
				if("Holy Bolt")
					if(src.holybolt == 0)
						switch(alert("A good Holy spell, Holy Bolt is a Holy Elemental Attack that does your intelligence times the level minus the enemy intelligence.  This skill will do 2.5x damage if the enemy is weak versus Holy.  This spell costs 50 MP.  The max level is 3.  Are you sure you want to Learn Holy Bolt?","Learn Holy Bolt?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Holy Bolt"))
									src.spell += "Holy Bolt"
								if(src.holybolt == 0)
									src.holybolt = 1
								else if(src.holybolt == 4)
									src << "This skill is at its maximum level!"
									PriestLevel()
							if("No")
								PriestLevel()
					else if(src.holybolt == 1)
						switch(alert("A good Holy spell, Holy Bolt is a Holy Elemental Attack that does your intelligence times the level minus the enemy intelligence.  This skill will do 2.5x damage if the enemy is weak versus Holy.  This spell costs 50 MP.  The max level is 3.  Are you sure you want to Learn Holy Bolt?","Learn Holy Bolt?","Yes","No"))
							if("Yes")
								if(src.holybolt == 1)
									src.holybolt = 2
								else if(src.holybolt == 4)
									src << "This skill is at its maximum level!"
									PriestLevel()
							if("No")
								PriestLevel()
					else if(src.holybolt == 2)
						switch(alert("A good Holy spell, Holy Bolt is a Holy Elemental Attack that does your intelligence times the level minus the enemy intelligence.  This skill will do 2.5x damage if the enemy is weak versus Holy.  This spell costs 50 MP.  The max level is 3.  Are you sure you want to Learn Holy Bolt?","Learn Holy Bolt?","Yes","No"))
							if("Yes")
								if(src.holybolt == 2)
									src.holybolt = 3
								else if(src.holybolt == 3)
									src << "This skill is at its maximum level!"
									PriestLevel()
							if("No")
								PriestLevel()
					else if(src.holybolt == 3)
						switch(alert("You want to learn the Holy Bolt spell, but you have alread mastered it, so you can now learn Holy Lightning.  For 150 MP, you can cast a Holy and Lightning element spell.  This spell will do your intelligence times the level times 2 minus the enemy intelligence Holy and Lightning damage.  if the enemy is weak versus either Holy or Lightning, it does 2.5x damage.  If it is weak versus both, you do 5x damage.  This spell's Max level is 4.  Are you sure you wish to learn this spell?","Learn Holy Lightning?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Holy Lightning"))
									src.spell += "Holy Lightning"
								if(src.holylit == 0)
									src.holylit = 1
								else if(src.holylit == 1)
									src.holylit = 2
								else if(src.holylit == 2)
									src.holylit = 3
								else if(src.holylit == 3)
									src.holylit = 4
								else if(src.holylit == 4)
									src << "This skill is at its maximum level!"
									PriestLevel()
							if("No")
								PriestLevel()
				if("Holy Cross")
					switch(alert("The greatest of Holy spells, Holy Cross is magnificent.  It will do 10x damage to a monster weak versus the Holy Element.  At level 2, it will do 15x damage, and at level 3, it will do 20x damage.  The small disadvantage is it only works on Holy-Weak monsters.  It requires 1,000 MP and has the max level of 3.  Are you sure you wish to learn this spell?","Learn Holy Cross?","Yes","No"))
						if("Yes")
							if(!src.spell.Find("Holy Cross"))
								src.spell += "Holy Cross"
							if(src.holycross == 0)
								src.holycross = 1
							else if(src.holycross == 1)
								src.holycross = 2
							else if(src.holycross == 2)
								src.holycross = 3
							else if(src.holycross == 3)
								src << "This skill is at its maximum level!"
								PriestLevel()
						if("No")
							PriestLevel()
				if("Holy Hammer")
					if(src.holyham == 0)
						switch(alert("The skill Holy Hammer, is a good one indeed.  For 15 MP, you can summon a Hammer that will Bash the enemy's face inside out.  It will do 2.5x damage if the monster is weak versus Holy, otherwise it does you normal attack.  The max level is 1, and when you finish this skill, you can learn Holy Hammers.  Do you want to learn this skill?","Learn Holy Hammer?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Holy Hammer"))
									src.spell += "Holy Hammer"
								if(src.holyham == 0)
									src.holyham = 1
								else if(src.holyham == 1)
									src << "This skill is at its maximum level!"
									PriestLevel()
							if("No")
								PriestLevel()
					else if(src.holyham == 1)
						switch(alert("The skill, Holy Hammers, is a great spell.  For 400 MP, create mutliple Hammers of Holy that will float over you and Bash the enemy inside out mutliple times!  It does your intelligence times the skill level times 4 minus the enemy's intelligence.  The max level is 4.  Do you wish to learn this skill?","Learn Holy Hammers?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Holy Hammers"))
									src.spell += "Holy Hammers"
								if(src.holyhams == 0)
									src.holyhams = 1
								else if(src.holyhams == 1)
									src.holyhams = 2
								else if(src.holyhams == 2)
									src.holyhams = 3
								else if(src.holyhams == 3)
									src.holyhams = 4
								else if(src.holyhams == 4)
									src << "This skill is at its maximum level!"
									PriestLevel()
							if("No")
								PriestLevel()
				if("Beat")
					switch(alert("You have picked to learn the skill Beat.  This is a 1 turn skill that either kills the monster, or does not.  At first, you only have an 8% chance to succeed.  For each level, the chance to succeed goes up 4%.  The max level for this skill is 15, so the max chance to succeed is 64%.  This spell costs 500 MP. NOTE: This spell is useless in PVP.  Do you want to learn this skill?","Learn Beat?","Yes","No"))
						if("Yes")
							if(!src.spell.Find("Beat"))
								src.spell += "Beat"
							if(src.beat == 0)
								src.beat = 1
							else if(src.beat == 1)
								src.beat = 2
							else if(src.beat == 2)
								src.beat = 3
							else if(src.beat == 3)
								src.beat = 4
							else if(src.beat == 4)
								src.beat = 5
							else if(src.beat == 5)
								src.beat = 6
							else if(src.beat == 6)
								src.beat = 7
							else if(src.beat == 7)
								src.beat = 8
							else if(src.beat == 8)
								src.beat = 9
							else if(src.beat == 9)
								src.beat = 10
							else if(src.beat == 10)
								src.beat = 11
							else if(src.beat == 11)
								src.beat = 12
							else if(src.beat == 12)
								src.beat = 13
							else if(src.beat == 13)
								src.beat = 14
							else if(src.beat == 14)
								src.beat = 15
							else if(src.beat == 15)
								src << "This skill is at its maximum level!"
								PriestLevel()
						if("No")
							PriestLevel()

mob
	proc
		PriestHeal(mob/beinghealed,mob/enemy2)
			if(src.priestheal)
				var
					mob/enemy = pick(monstergroup)
					spelldmg = src.intelligence * src.priestheal - enemy.intelligence
				if(src.mp <= 24)
					src << "You don't have enough MP!"
					Battle(enemy2)
				else
					src << "[src] casts Heal on [beinghealed]!"
					src << 'spell.wav'
					sleep(10)
					if(spelldmg >= 1)
						src << "[beinghealed] heals [num2text(spelldmg,20)] HP!"
						sleep(10)
						beinghealed.hp += spelldmg
						src.mp -= 25
						if(beinghealed.hp >= beinghealed.maxhp)
							beinghealed.hp = beinghealed.maxhp
					if(spelldmg <= 0)
						src << "The spell fails!"
						sleep(10)
						src.mp -= 25
			else
				src << "You need to learn this skill before using it!"
				Battle(enemy2)

		SuperHeal(mob/beinghealed,mob/enemy2)
			if(src.superheal)
				var
					mob/enemy = pick(monstergroup)
					spelldmg = src.intelligence * src.superheal * 3 - enemy.intelligence
				if(src.mp <= 199)
					src << "You don't have enough MP!"
					Battle(enemy2)
				else
					src << "[src] casts Super Heal on [beinghealed]!"
					src << 'spell.wav'
					sleep(10)
					if(spelldmg >= 1)
						src << "[beinghealed] heals [num2text(spelldmg,20)] HP!"
						sleep(10)
						beinghealed.hp += spelldmg
						src.mp -= 200
						if(beinghealed.hp >= beinghealed.maxhp)
							beinghealed.hp = beinghealed.maxhp
					if(spelldmg <= 0)
						src << "The spell fails!"
						sleep(10)
						src.mp -= 200
			else
				src << "You need to learn this skill before using it!  To learn it, first learn Heal!"
				Battle(enemy2)

		HolyBolt(mob/enemy,mob/enemy2)
			if(src.holybolt == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 49)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.intelligence*src.holybolt - enemy.intelligence + rand(-100,100)
				if(enemy.weakholy == 1)
					dmg *= 2.5
					dmg = round(dmg)
				src << "Your rage creates a Holy Bolt!"
				src << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					src << "You send the Holy Bolt after the [enemy]!  It hits and does [num2text(dmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 50
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "The Holy Bolt hits [enemy] but does nothing."
					src << 'dodge.wav'
					sleep(10)
					src.mp-=50

		HolyLightning(mob/enemy,mob/enemy2)
			if(src.holylit == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 149)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.intelligence*src.holylit*2 - enemy.intelligence + rand(-100,100)
				if(enemy.weakholy == 1)
					dmg *= 2.5
					dmg = round(dmg)
				if(enemy.weaklit == 1)
					dmg *= 2.5
					dmg = round(dmg)
				src << "Your cast Holy Lightning to strike apon [enemy]!"
				src << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					src << "The [enemy] gets shocked to living hell, also recieveing [num2text(dmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 150
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "The Holy Bolt hits [enemy] but does nothing."
					src << 'dodge.wav'
					sleep(10)
					src.mp-=150

		HolyCross(mob/enemy,mob/enemy2)
			if(src.holycross == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 999)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else if(enemy.weakholy == 1)
				var/dmg
				if(src.holycross == 1)
					dmg = src.intelligence*10 - enemy.intelligence + rand(-100,100)
				if(src.holycross == 2)
					dmg = src.intelligence*15 - enemy.intelligence + rand(-100,100)
				if(src.holycross == 3)
					dmg = src.intelligence*20 - enemy.intelligence + rand(-100,100)
				src << "A large Holy Cross appears above [enemy]!"
				src << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					src << "It falls and lands STRAIGHT on [enemy] doing [num2text(dmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 1000
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "The Cross dissapates."
					src << 'dodge.wav'
					sleep(10)
					src.mp-=150
			else
				src << "A large Holy Cross appears above [enemy]!"
				sleep(10)
				src << "The Cross dissapates."
				src << 'dodge.wav'
				sleep(10)
				src.mp-=1000

		HolyHammer(mob/enemy,mob/enemy2) //create hammer of holy, max lvl 1; does normal attack dmg, 2.5x if enemy weak vs holy. - 15 MP
			if(src.holyham == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 14)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.intelligence - enemy.intelligence + rand(-100,100)
				if(enemy.weakholy == 1)
					dmg *= 2.5
					dmg = round(dmg)
				src << "A Hammer of Holy starts hovering over your head!"
				src << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					src << "The Hammer bashes on [enemy]'s head causing [num2text(dmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 15
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "Nothing happens."
					src << 'dodge.wav'
					sleep(10)
					src.mp-=15

		HolyHammers(mob/enemy,mob/enemy2) //create several hammers of holy, max level 4, does quad dmg *lvl, 2,5x is enemy weak holy. - 400 MP=
			if(src.holyhams == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 399)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.intelligence * src.holyhams * 4 - enemy.intelligence + rand(-100,100)
				if(enemy.weakholy == 1)
					dmg *= 2.5
					dmg = round(dmg)
				src << "Hammers of Holy start hovering over your head!"
				src << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					src << "The Hammers bash on [enemy]'s head causing [num2text(dmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 400
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "Nothing happens."
					src << 'dodge.wav'
					sleep(10)
					src.mp-=400
