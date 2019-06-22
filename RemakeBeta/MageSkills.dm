mob
	proc
		//Mage Learning Proc
		MageLevel()
			switch(input("What skill do you want to level up?") in list("Cosmic Blast","Fire Burst","Ice Burst","Wind Burst","Lightning Burst","Earth Burst","Beat"))
				if("Cosmic Blast")
					if(src.cblast == 0)
						switch(alert("You have picked to learn the skill Cosmic Blast.  This skill is a 1 turn attack that does Damage times the level divided by two.  So at level 10, which is max level, it will hit for 5 times damage.  The MP usage for this skill is 35.  Once this skill is learnt, Master's Cosmic Blast will be available, just click on this option again to learn Master's Cosmic Blast.  Do you want to learn this skill?","Learn Cosmic Blast?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Cosmic Blast"))
									src.spell += "Cosmic Blast"
								if(src.cblast == 0)
									src.cblast = 1
								else if(src.cblast == 5)
									src << "This skill is at its maximum level!"
									MageLevel()
							if("No")
								MageLevel()
					else if(src.cblast == 1)
						switch(alert("You have picked to learn the skill Cosmic Blast.  This skill is a 1 turn attack that does Damage times the level divided by two.  So at level 10, which is max level, it will hit for 5 times damage.  The MP usage for this skill is 35.  Once this skill is learnt, Master's Cosmic Blast will be available, just click on this option again to learn Master's Cosmic Blast.  Do you want to learn this skill?","Learn Cosmic Blast?","Yes","No"))
							if("Yes")
								if(src.cblast == 1)
									src.cblast = 2
								else if(src.cblast == 5)
									src << "This skill is at its maximum level!"
									MageLevel()
							if("No")
								MageLevel()
					else if(src.cblast == 2)
						switch(alert("You have picked to learn the skill Cosmic Blast.  This skill is a 1 turn attack that does Damage times the level divided by two.  So at level 10, which is max level, it will hit for 5 times damage.  The MP usage for this skill is 35.  Once this skill is learnt, Master's Cosmic Blast will be available, just click on this option again to learn Master's Cosmic Blast.  Do you want to learn this skill?","Learn Cosmic Blast?","Yes","No"))
							if("Yes")
								if(src.cblast == 2)
									src.cblast = 3
								else if(src.cblast == 5)
									src << "This skill is at its maximum level!"
									MageLevel()
							if("No")
								MageLevel()
					else if(src.cblast == 3)
						switch(alert("You have picked to learn the skill Cosmic Blast.  This skill is a 1 turn attack that does Damage times the level divided by two.  So at level 10, which is max level, it will hit for 5 times damage.  The MP usage for this skill is 35.  Once this skill is learnt, Master's Cosmic Blast will be available, just click on this option again to learn Master's Cosmic Blast.  Do you want to learn this skill?","Learn Cosmic Blast?","Yes","No"))
							if("Yes")
								if(src.cblast == 3)
									src.cblast = 4
								else if(src.cblast == 5)
									src << "This skill is at its maximum level!"
									MageLevel()
							if("No")
								MageLevel()
					else if(src.cblast == 4)
						switch(alert("You have picked to learn the skill Cosmic Blast.  This skill is a 1 turn attack that does Damage times the level divided by two.  So at level 5, which is max level, it will hit for 2.5 times damage.  The MP usage for this skill is 35.  Once this skill is learnt, Master's Cosmic Blast will be available, just click on this option again to learn Master's Cosmic Blast.  Do you want to learn this skill?","Learn Cosmic Blast?","Yes","No"))
							if("Yes")
								if(src.cblast == 4)
									src.cblast = 5
								else if(src.cblast == 5)
									src << "This skill is at its maximum level!"
									MageLevel()
							if("No")
								MageLevel()
					else if(src.cblast == 5)
						switch(alert("You have picked to learn the skill Cosmic Blast.  Since you have already mastered this skill, the skill Master's Cosmic Blast is now available.  This skill is a 1 turn attack that does Damage times the level times by two.  So at level 5, which is max level, it will hit for 10 times damage.  The MP usage for this skill is 200.  Do you want to learn this skill?","Learn Master's Cosmic Blast?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Master's Cosmic Blast"))
									src.spell += "Master's Cosmic Blast"
								if(src.masterscblast == 0)
									src.masterscblast = 1
								else if(src.masterscblast == 1)
									src.masterscblast = 2
								else if(src.masterscblast == 2)
									src.masterscblast = 3
								else if(src.masterscblast == 3)
									src.masterscblast = 4
								else if(src.masterscblast == 4)
									src.masterscblast = 5
								else if(src.masterscblast == 5)
									src << "This skill is at its maximum level!"
									MageLevel()
							if("No")
								MageLevel()
				if("Fire Burst")
					if(src.fireburst == 0)
						switch(alert("You have picked to learn the skill Fire Burst.  This skill is a 1 turn attack that does Normal Damage for 25 MP.  The maximum level for this skill is 1.  This skill will cause fire elemental damage, if the monster is weak against fire, you will do 250% normal damage.  Once this skill is learnt, Super Fire Burst will be available, just click on this option again to learn Super Fire Burst.  Do you want to learn this skill?","Learn Fire Burst?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Fire Burst"))
									src.spell += "Fire Burst"
								if(src.fireburst == 0)
									src.fireburst = 1
								else if(src.fireburst == 1)
									src << "This skill is at its maximum level!"
									MageLevel()
							if("No")
								MageLevel()
					else if(src.fireburst == 1)
						switch(alert("You have picked to learn the skill Fire Burst.  Since you have mastered the skill Fire Burst, you can now learn Super Fire Burst.  This skill will do Double Damage in 1 turn for 125 MP.  The maximum level for this skill is 2.  At level 1, this skill will do normal damage, as if it was Fire Burst, but at level 2 this will do the Double Damage, plus if the monster is weak against the fire element, this attack will do Double damage, plus 250% of that double damage.  Do you want to learn this skill?","Learn Super Fire Burst?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Super Fire Burst"))
									src.spell += "Super Fire Burst"
								if(src.superfireburst == 0)
									src.superfireburst = 1
								else if(src.superfireburst == 1)
									src.superfireburst = 2
								else if(src.superfireburst == 2)
									src << "This skill is at its maximum level!"
									MageLevel()
							if("No")
								MageLevel()
				if("Ice Burst")
					if(src.iceburst == 0)
						switch(alert("You have picked to learn the skill Ice Burst.  This skill is a 1 turn attack that does Normal Damage for 25 MP.  The maximum level for this skill is 1.  This skill will cause ice elemental damage, if the monster is weak against ice, you will do 250% normal damage.  Once this skill is learnt, Super Ice Burst will be available, just click on this option again to learn Super Ice Burst.  Do you want to learn this skill?","Learn Ice Burst?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Ice Burst"))
									src.spell += "Ice Burst"
								if(src.iceburst == 0)
									src.iceburst = 1
								else if(src.iceburst == 1)
									src << "This skill is at its maximum level!"
									MageLevel()
							if("No")
								MageLevel()
					else if(src.iceburst == 1)
						switch(alert("You have picked to learn the skill Ice Burst.  Since you have mastered the skill Ice Burst, you can now learn Super Ice Burst.  This skill will do Double Damage in 1 turn for 125 MP.  The maximum level for this skill is 2.  At level 1, this skill will do normal damage, as if it was Ice Burst, but at level 2 this will do the Double Damage, plus if the monster is weak against the ice element, this attack will do Double damage, plus 250% of that double damage.  Do you want to learn this skill?","Learn Super Ice Burst?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Super Ice Burst"))
									src.spell += "Super Ice Burst"
								if(src.supericeburst == 0)
									src.supericeburst = 1
								else if(src.supericeburst == 1)
									src.supericeburst = 2
								else if(src.supericeburst == 2)
									src << "This skill is at its maximum level!"
									MageLevel()
							if("No")
								MageLevel()
				if("Wind Burst")
					if(src.windburst == 0)
						switch(alert("You have picked to learn the skill Wind Burst.  This skill is a 1 turn attack that does Normal Damage for 25 MP.  The maximum level for this skill is 1.  This skill will cause wind elemental damage, if the monster is weak against wind, you will do 250% normal damage.  Once this skill is learnt, Super Wind Burst will be available, just click on this option again to learn Super Wind Burst.  Do you want to learn this skill?","Learn Wind Burst?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Wind Burst"))
									src.spell += "Wind Burst"
								if(src.windburst == 0)
									src.windburst = 1
								else if(src.windburst == 1)
									src << "This skill is at its maximum level!"
									MageLevel()
							if("No")
								MageLevel()
					else if(src.windburst == 1)
						switch(alert("You have picked to learn the skill Wind Burst.  Since you have mastered the skill Wind Burst, you can now learn Super Wind Burst.  This skill will do Double Damage in 1 turn for 125 MP.  The maximum level for this skill is 2.  At level 1, this skill will do normal damage, as if it was Wind Burst, but at level 2 this will do the Double Damage, plus if the monster is weak against the wind element, this attack will do Double damage, plus 250% of that double damage.  Do you want to learn this skill?","Learn Super Wind Burst?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Super Wind Burst"))
									src.spell += "Super Wind Burst"
								if(src.superwindburst == 0)
									src.superwindburst = 1
								else if(src.superwindburst == 1)
									src.superwindburst = 2
								else if(src.superwindburst == 2)
									src << "This skill is at its maximum level!"
									MageLevel()
							if("No")
								MageLevel()
				if("Lightning Burst")
					if(src.lightningburst == 0)
						switch(alert("You have picked to learn the skill Lightning Burst.  This skill is a 1 turn attack that does Normal Damage for 25 MP.  The maximum level for this skill is 1.  This skill will cause lightning elemental damage, if the monster is weak against lightning, you will do 250% normal damage.  Once this skill is learnt, Super Lightning Burst will be available, just click on this option again to learn Super Lightning Burst.  Do you want to learn this skill?","Learn Lightning Burst?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Lightning Burst"))
									src.spell += "Lightning Burst"
								if(src.lightningburst == 0)
									src.lightningburst = 1
								else if(src.lightningburst == 1)
									src << "This skill is at its maximum level!"
									MageLevel()
							if("No")
								MageLevel()
					else if(src.lightningburst == 1)
						switch(alert("You have picked to learn the skill Lightning Burst.  Since you have mastered the skill Lightning Burst, you can now learn Super Lightning Burst.  This skill will do Double Damage in 1 turn for 125 MP.  The maximum level for this skill is 2.  At level 1, this skill will do normal damage, as if it was Lightning Burst, but at level 2 this will do the Double Damage, plus if the monster is weak against the lightning element, this attack will do Double damage, plus 250% of that double damage.  Do you want to learn this skill?","Learn Super Lightning Burst?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Super Lightning Burst"))
									src.spell += "Super Lightning Burst"
								if(src.superlightningburst == 0)
									src.superlightningburst = 1
								else if(src.superlightningburst == 1)
									src.superlightningburst = 2
								else if(src.superlightningburst == 2)
									src << "This skill is at its maximum level!"
									MageLevel()
							if("No")
								MageLevel()
				if("Earth Burst")
					if(src.earthburst == 0)
						switch(alert("You have picked to learn the skill Earth Burst.  This skill is a 1 turn attack that does Normal Damage for 25 MP.  The maximum level for this skill is 1.  This skill will cause earth elemental damage, if the monster is weak against earth, you will do 250% normal damage.  Once this skill is learnt, Super Earth Burst will be available, just click on this option again to learn Super Earth Burst.  Do you want to learn this skill?","Learn Earth Burst?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Earth Burst"))
									src.spell += "Earth Burst"
								if(src.earthburst == 0)
									src.earthburst = 1
								else if(src.earthburst == 1)
									src << "This skill is at its maximum level!"
									MageLevel()
							if("No")
								MageLevel()
					else if(src.earthburst == 1)
						switch(alert("You have picked to learn the skill Earth Burst.  Since you have mastered the skill Earth Burst, you can now learn Super Earth Burst.  This skill will do Double Damage in 1 turn for 125 MP.  The maximum level for this skill is 2.  At level 1, this skill will do normal damage, as if it was Earth Burst, but at level 2 this will do the Double Damage, plus if the monster is weak against the earth element, this attack will do Double damage, plus 250% of that double damage.  Do you want to learn this skill?","Learn Super Earth Burst?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Super Earth Burst"))
									src.spell += "Super Earth Burst"
								if(src.superearthburst == 0)
									src.superearthburst = 1
								else if(src.superearthburst == 1)
									src.superearthburst = 2
								else if(src.superearthburst == 2)
									src << "This skill is at its maximum level!"
									MageLevel()
							if("No")
								MageLevel()
				if("Beat")
					switch(alert("You have picked to learn the skill Beat.  This is a 1 turn skill that either kills the monster, or does not.  At first, you only have an 8% chance to succeed.  For each level, the chance to succeed goes up 4%.  The max level for this skill is 15, so the max chance to succeed is 64%.  This spell costs 500 MP.  NOTE: This spell is useless in PVP.  Do you want to learn this skill?","Learn Beat?","Yes","No"))
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
								MageLevel()
						if("No")
							MageLevel()

		CosmicBlast(mob/enemy,mob/enemy2)
			if(src.cblast == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 34)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.intelligence*(src.cblast/2) - enemy.intelligence + rand(-100,100)
				dmg = round(dmg)
				src << "You focus your Magical Energies to summon a Cosmic Ball!"
				src << 'spell.wav'
				sleep(10)
				if(dmg >= 101)
					src << "You erupt the Cosmic Ball in a Cosmic Blast and hit [enemy] for [num2text(dmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 35
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "The [enemy] easily dodges your attack!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=35

		MastersCosmicBlast(mob/enemy,mob/enemy2)
			if(src.masterscblast == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 149)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.intelligence*(src.masterscblast*2) - enemy.intelligence + rand(-100,100)
				dmg = round(dmg)
				src << "You focus your Magical Energies to summon a Cosmic Ball!"
				src << 'spell.wav'
				sleep(10)
				if(dmg >= 101)
					src << "You erupt the Cosmic Ball in a Cosmic Blast and hit [enemy] for [num2text(dmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 150
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "The [enemy] easily dodges your attack!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=150

		FireBurst(mob/enemy,mob/enemy2)
			if(src.fireburst == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 24)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.intelligence - enemy.intelligence + rand(-100,100)
				if(enemy.weakfire == 1)
					dmg = dmg*2.5
				dmg = round(dmg)
				src << "You focus your Magical Energies to summon flaming ball!"
				src << 'spell.wav'
				sleep(10)
				if(dmg >= 101)
					src << "You hurl the flaming ball at the [enemy] and it bursts before impact doing [num2text(dmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 25
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "The [enemy] easily dodges your attack!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=25

		IceBurst(mob/enemy,mob/enemy2)
			if(src.iceburst == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 24)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.intelligence - enemy.intelligence + rand(-100,100)
				if(enemy.weakice == 1)
					dmg = dmg*2.5
				dmg = round(dmg)
				src << "You focus your Magical Energies to summon frozen ball!"
				src << 'spell.wav'
				sleep(10)
				if(dmg >= 101)
					src << "You hurl the frozen ball at the [enemy] and it bursts before impact doing [num2text(dmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 25
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "The [enemy] easily dodges your attack!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=25

		WindBurst(mob/enemy,mob/enemy2)
			if(src.windburst == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 24)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.intelligence - enemy.intelligence + rand(-100,100)
				if(enemy.weakwind == 1)
					dmg = dmg*2.5
				dmg = round(dmg)
				src << "You focus your Magical Energies to summon wind droven ball!"
				src << 'spell.wav'
				sleep(10)
				if(dmg >= 101)
					src << "You hurl the wind droven ball at the [enemy] and it bursts before impact doing [num2text(dmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 25
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "The [enemy] easily dodges your attack!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=25

		LightningBurst(mob/enemy,mob/enemy2)
			if(src.lightningburst == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 24)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.intelligence - enemy.intelligence + rand(-100,100)
				if(enemy.weaklit == 1)
					dmg = dmg*2.5
				dmg = round(dmg)
				src << "You focus your Magical Energies to summon lightning ball!"
				src << 'spell.wav'
				sleep(10)
				if(dmg >= 101)
					src << "You hurl the lightning ball at the [enemy] and it bursts before impact doing [num2text(dmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 25
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "The [enemy] easily dodges your attack!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=25

		EarthBurst(mob/enemy,mob/enemy2)
			if(src.earthburst == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 24)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.intelligence - enemy.intelligence + rand(-100,100)
				if(enemy.weakearth == 1)
					dmg = dmg*2.5
				dmg = round(dmg)
				src << "You focus your Magical Energies to summon earth shaped ball!"
				src << 'spell.wav'
				sleep(10)
				if(dmg >= 101)
					src << "You hurl the earth shaped ball at the [enemy] and it bursts before impact doing [num2text(dmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 25
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "The [enemy] easily dodges your attack!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=25

		SuperFireBurst(mob/enemy,mob/enemy2)
			if(src.superfireburst == 0)
				src << "You don't know this skill!  To learn this skill you must first master Fire Burst!"
				Battle(enemy2)
			else if(src.mp <= 124)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.intelligence*src.superfireburst - enemy.intelligence + rand(-100,100)
				if(enemy.weakfire == 1)
					dmg = dmg*2.5
				dmg = round(dmg)
				src << "You focus your Magical Energies to summon flaming ball!"
				src << 'spell.wav'
				sleep(10)
				if(dmg >= 101)
					src << "You hurl the flaming ball at the [enemy] and it bursts before impact doing [num2text(dmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 125
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "The [enemy] easily dodges your attack!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=125

		SuperIceBurst(mob/enemy,mob/enemy2)
			if(src.supericeburst == 0)
				src << "You don't know this skill!  To learn this skill you must first master Ice Burst!"
				Battle(enemy2)
			else if(src.mp <= 124)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.intelligence*src.supericeburst - enemy.intelligence + rand(-100,100)
				if(enemy.weakice == 1)
					dmg = dmg*2.5
				dmg = round(dmg)
				src << "You focus your Magical Energies to summon frozen ball!"
				src << 'spell.wav'
				sleep(10)
				if(dmg >= 101)
					src << "You hurl the frozen ball at the [enemy] and it bursts before impact doing [num2text(dmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 125
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "The [enemy] easily dodges your attack!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=125

		SuperWindBurst(mob/enemy,mob/enemy2)
			if(src.superwindburst == 0)
				src << "You don't know this skill!  To learn this skill you must first master Wind Burst!"
				Battle(enemy2)
			else if(src.mp <= 124)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.intelligence*src.superwindburst - enemy.intelligence + rand(-100,100)
				if(enemy.weakwind == 1)
					dmg = dmg*2.5
				dmg = round(dmg)
				src << "You focus your Magical Energies to summon wind droven ball!"
				src << 'spell.wav'
				sleep(10)
				if(dmg >= 101)
					src << "You hurl the wind droven ball at the [enemy] and it bursts before impact doing [num2text(dmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 125
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "The [enemy] easily dodges your attack!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=125

		SuperLightningBurst(mob/enemy,mob/enemy2)
			if(src.superlightningburst == 0)
				src << "You don't know this skill!  To learn this skill you must first master Lightning Burst!"
				Battle(enemy2)
			else if(src.mp <= 124)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.intelligence*src.superlightningburst - enemy.intelligence + rand(-100,100)
				if(enemy.weaklit == 1)
					dmg = dmg*2.5
				dmg = round(dmg)
				src << "You focus your Magical Energies to summon lightning ball!"
				src << 'spell.wav'
				sleep(10)
				if(dmg >= 101)
					src << "You hurl the lightning ball at the [enemy] and it bursts before impact doing [num2text(dmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 125
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "The [enemy] easily dodges your attack!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=125

		SuperEarthBurst(mob/enemy,mob/enemy2)
			if(src.superearthburst == 0)
				src << "You don't know this skill!  To learn this skill you must first master Earth Burst!"
				Battle(enemy2)
			else if(src.mp <= 124)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.intelligence*src.superearthburst - enemy.intelligence + rand(-100,100)
				if(enemy.weakearth == 1)
					dmg = dmg*2.5
				dmg = round(dmg)
				src << "You focus your Magical Energies to summon earth shaped ball!"
				src << 'spell.wav'
				sleep(10)
				if(dmg >= 101)
					src << "You hurl the earth shaped ball at the [enemy] and it bursts before impact doing [num2text(dmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 125
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "The [enemy] easily dodges your attack!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=125

		Beat(mob/enemy,mob/enemy2)
			if(src.beat == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 499)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					killrand = src.beat * 4 + rand(0,100)
				src << "You desperatly focus your Magical Energies to strike instantly kill the [enemy]!"
				src << 'spell.wav'
				sleep(10)
				if(istype(enemy,/mob/monster/Bosses))
					src << "Your attack has failed.  The [enemy] was uneffected."
					src << 'dodge.wav'
					sleep(10)
					src.mp-=500
				else if(killrand >= 100)
					src << "You attack has succeeded!  The [enemy] has instantly fallen!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp = 0
					src.mp -= 500
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "Your attack has failed.  The [enemy] was uneffected."
					src << 'dodge.wav'
					sleep(10)
					src.mp-=500

