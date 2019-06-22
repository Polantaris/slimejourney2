mob
	proc
		//Warrior Learning Proc
		WarriorLevel()
			switch(input("What skill do you want to level up?") in list("Bash","Multi Swing","Enflamed Attack","Iced Attack","Tornado Attack","Consentrated Attack"))
				if("Bash")
					if(src.bash == 0)
						switch(alert("You have picked to learn the skill Bash.  This skill is a 1 turn attack that does Double Damage for 25 MP.  The maximum level for this skill is 1.  Once this skill is learnt, Super Bash will be available, just click on this option again to learn Super Bash.  Do you want to learn this skill?","Learn Bash?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Bash"))
									src.spell += "Bash"
								if(src.bash == 0)
									src.bash = 1
								else if(src.bash == 1)
									src << "This skill is at its maximum level!"
									WarriorLevel()
							if("No")
								WarriorLevel()
					else if(src.bash == 1)
						switch(alert("You have picked to learn the skill Bash.  Since you have mastered the skill Bash, you can now learn Super Bash.  This skill will do Four Times Damage in 1 turn for 100 MP.  The maximum level for this skill is 1.  Do you want to learn this skill?","Learn Super Bash?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Super Bash"))
									src.spell += "Super Bash"
								if(src.superbash == 0)
									src.superbash = 1
								else if(src.superbash == 1)
									src << "This skill is at its maximum level!"
									WarriorLevel()
							if("No")
								WarriorLevel()
				if("Multi Swing")
					if(src.multiswing == 0)
						switch(alert("You have picked to learn the skill Multi Swing.  This skill is a 1 turn attack that hits X times where X is equal to the level of this skill.  The maximum level for this skill is 4.  It costs 100 MP.   Once this skill is mastered, Mega Multi Swing will be available, just click on this option again to learn Mega Multi Swing.  Do you want to learn this skill?","Learn Multi Swing?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Multi Swing"))
									src.spell += "Multi Swing"
								if(src.multiswing == 0)
									src.multiswing = 1
								else if(src.multiswing == 1)
									src.multiswing = 2
								else if(src.multiswing == 2)
									src.multiswing = 3
								else if(src.multiswing == 3)
									src.multiswing = 4
								else if(src.multiswing == 4)
									src << "This skill is at its maximum level!"
									WarriorLevel()
							if("No")
								WarriorLevel()
					else if(src.multiswing == 1)
						switch(alert("You have picked to learn the skill Multi Swing.  This skill is a 1 turn attack that hits X times where X is equal to the level of this skill.  The maximum level for this skill is 4.  It costs 100 MP.  Once this skill is mastered, Mega Multi Swing will be available, just click on this option again to learn Mega Multi Swing.  Do you want to learn this skill?","Learn Multi Swing?","Yes","No"))
							if("Yes")
								if(src.multiswing == 0)
									src.multiswing = 1
								else if(src.multiswing == 1)
									src.multiswing = 2
								else if(src.multiswing == 2)
									src.multiswing = 3
								else if(src.multiswing == 3)
									src.multiswing = 4
								else if(src.multiswing == 4)
									src << "This skill is at its maximum level!"
									WarriorLevel()
							if("No")
								WarriorLevel()
					else if(src.multiswing == 2)
						switch(alert("You have picked to learn the skill Multi Swing.  This skill is a 1 turn attack that hits X times where X is equal to the level of this skill.  The maximum level for this skill is 4.  It costs 100 MP.  Once this skill is mastered, Mega Multi Swing will be available, just click on this option again to learn Mega Multi Swing.  Do you want to learn this skill?","Learn Multi Swing?","Yes","No"))
							if("Yes")
								if(src.multiswing == 0)
									src.multiswing = 1
								else if(src.multiswing == 1)
									src.multiswing = 2
								else if(src.multiswing == 2)
									src.multiswing = 3
								else if(src.multiswing == 3)
									src.multiswing = 4
								else if(src.multiswing == 4)
									src << "This skill is at its maximum level!"
									WarriorLevel()
							if("No")
								WarriorLevel()
					else if(src.multiswing == 3)
						switch(alert("You have picked to learn the skill Multi Swing.  This skill is a 1 turn attack that hits X times where X is equal to the level of this skill.  The maximum level for this skill is 4.  It costs 100 MP.  Once this skill is mastered, Mega Multi Swing will be available, just click on this option again to learn Mega Multi Swing.  Do you want to learn this skill?","Learn Multi Swing?","Yes","No"))
							if("Yes")
								if(src.multiswing == 0)
									src.multiswing = 1
								else if(src.multiswing == 1)
									src.multiswing = 2
								else if(src.multiswing == 2)
									src.multiswing = 3
								else if(src.multiswing == 3)
									src.multiswing = 4
								else if(src.multiswing == 4)
									src << "This skill is at its maximum level!"
									WarriorLevel()
							if("No")
								WarriorLevel()
					else if(src.multiswing == 4)
						switch(alert("You have picked to learn the skill Multi Swing.  Since you have mastered the skill Multi Swing, you can now learn Mega Multi Swing.  This skill is like Multi Swing but does Three Times damage from normal for 300 MP.  The maximum level for this skill is 4.  Do you want to learn this skill?","Learn Mega Multi Swing?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Mega Multi Swing"))
									src.spell += "Mega Multi Swing"
								if(src.megamultiswing == 0)
									src.megamultiswing = 1
								else if(src.megamultiswing == 1)
									src.megamultiswing = 2
								else if(src.megamultiswing == 2)
									src.megamultiswing = 3
								else if(src.megamultiswing == 3)
									src.megamultiswing = 4
								else if(src.megamultiswing == 4)
									src << "This skill is at its maximum level!"
									WarriorLevel()
							if("No")
								WarriorLevel()
				if("Enflamed Attack")
					if(src.enflameattack == 0)
						switch(alert("You have picked to learn the skill Enflamed Attack.  This skill is a 1 turn attack that hits X times where X is equal to the level of this skill.  The maximum level for this skill is 3.  If a monster is weak against the fire element, this skill does 250% normal damage.  It costs 75 MP.  Once this skill is mastered, Super Enflamed Attack will be available, just click on this option again to learn Super Enflamed Attack.  Do you want to learn this skill?","Learn Enflamed Attack?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Enflamed Attack"))
									src.spell += "Enflamed Attack"
								if(src.enflameattack == 0)
									src.enflameattack = 1
								else if(src.enflameattack == 1)
									src.enflameattack = 2
								else if(src.enflameattack == 2)
									src.enflameattack = 3
								else if(src.enflameattack == 3)
									src << "This skill is at its maximum level!"
									WarriorLevel()
							if("No")
								WarriorLevel()
					else if(src.enflameattack == 1)
						switch(alert("You have picked to learn the skill Enflamed Attack.  This skill is a 1 turn attack that hits X times where X is equal to the level of this skill.  The maximum level for this skill is 3.  If a monster is weak against the fire element, this skill does 250% normal damage.  It costs 75 MP.  Once this skill is mastered, Super Enflamed Attack will be available, just click on this option again to learn Super Enflamed Attack.  Do you want to learn this skill?","Learn Enflamed Attack?","Yes","No"))
							if("Yes")
								if(src.enflameattack == 0)
									src.enflameattack = 1
								else if(src.enflameattack == 1)
									src.enflameattack = 2
								else if(src.enflameattack == 2)
									src.enflameattack = 3
								else if(src.enflameattack == 3)
									src << "This skill is at its maximum level!"
									WarriorLevel()
							if("No")
								WarriorLevel()
					else if(src.enflameattack == 2)
						switch(alert("You have picked to learn the skill Enflamed Attack.  This skill is a 1 turn attack that hits X times where X is equal to the level of this skill.  The maximum level for this skill is 3.  If a monster is weak against the fire element, this skill does 250% normal damage.  It costs 75 MP.  Once this skill is mastered, Super Enflamed Attack will be available, just click on this option again to learn Super Enflamed Attack.  Do you want to learn this skill?","Learn Enflamed Attack?","Yes","No"))
							if("Yes")
								if(src.enflameattack == 0)
									src.enflameattack = 1
								else if(src.enflameattack == 1)
									src.enflameattack = 2
								else if(src.enflameattack == 2)
									src.enflameattack = 3
								else if(src.enflameattack == 3)
									src << "This skill is at its maximum level!"
									WarriorLevel()
							if("No")
								WarriorLevel()
					else if(src.enflameattack == 3)
						switch(alert("You have picked to learn the skill Enflamed Attack.  Since you have mastered the skill Enflamed Attack, you can now learn Super Enflamed Attack.  This skill is like Enflamed Attack but does Three Times extra damage from normal for 200 MP.  The maximum level for this skill is 5.  If a monster is weak against the fire element, this skill does 250% normal damage.  Do you want to learn this skill?","Learn Super Enflamed Attack?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Super Enflamed Attack"))
									src.spell += "Super Enflamed Attack"
								if(src.superenflameattack == 0)
									src.superenflameattack = 1
								else if(src.superenflameattack == 1)
									src.superenflameattack = 2
								else if(src.superenflameattack == 2)
									src.superenflameattack = 3
								else if(src.superenflameattack == 3)
									src.superenflameattack = 4
								else if(src.superenflameattack == 4)
									src.superenflameattack = 5
								else if(src.superenflameattack == 5)
									src << "This skill is at its maximum level!"
									WarriorLevel()
							if("No")
								WarriorLevel()
				if("Iced Attack")
					if(src.iceattack == 0)
						switch(alert("You have picked to learn the skill Iced Attack.  This skill is a 1 turn attack that hits X times where X is equal to the level of this skill.  The maximum level for this skill is 3.  If a monster is weak against the ice element, this skill does 250% normal damage.  It costs 75 MP.  Once this skill is mastered, Super Iced Attack will be available, just click on this option again to learn Super Iced Attack.  Do you want to learn this skill?","Learn Iced Attack?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Iced Attack"))
									src.spell += "Iced Attack"
								if(src.iceattack == 0)
									src.iceattack = 1
								else if(src.iceattack == 1)
									src.iceattack = 2
								else if(src.iceattack == 2)
									src.iceattack = 3
								else if(src.iceattack == 3)
									src << "This skill is at its maximum level!"
									WarriorLevel()
							if("No")
								WarriorLevel()
					else if(src.iceattack == 1)
						switch(alert("You have picked to learn the skill Iced Attack.  This skill is a 1 turn attack that hits X times where X is equal to the level of this skill.  The maximum level for this skill is 3.  If a monster is weak against the ice element, this skill does 250% normal damage.  It costs 75 MP.  Once this skill is mastered, Super Iced Attack will be available, just click on this option again to learn Super Iced Attack.  Do you want to learn this skill?","Learn Iced Attack?","Yes","No"))
							if("Yes")
								if(src.iceattack == 0)
									src.iceattack = 1
								else if(src.iceattack == 1)
									src.iceattack = 2
								else if(src.iceattack == 2)
									src.iceattack = 3
								else if(src.iceattack == 3)
									src << "This skill is at its maximum level!"
									WarriorLevel()
							if("No")
								WarriorLevel()
					else if(src.iceattack == 2)
						switch(alert("You have picked to learn the skill Iced Attack.  This skill is a 1 turn attack that hits X times where X is equal to the level of this skill.  The maximum level for this skill is 3.  If a monster is weak against the ice element, this skill does 250% normal damage.  It costs 75 MP.  Once this skill is mastered, Super Iced Attack will be available, just click on this option again to learn Super Iced Attack.  Do you want to learn this skill?","Learn Iced Attack?","Yes","No"))
							if("Yes")
								if(src.iceattack == 0)
									src.iceattack = 1
								else if(src.iceattack == 1)
									src.iceattack = 2
								else if(src.iceattack == 2)
									src.iceattack = 3
								else if(src.iceattack == 3)
									src << "This skill is at its maximum level!"
									WarriorLevel()
							if("No")
								WarriorLevel()
					else if(src.iceattack == 3)
						switch(alert("You have picked to learn the skill Iced Attack.  Since you have mastered the skill Iced Attack, you can now learn Super Iced Attack.  This skill is like Iced Attack but does Three Times extra damage from normal for 200 MP.  The maximum level for this skill is 5.  If a monster is weak against the ice element, this skill does 250% normal damage.  Do you want to learn this skill?","Learn Super Iced Attack?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Super Iced Attack"))
									src.spell += "Super Iced Attack"
								if(src.supericeattack == 0)
									src.supericeattack = 1
								else if(src.supericeattack == 1)
									src.supericeattack = 2
								else if(src.supericeattack == 2)
									src.supericeattack = 3
								else if(src.supericeattack == 3)
									src.supericeattack = 4
								else if(src.supericeattack == 4)
									src.supericeattack = 5
								else if(src.supericeattack == 5)
									src << "This skill is at its maximum level!"
									WarriorLevel()
							if("No")
								WarriorLevel()
				if("Tornado Attack")
					if(src.tornattack == 0)
						switch(alert("You have picked to learn the skill Tornado Attack.  This skill is a 1 turn attack that hits X times where X is equal to the level of this skill.  The maximum level for this skill is 3.  If a monster is weak against the wind element, this skill does 250% normal damage.  It costs 75 MP.  Once this skill is mastered, Super Tornado Attack will be available, just click on this option again to learn Super Tornado Attack.  Do you want to learn this skill?","Learn Tornado Attack?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Tornado Attack"))
									src.spell += "Enflamed Attack"
								if(src.tornattack == 0)
									src.tornattack = 1
								else if(src.tornattack == 1)
									src.tornattack = 2
								else if(src.tornattack == 2)
									src.tornattack = 3
								else if(src.tornattack == 3)
									src << "This skill is at its maximum level!"
									WarriorLevel()
							if("No")
								WarriorLevel()
					else if(src.tornattack == 1)
						switch(alert("You have picked to learn the skill Tornado Attack.  This skill is a 1 turn attack that hits X times where X is equal to the level of this skill.  The maximum level for this skill is 3.  If a monster is weak against the wind element, this skill does 250% normal damage.  It costs 75 MP.  Once this skill is mastered, Super Tornado Attack will be available, just click on this option again to learn Super Tornado Attack.  Do you want to learn this skill?","Learn Tornado Attack?","Yes","No"))
							if("Yes")
								if(src.tornattack == 0)
									src.tornattack = 1
								else if(src.tornattack == 1)
									src.tornattack = 2
								else if(src.tornattack == 2)
									src.tornattack = 3
								else if(src.tornattack == 3)
									src << "This skill is at its maximum level!"
									WarriorLevel()
							if("No")
								WarriorLevel()
					else if(src.tornattack == 2)
						switch(alert("You have picked to learn the skill Tornado Attack.  This skill is a 1 turn attack that hits X times where X is equal to the level of this skill.  The maximum level for this skill is 3.  If a monster is weak against the wind element, this skill does 250% normal damage.  It costs 75 MP.  Once this skill is mastered, Super Tornado Attack will be available, just click on this option again to learn Super Tornado Attack.  Do you want to learn this skill?","Learn Tornado Attack?","Yes","No"))
							if("Yes")
								if(src.tornattack == 0)
									src.tornattack = 1
								else if(src.tornattack == 1)
									src.tornattack = 2
								else if(src.tornattack == 2)
									src.tornattack = 3
								else if(src.tornattack == 3)
									src << "This skill is at its maximum level!"
									WarriorLevel()
							if("No")
								WarriorLevel()
					else if(src.tornattack == 3)
						switch(alert("You have picked to learn the skill Tornado Attack.  Since you have mastered the skill Tornado Attack, you can now learn Super Tornado Attack.  This skill is like Tornado Attack but does Three Times extra damage from normal for 200 MP.  The maximum level for this skill is 5.  If a monster is weak against the wind element, this skill does 250% normal damage.  Do you want to learn this skill?","Learn Super Tornado Attack?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Super Tornado Attack"))
									src.spell += "Super Enflamed Attack"
								if(src.supertornattack == 0)
									src.supertornattack = 1
								else if(src.supertornattack == 1)
									src.supertornattack = 2
								else if(src.supertornattack == 2)
									src.supertornattack = 3
								else if(src.supertornattack == 3)
									src.supertornattack = 4
								else if(src.supertornattack == 4)
									src.supertornattack = 5
								else if(src.supertornattack == 5)
									src << "This skill is at its maximum level!"
									WarriorLevel()
							if("No")
								WarriorLevel()
				if("Consentrated Attack")
					if(src.consenattack == 0)
						switch(alert("You have picked to learn the skill Consentrated Attack.  This skill is a 2 turn attack that does Five Times Damage for 50 MP.  The maximum level for this skill is 1.  Do you want to learn this skill?","Learn Consentrated Attack?","Yes","No"))
							if("Yes")
								if(src.consenattack == 0)
									src.consenattack = 1
								else if(src.consenattack == 1)
									src << "This skill is at its maximum level!"
									WarriorLevel()
							if("No")
								WarriorLevel()
					else if(src.consenattack == 1)
						switch(alert("You have picked to learn the skill Consentrated Attack.  Since you have mastered the skill Consentrated Attack, you can now learn Super Consentrated Attack.  This skill will hit Five Times Damage for each level it does, but each level it has means another turn for the monster.  This spell costs 150 MP a use.  The maximum level for this skill is 5.  Do you want to learn this skill?","Learn Super Consentrated Attack?","Yes","No"))
							if("Yes")
								if(src.superconsenattack == 0)
									src.superconsenattack = 1
								else if(src.superconsenattack == 1)
									src.superconsenattack = 2
								else if(src.superconsenattack == 2)
									src.superconsenattack = 3
								else if(src.superconsenattack == 3)
									src.superconsenattack = 4
								else if(src.superconsenattack == 4)
									src.superconsenattack = 5
								else if(src.superconsenattack == 5)
									src << "This skill is at its maximum level!"
									WarriorLevel()
							if("No")
								WarriorLevel()

