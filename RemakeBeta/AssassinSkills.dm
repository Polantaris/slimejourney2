mob
	proc
		// Assassin Learning Proc
		AssassinLevel()
			switch(input("What skill do you want to level up?") in list("Speed Strike","Assassinate","Glare","Silent Death","Poison Bottle","MP Drain"))
				if("Speed Strike")
					switch(alert("You have picked to learn the skill Speed Strike.  For 100 MP, you can attack the enemy with awesome speeds.  The damage is 2 + Skill Level times.  The max level is 3, so the max you can do is 5 times damage.  Do you want to learn this skill??","Learn Speed Strike?","Yes","No"))
						if("Yes")
							if(!src.spell.Find("Speed Strike"))
								src.spell += "Speed Strike"
							if(src.speedstrike == 0)
								src.speedstrike = 1
							else if(src.speedstrike == 1)
								src.speedstrike = 2
							else if(src.speedstrike == 2)
								src.speedstrike = 3
							else if(src.speedstrike == 3)
								src << "This skill is at its maximum level!"
								AssassinLevel()
						if("No")
							AssassinLevel()
				if("Assassinate")
					switch(alert("You have picked to learn the skill Assassinate.  For 400 MP, you can attempt to assassinate the enemy in an all out attack.  The damage is normal plus a -10000 to 10000 radius damage.  So this skill will either destroy the enemy, or barely touch it..  The max level is 1.  Do you want to learn this skill??","Learn Assassinate?","Yes","No"))
						if("Yes")
							if(!src.spell.Find("Assassinate"))
								src.spell += "Assassinate"
							if(src.assassinate == 0)
								src.assassinate = 1
							else if(src.assassinate == 1)
								src << "This skill is at its maximum level!"
								AssassinLevel()
						if("No")
							AssassinLevel()
				if("Glare")
					switch(alert("You have picked to learn the skill Glare.  For 200 MP, you can attempt to glare the enemy into confusion.  This skill will in a sence, spaz out the enemy for a limited ammount of turns, which are random.  The max skill level is 6.  Do you want to learn this skill??","Learn Glare?","Yes","No"))
						if("Yes")
							if(!src.spell.Find("Glare"))
								src.spell += "Glare"
							if(src.glare == 0)
								src.glare = 1
							else if(src.glare == 1)
								src.glare = 2
							else if(src.glare == 2)
								src.glare = 3
							else if(src.glare == 3)
								src.glare = 4
							else if(src.glare == 4)
								src.glare = 5
							else if(src.glare == 5)
								src.glare = 6
							else if(src.glare == 6)
								src << "This skill is at its maximum level!"
								AssassinLevel()
						if("No")
							AssassinLevel()
				if("MP Drain")
					switch(alert("You have picked to learn the skill MP Drain.  For 150 MP, you can attempt to drain the MP out of an opponent.  This skill will drain MP from an enemy.  The max skill level is 5.  Do you want to learn this skill??","Learn MP Drain?","Yes","No"))
						if("Yes")
							if(!src.spell.Find("MP Drain"))
								src.spell += "MP Drain"
							if(src.mpd == 0)
								src.mpd = 1
							else if(src.mpd == 1)
								src.mpd = 2
							else if(src.mpd == 2)
								src.mpd = 3
							else if(src.mpd == 3)
								src.mpd = 4
							else if(src.mpd == 4)
								src.mpd = 5
							else if(src.mpd == 5)
								src << "This skill is at its maximum level!"
								AssassinLevel()
						if("No")
							AssassinLevel()
				if("Poison Bottle")
					switch(alert("You have picked to learn the skill Poison Bottle.  For 50 MP, you can make an attempt to poison your enemy.  The maximum level for this skill is 10.  This skill will explode and gas the enemy for a painful death.  Do you want to learn this skill??","Learn Poison Bottle?","Yes","No"))
						if("Yes")
							if(!src.spell.Find("Poison Bottle"))
								src.spell += "Poison Bottle"
							if(src.pois == 0)
								src.pois = 1
							else if(src.pois == 1)
								src.pois = 2
							else if(src.pois == 2)
								src.pois = 3
							else if(src.pois == 3)
								src.pois = 4
							else if(src.pois == 4)
								src.pois = 5
							else if(src.pois == 5)
								src.pois = 6
							else if(src.pois == 6)
								src.pois = 7
							else if(src.pois == 7)
								src.pois = 8
							else if(src.pois == 8)
								src.pois = 9
							else if(src.pois == 9)
								src.pois = 10
							else if(src.pois == 10)
								src << "This skill is at its maximum level!"
								AssassinLevel()
						if("No")
							AssassinLevel()
				if("Silent Death")
					if(src.sd == 0)
						switch(alert("You have picked to learn the skill Silent Death.  For 500 MP, you can attempt to reduce the enemy's hp by 1/5th.  This skill is an instant life reducer, but cannot kill.  By creating a silent blade, you can slice 1/5th HP out of the enemy.  The max skill level is 5.  After mastering this skill, you can learn Masterful Death.  Do you want to learn this skill??","Learn Silent Death?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Silent Death"))
									src.spell += "Silent Death"
								if(src.sd == 0)
									src.sd = 1
								else if(src.sd == 1)
									src.sd = 2
								else if(src.sd == 2)
									src.sd = 3
								else if(src.sd == 3)
									src.sd = 4
								else if(src.sd == 4)
									src.sd = 5
								else if(src.sd == 5)
									src << "This skill is at its maximum level!"
									AssassinLevel()
							if("No")
								AssassinLevel()
					else if(src.sd == 1)
						switch(alert("You have picked to learn the skill Silent Death.  For 500 MP, you can attempt to reduce the enemy's hp by 1/5th.  This skill is an instant life reducer, but cannot kill.  By creating a silent blade, you can slice 1/5th HP out of the enemy.  The max skill level is 5.  After mastering this skill, you can learn Masterful Death.  Do you want to learn this skill??","Learn Silent Death?","Yes","No"))
							if("Yes")
								if(src.sd == 0)
									src.sd = 1
								else if(src.sd == 1)
									src.sd = 2
								else if(src.sd == 2)
									src.sd = 3
								else if(src.sd == 3)
									src.sd = 4
								else if(src.sd == 4)
									src.sd = 5
								else if(src.sd == 5)
									src << "This skill is at its maximum level!"
									AssassinLevel()
							if("No")
								AssassinLevel()
					else if(src.sd == 2)
						switch(alert("You have picked to learn the skill Silent Death.  For 500 MP, you can attempt to reduce the enemy's hp by 1/5th.  This skill is an instant life reducer, but cannot kill.  By creating a silent blade, you can slice 1/5th HP out of the enemy.  The max skill level is 5.  After mastering this skill, you can learn Masterful Death.  Do you want to learn this skill??","Learn Silent Death?","Yes","No"))
							if("Yes")
								if(src.sd == 0)
									src.sd = 1
								else if(src.sd == 1)
									src.sd = 2
								else if(src.sd == 2)
									src.sd = 3
								else if(src.sd == 3)
									src.sd = 4
								else if(src.sd == 4)
									src.sd = 5
								else if(src.sd == 5)
									src << "This skill is at its maximum level!"
									AssassinLevel()
							if("No")
								AssassinLevel()
					else if(src.sd == 3)
						switch(alert("You have picked to learn the skill Silent Death.  For 500 MP, you can attempt to reduce the enemy's hp by 1/5th.  This skill is an instant life reducer, but cannot kill.  By creating a silent blade, you can slice 1/5th HP out of the enemy.  The max skill level is 5.  After mastering this skill, you can learn Masterful Death.  Do you want to learn this skill??","Learn Silent Death?","Yes","No"))
							if("Yes")
								if(src.sd == 0)
									src.sd = 1
								else if(src.sd == 1)
									src.sd = 2
								else if(src.sd == 2)
									src.sd = 3
								else if(src.sd == 3)
									src.sd = 4
								else if(src.sd == 4)
									src.sd = 5
								else if(src.sd == 5)
									src << "This skill is at its maximum level!"
									AssassinLevel()
							if("No")
								AssassinLevel()
					else if(src.sd == 4)
						switch(alert("You have picked to learn the skill Silent Death.  For 500 MP, you can attempt to reduce the enemy's hp by 1/5th.  This skill is an instant life reducer, but cannot kill.  By creating a silent blade, you can slice 1/5th HP out of the enemy.  The max skill level is 5.  After mastering this skill, you can learn Masterful Death.  Do you want to learn this skill??","Learn Silent Death?","Yes","No"))
							if("Yes")
								if(src.sd == 0)
									src.sd = 1
								else if(src.sd == 1)
									src.sd = 2
								else if(src.sd == 2)
									src.sd = 3
								else if(src.sd == 3)
									src.sd = 4
								else if(src.sd == 4)
									src.sd = 5
								else if(src.sd == 5)
									src << "This skill is at its maximum level!"
									AssassinLevel()
							if("No")
								AssassinLevel()
					else if(src.sd == 5)
						switch(alert("You have picked to learn the skill Silent Death.  Since you have already mastered Silent Death, you can now learn Masterful Death.  This skill, for 2,000 MP, can take away 1/3rd of the enemy's current HP.  The max level for this skill is level 10.  Do you want to learn this skill??","Learn Masterful Death?","Yes","No"))
							if("Yes")
								if(!src.spell.Find("Masterful Death"))
									src.spell += "Masterful Death"
								if(src.msd == 0)
									src.msd = 1
								else if(src.msd == 1)
									src.msd = 2
								else if(src.msd == 2)
									src.msd = 3
								else if(src.msd == 3)
									src.msd = 4
								else if(src.msd == 4)
									src.msd = 5
								else if(src.msd == 5)
									src.msd = 6
								else if(src.msd == 6)
									src.msd = 7
								else if(src.msd == 7)
									src.msd = 8
								else if(src.msd == 8)
									src.msd = 9
								else if(src.msd == 9)
									src.msd = 10
								else if(src.msd == 10)
									src << "This skill is at its maximum level!"
									AssassinLevel()
							if("No")
								AssassinLevel()

		SpeedStrike(mob/enemy,mob/enemy2)
			if(src.speedstrike == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 99)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.attack * (2 + src.speedstrike) - enemy.defense + rand(-100,100)
				src << "Using your awesome speed, you dash after the [enemy]!"
				src << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					src << "You Strike the [enemy] with awesome speed for [num2text(dmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 100
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "You lose control of your speed and miss!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=100

		Assassinate(mob/enemy,mob/enemy2)
			if(src.assassinate == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 399)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					dmg = src.attack - enemy.defense + rand(enemy.hp,-enemy.hp)
					failed = enemy.attack - src.defense + rand(-10,10)
					sneak = src.agility - enemy.agility + rand(-10000,10000)
				src << "Using your sneaky tactics, you try to sneak and assassinate the [enemy]!"
				src << 'attack.wav'
				if(failed <= 0)
					failed = 0
				sleep(10)
				if(dmg >= 1001 && sneak >= 5001)
					src << "You get behind the [enemy] and attack for [num2text(dmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					src.mp -= 400
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					src << "You were caught and the [src] got to attack you while your guard was down!  You lose [failed] life!"
					src << 'dodge.wav'
					sleep(10)
					src << 'hit.wav'
					src.hp -= failed
					src.mp-=400

		Glare(mob/enemy,mob/enemy2)
			if(src.glare == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 199)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					chance = src.intelligence - enemy.intelligence + rand(-500,500) * (src.glare * 0.5)
				src << "Using your Assassin Techniques, you try to glare the [enemy] to a confused state!"
				src << 'attack.wav'
				sleep(10)
				if(chance >= 101)
					src << "You succeed!"
					sleep(10)
					ContinueGlare(enemy,enemy2)
					src.mp -= 200
				else
					src << "The [enemy] was not persuaded."
					src << 'dodge.wav'
					sleep(10)
					src.mp-=200

		SilentDeath(mob/enemy,mob/enemy2)
			if(src.sd == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 499)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					chance = (src.intelligence - enemy.intelligence) + (src.attack - enemy.defense) + rand(-1000,100) * (src.sd * 2)
				src << "You suddenly become quite and a blade comes out of your hand..."
				src << 'attack.wav'
				sleep(10)
				if(chance >= 10000)
					src << "You slice right through the [enemy] taking 1/5th of his health!"
					sleep(10)
					enemy.hp*=0.2
					enemy.hp = round(enemy.hp)
					src.mp -= 500
				else
					src << "You slice right through the [enemy] but nothing happens!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=500

		MasterfulDeath(mob/enemy,mob/enemy2)
			if(src.msd == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 1999)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					chance = (src.intelligence - enemy.intelligence) + (src.attack - enemy.defense) + rand(-1000,100) * (src.msd * 2.5)
				src << "You suddenly become quite and a great blade comes out of your hand..."
				src << 'attack.wav'
				sleep(10)
				if(chance >= 50000)
					src << "You slice right through the [enemy] taking 1/3rd of his health!"
					sleep(10)
					enemy.hp*=0.33
					enemy.hp = round(enemy.hp)
					src.mp -= 2000
				else
					src << "You slice right through the [enemy] but nothing happens!"
					src << 'dodge.wav'
					sleep(10)
					src.mp-=2000

		PoisonBottle(mob/enemy,mob/enemy2)
			if(src.pois == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 49)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					chance = (src.intelligence - enemy.intelligence) + (src.attack - enemy.defense) + rand(-50000,25000) * (src.pois * 0.5)
				src << "You throw a bottle at the [enemy]!"
				src << 'attack.wav'
				sleep(10)
				if(chance >= 2499)
					src << "The bottle explodes and poisonous gases are released!  The [enemy] is poisoned!"
					sleep(10)
					enemy.poisoned = 1
					src.mp -= 50
				else
					src << "The bottle explodes but nothing comes out."
					src << 'dodge.wav'
					sleep(10)
					src.mp-=50

		MPDrain(mob/enemy,mob/enemy2)
			if(src.mpd == 0)
				src << "You don't know this skill!"
				Battle(enemy2)
			else if(src.mp <= 149)
				src << "You don't have enough MP for this skill!"
				Battle(enemy2)
			else
				var
					chance = src.intelligence - enemy.intelligence + rand(-2500,1000) * src.mpd
				src << "You start chanting [enemy]!"
				src << 'attack.wav'
				sleep(10)
				if(chance >= 1)
					src << "Suddenly, Magical essence is sucked out of the [enemy]'s body!  It comes to you!  You MP recovers [chance]!"
					sleep(10)
					src.mp -= 150
					src.mp += chance
					enemy.mp -= 10
					if(src.mp >= src.maxmp)
						src.mp = src.maxmp
				else
					src << "Nothing happenes."
					src << 'dodge.wav'
					sleep(10)
					src.mp-=150

		ContinueGlare(mob/enemy,mob/enemy2)
			var
				glare = rand(0,3)
			Battle(enemy2)
			if(!enemy || enemy.hp <= 0)
				return
			else if(glare == 2)
				src << "The [enemy] is still glared in confusion!"
				ContinueGlare(enemy,enemy2)
			else
				src << "The [enemy] got a hold of himself!"