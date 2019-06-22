mob
	player
		proc
			/*
			ELEMENTS
			---------
			Fire
			Ice
			Lightning
			Explosion
			Wind
			Death
			Heal
			Buff
			DeBuff
			Restore
			*/
			/*
			SPELL LEARN LIST
			----------------------------------
			***Priest***
			St  Heal - Single, Heal, 5
			6   Antidote - Single, Restore, 2		NULL
			5   Infernos - Multiple, Wind, 4		(40-50)
			2   Upper - Single, Buff, 5				NULL
			16  Infermore - Multiple, Wind, 9		(300-500)
			11  Stopspell - Multiple, DeBuff, 10	NULL
			12  Surround - Multiple, DeBuff, 10		NULL
			20  Barrier - Single, Buff, 11			NULL
			15  Increase - Multiple, Buff, 12		NULL
			14  Healmore - Single, Heal, 12			(175-350)
			38  Infermost - Multiple, Wind, 17		(1750-2500)
			33  Healall - Single, Heal, 17			NULL
			18  Healus - Multiple, Heal, 30			(175-400)
			42  Healusall - Multiple, Heal, 55		NULL
			40  Beat - Single, Death, 9				NULL
			105 Defeat - Multiple, Death, 21		NULL
			***Warrior***
			Fire Slash - Single, Fire, 10			REG
			Lit Slash - Single, Lightning, 10		REG
			Ice Slash - Single, Ice, 10				REG
			Wind Slash - Single, Wind, 10			REG
			Earth Slash - Single, Explosion, 10		REG
			***Mage***
			St Blaze - Single, Fire, 3				(4-10)
			3  Icebolt - Single, Ice, 4				(20-38)
			4  Bolt - Single, Lightning, 4			(30-60)
			4  Sap - Single, DeBuff, 5				NULL
			14 Blazemore - Single, Fire, 6			(150-250)
			30 Blazemost - Single, Fire, 16			(1300-1850)
			6  Bang - Multiple, Explosion, 5		(30-40)
			10 Firebal - Multiple, Fire, 6			(50-85)
			15 Snowstorm - Multiple, Ice, 9			(150-200)
			17 Zap - Multiple, Lightning, 10		(200-275)
			17 Decrease - Multiple, DeBuff, 12		NULL
			20 Boom - Multiple, Explosion, 13		(350-500)
			23 Firebane - Multiple, Fire, 14		(500-650)
			28 Blizard - Multiple, Ice, 18			(700-800)
			32 Firebolt - Multiple, Fire, 20		(1000-1200)
			34 Bounce - Single, Buff, 20			NULL
			37 Thordain - Multiple, Lightning, 24	(1500-2000)
			40 Bikill - Single, Buff, 25			NULL
			45 Explodet - Multiple, Explosion, 30	(2200-2500)
			50 BeDragon - Self, Buff, 34			NULL
			*/
			/*
			Spells that are not coded yet due to non Party configuration input:
			----------
			Healus
			Healusall
			Increase
			Bounce
			Barrier
			*/
			//Single Attack - Fire
			Blaze(mob/player/P,mob/target)
				var/dmg = rand(4,10) + round(P.tempint/20)
				var/hit = rand(0,4)
				if(target.weakness == "Fire")
					dmg *= 1.5
				else if(target.strength == "Fire")
					dmg *= 0.5
				dmg = round(dmg)
				if(hit == 2)
					P.DamageAddInfo(P,"You cast Blaze!","No effect to [target]!",'spell.ogg','dodge.ogg')
					sleep(12)
				else
					P.DamageAddInfo(P,"You cast Blaze!","[dmg] Damage to [target]!",'spell.ogg','hit.ogg')
					target.hp -= dmg
					sleep(12)
					if(target.hp <= 0)
						P.Deathcheck(P,target,monstergroup)
				P.mp -= 3

			Blazemore(mob/player/P,mob/target)
				var/dmg = rand(150,250) + round(P.tempint/20)
				var/hit = rand(0,5)
				if(target.weakness == "Fire")
					dmg *= 1.5
				else if(target.strength == "Fire")
					dmg *= 0.5
				dmg = round(dmg)
				if(hit == 2)
					P.DamageAddInfo(P,"You cast Blazemore!","No effect to [target]!",'spell.ogg','dodge.ogg')
					sleep(12)
				else
					P.DamageAddInfo(P,"You cast Blazemore!","[dmg] Damage to [target]!",'spell.ogg','hit.ogg')
					target.hp -= dmg
					sleep(12)
					if(target.hp <= 0)
						P.Deathcheck(P,target,monstergroup)
				P.mp -= 6

			Blazemost(mob/player/P,mob/target)
				var/dmg = rand(1300,1850) + round(P.tempint/20)
				var/hit = rand(0,6)
				if(target.weakness == "Fire")
					dmg *= 1.5
				else if(target.strength == "Fire")
					dmg *= 0.5
				dmg = round(dmg)
				if(hit == 2)
					P.DamageAddInfo(P,"You cast Blazemost!","No effect to [target]!",'spell.ogg','dodge.ogg')
					sleep(12)
				else
					P.DamageAddInfo(P,"You cast Blazemost!","[dmg] Damage to [target]!",'spell.ogg','hit.ogg')
					target.hp -= dmg
					sleep(12)
					if(target.hp <= 0)
						P.Deathcheck(P,target,monstergroup)
				P.mp -= 16

			//Multiple Attack - Fire
			Firebal(mob/player/P)
				P.AddInfo(P,"You cast Firebal!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(50,85) + round(P.tempint/20)
					var/hit = rand(0,4)
					if(target.weakness == "Fire")
						dmg *= 1.5
					else if(target.strength == "Fire")
						dmg *= 0.5
					dmg = round(dmg)
					if(hit == 2)
						P.AddInfo(P,"You cast Firebal!","No effect to [target]!")
						P << 'dodge.ogg'
						sleep(12)
					else
						P.AddInfo(P,"You cast Firebal!","[dmg] Damage to [target]!")
						P << 'hit.ogg'
						target.hp -= dmg
						sleep(12)
						if(target.hp <= 0)
							P.Deathcheck(P,target,monstergroup)
				P.mp -= 6


			Firebane(mob/player/P)
				P.AddInfo(P,"You cast Firebane!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(500,650) + round(P.tempint/20)
					var/hit = rand(0,5)
					if(target.weakness == "Fire")
						dmg *= 1.5
					else if(target.strength == "Fire")
						dmg *= 0.5
					dmg = round(dmg)
					if(hit == 2)
						P.AddInfo(P,"You cast Firebane!","No effect to [target]!")
						P << 'dodge.ogg'
						sleep(12)
					else
						P.AddInfo(P,"You cast Firebane!","[dmg] Damage to [target]!")
						P << 'hit.ogg'
						target.hp -= dmg
						sleep(12)
						if(target.hp <= 0)
							P.Deathcheck(P,target,monstergroup)
				P.mp -= 14

			Firebolt(mob/player/P)
				P.AddInfo(P,"You cast Firebolt!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(1000,1200) + round(P.tempint/20)
					var/hit = rand(0,6)
					if(target.weakness == "Fire")
						dmg *= 1.5
					else if(target.strength == "Fire")
						dmg *= 0.5
					dmg = round(dmg)
					if(hit == 2)
						P.AddInfo(P,"You cast Firebolt!","No effect to [target]!")
						P << 'dodge.ogg'
						sleep(12)
					else
						P.AddInfo(P,"You cast Firebolt!","[dmg] Damage to [target]!")
						P << 'hit.ogg'
						target.hp -= dmg
						sleep(12)
						if(target.hp <= 0)
							P.Deathcheck(P,target,monstergroup)
				P.mp -= 20

			//Single Attack - Ice
			Icebolt(mob/player/P,mob/target)
				var/dmg = rand(20,38) + round(P.tempint/20)
				var/hit = rand(0,4)
				if(target.weakness == "Ice")
					dmg *= 1.5
				else if(target.strength == "Ice")
					dmg *= 0.5
				dmg = round(dmg)
				if(hit == 2)
					P.DamageAddInfo(P,"You cast Icebolt!","No effect to [target]!",'spell.ogg','dodge.ogg')
					sleep(12)
				else
					P.DamageAddInfo(P,"You cast Icebolt!","[dmg] Damage to [target]!",'spell.ogg','hit.ogg')
					target.hp -= dmg
					sleep(12)
					if(target.hp <= 0)
						P.Deathcheck(P,target,monstergroup)
				P.mp -= 4

			//Multiple Attack - Ice
			Snowstorm(mob/player/P)
				P.AddInfo(P,"You cast Snowstorm!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(150,200) + round(P.tempint/20)
					var/hit = rand(0,5)
					if(target.weakness == "Ice")
						dmg *= 1.5
					else if(target.strength == "Ice")
						dmg *= 0.5
					dmg = round(dmg)
					if(hit == 2)
						P.AddInfo(P,"You cast Snowstorm!","No effect to [target]!")
						P << 'dodge.ogg'
						sleep(12)
					else
						P.AddInfo(P,"You cast Snowstorm!","[dmg] Damage to [target]!")
						P << 'hit.ogg'
						target.hp -= dmg
						sleep(12)
						if(target.hp <= 0)
							P.Deathcheck(P,target,monstergroup)
				P.mp -= 9

			Blizard(mob/player/P)
				P.AddInfo(P,"You cast Blizzard!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(700,800) + round(P.tempint/20)
					var/hit = rand(0,6)
					if(target.weakness == "Ice")
						dmg *= 1.5
					else if(target.strength == "Ice")
						dmg *= 0.5
					dmg = round(dmg)
					if(hit == 2)
						P.AddInfo(P,"You cast Blizzard!","No effect to [target]!")
						P << 'dodge.ogg'
						sleep(12)
					else
						P.AddInfo(P,"You cast Blizzard!","[dmg] Damage to [target]!")
						P << 'hit.ogg'
						target.hp -= dmg
						sleep(12)
						if(target.hp <= 0)
							P.Deathcheck(P,target,monstergroup)
				P.mp -= 18
			//Single Attack - Lightning
			Bolt(mob/player/P,mob/target)
				var/dmg = rand(30,60) + round(P.tempint/20)
				var/hit = rand(0,4)
				if(target.weakness == "Lightning")
					dmg *= 1.5
				else if(target.strength == "Lightning")
					dmg *= 0.5
				dmg = round(dmg)
				if(hit == 2)
					P.DamageAddInfo(P,"You cast Bolt!","No effect to [target]!",'spell.ogg','dodge.ogg')
					sleep(12)
				else
					P.DamageAddInfo(P,"You cast Bolt!","[dmg] Damage to [target]!",'spell.ogg','hit.ogg')
					target.hp -= dmg
					sleep(12)
					if(target.hp <= 0)
						P.Deathcheck(P,target,monstergroup)
				P.mp -= 4


			//Multiple Attack - Lightning
			Zap(mob/player/P)
				P.AddInfo(P,"You cast Zap!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(200,275) + round(P.tempint/20)
					var/hit = rand(0,6)
					if(target.weakness == "Lightning")
						dmg *= 1.5
					else if(target.strength == "Lightning")
						dmg *= 0.5
					dmg = round(dmg)
					if(hit == 2)
						P.AddInfo(P,"You cast Zap!","No effect to [target]!")
						P << 'dodge.ogg'
						sleep(12)
					else
						P.AddInfo(P,"You cast Zap!","[dmg] Damage to [target]!")
						P << 'hit.ogg'
						target.hp -= dmg
						sleep(12)
						if(target.hp <= 0)
							P.Deathcheck(P,target,monstergroup)
				P.mp -= 10

			Thordain(mob/player/P)
				P.AddInfo(P,"You cast Thordain!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(1500,2000) + round(P.tempint/20)
					var/hit = rand(0,6)
					if(target.weakness == "Lightning")
						dmg *= 1.5
					else if(target.strength == "Lightning")
						dmg *= 0.5
					dmg = round(dmg)
					if(hit == 2)
						P.AddInfo(P,"You cast Thordain!","No effect to [target]!")
						P << 'dodge.ogg'
						sleep(12)
					else
						P.AddInfo(P,"You cast Thordain!","[dmg] Damage to [target]!")
						P << 'hit.ogg'
						target.hp -= dmg
						sleep(12)
						if(target.hp <= 0)
							P.Deathcheck(P,target,monstergroup)
				P.mp -= 24

			//Multiple Attack - Explosion
			Bang(mob/player/P)
				P.AddInfo(P,"You cast Bang!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(30,40) + round(P.tempint/20)
					var/hit = rand(0,4)
					if(target.weakness == "Explosion")
						dmg *= 1.5
					else if(target.strength == "Explosion")
						dmg *= 0.5
					dmg = round(dmg)
					if(hit == 2)
						P.AddInfo(P,"You cast Bang!","No effect to [target]!")
						P << 'dodge.ogg'
						sleep(12)
					else
						P.AddInfo(P,"You cast Bang!","[dmg] Damage to [target]!")
						P << 'hit.ogg'
						target.hp -= dmg
						sleep(12)
						if(target.hp <= 0)
							P.Deathcheck(P,target,monstergroup)
				P.mp -= 5

			Boom(mob/player/P)
				P.AddInfo(P,"You cast Boom!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(350,500) + round(P.tempint/20)
					var/hit = rand(0,4)
					if(target.weakness == "Explosion")
						dmg *= 1.5
					else if(target.strength == "Explosion")
						dmg *= 0.5
					dmg = round(dmg)
					if(hit == 2)
						P.AddInfo(P,"You cast Boom!","No effect to [target]!")
						P << 'dodge.ogg'
						sleep(12)
					else
						P.AddInfo(P,"You cast Boom!","[dmg] Damage to [target]!")
						P << 'hit.ogg'
						target.hp -= dmg
						sleep(12)
						if(target.hp <= 0)
							P.Deathcheck(P,target,monstergroup)
				P.mp -= 13

			Explodet(mob/player/P)
				P.AddInfo(P,"You cast Explodet!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(2200,2500) + round(P.tempint/20)
					var/hit = rand(0,4)
					if(target.weakness == "Explosion")
						dmg *= 1.5
					else if(target.strength == "Explosion")
						dmg *= 0.5
					dmg = round(dmg)
					if(hit == 2)
						P.AddInfo(P,"You cast Explodet!","No effect to [target]!")
						P << 'dodge.ogg'
						sleep(12)
					else
						P.AddInfo(P,"You cast Explodet!","[dmg] Damage to [target]!")
						P << 'hit.ogg'
						target.hp -= dmg
						sleep(12)
						if(target.hp <= 0)
							P.Deathcheck(P,target,monstergroup)
				P.mp -= 30

			//Multiple Attack - Air
			Infernos(mob/player/P)
				P.AddInfo(P,"You cast Infernos!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(40,50) + round(P.tempint/20)
					var/hit = rand(0,4)
					if(target.weakness == "Air")
						dmg *= 1.5
					else if(target.strength == "Air")
						dmg *= 0.5
					dmg = round(dmg)
					if(hit == 2)
						P.AddInfo(P,"You cast Infernos!","No effect to [target]!")
						P << 'dodge.ogg'
						sleep(12)
					else
						P.AddInfo(P,"You cast Infernos!","[dmg] Damage to [target]!")
						P << 'hit.ogg'
						target.hp -= dmg
						sleep(12)
						if(target.hp <= 0)
							P.Deathcheck(P,target,monstergroup)
				P.mp -= 4

			Infermore(mob/player/P)
				P.AddInfo(P,"You cast Infermore!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(300,500) + round(P.tempint/20)
					var/hit = rand(0,4)
					if(target.weakness == "Air")
						dmg *= 1.5
					else if(target.strength == "Air")
						dmg *= 0.5
					dmg = round(dmg)
					if(hit == 2)
						P.AddInfo(P,"You cast Infernos!","No effect to [target]!")
						P << 'dodge.ogg'
						sleep(12)
					else
						P.AddInfo(P,"You cast Infernos!","[dmg] Damage to [target]!")
						P << 'hit.ogg'
						target.hp -= dmg
						sleep(12)
						if(target.hp <= 0)
							P.Deathcheck(P,target,monstergroup)
				P.mp -= 9

			Infermost(mob/player/P)
				P.AddInfo(P,"You cast Infermost!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(1750,2500) + round(P.tempint/20)
					var/hit = rand(0,4)
					if(target.weakness == "Air")
						dmg *= 1.5
					else if(target.strength == "Air")
						dmg *= 0.5
					dmg = round(dmg)
					if(hit == 2)
						P.AddInfo(P,"You cast Infermost!","No effect to [target]!")
						P << 'dodge.ogg'
						sleep(12)
					else
						P.AddInfo(P,"You cast Infermost!","[dmg] Damage to [target]!")
						P << 'hit.ogg'
						target.hp -= dmg
						sleep(12)
						if(target.hp <= 0)
							P.Deathcheck(P,target,monstergroup)
				P.mp -= 17

			//Single Attack - Instant Death
			Beat(mob/player/P,mob/target)
				var/hit = rand(0,2)
				if(hit == 0 || hit == 2)
					P.DamageAddInfo(P,"You cast Beat!","No effect to [target]!",'spell.ogg','dodge.ogg')
					sleep(12)
				else
					P.DamageAddInfo(P,"You cast Bolt!","[target] falls dead!",'spell.ogg','hit.ogg')
					target.hp = 0
					sleep(12)
					if(target.hp <= 0)
						P.Deathcheck(P,target,monstergroup)
				P.mp -= 9

			Defeat(mob/player/P)
				P.AddInfo(P,"You cast Defeat!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/hit = rand(0,3)
					if(hit == 2|| hit == 1||  hit == 0)
						P.AddInfo(P,"You cast Defeat!","No effect to [target]!")
						P << 'dodge.ogg'
						sleep(12)
					else
						P.AddInfo(P,"You cast Defeat!","[target] falls dead!")
						P << 'hit.ogg'
						target.hp = 0
						sleep(12)
						if(target.hp <= 0)
							P.Deathcheck(P,target,monstergroup)
				P.mp -= 21

			//Single Support - Heal
			Heal(mob/player/P,mob/target)
				var/dmg = rand(5,30)
				if(target.hp >= target.mhp)
					P.DamageAddInfo(P,"You cast Heal!","No effect to [target]!",'spell.ogg')
					sleep(12)
				else
					P.DamageAddInfo(P,"You cast Heal!","[dmg] HP recovered to [target]!",'spell.ogg')
					target.hp += dmg
					sleep(12)
				P.mp -= 5

			Healmore(mob/player/P,mob/target)
				var/dmg = rand(175,350)
				if(target.hp >= target.mhp)
					P.DamageAddInfo(P,"You cast Healmore!","No effect to [target]!",'spell.ogg')
					sleep(12)
				else
					P.DamageAddInfo(P,"You cast Healmore!","[dmg] HP recovered to [target]!",'spell.ogg')
					target.hp += dmg
					sleep(12)
				P.mp -= 12

			Healall(mob/player/P,mob/target)
				P.DamageAddInfo(P,"You cast Healall!","[target] fully recovers thier HP!",'spell.ogg')
				target.hp = target.mhp
				sleep(12)
				P.mp -= 17

			//Multiple Support - Heal
			Healus(mob/player/P)
				P.mp -= 30
			Healusall(mob/player/P)
				P.mp -= 55
			//Single Support - Defense Increase
			Upper(mob/player/P,mob/target)
				if(target.uppcnt != 3)
					P.DamageAddInfo(P,"You cast Upper!","[target]'s Defense increases!",'spell.ogg')
				else
					P.DamageAddInfo(P,"You cast Upper!","Nothing happens!",'spell.ogg')
					sleep(12)
					return
				target.tempdex *= 1.25
				target.tempdex = round(target.tempdex)
				target.uppcnt += 1
				sleep(12)
				P.mp -= 5

			//Multiple Support - Defense Increase
			Increase(mob/player/P)
				P.mp -= 12
			//Single Support - Enemy Defense Decrease
			Sap(mob/player/P,mob/target)
				if(target.uppcnt != -3)
					P.DamageAddInfo(P,"You cast Sap!","[target]'s Defense decreases!",'spell.ogg')
				else
					P.DamageAddInfo(P,"You cast Sap!","Nothing happens!",'spell.ogg')
					sleep(12)
					return
				target.tempdex *= 0.75
				target.tempdex = round(target.tempdex)
				target.uppcnt -= 1
				sleep(12)
				P.mp -= 5

			//Multiple Support - Enemy Defense Decrease
			Decrease(mob/player/P)
				P.AddInfo(P,"You cast Decrease!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					if(target.uppcnt != -3)
						P.AddInfo(P,"You cast Decrease!","[target]'s Defense decreases!")
						target.tempdex *= 0.75
						target.tempdex = round(target.tempdex)
						target.uppcnt -= 1
						sleep(12)
					else
						P.AddInfo(P,"You cast Decrease!","No effect to [target]!")
						sleep(12)
				P.mp -= 12

			//Single Support - Attack Increase
			Bikill(mob/player/P,mob/target)
				if(target.atkcnt != 2)
					P.DamageAddInfo(P,"You cast Bikill!","[target]'s Strength doubles!",'spell.ogg')
				else
					P.DamageAddInfo(P,"You cast Bikill!","Nothing happens!",'spell.ogg')
					sleep(12)
					return
				target.tempstr *= 2
				target.tempstr = round(target.tempstr)
				target.atkcnt += 1
				sleep(12)
				P.mp -= 25

			//Multiple Support - Enemy Disadvantage
			Stopspell(mob/player/P)
				P.AddInfo(P,"You cast Stopspell!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					if(target.nospell == 1)
						P.AddInfo(P,"You cast Stopspell!","No effect to [target]!")
					else
						var/hit = rand(0,2)
						if(hit == 1)
							P.AddInfo(P,"You cast Stopspell!","[target] can no longer cast spells!")
							target.nospell = 1
							sleep(12)
						else
							P.AddInfo(P,"You cast Stopspell!","No effect to [target]!")
							sleep(12)
				P.mp -= 10

			Surround(mob/player/P)
				P.AddInfo(P,"You cast Surround!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					if(target.nosight == 1)
						P.AddInfo(P,"You cast Surround!","No effect to [target]!")
					else
						var/hit = rand(0,3)
						if(hit == 1 || hit == 3)
							P.AddInfo(P,"You cast Surround!","[target] can no longer see properly!")
							target.nosight = 1
							sleep(12)
						else
							P.AddInfo(P,"You cast Surround!","No effect to [target]!")
							sleep(12)
				P.mp -= 10

			//Single Support - Poison Removal
			Antidote(mob/player/P,mob/target)
				if(target.poisoned == 0)
					P.DamageAddInfo(P,"You cast Antidote!","[target] isn't poisoned!",'spell.ogg')
					sleep(12)
				else
					P.DamageAddInfo(P,"You cast Antidote!","The poison leaves [target]'s body!",'spell.ogg')
					sleep(12)
					target.poisoned = 0
				P.mp -= 2
			//Multiple Support - Spell Diminisher
			Bounce(mob/player/P)
				P.mp -= 20
			Barrier(mob/player/P)
				P.mp -= 11

			BeDragon(mob/player/P)
				P.DamageAddInfo(P,"You cast BeDragon!","You turn into a huge dragon!",'spell.ogg')
				P.bedragon = 1
				sleep(12)
				P.mp -= 34

			FireSlash(mob/player/P,mob/M)
				var/damage = (P.tempstr * P.tempdex + rand(-10,10)) - (M.tempstr * M.tempdex + rand(-10,10))
				var/chancehit = (P.tempagl * (rand(7,14)/10) + rand(-100,100)) - (M.tempagl * (rand(7,14)/10) + rand(-100,100))
				var/chancehit2 = rand(0,2)
				var/critical = (P.templuk * P.tempagl * P.tempdex + rand(0,50)) - (M.templuk * M.tempagl * M.tempdex + rand(0,50))
				var/realchance = rand(1,20)
				if(M.weakness == "Fire")
					damage *= 1.5
				if(M.strength == "Fire")
					damage *= 0.5
				if(M.defending)
					damage /= 2
					critical /= 2
					damage = round(damage)
					critical = round(critical)
				if(realchance == 5 || realchance == 15)
					if(critical >= 1)
						var/criticalchance = (P.templuk * (rand(10,20)/10) + rand(-50,50)) - (M.templuk * (rand(10,20)/10) + rand(-50,50))
						if(criticalchance >= 1)
							DamageAddInfo(P,"You slash with fire!","[M] takes [damage]!",'attack.ogg','hit.ogg',"Critical!  ")
							M.hp -= critical
							sleep(12)
							if(M.hp <= 0)
								P.Deathcheck(P,M,monstergroup)
						else
							DamageAddInfo(P,"You slash with fire!","You miss [M]!",'attack.ogg','dodge.ogg',"Critical!  ")
							sleep(12)
					else
						DamageAddInfo(P,"You slash with fire!","You miss [M]!",'attack.ogg','dodge.ogg',"Critical!  ")
						sleep(12)
				else if(chancehit <= 0)
					if(chancehit2 == 1)
						DamageAddInfo(P,"You slash with fire!","[M] takes 1!",'attack.ogg','hit.ogg')
						M.hp --
						sleep(12)
						if(M.hp <= 0)
							P.Deathcheck(P,M,monstergroup)
					else
						DamageAddInfo(P,"You slash with fire!","You miss [M]!",'attack.ogg','dodge.ogg')
						sleep(12)
				else
					if(damage >= 1)
						DamageAddInfo(P,"You slash with fire!","[M] takes [damage]!",'attack.ogg','hit.ogg')
						M.hp -= damage
						sleep(12)
						if(M.hp <= 0)
							P.Deathcheck(P,M,monstergroup)
					else
						if(chancehit2 == 1)
							DamageAddInfo(P,"You slash with fire!","[M] takes 1!",'attack.ogg','hit.ogg')
							M.hp --
							sleep(12)
							if(M.hp <= 0)
								P.Deathcheck(P,M,monstergroup)
						else
							DamageAddInfo(P,"You slash with fire!","[M] is not effected.",'attack.ogg','dodge.ogg')
							sleep(12)
				P.mp -= 10

			IceSlash(mob/player/P,mob/M)
				var/damage = (P.tempstr * P.tempdex + rand(-10,10)) - (M.tempstr * M.tempdex + rand(-10,10))
				var/chancehit = (P.tempagl * (rand(7,14)/10) + rand(-100,100)) - (M.tempagl * (rand(7,14)/10) + rand(-100,100))
				var/chancehit2 = rand(0,2)
				var/critical = (P.templuk * P.tempagl * P.tempdex + rand(0,50)) - (M.templuk * M.tempagl * M.tempdex + rand(0,50))
				var/realchance = rand(1,20)
				if(M.weakness == "Ice")
					damage *= 1.5
				if(M.strength == "Ice")
					damage *= 0.5
				if(M.defending)
					damage /= 2
					critical /= 2
					damage = round(damage)
					critical = round(critical)
				if(realchance == 5 || realchance == 15)
					if(critical >= 1)
						var/criticalchance = (P.templuk * (rand(10,20)/10) + rand(-50,50)) - (M.templuk * (rand(10,20)/10) + rand(-50,50))
						if(criticalchance >= 1)
							DamageAddInfo(P,"You slash with ice!","[M] takes [damage]!",'attack.ogg','hit.ogg',"Critical!  ")
							M.hp -= critical
							sleep(12)
							if(M.hp <= 0)
								P.Deathcheck(P,M,monstergroup)
						else
							DamageAddInfo(P,"You slash with ice!","You miss [M]!",'attack.ogg','dodge.ogg',"Critical!  ")
							sleep(12)
					else
						DamageAddInfo(P,"You slash with ice!","You miss [M]!",'attack.ogg','dodge.ogg',"Critical!  ")
						sleep(12)
				else if(chancehit <= 0)
					if(chancehit2 == 1)
						DamageAddInfo(P,"You slash with ice!","[M] takes 1!",'attack.ogg','hit.ogg')
						M.hp --
						sleep(12)
						if(M.hp <= 0)
							P.Deathcheck(P,M,monstergroup)
					else
						DamageAddInfo(P,"You slash with ice!","You miss [M]!",'attack.ogg','dodge.ogg')
						sleep(12)
				else
					if(damage >= 1)
						DamageAddInfo(P,"You slash with ice!","[M] takes [damage]!",'attack.ogg','hit.ogg')
						M.hp -= damage
						sleep(12)
						if(M.hp <= 0)
							P.Deathcheck(P,M,monstergroup)
					else
						if(chancehit2 == 1)
							DamageAddInfo(P,"You slash with ice!","[M] takes 1!",'attack.ogg','hit.ogg')
							M.hp --
							sleep(12)
							if(M.hp <= 0)
								P.Deathcheck(P,M,monstergroup)
						else
							DamageAddInfo(P,"You slash with ice!","[M] is not effected.",'attack.ogg','dodge.ogg')
							sleep(12)
				P.mp -= 10

			LightningSlash(mob/player/P,mob/M)
				var/damage = (P.tempstr * P.tempdex + rand(-10,10)) - (M.tempstr * M.tempdex + rand(-10,10))
				var/chancehit = (P.tempagl * (rand(7,14)/10) + rand(-100,100)) - (M.tempagl * (rand(7,14)/10) + rand(-100,100))
				var/chancehit2 = rand(0,2)
				var/critical = (P.templuk * P.tempagl * P.tempdex + rand(0,50)) - (M.templuk * M.tempagl * M.tempdex + rand(0,50))
				var/realchance = rand(1,20)
				if(M.weakness == "Lightning")
					damage *= 1.5
				if(M.strength == "Lightning")
					damage *= 0.5
				if(M.defending)
					damage /= 2
					critical /= 2
					damage = round(damage)
					critical = round(critical)
				if(realchance == 5 || realchance == 15)
					if(critical >= 1)
						var/criticalchance = (P.templuk * (rand(10,20)/10) + rand(-50,50)) - (M.templuk * (rand(10,20)/10) + rand(-50,50))
						if(criticalchance >= 1)
							DamageAddInfo(P,"You slash with lightning!","[M] takes [damage]!",'attack.ogg','hit.ogg',"Critical!  ")
							M.hp -= critical
							sleep(12)
							if(M.hp <= 0)
								P.Deathcheck(P,M,monstergroup)
						else
							DamageAddInfo(P,"You slash with lightning!","You miss [M]!",'attack.ogg','dodge.ogg',"Critical!  ")
							sleep(12)
					else
						DamageAddInfo(P,"You slash with lightning!","You miss [M]!",'attack.ogg','dodge.ogg',"Critical!  ")
						sleep(12)
				else if(chancehit <= 0)
					if(chancehit2 == 1)
						DamageAddInfo(P,"You slash with lightning!","[M] takes 1!",'attack.ogg','hit.ogg')
						M.hp --
						sleep(12)
						if(M.hp <= 0)
							P.Deathcheck(P,M,monstergroup)
					else
						DamageAddInfo(P,"You slash with lightning!","You miss [M]!",'attack.ogg','dodge.ogg')
						sleep(12)
				else
					if(damage >= 1)
						DamageAddInfo(P,"You slash with lightning!","[M] takes [damage]!",'attack.ogg','hit.ogg')
						M.hp -= damage
						sleep(12)
						if(M.hp <= 0)
							P.Deathcheck(P,M,monstergroup)
					else
						if(chancehit2 == 1)
							DamageAddInfo(P,"You slash with lightning!","[M] takes 1!",'attack.ogg','hit.ogg')
							M.hp --
							sleep(12)
							if(M.hp <= 0)
								P.Deathcheck(P,M,monstergroup)
						else
							DamageAddInfo(P,"You slash with lightning!","[M] is not effected.",'attack.ogg','dodge.ogg')
							sleep(12)
				P.mp -= 10

			WindSlash(mob/player/P,mob/M)
				var/damage = (P.tempstr * P.tempdex + rand(-10,10)) - (M.tempstr * M.tempdex + rand(-10,10))
				var/chancehit = (P.tempagl * (rand(7,14)/10) + rand(-100,100)) - (M.tempagl * (rand(7,14)/10) + rand(-100,100))
				var/chancehit2 = rand(0,2)
				var/critical = (P.templuk * P.tempagl * P.tempdex + rand(0,50)) - (M.templuk * M.tempagl * M.tempdex + rand(0,50))
				var/realchance = rand(1,20)
				if(M.weakness == "Air")
					damage *= 1.5
				if(M.strength == "Air")
					damage *= 0.5
				if(M.defending)
					damage /= 2
					critical /= 2
					damage = round(damage)
					critical = round(critical)
				if(realchance == 5 || realchance == 15)
					if(critical >= 1)
						var/criticalchance = (P.templuk * (rand(10,20)/10) + rand(-50,50)) - (M.templuk * (rand(10,20)/10) + rand(-50,50))
						if(criticalchance >= 1)
							DamageAddInfo(P,"You slash with wind!","[M] takes [damage]!",'attack.ogg','hit.ogg',"Critical!  ")
							M.hp -= critical
							sleep(12)
							if(M.hp <= 0)
								P.Deathcheck(P,M,monstergroup)
						else
							DamageAddInfo(P,"You slash with wind!","You miss [M]!",'attack.ogg','dodge.ogg',"Critical!  ")
							sleep(12)
					else
						DamageAddInfo(P,"You slash with wind!","You miss [M]!",'attack.ogg','dodge.ogg',"Critical!  ")
						sleep(12)
				else if(chancehit <= 0)
					if(chancehit2 == 1)
						DamageAddInfo(P,"You slash with wind!","[M] takes 1!",'attack.ogg','hit.ogg')
						M.hp --
						sleep(12)
						if(M.hp <= 0)
							P.Deathcheck(P,M,monstergroup)
					else
						DamageAddInfo(P,"You slash with wind!","You miss [M]!",'attack.ogg','dodge.ogg')
						sleep(12)
				else
					if(damage >= 1)
						DamageAddInfo(P,"You slash with wind!","[M] takes [damage]!",'attack.ogg','hit.ogg')
						M.hp -= damage
						sleep(12)
						if(M.hp <= 0)
							P.Deathcheck(P,M,monstergroup)
					else
						if(chancehit2 == 1)
							DamageAddInfo(P,"You slash with wind!","[M] takes 1!",'attack.ogg','hit.ogg')
							M.hp --
							sleep(12)
							if(M.hp <= 0)
								P.Deathcheck(P,M,monstergroup)
						else
							DamageAddInfo(P,"You slash with wind!","[M] is not effected.",'attack.ogg','dodge.ogg')
							sleep(12)
				P.mp -= 10

			EarthSlash(mob/player/P,mob/M)
				var/damage = (P.tempstr * P.tempdex + rand(-10,10)) - (M.tempstr * M.tempdex + rand(-10,10))
				var/chancehit = (P.tempagl * (rand(7,14)/10) + rand(-100,100)) - (M.tempagl * (rand(7,14)/10) + rand(-100,100))
				var/chancehit2 = rand(0,2)
				var/critical = (P.templuk * P.tempagl * P.tempdex + rand(0,50)) - (M.templuk * M.tempagl * M.tempdex + rand(0,50))
				var/realchance = rand(1,20)
				if(M.weakness == "Explosion")
					damage *= 1.5
				if(M.strength == "Explosion")
					damage *= 0.5
				if(M.defending)
					damage /= 2
					critical /= 2
					damage = round(damage)
					critical = round(critical)
				if(realchance == 5 || realchance == 15)
					if(critical >= 1)
						var/criticalchance = (P.templuk * (rand(10,20)/10) + rand(-50,50)) - (M.templuk * (rand(10,20)/10) + rand(-50,50))
						if(criticalchance >= 1)
							DamageAddInfo(P,"You slash with earth!","[M] takes [damage]!",'attack.ogg','hit.ogg',"Critical!  ")
							M.hp -= critical
							sleep(12)
							if(M.hp <= 0)
								P.Deathcheck(P,M,monstergroup)
						else
							DamageAddInfo(P,"You slash with earth!","You miss [M]!",'attack.ogg','dodge.ogg',"Critical!  ")
							sleep(12)
					else
						DamageAddInfo(P,"You slash with earth!","You miss [M]!",'attack.ogg','dodge.ogg',"Critical!  ")
						sleep(12)
				else if(chancehit <= 0)
					if(chancehit2 == 1)
						DamageAddInfo(P,"You slash with earth!","[M] takes 1!",'attack.ogg','hit.ogg')
						M.hp --
						sleep(12)
						if(M.hp <= 0)
							P.Deathcheck(P,M,monstergroup)
					else
						DamageAddInfo(P,"You slash with earth!","You miss [M]!",'attack.ogg','dodge.ogg')
						sleep(12)
				else
					if(damage >= 1)
						DamageAddInfo(P,"You slash with earth!","[M] takes [damage]!",'attack.ogg','hit.ogg')
						M.hp -= damage
						sleep(12)
						if(M.hp <= 0)
							P.Deathcheck(P,M,monstergroup)
					else
						if(chancehit2 == 1)
							DamageAddInfo(P,"You slash with earth!","[M] takes 1!",'attack.ogg','hit.ogg')
							M.hp --
							sleep(12)
							if(M.hp <= 0)
								P.Deathcheck(P,M,monstergroup)
						else
							DamageAddInfo(P,"You slash with earth!","[M] is not effected.",'attack.ogg','dodge.ogg')
							sleep(12)
				P.mp -= 10