mob
	proc
		//Warrior Skills
		Bash(mob/enemy,mob/enemy2)
			if(src.bash == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 24)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.attack * 2 - enemy.defense + rand(-100,100)
				src << "You charge up to Bash the [enemy]!"
				src << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					src << "You Bash the [enemy] for [num2text(dmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 25
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "You miss and end up Bashing the ground!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=25

		SuperBash(mob/enemy,mob/enemy2)
			if(src.superbash == 0)
				src << "You don't know this skill!  To learn this skill you must first master Bash!"
				Battle(enemy2)
			else if(src.mp <= 99)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.attack * 4 - enemy.defense + rand(-100,100)
				src << "You charge up to Super Bash the [enemy]!"
				src << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					src << "You Super Bash the [enemy] for [num2text(dmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 100
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "You miss and end up Bashing the ground!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=100

		MultiSwing(mob/enemy,mob/enemy2)
			if(src.multiswing == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 99)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.attack * src.multiswing - enemy.defense + rand(-100,100)
				src << "You get ready to attack the [enemy] Multiple Times!"
				src << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					src << "You hit the [enemy] [multiswing] times and do [num2text(dmg,20)]!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 100
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "The [enemy] dodges your attacks!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=100

		MegaMultiSwing(mob/enemy,mob/enemy2)
			if(src.megamultiswing == 0)
				src << "You don't know this skill!  To learn this skill you must first master Mutli Swing!"
				Battle(enemy2)
			else if(src.mp <= 299)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.attack * 3 * src.megamultiswing - enemy.defense + rand(-100,100)
				src << "You get ready to attack the [enemy] Multiple Times!"
				src << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					src << "You hit the [enemy] [megamultiswing] times and do [num2text(dmg,20)]!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 300
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "The [enemy] dodges your attacks!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=300

		EnflamedAttack(mob/enemy,mob/enemy2)
			if(src.enflameattack == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 74)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.attack * src.enflameattack - enemy.defense + rand(-100,100)
				if(enemy.weakfire == 1)
					dmg *= 2.5
					dmg = round(dmg)
				src << "Your rage engulphs your attack in Flames!"
				src << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					src << "You attack the [enemy] in these Flames and hit him for [num2text(dmg,20)]!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 75
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "The [enemy] is not hurt by the flames!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=75

		SuperEnflamedAttack(mob/enemy,mob/enemy2)
			if(src.superenflameattack == 0)
				src << "You don't know this skill!  To get this skill, you must first master Enflamed Attack!"
				Battle(enemy2)
			else if(src.mp <= 199)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.attack * 3 * src.superenflameattack - enemy.defense + rand(-100,100)
				if(enemy.weakfire == 1)
					dmg *= 2.5
					dmg = round(dmg)
				src << "Your rage engulphs your attack in Flames!"
				src << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					src << "You attack the [enemy] in these Flames and hit him for [num2text(dmg,20)]!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 200
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "The [enemy] is not hurt by the flames!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=200

		IcedAttack(mob/enemy,mob/enemy2)
			if(src.iceattack == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 74)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.attack*src.iceattack - enemy.defense + rand(-100,100)
				if(enemy.weakice == 1)
					dmg *= 2.5
					dmg = round(dmg)
				src << "Your rage engulphs your attack in Iced Shards!"
				src << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					src << "You attack the [enemy] with these Shards flying out and hit him for [num2text(dmg,20)]!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 75
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "The [enemy] is not hurt by the Shards and you miss!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=75

		SuperIcedAttack(mob/enemy,mob/enemy2)
			if(src.supericeattack == 0)
				src << "You don't know this skill!  To get this skill, you must first master Iced Attack!"
				Battle(enemy2)
			else if(src.mp <= 199)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.attack *3 *supericeattack- enemy.defense + rand(-100,100)
				if(enemy.weakice == 1)
					dmg *= 2.5
					dmg = round(dmg)
				src << "Your rage engulphs your attack in Iced Shards!"
				src << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					src << "You attack the [enemy] with these Shards flying out and hit him for [num2text(dmg,20)]!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 200
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "The [enemy] is not hurt by the Shards and you miss!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=200

		TornAttack(mob/enemy,mob/enemy2)
			if(src.tornattack == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 74)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.attack*src.tornattack - enemy.defense + rand(-100,100)
				if(enemy.weakwind == 1)
					dmg *= 2.5
					dmg = round(dmg)
				src << "Your rage engulphs your attack in a tornado!"
				src << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					src << "You attack the [enemy] with the tornado and do [num2text(dmg,20)]!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 75
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "The tornado does not effect the [enemy] and you miss!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=75

		SuperTornAttack(mob/enemy,mob/enemy2)
			if(src.supertornattack == 0)
				src << "You don't know this skill!  To get this skill, you must first master Tornado Attack!"
				Battle(enemy2)
			else if(src.mp <= 199)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.attack*3*src.supertornattack - enemy.defense + rand(-100,100)
				if(enemy.weakwind == 1)
					dmg *= 2.5
					dmg = round(dmg)
				src << "Your rage engulphs your attack in a tornado!"
				src << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					src << "You attack the [enemy] with the tornado and do [num2text(dmg,20)]!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 200
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "The tornado does not effect the [enemy] and you miss!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=200

		ConsentratedAttack(mob/enemy,mob/enemy2)
			if(src.consenattack == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 49)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.attack*5 - enemy.defense + rand(-100,100)
				src << "You begin to Consentrate for your attack!"
				src << 'attack.wav'
				sleep(10)
				for(var/mob/M in monstergroup)
					if(M)
						M.Battle(src,enemy2)
				sleep(10)
				if(dmg >= 101)
					src << "You unleash every bit of energy you own into your attack!"
					src << 'hit.wav'
					sleep(10)
					src << "You hit the [enemy] for [num2text(dmg,20)] damage!"
					enemy.hp -= dmg
					src.mp -= 50
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "The [enemy] is not hurt by the attack!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=50

		SuperConsentratedAttack(mob/enemy,mob/enemy2)
			if(src.superconsenattack == 0)
				src << "You don't know this skill!  To learn this skill you must first master Consentrated Attack!"
				Battle(enemy2)
			else if(src.mp <= 149)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.attack*5*src.superconsenattack - enemy.defense + rand(-100,100)
				src << "You begin to Consentrate for your attack!"
				src << 'attack.wav'
				sleep(10)
				if(src.superconsenattack == 1)
					for(var/mob/M in monstergroup)
						if(M)
							M.Battle(src,enemy2)
				else if(src.superconsenattack == 2)
					for(var/mob/M in monstergroup)
						if(M)
							M.Battle(src,enemy2)
						if(M)
							M.Battle(src,enemy2)
				else if(src.superconsenattack == 3)
					for(var/mob/M in monstergroup)
						if(M)
							M.Battle(src,enemy2)
						if(M)
							M.Battle(src,enemy2)
						if(M)
							M.Battle(src,enemy2)
				else if(src.superconsenattack == 4)
					for(var/mob/M in monstergroup)
						if(M)
							M.Battle(src,enemy2)
						if(M)
							M.Battle(src,enemy2)
						if(M)
							M.Battle(src,enemy2)
						if(M)
							M.Battle(src,enemy2)
				else if(src.superconsenattack == 5)
					for(var/mob/M in monstergroup)
						if(M)
							M.Battle(src,enemy2)
						if(M)
							M.Battle(src,enemy2)
						if(M)
							M.Battle(src,enemy2)
						if(M)
							M.Battle(src,enemy2)
						if(M)
							M.Battle(src,enemy2)
				sleep(10)
				if(dmg >= 101)
					if(enemy)
						src << "You unleash every bit of energy you own into your attack!"
						sleep(10)
						src << "You hit the [enemy] for [num2text(dmg,20)] damage!"
						src << 'hit.wav'
						enemy.hp -= dmg
						src.mp -= 150
						if(enemy.hp <= 0)
							Deathcheck(enemy)
				else
					src << "The [enemy] is not hurt by the attack!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=150