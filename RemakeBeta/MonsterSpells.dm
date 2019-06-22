mob
	proc
		HammerFall()
		JewelThrow()
		GoldSteal()
		SwordRain()
		RockToss()
		Trample()
		Knockdown()
		SummonSlime1()
		SummonHealer1()
		Engulph()
		Knockover()
		SummonThiefBag1()
		Kirby()
		JewelRain()
		SuperGale()
		BoneToss()
		SummonSkeleton1()
		SummonHammerman1()
		Healmore2()
		HammerFall2()
		Blazemore2()
		Ram()
		HornToss()
		IceTounge()
		Icicle()
		IceCall1()
		Goop()
		Split1()
		Disease()
		BloodRock()
		BloodRain()
		Absorb()
		Duplicate1()
		FlameBreath()
		FireballODoom()
		Bite()
		Roar()
		Absorb2()
		SummonSlime2()
		Healmore3()
		MagicBlade()
		SummonSlime3()
		FlameBreath2()
		FireballODoom2()
		SummonMage1()
		Blazemost2()
		Iceball()
		ThunderBolt()
		WindStrike()
		SummonMage2()
		BlackFlub1()
		BlackHole()
		Howl1()
		Maul()
		WhiteFlub1()
		WhiteMassacre()
		Healmost()
		DanceFire()
		FlameCreate1()
		Firebane()
		MasterFire()
		BloodMassacre()
		SuperBlood()
		Duplicate2()
		RainIce()
		Icicle2()
		Defeat()
		MasterBlaze()
		MasterIcebolt()
		MasterGale()
		MasterHeal()
		SummonIce1()
		Ram2()
		Horn()
		DoomPort1()
		BoltSword()
		Call1()
		HammerBash()
		HammerCall1()
		Flatten()
		Claw()
		Howl2()
		Firebal()
		DoubleCall1()
		TheNukeSpell()
		DoubleCall2()
		JewelThrow2()
		GoldSteal2()
		PoisDoom()
		Blowup1()
		DeathBlaze()
		SwordRain2()
		Stab()
		NoMP()
		SuperBone()
		LeafHorde()
		Growth()
		LeafCutter()
		WingBeat()
		IceCall2()
		IceRage()
		Blizzard2()
		KillerFlame()
		Split2()
		Explode()
		TealStorm()
		BlueStorm()
		RedStorm()
		GreenStorm()
		PurpleStorm()
		Critical()
		Shake()
		MineDisease()

mob
	monster
		Blaze(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(5,20)
			P << "The [src] casts Blaze on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The spell does [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The spell fails!"
				sleep(10)

		HammerFall(mob/picked,list/enemylist,mob/Newchar/P)
			var
				dmg = src.attack - picked.defense + rand(15,45)
				hit = src.agility - picked.agility + rand(15,45)
				success = dmg + hit + rand(-500,500)
			P << "The [src] tries to smash [picked] with his Hammer!"
			P << 'spell.wav'
			sleep(10)
			if(hit >= 1)
				if(dmg >= 1)
					P << "The Hammer lands straight on [picked]'s face and does [num2text(dmg,20)] damage!"
					P << 'hit.wav'
					sleep(10)
					picked.hp -= dmg
					if(success >= 1)
						P << "[picked] was knocked out for a turn!"
						if(picked.hp <= 0)
							P << "Although [picked] was knocked out from the Hammer, [picked] was killed by the attack so it doesn't matter anyway!"
							Deathcheck(picked)
						else
							src.gonealready = 0
							Battle(P,enemylist)
					else if(picked.hp <= 0)
						Deathcheck(picked)
				if(dmg <= 0)
					P << "The Hammer hit [picked], but [picked] didn't feel a thing!"
					sleep(10)
			if(hit <= 0)
				P << "[picked] dodged the Hammer!"
				sleep(10)

		JewelThrow(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(40,90)
			P << "The [src], using its tounge, takes out a Jewel, and as hard as it can, hurls it at [picked]!"
			P << 'enemyattack.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The Jewel sticks in [picked]'s head, then explodes doing [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The Jewel misses and explodes a while away!"
				sleep(10)

		GoldSteal(mob/picked,mob/Newchar/P)
			var
				stolen = src.agility - picked.agility + rand(-100,50)
			P << "The [src] tries to eat your money!"
			P << 'spell.wav'
			sleep(10)
			if(stolen >= 1)
				P << "The [src] wasn't caught at it ate [stolen] gold!"
				P << 'hit.wav'
				sleep(10)
				P.gold -= stolen
				if(P.gold <= 0)
					P.gold = 0
			if(stolen <= 0)
				P << "You caught the [src] before it could do anything!"
				sleep(10)

		SwordRain(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack * 3 - picked.defense
			P << "The [src] releases a Rain of Swords attacks on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The attacks do [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The attacks miss!"
				sleep(10)

		Bolt(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(70,120)
			P << "The [src] casts Bolt on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The spell does [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The spell fails!"
				sleep(10)

		Gale(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(100,170)
			P << "The [src] casts Gale on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The spell does [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The spell fails!"
				sleep(10)

		Heal(mob/picked,mob/Newchar/P)
			var
				heal = src.intelligence - picked.intelligence + rand(150,200)
			P << "The [src] casts Heal!"
			P << 'spell.wav'
			sleep(10)
			if(heal >= 1)
				P << "The [src] heals [num2text(heal,20)] HP!"
				src.hp += heal
				sleep(10)
			else
				P << "The spell had no effect on the [src]!"
				sleep(10)

		RockToss(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(150,250)
			P << "The [src] throws a Rock at [picked]!"
			P << 'enemyattack.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The Rock does [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The Rock misses!"
				sleep(10)

		Trample(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(225,350)
			P << "The [src] runs after [picked] in an attempt to Trample it!!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The [src] runs [picked] over doing [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The [src] runs right past [picked]!"
				sleep(10)

		Knockdown(mob/picked,list/enemylist,mob/Newchar/P)
			var
				dmg = src.attack - picked.defense + rand(320,500)
				hit = src.agility - picked.agility + rand(320,500)
				success = dmg + hit + rand(-350,350)
			P << "The [src] tries to smash the ground to knock [picked] out!"
			P << 'spell.wav'
			sleep(10)
			if(hit >= 1)
				if(dmg >= 1)
					P << "The shaking of the ground flips [picked] and [picked] land on [picked]'s head!  [picked] recieve [num2text(dmg,20)] damage!"
					P << 'hit.wav'
					sleep(10)
					picked.hp -= dmg
					if(success >= 1)
						P << "[picked] was knocked out for a turn!"
						if(picked.hp <= 0)
							P << "Although [picked] was knocked out from the fall, [picked] was killed by the attack so it doesn't matter anyway!"
							Deathcheck(picked)
						else
							src.gonealready = 0
							Battle(P,enemylist)
					else if(picked.hp <= 0)
						Deathcheck(picked)
				if(dmg <= 0)
					P << "[picked] fell on [picked]'s head from the fall, but for some reason, [picked] doesn't feel a thing!"
					sleep(10)
			if(hit <= 0)
				P << "[picked] jumped when the attack reached it!"
				sleep(10)

		Healmore(mob/picked,mob/Newchar/P)
			var
				heal = src.intelligence - picked.intelligence + rand(350,425)
			P << "The [src] casts Healmore!"
			P << 'spell.wav'
			sleep(10)
			if(heal >= 1)
				P << "The [src] heals [num2text(heal,20)] HP!"
				src.hp += heal
				sleep(10)
			else
				P << "The spell had no effect on the [src]!"
				sleep(10)

		Infernos(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(375,475)
			P << "The [src] casts Infernos on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The spell does [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The spell fails!"
				sleep(10)

		SummonSlime1(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
			P << "The [src] chants!"
			P << 'spell.wav'
			sleep(10)
			if(chance == 1)
				if(enemylist.len>=12)
					P << "Nothing seemed to happen."
					return
				else
					P << "A Slime appeared!"
					var/mob/monster/Summoned/SummonedSlime1/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
			else
				P << "Nothing seemed to happen."
				sleep(10)

		SummonHealer1(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
			P << "The [src] chants!"
			P << 'spell.wav'
			sleep(10)
			if(chance == 1)
				if(enemylist.len>=12) // Line 276
					P << "Nothing seemed to happen."
					return
				else
					P << "A Healer appeared!"
					var/mob/monster/Summoned/SummonedHealer1/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
			else
				P << "Nothing seemed to happen."
				sleep(10)

		Blazemore(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(425,650)
			P << "The [src] casts Blazemore on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The spell does [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The spell fails!"
				sleep(10)

		Poison(mob/picked,mob/Newchar/P)
			var
				poisonchance = (src.intelligence + src.attack) - (picked.intelligence + picked.defense) + rand(600,700)
			P << "The [src] summons a Poison air wave!"
			P << 'spell.wav'
			sleep(10)
			if(poisonchance >= 50)
				P << "The wave infects [picked]'s body and [picked] is poisoned!"
				picked.poisoned = 1
				sleep(10)
			else
				P << "The wave passes [picked], but nothing happens!"
				sleep(10)

		Engulph(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(600,800)
				poisonchance = rand (0,7)
			P << "The [src] stretches out and lunges after [picked]!"
			P << 'enemyattack.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The [src] Engulphs [picked] and squeezes [picked]'s life-force out of it!  [picked] recieves [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				picked.hp -= spelldmg
				sleep(10)
				if(poisonchance == 3)
					if(picked.hp <= 0)
						P << "[picked] was poisoned by the attack, but [picked] is dead, so it doesn't matter!"
						Deathcheck(picked)
					else
						P << "Not only was [picked] damaged, [picked] is poisoned!"
						picked.poisoned = 1
						sleep(10)
				if(poisonchance == 4)
					if(picked.hp <= 0)
						P << "[picked] was poisoned by the attack, but [picked] is dead, so it doesn't matter!"
						Deathcheck(picked)
					else
						P << "Not only was [picked] damaged, [picked] is poisoned!"
						picked.poisoned = 1
						sleep(10)
				else
					if(picked.hp <= 0)
						Deathcheck(picked)
			else
				P << "[picked] dodged the attack!"
				P << 'dodge.wav'
				sleep(10)
			sleep(10)

		Knockover(mob/picked,list/enemylist,mob/Newchar/P)
			var
				dmg = src.attack - picked.defense + rand(700,850)
				hit = src.agility - picked.agility + rand(700,850)
				success = dmg + hit + rand(-200,500)
			P << "The [src] tries to smash the ground to knock [picked] over!"
			P << 'spell.wav'
			sleep(10)
			if(hit >= 1)
				if(dmg >= 1)
					P << "The shaking of the ground flips [picked] and [picked] lands on [picked]'s head!  [picked] recieves [num2text(dmg,20)] damage!"
					P << 'hit.wav'
					sleep(10)
					picked.hp -= dmg
					if(success >= 1)
						P << "[picked] was knocked out for a turn!"
						if(picked.hp <= 0)
							P << "Although [picked] was knocked out from the fall, [picked] was killed by the attack so it doesn't matter anyway!"
							Deathcheck(picked)
						else
							src.gonealready = 0
							Battle(P,enemylist)
					else if(picked.hp <= 0)
						Deathcheck(picked)
				if(dmg <= 0)
					P << "The fell on [picked]'s head from the fall, but for some reason, [picked] doesn't feel a thing!"
					sleep(10)
			if(hit <= 0)
				P << "[picked] jumped when the attack reached it!"
				sleep(10)

		SummonThiefBag1(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
			P << "The [src] chants!"
			P << 'spell.wav'
			sleep(10)
			if(chance == 1)
				if(enemylist.len>=12) // Line 276
					P << "Nothing seemed to happen."
					return
				else
					P << "A Thief Bag appeared!"
					var/mob/monster/Summoned/SummonedThiefBag1/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
			else
				P << "Nothing seemed to happen."
				sleep(10)

		JewelRain(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(800,1050)
			P << "The [src], enhales and spits Jewels at [picked]!"
			P << 'enemyattack.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The Jewels stick in [picked]'s head, then explode doing [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The Jewels miss and explode a while away!"
				sleep(10)

		Kirby(mob/picked,mob/Newchar/P)
			var
				stolen = src.agility - picked.agility + rand(500,1000)
			P << "The [src] pulls a Kirby!"
			P << 'spell.wav'
			sleep(10)
			if(stolen >= 1)
				P << "The [src] enhales [stolen] gold from you!"
				P << 'hit.wav'
				sleep(10)
				P.gold -= stolen
				if(P.gold <= 0)
					P.gold = 0
			if(stolen <= 0)
				P << "The [src] did not pull in enough air, and you caught all your gold before it could get it!"
				sleep(10)

		SuperGale(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(975,1150)
			P << "The [src] casts Super Gale on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The spell does [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The spell fails!"
				sleep(10)

		BoneToss(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(1100,1350)
			P << "The [src] tosses a Bone at [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The bone whacks [picked] in the head and does [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The bone misses!"
				sleep(10)

		SummonSkeleton1(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
			P << "The [src] pulls himself in half!"
			P << 'spell.wav'
			sleep(10)
			if(chance == 1)
				if(enemylist.len>=12) // Line 276
					P << "Nothing seemed to happen and the [src] put himself back together disapointed."
					return
				else
					P << "The halves grew back and there is now 2 Skeletons!"
					var/mob/monster/Summoned/SummonedSkeleton1/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
			else
				P << "Nothing seemed to happen and the [src] put himself back together disapointed."
				sleep(10)

		SummonHammerman1(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
			P << "The [src] chants!"
			P << 'spell.wav'
			sleep(10)
			if(chance == 1)
				if(enemylist.len>=12) // Line 276
					P << "Nothing seemed to happen."
					return
				else
					P << "A Hammer Man appeared!"
					var/mob/monster/Summoned/SummonedHammerman1/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
			else
				P << "Nothing seemed to happen."
				sleep(10)

		Blazemore2(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(1275,1550)
			P << "The [src] casts Blazemore on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The spell does [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The spell fails!"
				sleep(10)

		HammerFall2(mob/picked,list/enemylist,mob/Newchar/P)
			var
				dmg = src.attack - picked.defense + rand(1275,1600)
				hit = src.agility - picked.agility + rand(1275,1600)
				success = dmg + hit + rand(500,1500)
			P << "The [src] tries to smash [picked] with his Hammer!"
			P << 'spell.wav'
			sleep(10)
			if(hit >= 1)
				if(dmg >= 1)
					P << "The Hammer lands straight on [picked]'s face and does [num2text(dmg,20)] damage!"
					P << 'hit.wav'
					sleep(10)
					picked.hp -= dmg
					if(success >= 1)
						P << "[picked] was knocked out for a turn!"
						if(picked.hp <= 0)
							P << "Although [picked] was knocked out from the Hammer, [picked] was killed by the attack so it doesn't matter anyway!"
							Deathcheck(picked)
						else
							src.gonealready = 0
							Battle(P,enemylist)
					else if(picked.hp <= 0)
						Deathcheck(picked)
				if(dmg <= 0)
					P << "The Hammer hit [picked], but [picked] didn't feel a thing!"
					sleep(10)
			if(hit <= 0)
				P << "[picked] dodged the Hammer!"
				sleep(10)

		Healmore2(mob/picked,mob/Newchar/P)
			var
				heal = src.intelligence - picked.intelligence + rand(1000,1500)
			P << "The [src] casts Healmore!"
			P << 'spell.wav'
			sleep(10)
			if(heal >= 1)
				P << "The [src] heals [num2text(heal,20)] HP!"
				src.hp += heal
				sleep(10)
			else
				P << "The spell had no effect on the [src]!"
				sleep(10)

		Ram(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(1450,1800)
			P << "The [src] charges after [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The [src] rams into [picked] and does [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The [src] speeds right past [picked]!"
				sleep(10)

		HornToss(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(1650,2150)
			P << "The [src] gets a Horn and hurls it at [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The Horn does [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The Horn misses!"
				sleep(10)

		IceTounge(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(2000,2450)
			P << "The [src] comes after [picked] with his tounge!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The [src] licks [picked], and [picked] freeze up, when [picked] thaws, [picked] realizes that [picked] has recieved [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The [src] misses [picked]!"
				sleep(10)

		Icicle(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(2200,2750)
			P << "The [src] grows an Icicle on it's side.  It suddenly shoots after [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The Icicle gets stuffed into [picked] and does [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The Icicle speeds past [picked]!"
				sleep(10)

		IceCall1(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
			P << "The [src] screams widly!"
			P << 'spell.wav'
			sleep(10)
			if(chance == 1)
				if(enemylist.len>=12)
					P << "Nothing seemed to happen."
					return
				else
					P << "A mountain of Ice Appeared!  It suddenly started shakeing and an Ice Sloth popped out!"
					var/mob/monster/Summoned/SummonedIceSloth1/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
			else
				P << "Nothing seemed to happen."
				sleep(10)

		Goop(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(2550,3150)
			P << "The [src] goops all over [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The goop starts eating away at [picked]'s inner essence!  [picked] receieves [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The goop gets all over [picked], but does nothing!"
				sleep(10)

		Split1(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
			P << "The [src] begins to shake aruptly"
			P << 'spell.wav'
			sleep(10)
			if(chance == 1)
				if(enemylist.len>=12)
					P << "Nothing seemed to happen."
					return
				else
					P << "The [src] split in two and a new Teal Slime appeared!"
					var/mob/monster/Summoned/SummonedTealSlime1/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
			else
				P << "Nothing seemed to happen."
				sleep(10)

		Disease(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(2900,3550)
				dischance = spelldmg + (src.intelligence - picked.intelligence) + rand(1000,5000)
			P << "The [src] throws parts of him at [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The parts beat the crap out of [picked]!  [picked] receieves [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(dischance >= 250)
					if(picked.hp <= 0)
						P << "[picked] was diseased by the attack, but [picked] has died, so it doesn't really matter anyway!"
						Deathcheck(picked)
					else
						P << "[picked] was diseased by the attack!"
						picked.diseased = 1
				else if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The parts completely miss [picked]!"
				sleep(10)

		BloodRock(mob/picked,list/enemylist,mob/Newchar/P)
			var
				dmg = src.attack - picked.defense + rand(3250,3900)
				hit = src.agility - picked.agility + rand(3250,3900)
				success = dmg + hit + rand(1500,5500)
				dis = dmg + hit + (src.intelligence - picked.intelligence) + rand(1500,5500)
			P << "The [src] tries to smash [picked] with a huge Rock covered in Blood!"
			P << 'spell.wav'
			sleep(10)
			if(hit >= 1)
				if(dmg >= 1)
					P << "The Rock lands straight on [picked]'s face and does [num2text(dmg,20)] damage!"
					P << 'hit.wav'
					sleep(10)
					picked.hp -= dmg
					if(success >= 1)
						P << "[picked] was knocked out for a turn!"
						if(picked.hp <= 0)
							P << "Although [picked] was knocked out from the Rock, [picked] was killed by the attack so it doesn't matter anyway!"
							Deathcheck(picked)
						else
							if(dis >= 1000)
								P << "Not only has [picked] been knocked out, [picked] is also Diseased!"
								picked.diseased = 1
							src.gonealready = 0
							Battle(P,enemylist)
					else if(dis >= 1000)
						P << "[picked] has been diseased!"
						if(picked.hp <= 0)
							P << "Although [picked] has been diseased, [picked] is dead, so it doesn't really matter!"
							Deathcheck(picked)
						else
							picked.diseased = 0
					else if(picked.hp <= 0)
						Deathcheck(picked)
				if(dmg <= 0)
					P << "The Rock hit [picked], but [picked] didn't feel a thing!"
					sleep(10)
			if(hit <= 0)
				P << "[picked] dodged the Rock!"
				sleep(10)

		BloodRain(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(3300,4000)
				dischance = spelldmg + (src.intelligence - picked.intelligence) + rand(2000,6000)
			P << "The [src] calls apon a rain of...BLOOD!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The Blood Rain beats the crap out of [picked]!  [picked] receieves [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(dischance >= 250)
					if(picked.hp <= 0)
						P << "[picked] was diseased by the attack, but [picked] has died, so it doesn't really matter anyway!"
						Deathcheck(picked)
					else
						P << "[picked] was diseased by the attack!"
						picked.diseased = 1
				else if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The Blood Rain completely missed [picked]!"
				sleep(10)

		Duplicate1(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
			P << "The [src] begins to shake aruptly!"
			P << 'spell.wav'
			sleep(10)
			if(chance == 1)
				if(enemylist.len>=12)
					P << "Nothing seemed to happen."
					return
				else
					P << "The [src] spit out a tiny bit of itself which turned into a new Blood Babble!"
					var/mob/monster/Summoned/SummonedBloodBabble1/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
			else
				P << "Nothing seemed to happen."
				sleep(10)

		Absorb(mob/picked,mob/Newchar/P)
			var
				heal = src.intelligence - picked.intelligence + rand(3750,4550)
			P << "The [src] merges into [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(heal >= 1)
				P << "The [src] hurts [picked] for [num2text(heal,20)] and suddenly heals for that much!  The [src] disattaches from [picked]."
				src.hp += heal
				picked.hp -= heal
				sleep(10)
				if(picked.hp <= 0)
					Deathcheck(picked)
			else
				P << "The merge didn't do anything and the [src] disattached!"
				sleep(10)

		FlameBreath(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(4200,4850)
			P << "The [src] breathes in heavily!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The [src] blows out a huge Flaming Breath!  [picked] gets burnt to a crisp for [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The [src] blows out a huge Flaming Breath!  [picked] dodges the attack though, so it doesn't really matter how big the flame is."
				sleep(10)

		FireballODoom(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(5500,7500)
			P << "The [src] seems to start chocking on himself!!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The [src] coughs out a HUGE Fireball!  The bad thing is, it's headed STRAIGHT TOWARDS [picked]!"
				sleep(10)
				P << "The HUGE Fireball RAMS into [picked], causing [picked] to burn to a couple piles of dust, but [picked] soon recovers, but [picked] has lost [num2text(spelldmg,20)] life in the meantime!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The [src] coughs out a HUGE Fireball!  The bad thing is, it's headed STRAIGHT TOWARDS [picked]!"
				sleep(10)
				P << "[picked] jumps out of the way, but it still comes after [picked].  Thankfully, when [picked] dodges again, it doesn't have time to come back after [picked] and it crashes into the ground, leaving a massive crater behind!"
				sleep(10)

		Bite(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(5500,6550)
			P << "The [src] hurls itself after [picked] with drooling teeth!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The [src] sticks it's teeth into [picked], chomping a large portion off of [picked].  At first, [picked] feels no pain, then [picked] realizes, [picked] has recieved [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The [src] runs past [picked] when [picked] dodges, but [picked] still gets drooled on, but its nothing major."
				sleep(10)

		Roar(mob/picked,list/enemylist,mob/Newchar/P)
			var
				dmg = src.attack - picked.defense + rand(5000,7000)
				hit = src.agility - picked.agility + rand(5000,7000)
				success = dmg + hit + rand(2500,7500)
			P << "The [src] roars a massively!"
			P << 'spell.wav'
			sleep(10)
			if(hit >= 1)
				if(success >= 1)
					P << "The Roar scares the living shit out of [picked].  [picked] falls over, and is unable to attack [picked]'s next turn!"
					P << 'hit.wav'
					sleep(10)
					src.gonealready = 0
					Battle(P,enemylist)
				if(success <= 0)
					P << "The Roar does not even make [picked] flinch!"
					sleep(10)
			if(hit <= 0)
				P << "Ammazingly, [picked] didn't hear the roar!"
				sleep(10)

		Absorb2(mob/picked,mob/Newchar/P)
			var
				heal = src.intelligence - picked.intelligence + rand(5700,7000)
			P << "The [src] hurls itself after [picked] with drooling teeth!"
			P << 'spell.wav'
			sleep(10)
			if(heal >= 1)
				P << "The [src] drains [picked] for [num2text(heal,20)] and gains that life for itself!  The [src] runs back to where it was."
				src.hp += heal
				picked.hp -= heal
				sleep(10)
				if(picked.hp <= 0)
					Deathcheck(picked)
			else
				P << "The [src] fails to reach [picked]."
				sleep(10)

		MagicBlade(mob/picked,list/enemylist,mob/Newchar/P)
			var
				dmg = src.attack - picked.defense + rand(6600,7500)
				hit = src.agility - picked.agility + rand(6600,7500)
				success = dmg + hit + rand(4000,10000)
			P << "A Magical Blade suddenly soares over the [src]'s head!"
			P << 'spell.wav'
			sleep(10)
			if(hit >= 1)
				if(dmg >= 1)
					P << "The Blade slices [picked] up!  [picked] recieves [num2text(dmg,20)] damage!"
					P << 'hit.wav'
					sleep(10)
					picked.hp -= dmg
					if(success >= 1)
						P << "[picked] was knocked out for a turn!"
						if(picked.hp <= 0)
							P << "Although [picked] was knocked out from the Blade, [picked] was killed by the attack so it doesn't matter anyway!"
							Deathcheck(picked)
						else
							src.gonealready = 0
							Battle(P,enemylist)
					else if(picked.hp <= 0)
						Deathcheck(picked)
				if(dmg <= 0)
					P << "The Blade sliced [picked], but [picked] didn't feel a thing!"
					sleep(10)
			if(hit <= 0)
				P << "[picked] dodged the Blade's slicing attack!"
				sleep(10)

		SummonSlime2(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
			P << "The [src] begins to meditate!"
			P << 'spell.wav'
			sleep(10)
			if(chance == 1)
				if(enemylist.len>=12)
					P << "Nothing seemed to happen."
					return
				else
					P << "Suddenly, a portal opens and a Slime jumps out!"
					var/mob/monster/Summoned/SummonedSlime2/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
			else
				P << "Nothing seemed to happen."
				sleep(10)

		Healmore3(mob/picked,mob/Newchar/P)
			var
				heal = src.intelligence - picked.intelligence + rand(7300,8150)
			P << "The [src] casts Healmore!"
			P << 'spell.wav'
			sleep(10)
			if(heal >= 1)
				P << "The [src] heals [num2text(heal,20)] HP!"
				src.hp += heal
				sleep(10)
			else
				P << "The spell had no effect on the [src]!"
				sleep(10)

		Blazemost(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(7300,8150)
			P << "The [src] casts Blazemost on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The spell hits [picked] directly and does [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The spell dissapates before reaching [picked]!"
				sleep(10)

		SummonSlime3(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
			P << "The [src] begins to meditate!"
			P << 'spell.wav'
			sleep(10)
			if(chance == 1)
				if(enemylist.len>=12)
					P << "Nothing seemed to happen."
					return
				else
					P << "Suddenly, a portal opens and a Slime jumps out!"
					var/mob/monster/Summoned/SummonedSlime3/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
			else
				P << "Nothing seemed to happen."
				sleep(10)

		FlameBreath2(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(8000,9300)
			P << "The [src] breathes in heavily!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The [src] blows out a huge Flaming Breath!  [picked] gets burnt to a crisp for [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The [src] blows out a huge Flaming Breath!  [picked] dodges the attack though, so it doesn't really matter how big the flame is."
				sleep(10)

		FireballODoom2(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(9150,10000)
			P << "The [src] seems to start chocking on himself!!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The [src] coughs out a HUGE Fireball!  The bad thing is, it's headed STRAIGHT TOWARDS [picked]!"
				sleep(10)
				P << "The HUGE Fireball RAMS into [picked], causing [picked] to burn to a couple piles of dust, but [picked] soon recovers, but [picked] has lost [num2text(spelldmg,20)] life in the meantime!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The [src] coughs out a HUGE Fireball!  The bad thing is, it's headed STRAIGHT TOWARDS [picked]!"
				sleep(10)
				P << "[picked] jumps out of the way, but it still comes after [picked].  Thankfully, when [picked] dodges again, it doesn't have time to come back after [picked] and it crashes into the ground, leaving a massive crater behind!"
				sleep(10)

		SummonMage1(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
			P << "The [src] begins to meditate!"
			P << 'spell.wav'
			sleep(10)
			if(chance == 1)
				if(enemylist.len>=12)
					P << "Nothing seemed to happen."
					return
				else
					P << "Suddenly, a portal opens and a Mage jumps out!"
					var/mob/monster/Summoned/SummonedMage1/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
			else
				P << "Nothing seemed to happen."
				sleep(10)

		Quake(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(9900,10400)
			P << "The [src] casts Quake on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "A huge hole forms under [picked] and he falls in!  [picked] recieves [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "A huge hole forms near [picked] but he doesn't fall in."
				sleep(10)

		WindStrike(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(10300,12000)
			P << "The [src] casts Wind Strike on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "A large Wind comes and slices [picked] up!  [picked] recieves [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "A large Wind passes [picked] but nothing happens!"
				sleep(10)

		ThunderBolt(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(11800,14000)
			P << "The [src] casts Thunder Bolt on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "A Bolt of Loud Thunder comes down and strikes [picked]!  [picked] recieves [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "A crack is heard but nothing happens!"
				sleep(10)

		Iceball(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(13700,15500)
			P << "The [src] casts Iceball on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "A Ball of Ice forms and is hurled at [picked]!  It smashes into [picked], he recieves [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "Nothing happens!"
				sleep(10)

		Blazemost2(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(15000,18550)
			P << "The [src] casts Blazemost on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The spell hits [picked] directly and does [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The spell dissapates before reaching [picked]!"
				sleep(10)

		SummonMage2(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
			P << "The [src] begins to meditate!"
			P << 'spell.wav'
			sleep(10)
			if(chance == 1)
				if(enemylist.len>=12)
					P << "Nothing seemed to happen."
					return
				else
					P << "Suddenly, a portal opens and a Mage jumps out!"
					var/mob/monster/Summoned/SummonedMage2/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
			else
				P << "Nothing seemed to happen."
				sleep(10)

		BlackFlub1(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
			P << "The [src] flubbers around wildly!"
			P << 'spell.wav'
			sleep(10)
			if(chance == 1)
				if(enemylist.len>=12)
					P << "Nothing seemed to happen."
					return
				else
					P << "Black Flubber falls from the air and forms a new Black Slime!"
					var/mob/monster/Summoned/SummonedBlackSlime1/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
			else
				P << "Nothing seemed to happen."
				sleep(10)

		BlackHole(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(18000,21000)
			P << "The [src] chants unknown words!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "A Black Hole forms behind [picked] and sucks [picked] in!  A few seconds later, it spits [picked] out doing [num2text(spelldmg,20)] damage during the transaction!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "Nothing happens."
				sleep(10)

		Howl1(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
			P << "The [src] howls!"
			P << 'spell.wav'
			sleep(10)
			if(chance == 1)
				if(enemylist.len>=12)
					P << "Nothing seemed to happen."
					return
				else
					P << "Another Wild Cat comes to back up the [src]!"
					var/mob/monster/Summoned/SummonedWildCat1/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
			else
				P << "Nothing seemed to happen."
				sleep(10)

		Maul(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(20000,23500)
			P << "The [src] attempts to maul [picked] in the face!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "[picked] recieves [num2text(spelldmg,20)] damage plus a gigantic Maul Scar on his face!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "[picked] dodges!"
				sleep(10)

		WhiteFlub1(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
			P << "The [src] flubbers around wildly!"
			P << 'spell.wav'
			sleep(10)
			if(chance == 1)
				if(enemylist.len>=12)
					P << "Nothing seemed to happen."
					return
				else
					P << "White Flubber falls from the air and forms a new White Slime!"
					var/mob/monster/Summoned/SummonedWhiteSlime1/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
			else
				P << "Nothing seemed to happen."
				sleep(10)

		WhiteMassacre(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(22000,28000)
			P << "The [src] chants unknown words!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The [src] takes out 2 Daggers, and starts sliceing the crap out of [picked] for [num2text(spelldmg,20)]!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "Nothing happens."
				sleep(10)

		Healmost(mob/picked,mob/Newchar/P)
			var
				heal = src.intelligence - picked.intelligence + rand(21000,30000)
			P << "The [src] casts Healmost!"
			P << 'spell.wav'
			sleep(10)
			if(heal >= 1)
				P << "The [src] heals [num2text(heal,20)] HP!"
				src.hp += heal
				sleep(10)
			else
				P << "The spell had no effect on the [src]!"
				sleep(10)

		Healus(mob/picked,list/enemylist,mob/Newchar/P)
			var
				heal = src.intelligence - picked.intelligence + rand(25000,35000)
			P << "The [src] casts Healus!"
			P << 'spell.wav'
			sleep(10)
			if(heal >= 1)
				for(var/mob/A in enemylist)
					A.hp += heal
					P << "[A] gains [num2text(heal,20)] HP!"
					sleep(5)
				sleep(10)
			else
				P << "The spell had no effect on the [src]!"
				sleep(10)

		Infermost(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(26500,32000)
			P << "The [src] casts Infermost on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "[picked] recieves [num2text(spelldmg,20)] Damage from the devistating Wind attack!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "A breeze passes [picked] and it feels refreshing."
				sleep(10)

		Tornado(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(29500,37000)
			P << "The [src] casts Tornado on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "[picked] gets whipped into the air, then thrown all over the place!  [picked] recieves [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "A breeze passes [picked] and it feels refreshing."
				sleep(10)

		DanceFire(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(33000,41500)
			P << "The [src] dances like an idiot."
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "Fire comes out of no where, and starts to dance with the [src]!  They then suddenly hurl themselves after [picked]!  They ram into him and burn him for [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "Nothing happens."
				sleep(10)

		FlameCreate1(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
			P << "The [src] starts dancing like a baphoon."
			P << 'spell.wav'
			sleep(10)
			if(chance == 1)
				if(enemylist.len>=12)
					P << "Nothing seemed to happen."
					return
				else
					P << "Flames come from nowhere, to combine into a new Flame Slime!"
					var/mob/monster/Summoned/SummonedFlameSlime1/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
			else
				P << "Nothing seemed to happen."
				sleep(10)

		Firebane(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(40000,48500)
			P << "The [src] casts Firebane!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The line of fire burns [picked] to the ground.  The massive burns cause [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "Nothing happens."
				sleep(10)

		MasterFire(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(47000,53500)
			P << "The [src] chants unknown words!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "A Flaming Fireball of Doom comes from nowhere and hurls itself after [picked]!  The Fireball burns [picked] to a crisp.  When [picked] comes back together, [picked] realizes, [picked] has recived [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "Nothing happens."
				sleep(10)

		BloodMassacre(mob/picked,list/enemylist,mob/Newchar/P)
			var
				dmg = src.attack - picked.defense + rand(50000,58500)
				hit = src.agility - picked.agility + rand(50000,58500)
				success = dmg + hit + rand(25000,55000)
				dis = dmg + hit + (src.intelligence - picked.intelligence) + rand(25000,55000)
			P << "The [src] sends Bashing, Bloody Hammers after [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(hit >= 1)
				if(dmg >= 1)
					P << "The Hammers land straight on [picked]'s face and do [num2text(dmg,20)] damage!"
					P << 'hit.wav'
					sleep(10)
					picked.hp -= dmg
					if(success >= 1)
						P << "[picked] was knocked out for a turn!"
						if(picked.hp <= 0)
							P << "Although [picked] was knocked out from the Hammers, [picked] was killed by the attack so it doesn't matter anyway!"
							Deathcheck(picked)
						else
							if(dis >= 1000)
								P << "Not only has [picked] been knocked out, [picked] is also Diseased!"
								picked.diseased = 1
							src.gonealready = 0
							Battle(P,enemylist)
					else if(dis >= 1000)
						P << "[picked] has been diseased!"
						if(picked.hp <= 0)
							P << "Although [picked] has been diseased, [picked] is dead, so it doesn't really matter!"
							Deathcheck(picked)
						else
							picked.diseased = 0
					else if(picked.hp <= 0)
						Deathcheck(picked)
				if(dmg <= 0)
					P << "The Hammers hit [picked], but [picked] didn't feel a thing!"
					sleep(10)
			if(hit <= 0)
				P << "[picked] dodged the Hammers!"
				sleep(10)

		SuperBlood(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(55500,61500)
				dischance = spelldmg + (src.intelligence - picked.intelligence) + rand(30000,60000)
			P << "The [src] calls for something..."
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "A ball of Blood flings itself after [picked], runs into him, and does [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(dischance >= 250)
					if(picked.hp <= 0)
						P << "[picked] was diseased by the attack, but [picked] has died, so it doesn't really matter anyway!"
						Deathcheck(picked)
					else
						P << "[picked] was diseased by the attack!"
						picked.diseased = 1
				else if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "Nothing came, and the [src] looked evily at [picked]!"
				sleep(10)

		Duplicate2(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
			P << "The [src] begins to shake aruptly!"
			P << 'spell.wav'
			sleep(10)
			if(chance == 1)
				if(enemylist.len>=12)
					P << "Nothing seemed to happen."
					return
				else
					P << "The [src] spit out a tiny bit of itself which turned into a new Blood Babble!"
					var/mob/monster/Summoned/SummonedBloodBabble2/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
			else
				P << "Nothing seemed to happen."
				sleep(10)

		SummonIce1(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
			P << "The [src] begins to shatter in half!"
			P << 'spell.wav'
			sleep(10)
			if(chance == 1)
				if(enemylist.len>=12)
					P << "Nothing seemed to happen."
					return
				else
					P << "The [src] became 2 Ice Babbles!"
					var/mob/monster/Summoned/SummonedIceBabble1/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
			else
				P << "Nothing seemed to happen."
				sleep(10)

		RainIce(mob/picked,list/enemylist,mob/Newchar/P)
			var
				dmg = src.attack - picked.defense + rand(60000,72000)
				hit = src.agility - picked.agility + rand(60000,72000)
				success = dmg + hit + rand(4000,10000)
			P << "A cloud of Ice begins to hover over [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(hit >= 1)
				if(dmg >= 1)
					P << "The cloud suddenly starts shooting Rains of Ice at [picked]!  [picked] recieves [num2text(dmg,20)] damage!"
					P << 'hit.wav'
					sleep(10)
					picked.hp -= dmg
					if(success >= 1)
						P << "[picked] was knocked out for a turn!"
						if(picked.hp <= 0)
							P << "Although [picked] was knocked out from the Ice, [picked] was killed by the attack so it doesn't matter anyway!"
							Deathcheck(picked)
						else
							src.gonealready = 0
							Battle(P,enemylist)
					else if(picked.hp <= 0)
						Deathcheck(picked)
				if(dmg <= 0)
					P << "The Ice went right through [picked], but [picked] didn't feel a thing!"
					sleep(10)
			if(hit <= 0)
				P << "[picked] dodged the Ice attacks!"
				sleep(10)

		Icicle2(mob/picked,list/enemylist,mob/Newchar/P)
			var
				dmg = src.attack - picked.defense + rand(60000,72000)
				hit = src.agility - picked.agility + rand(60000,72000)
				success = dmg + hit + rand(4000,10000)
			P << "The [src] forms an Icicle out of one of the bubbles coming off of him!"
			P << 'spell.wav'
			sleep(10)
			if(hit >= 1)
				if(dmg >= 1)
					P << "The Icicle zooms after [picked]!  It stabs right through [picked] causing [num2text(dmg,20)] damage!"
					P << 'hit.wav'
					sleep(10)
					picked.hp -= dmg
					if(success >= 1)
						P << "[picked] was knocked out for a turn!"
						if(picked.hp <= 0)
							P << "Although [picked] was knocked out from the Ice, [picked] was killed by the attack so it doesn't matter anyway!"
							Deathcheck(picked)
						else
							src.gonealready = 0
							Battle(P,enemylist)
					else if(picked.hp <= 0)
						Deathcheck(picked)
				if(dmg <= 0)
					P << "The Icicle zooms after [picked]!  But it misses."
					sleep(10)
			if(hit <= 0)
				P << "The Icicle zooms after [picked]!  But it misses."
				sleep(10)

		Defeat(mob/picked,mob/Newchar/P)
			var
				chance = rand(1,5)
			P << "The [src] casts Defeat on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(chance == 1)
				P << "A large Spectre comes by and sends [picked] to the Afterlife."
				P << 'hit.wav'
				sleep(10)
				picked.hp = 0
				if(picked.hp <= 0)
					Deathcheck(picked)
			else
				P << "Nothing happens."
				sleep(10)

		MasterBlaze(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(68000,78000)
			P << "The [src] casts Master Blaze on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "A Blaze Ball erupts and lunges after [picked]!  [picked] recieved [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "A crackle is heard in the distance."
				sleep(10)

		MasterIcebolt(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(73000,87500)
			P << "The [src] casts Master Icebolt on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "A Ball of Ice forms and is hurled at [picked]!  It smashes into [picked], he recieves [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "Nothing happens!"
				sleep(10)

		MasterGale(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(85000,92500)
			P << "The [src] casts Master Gale on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "Huge winds form and whip around [picked]!  [picked] recieves [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The spell dissapates before reaching [picked]!"
				sleep(10)

		MasterHeal(mob/picked,mob/Newchar/P)
			var
				heal = src.intelligence - picked.intelligence + rand(90000,100000)
			P << "The [src] casts Master Heal!"
			P << 'spell.wav'
			sleep(10)
			if(heal >= 1)
				P << "The [src] heals 5 HP!"
				src.hp += 5
				if(src.hp >= 5 && istype(src,/mob/monster/Area3C/MetalSlime7))
					src.hp = 5
				sleep(10)
			else
				P << "The spell had no effect on the [src]!"
				sleep(10)

		Ram2(mob/picked,list/enemylist,mob/Newchar/P)
			var
				dmg = src.attack - picked.defense + rand(90000,100000)
				hit = src.agility - picked.agility + rand(90000,100000)
				success = dmg + hit + rand(7500,15000)
			P << "The [src] starts running after [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(hit >= 1)
				if(dmg >= 1)
					P << "The [src] rams right into [picked] doing [num2text(dmg,20)] damage!"
					P << 'hit.wav'
					sleep(10)
					picked.hp -= dmg
					if(success >= 1)
						P << "[picked] was knocked out for a turn!"
						if(picked.hp <= 0)
							P << "Although [picked] was knocked out from the Attack, [picked] was killed so it doesn't matter anyway!"
							Deathcheck(picked)
						else
							src.gonealready = 0
							Battle(P,enemylist)
					else if(picked.hp <= 0)
						Deathcheck(picked)
				if(dmg <= 0)
					P << "The [src] zooms right past [picked]!"
					sleep(10)
			if(hit <= 0)
				P << "The [src] zooms right past [picked]!"
				sleep(10)

		Horn(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(95000,107500)
			P << "The [src] takes out a Horn and hurls it at [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The Horn spikes right through [picked] doing [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "Nothing happens."
				sleep(10)

		Glare(mob/picked,list/enemylist,mob/Newchar/P)
			var
				dmg = src.attack - picked.defense + rand(100000,110000)
				hit = src.agility - picked.agility + rand(100000,110000)
				success = dmg + hit + rand(50000,150000)
			P << "The [src] gives [picked] an evil Glare!"
			P << 'spell.wav'
			sleep(10)
			if(hit >= 1)
				if(success >= 1)
					P << "[picked] is dazled and loses his turn!"
					P << 'hit.wav'
					sleep(10)
					src.gonealready = 0
					Battle(P,enemylist)
				if(success <= 0)
					P << "Nothing Happened."
					sleep(10)
			if(hit <= 0)
				P << "Nothing Happened."
				sleep(10)

		DoomPort1(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
			P << "The [src] creates a Black Portal of Doom!"
			P << 'spell.wav'
			sleep(10)
			if(chance == 1)
				if(enemylist.len>=12)
					P << "Nothing seemed to happen."
					return
				else
					P << "Another Evil Human comes out!"
					var/mob/monster/Summoned/SummonedEvilHuman1/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
			else
				P << "Nothing seemed to happen."
				sleep(10)

		BoltSword(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(100000,110000)
			P << "The [src] engulphs his sword in Electric and hurls it at [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The Sword slices [picked] in half doing [num2text(spelldmg,20)] electric damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The sword misses"
				sleep(10)

		Call1(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
			P << "The [src] calls out into the air!"
			P << 'spell.wav'
			sleep(10)
			if(chance == 1)
				if(enemylist.len>=12)
					P << "Nothing seemed to happen."
					return
				else
					P << "A new Yellow Knight came to help out!"
					var/mob/monster/Summoned/SummonedYellowNite1/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
			else
				P << "Nothing seemed to happen."
				sleep(10)

		HammerCall1(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
			P << "The [src] raises his Hammer!"
			P << 'spell.wav'
			sleep(10)
			if(chance == 1)
				if(enemylist.len>=12)
					P << "Nothing seemed to happen."
					return
				else
					P << "A new Hammer God comes guarded by a Hammer Lord!"
					var/mob/monster/Summoned/SummonedHammerGod1/new_mob=new
					var/mob/monster/Summoned/SummonedHammerLord1/new_mob1=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					for(var/mob/M in enemylist)
						if(M.type==new_mob1.type)letter+=1
					new_mob1.name+=letters[letter]
					enemylist+=new_mob1
					P.monstersinbattle += 2
			else
				P << "Nothing seemed to happen."
				sleep(10)

		HammerBash(mob/picked,list/enemylist,mob/Newchar/P)
			var
				dmg = src.attack - picked.defense + rand(107500,125000)
				hit = src.agility - picked.agility + rand(107500,125000)
				success = dmg + hit + rand(0,100000)
			P << "The [src] keeps Bashing [picked] with his hammer!"
			P << 'spell.wav'
			sleep(10)
			if(hit >= 1)
				if(dmg >= 1)
					P << "[picked] recieved [num2text(dmg,20)] damage!"
					P << 'hit.wav'
					sleep(10)
					picked.hp -= dmg
					if(success >= 1)
						P << "[picked] was knocked out for a turn!"
						if(picked.hp <= 0)
							P << "Although [picked] was knocked out from the Attack, [picked] was killed so it doesn't matter anyway!"
							Deathcheck(picked)
						else
							src.gonealready = 0
							Battle(P,enemylist)
					else if(picked.hp <= 0)
						Deathcheck(picked)
				if(dmg <= 0)
					P << "The [src] misses [picked]!"
					sleep(10)
			if(hit <= 0)
				P << "The [src] misses [picked]!"
				sleep(10)

		Flatten(mob/picked,list/enemylist,mob/Newchar/P)
			var
				dmg = src.attack - picked.defense + rand(115000,140000)
				hit = src.agility - picked.agility + rand(115000,140000)
				success = dmg + hit + rand(0,100000)
			P << "The [src] tries to flatten [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(hit >= 1)
				if(dmg >= 1)
					P << "The [src] bashed [picked] and made him as flat as a piece of cardboard, doing [num2text(dmg,20)] damage"
					P << 'hit.wav'
					sleep(10)
					picked.hp -= dmg
					if(success >= 1)
						P << "[picked] was knocked out for a turn!"
						if(picked.hp <= 0)
							P << "Although [picked] was knocked out from the Attack, [picked] was killed so it doesn't matter anyway!"
							Deathcheck(picked)
						else
							src.gonealready = 0
							Battle(P,enemylist)
					else if(picked.hp <= 0)
						Deathcheck(picked)
				if(dmg <= 0)
					P << "The [src] misses [picked]!"
					sleep(10)
			if(hit <= 0)
				P << "The [src] misses [picked]!"
				sleep(10)

		Claw(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(125000,150000)
			P << "The [src] Claws at [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "[picked] now has a huge maul mark!  [picked] recieves [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The [src] misses!"
				sleep(10)

		Firebal(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(137500,170000)
			P << "The [src] casts Firebal on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "A Firebal wraps around [picked]!  [picked] recieves [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The spell dissapates before reaching [picked]!"
				sleep(10)

		Howl2(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
			P << "The [src] howls aruptly!"
			P << 'spell.wav'
			sleep(10)
			if(chance == 1)
				if(enemylist.len>=12)
					P << "Nothing seemed to happen."
					return
				else
					P << "A new Bear came to help out!"
					var/mob/monster/Summoned/SummonedBear1/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
			else
				P << "Nothing seemed to happen."
				sleep(10)

		DoubleCall1(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
				chance2 = rand(0,4)
			P << "The [src] calls twice!"
			P << 'spell.wav'
			sleep(10)
			if(chance2 == 2 && chance == 1)
				if(enemylist.len>=12)
					P << "Nothing seemed to happen."
					return
				else
					P << "2 King Slimes appeared!"
					var/mob/monster/Summoned/SummonedKingSlime1/new_mob=new
					var/mob/monster/Summoned/SummonedKingSlime1/new_mob2=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					for(var/mob/M in enemylist)
						if(M.type==new_mob2.type)letter+=1
					new_mob2.name+=letters[letter]
					enemylist+=new_mob2
					P.monstersinbattle += 2
					return
			if(chance == 1)
				if(enemylist.len>=12)
					P << "Nothing seemed to happen."
					return
				else
					P << "A King Slime appeared!"
					var/mob/monster/Summoned/SummonedKingSlime1/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
					return
			if(chance2 == 2)
				if(enemylist.len>=12)
					P << "Nothing seemed to happen."
					return
				else
					P << "A King Slime appeared!"
					var/mob/monster/Summoned/SummonedKingSlime1/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
					return
			else
				P << "Nothing seemed to happen."
				sleep(10)

		Healusmore(mob/picked,list/enemylist,mob/Newchar/P)
			var
				heal = src.intelligence - picked.intelligence + rand(155000,190000)
			P << "The [src] casts Healusmore!"
			P << 'spell.wav'
			sleep(10)
			if(heal >= 1)
				for(var/mob/A in enemylist)
					A.hp += heal
					P << "[A] gains [num2text(heal,20)] HP!"
					sleep(5)
				sleep(10)
			else
				P << "The spell had no effect on the [src]!"
				sleep(10)

		TheNukeSpell(mob/picked,mob/Newchar/P)
			var/mob/chosen
			if(P.monsterinparty)
				picked = P.monsterinparty
				chosen = pick(P.monsterinparty,P)
			else
				picked = null
				chosen = P
			var
				spelldmg = src.intelligence - chosen.intelligence + rand(250000,300000)
			P << "The [src] casts The Nuke Spell!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "A HUGE Nuke like figure falls on the party doing [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				if(picked)
					picked.hp -= spelldmg
					if(picked.hp <= 0)
						Deathcheck(picked)
				P.hp -= spelldmg
				if(P.hp <= 0)
					Deathcheck(P)
			if(spelldmg <= 0)
				P << "Nothing happens!"
				sleep(10)

		DoubleCall2(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
				chance2 = rand(0,4)
			P << "The [src] calls twice!"
			P << 'spell.wav'
			sleep(10)
			if(chance2 == 2 && chance == 1)
				if(enemylist.len>=12)
					P << "Nothing seemed to happen."
					return
				else
					P << "2 King Slimes appeared!"
					var/mob/monster/Summoned/SummonedKingSlime2/new_mob=new
					var/mob/monster/Summoned/SummonedKingSlime2/new_mob2=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					for(var/mob/M in enemylist)
						if(M.type==new_mob2.type)letter+=1
					new_mob2.name+=letters[letter]
					enemylist+=new_mob2
					P.monstersinbattle += 2
					return
			if(chance == 1)
				if(enemylist.len>=12)
					P << "Nothing seemed to happen."
					return
				else
					P << "A King Slime appeared!"
					var/mob/monster/Summoned/SummonedKingSlime2/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
					return
			if(chance2 == 2)
				if(enemylist.len>=12)
					P << "Nothing seemed to happen."
					return
				else
					P << "A King Slime appeared!"
					var/mob/monster/Summoned/SummonedKingSlime2/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
					return
			else
				P << "Nothing seemed to happen."
				sleep(10)

		JewelThrow2(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(280000,335000)
			P << "The [src], using its tounge, takes out a Jewel, and as hard as it can, hurls it at [picked]!"
			P << 'enemyattack.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The Jewel sticks in [picked]'s head, then explodes doing [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The Jewel misses and explodes a while away!"
				sleep(10)

		GoldSteal2(mob/picked,mob/Newchar/P)
			var
				stolen = src.agility - picked.agility + rand(315000,370000)
			P << "The [src] tries to eat your money!"
			P << 'spell.wav'
			sleep(10)
			if(stolen >= 1)
				P << "The [src] wasn't caught at it ate [stolen] gold!"
				P << 'hit.wav'
				sleep(10)
				P.gold -= stolen
				if(P.gold <= 0)
					P.gold = 0
			if(stolen <= 0)
				P << "You caught the [src] before it could do anything!"
				sleep(10)

		PoisDoom(mob/picked,list/enemylist,mob/Newchar/P)
			var
				poisonchance = (src.intelligence + src.attack) - (picked.intelligence + picked.defense) + rand(330000,400000)
				dmg = src.attack - picked.defense + rand(330000,400000)
				hit = src.agility - picked.agility + rand(330000,400000)
				success = dmg + hit + rand(0,300000)
			P << "The [src] releases Poison Gases of Doom at [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(hit >= 1)
				if(dmg >= 1)
					P << "[picked] got consumed by the gases, doing [num2text(dmg,20)] damage!"
					P << 'hit.wav'
					sleep(10)
					picked.hp -= dmg
					if(success >= 1)
						if(poisonchance >= 5000)
							P << "[picked] was poisoned!"
							picked.poisoned = 1
						P << "[picked] was knocked out for a turn!"
						if(picked.hp <= 0)
							P << "Although [picked] was knocked out from the Attack, [picked] was killed so it doesn't matter anyway!"
							Deathcheck(picked)
						else
							src.gonealready = 0
							Battle(P,enemylist)
					else if(picked.hp <= 0)
						Deathcheck(picked)
				if(dmg <= 0)
					P << "The gases miss [picked]!"
					sleep(10)
			if(hit <= 0)
				P << "The gases miss [picked]!"
				sleep(10)

		Splatter(mob/picked,list/enemylist,mob/Newchar/P)
			var/mob/chosen
			if(P.monsterinparty)
				picked = P.monsterinparty
				chosen = pick(P.monsterinparty,P)
			else
				picked = null
				chosen = P
			var
				spelldmg = src.intelligence - chosen.intelligence + rand(330000,400000)
				poisonchance = (src.intelligence + src.attack) - (picked.intelligence + picked.defense) + rand(330000,400000)
				dmg = src.attack - picked.defense + rand(330000,400000)
				hit = src.agility - picked.agility + rand(330000,400000)
				success = dmg + hit + rand(0,300000)
			P << "The [src] casts Splatters all over the party!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The parts infect the party, doing [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				if(picked)
					picked.hp -= spelldmg
				P.hp -= spelldmg
				if(success >= 1)
					if(poisonchance >= 5000)
						P << "[picked] was poisoned!"
						picked.poisoned = 1
					P << "The party was knocked out for a turn!"
					if(picked.hp <= 0)
						P << "Although [picked] was knocked out from the Attack, [picked] was killed so it doesn't matter anyway!"
						Deathcheck(picked)
					if(P.hp <= 0)
						P << "Although [P] was knocked out from the Attack, [P] was killed so it doesn't matter anyway!"
						Deathcheck(P)
					else
						src.gonealready = 0
						for(var/mob/monster in enemylist)
							Battle(P,enemylist)
				else if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "Nothing happens!"
				sleep(10)

		Blowup1(mob/picked,list/enemylist,mob/Newchar/P)
			var
				howmany = rand(1,5)
			P << "The [src] explodes!"
			P << 'spell.wav'
			sleep(10)
			if(enemylist.len+howmany>= 13)
				P << "Nothing seemed to happen and [src]'s parts regain form."
				return
			if(howmany == 1)
				P << "Nothing seemed to happen and [src]'s parts regain form."
				return
			if(howmany == 2)
				P << "The parts turn into 2 Babbles!"
				var/mob/monster/Summoned/SummonedBabble1/new_mob=new
				var/mob/monster/Summoned/SummonedBabble1/new_mob2=new
				var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
				var/letter=1
				for(var/mob/M in enemylist)
					if(M.type==new_mob.type)letter+=1
				new_mob.name+=letters[letter]
				enemylist+=new_mob
				for(var/mob/M in enemylist)
					if(M.type==new_mob2.type)letter+=1
				new_mob2.name+=letters[letter]
				enemylist+=new_mob2
				P.monstersinbattle += 2
			if(howmany == 3)
				P << "The parts turn into 3 Babbles!"
				var/mob/monster/Summoned/SummonedBabble1/new_mob=new
				var/mob/monster/Summoned/SummonedBabble1/new_mob2=new
				var/mob/monster/Summoned/SummonedBabble1/new_mob3=new
				var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
				var/letter=1
				for(var/mob/M in enemylist)
					if(M.type==new_mob.type)letter+=1
				new_mob.name+=letters[letter]
				enemylist+=new_mob
				for(var/mob/M in enemylist)
					if(M.type==new_mob2.type)letter+=1
				new_mob2.name+=letters[letter]
				enemylist+=new_mob2
				for(var/mob/M in enemylist)
					if(M.type==new_mob3.type)letter+=1
				new_mob3.name+=letters[letter]
				enemylist+=new_mob3
				P.monstersinbattle += 3
			if(howmany == 4)
				P << "The parts turn into 4 Babbles!"
				var/mob/monster/Summoned/SummonedBabble1/new_mob=new
				var/mob/monster/Summoned/SummonedBabble1/new_mob2=new
				var/mob/monster/Summoned/SummonedBabble1/new_mob3=new
				var/mob/monster/Summoned/SummonedBabble1/new_mob4=new
				var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
				var/letter=1
				for(var/mob/M in enemylist)
					if(M.type==new_mob.type)letter+=1
				new_mob.name+=letters[letter]
				enemylist+=new_mob
				for(var/mob/M in enemylist)
					if(M.type==new_mob2.type)letter+=1
				new_mob2.name+=letters[letter]
				enemylist+=new_mob2
				for(var/mob/M in enemylist)
					if(M.type==new_mob3.type)letter+=1
				new_mob3.name+=letters[letter]
				enemylist+=new_mob3
				for(var/mob/M in enemylist)
					if(M.type==new_mob4.type)letter+=1
				new_mob4.name+=letters[letter]
				enemylist+=new_mob4
				P.monstersinbattle += 4
			if(howmany == 5)
				P << "The parts turn into 5 Babbles!"
				var/mob/monster/Summoned/SummonedBabble1/new_mob=new
				var/mob/monster/Summoned/SummonedBabble1/new_mob2=new
				var/mob/monster/Summoned/SummonedBabble1/new_mob3=new
				var/mob/monster/Summoned/SummonedBabble1/new_mob4=new
				var/mob/monster/Summoned/SummonedBabble1/new_mob5=new
				var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
				var/letter=1
				for(var/mob/M in enemylist)
					if(M.type==new_mob.type)letter+=1
				new_mob.name+=letters[letter]
				enemylist+=new_mob
				for(var/mob/M in enemylist)
					if(M.type==new_mob2.type)letter+=1
				new_mob2.name+=letters[letter]
				enemylist+=new_mob2
				for(var/mob/M in enemylist)
					if(M.type==new_mob3.type)letter+=1
				new_mob3.name+=letters[letter]
				enemylist+=new_mob3
				for(var/mob/M in enemylist)
					if(M.type==new_mob4.type)letter+=1
				new_mob4.name+=letters[letter]
				enemylist+=new_mob4
				for(var/mob/M in enemylist)
					if(M.type==new_mob5.type)letter+=1
				new_mob5.name+=letters[letter]
				enemylist+=new_mob5
				P.monstersinbattle += 5

		DeathBlaze(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(370000,430000)
			P << "The [src] casts Death Blaze on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The spell does [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The spell fails!"
				sleep(10)

		SwordRain2(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack * 3 - picked.defense
			P << "The [src] releases a Rain of Swords attacks on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The attacks do [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The attacks miss!"
				sleep(10)

		Stab(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(370000,430000)
			P << "The [src] stabs [picked] with his huge Knife weapon!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The huge Knife weapon does [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The huge Knife weapon bounces off [picked]!"
				sleep(10)

		NoMP(mob/Newchar/P)
			P << "The [src] stats chanting and releases a spell!"
			P << 'spell.wav'
			sleep(10)
			P << "The spell dissapates for no reason!"
			sleep(10)
			P << "You realize...The [src] doesn't have enough MP!"

		SuperBone(mob/picked,list/enemylist,mob/Newchar/P)
			var
				dmg = src.attack - picked.defense + rand(410000,465000)
				hit = src.agility - picked.agility + rand(410000,465000)
				success = dmg + hit + rand(0,100000)
			P << "The [src] throws a Giant Bone at [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(hit >= 1)
				if(dmg >= 1)
					P << "The Bone bashed [picked] and made him fall to the ground, doing [num2text(dmg,20)] damage"
					P << 'hit.wav'
					sleep(10)
					picked.hp -= dmg
					if(success >= 1)
						P << "[picked] was knocked out!"
						if(picked.hp <= 0)
							P << "Although [picked] was knocked out from the Attack, [picked] was killed so it doesn't matter anyway!"
							Deathcheck(picked)
						else
							src.gonealready = 0
							Battle(P,enemylist)
					else if(picked.hp <= 0)
						Deathcheck(picked)
				if(dmg <= 0)
					P << "The Bone misses [picked]!"
					sleep(10)
			if(hit <= 0)
				P << "The Bone misses [picked]!"
				sleep(10)

		LeafHorde(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(445000,510000)
			P << "The [src] releases Leaves of Doom at [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The Leaves slice up [picked] doing [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The Leaves bounce off [picked]!"
				sleep(10)

		Growth(mob/picked,mob/Newchar/P)
			var
				heal = src.intelligence - picked.intelligence + rand(445000,510000)
				statgain = src.attack / 10
				statchance = rand(1,3)
			P << "The [src] Grows insanely!"
			P << 'spell.wav'
			sleep(10)
			if(heal >= 1)
				P << "The [src] gains [num2text(heal,20)] HP!"
				if(statchance == 2)
					P << "Not only that, the [src]'s stats go up by [statgain] due to its growth!"
					src.attack += statgain
					src.defense += statgain
					src.intelligence += statgain
					src.agility += statgain
				src.hp += heal
				sleep(10)
			else
				P << "The spell had no effect on the [src]!"
				sleep(10)

		LeafCutter(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(491000,580000)
			P << "The [src] releases a Cutting Leaf at [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The Leaf slices up [picked] doing [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The Leaf bounces off [picked]!"
				sleep(10)

		WingBeat(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(550000,625000)
			P << "The [src] flaps his wings widly at [picked] causing a massive wind to hit him!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The wind slices up [picked] doing [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The wind feels like a breeze to [picked]!"
				sleep(10)

		Blizzard2(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(655000,750000)
			P << "The [src] casts Blizzard on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The spell does [num2text(spelldmg,20)] damage to [picked]!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The spell does not effect [picked]!"
				sleep(10)

		IceRage(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(695000,810000)
			P << "The [src] casts Ice Rage on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "Ice spits from the ground and attacks [picked] doing [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The spell does not effect [picked]!"
				sleep(10)

		IceCall2(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
				chance2 = rand(0,4)
			P << "The [src] smashes the ground and ice splutters out!"
			P << 'spell.wav'
			sleep(10)
			if(chance2 == 2 && chance == 1)
				if(enemylist.len>=12)
					P << "The ice shatters and nothing happens."
					return
				else
					P << "The ice shatters and 2 Ice Men appear!"
					var/mob/monster/Summoned/SummonedIceMan1/new_mob=new
					var/mob/monster/Summoned/SummonedIceMan1/new_mob2=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					for(var/mob/M in enemylist)
						if(M.type==new_mob2.type)letter+=1
					new_mob2.name+=letters[letter]
					enemylist+=new_mob2
					P.monstersinbattle += 2
					return
			if(chance == 1)
				if(enemylist.len>=12)
					P << "The ice shatters and nothing happens."
					return
				else
					P << "The ice shatters and 1 Ice Man appear!"
					var/mob/monster/Summoned/SummonedIceMan1/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
					return
			if(chance2 == 2)
				if(enemylist.len>=12)
					P << "The ice shatters and nothing happens."
					return
				else
					P << "The ice shatters and 1 Ice Man appear!"
					var/mob/monster/Summoned/SummonedIceMan1/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
					return
			else
				P << "The ice shatters and nothing happens."
				sleep(10)

		KillerFlame(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(750000,900000)
			P << "The [src] casts Killer Flame on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "Flame spits from the ground like a lava flow and attacks [picked] doing [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The spell does not effect [picked]!"
				sleep(10)

		Explode(mob/picked,mob/Newchar/P)
			var/mob/chosen
			if(P.monsterinparty)
				picked = P.monsterinparty
				chosen = pick(P.monsterinparty,P)
			else
				picked = null
				chosen = P
			var
				spelldmg = src.intelligence - chosen.intelligence + rand(1500000,2000000)
			P << "The [src] starts shaking and blinking aruptly!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The [src] suddenly explodes and hits the whole party for [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				if(picked)
					picked.hp -= spelldmg
					if(picked.hp <= 0)
						Deathcheck(picked)
				P.hp -= spelldmg
				if(P.hp <= 0)
					Deathcheck(P)
				else
					src.hp = 0
					P.Deathcheck(src)
			if(spelldmg <= 0)
				P << "Nothing happens!"
				sleep(10)

		Split2(mob/picked,list/enemylist,mob/Newchar/P)
			var
				chance = rand(0,2)
			P << "The [src] starts shaking and blinking aruptly!"
			P << 'spell.wav'
			sleep(10)
			if(chance == 1)
				if(enemylist.len>=12)
					P << "Nothing seemed to happen."
					return
				else
					P << "A new Red King Slime appears!"
					var/mob/monster/Summoned/SummonedRedKingSlime1/new_mob=new
					var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J","-K","-L")
					var/letter=1
					for(var/mob/M in enemylist)
						if(M.type==new_mob.type)letter+=1
					new_mob.name+=letters[letter]
					enemylist+=new_mob
					P.monstersinbattle += 1
			else
				P << "Nothing seemed to happen."
				sleep(10)

		TealStorm(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(860000,1000000)
			P << "The [src] casts Teal Storm on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "A storm of teal colorness wraps around [picked] doing [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The spell does not effect [picked]!"
				sleep(10)

		BlueStorm(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(890000,1050000)
			P << "The [src] casts Blue Storm on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "A storm of blue colorness wraps around [picked] doing [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The spell does not effect [picked]!"
				sleep(10)

		RedStorm(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(920000,1100000)
			P << "The [src] casts Red Storm on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "A storm of teal colorness wraps around [picked] doing [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The spell does not effect [picked]!"
				sleep(10)

		GreenStorm(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(1020000,1200000)
			P << "The [src] casts Green Storm on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "A storm of green colorness wraps around [picked] doing [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The spell does not effect [picked]!"
				sleep(10)

		PurpleStorm(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.intelligence - picked.intelligence + rand(970000,1150000)
			P << "The [src] casts Purple Storm on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "A storm of purple colorness wraps around [picked] doing [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The spell does not effect [picked]!"
				sleep(10)

		Critical(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(1000000,1200000)
			P << "The [src] uses Critical on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The [src] attacks and does [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The attack does not effect [picked]!"
				sleep(10)

		Shake(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(1150000,1400000)
			P << "The [src] casts Shake on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The [src] shakes and massive dust particles attack [picked] and do [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
			if(spelldmg <= 0)
				P << "The shaking does nothing!"
				sleep(10)

		MineDisease(mob/picked,mob/Newchar/P)
			var
				spelldmg = src.attack - picked.defense + rand(1150000,1400000)
				diseasechance = (picked.attack + picked.defense + picked.agility + picked.intelligence + rand(-1000000,1000000)) - (src.attack + src.defense + src.agility + src.intelligence + rand(-1000000,1000000))
			P << "The [src] casts Shake on [picked]!"
			P << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				P << "The [src] throws a gel ball made of dirt at [picked] and does [num2text(spelldmg,20)] damage!"
				P << 'hit.wav'
				sleep(10)
				picked.hp -= spelldmg
				if(picked.hp <= 0)
					Deathcheck(picked)
				else
					if(diseasechance <= 0)
						P << "[picked] has been diseased from the attack!"
						picked.diseased = 1
			if(spelldmg <= 0)
				P << "The [src] throws a gel ball made of dirt, but it does nothing!"
				sleep(10)
