atom/proc
	Bumped(O)
        // O just Bump()ed into src.
    // prototype Bumped() proc for all atoms

atom/movable
	Bump(atom/A)
		if(istype(A)) src.Bumped(A)	// tell A that src bumped into it
		..()

mob
	Bumped(atom/A)
		//Bump stuff.  (Running into an enemy)  Decides how many monsters in combat and other bump crap thats nessicary.
		var/mob/s = A
		if(istype(s,/mob/monsters))
			var/mob/monsters/M = A
			src.ran = 0
			src.dead = 0
			if(istype(A,/mob/monsters/bosses)&&!(istype(A,/mob/monsters/bosses/Guard)))
				amount = rand(2,4)
			else if(istype(A,/mob/monsters/bosses/Guard))
				amount = 1
			else if(src.monstersfighting == 0)
				amount=rand(1,src.mobsinbattle)
				src.monstersfighting = amount
			else
				if(!src.monstersfighting)
					amount = rand(1,4)
					src.monstersfighting = amount
				else
					amount = src.monstersfighting
			monstergroup=list()
			src.islocked = 1
			M.islocked = 1
			src.monstersinbattle = 0
			for(var/index=1,index<=amount,index++)
				var/tempType = M.type
				var/mob/monsters/enemy = new tempType
				src.monstersinbattle += 1
				enemy.name = "[enemy.name][number2letter(index)]"
				enemy.mhp += rand(-enemy.hrand,enemy.hrand);enemy.hp = enemy.mhp
				src.monstergroup+=enemy
				src.monstergroupnumber=src.monstergroup
				src.monstersugot = src.monstergroup.len
			monster_number="[M.name][plural(src)]"
			monster_number2="[plural(src)]"
			src.checkbattle = 0
			s.islocked = 1
			MainBattle(src,M)
			if(src.monstergroup.len==0)del(A)

proc
	number2letter(num as num)
		var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H")
		return letters[num]
mob/proc
	plural(mob/player/P,list/plural_list)
		if(P.monstergroup.len>1)
			return "s"
		else return ""

mob
	proc
		MainBattle(mob/player/P,mob/monsters/M)
			P.page = 1
			P.battling = 1
			var/found
			if(P.starter == 0)
				P.tempstr = P.str
				P.tempint = P.int
				P.tempagl = P.agl
				P.templuk = P.luk
				P.tempdex = P.dex
				starter = 1
			for(var/mob/mon in P.monstergroup)
				if(mon)found = 1
			if(!found)
				P.stolen = 0
				P.islocked = 0
				P.lib = 0
				P.monstersinbattle = 0
				P.inbattle = 0
				P.checkbattle = 1
				P.monstersfighting = 0
				del(M)
				P << 'winbattle.ogg'
				if(P.exp >= P.expr)
					P.Levelup(P)
				if(P.jobexp >= P.jobexpr)
					P.JobLevelup(P)
				for(var/obj/O in P.textlist)
					del(O)
				for(var/obj/O in P.battlelist)
					del(O)
				P.battling = 0
				return
			var/color
			CommandText(P,M)
			InfoText(P)
			for(var/index in P.monstergroup)
				if(!ismob(index))
					P.monstergroup-=index
			if((P.level) - M.level > 3)
				color = "green"
			else if((P.level) - M.level < -3)
				color = "red"
			else
				color = "white"
			var/mob/M3=P.monstergroup[1]
			var/monstername=initial(M3.name)
			monstername="[monstername][monster_number2]"
			MonsterText(P,monstername,color)
			monstersinbattle = P.monstergroup.len
			P.islocked = 1
			P.defending = 0
			for(var/mob/monsters/M2 in P.monstergroup)
				M2.defending = 0
			if((P.agl + rand(-10,10)) >= (M.agl + rand(-10,10)))
				if(P.poisoned)
					Poison(P,M)
					if(P.hp <= 0)
						return
				P.Battle(P,M)
				if(P.monstergroup.len != 0 && P.monstersinbattle == 0)
					P.monstersinbattle = 1
				if(P.ran == 1)
					Run2(P)
					return
				for(var/mob/monsters/M2 in P.monstergroup)
					if(P.dead)
						P.Dead(P)
						return
					if(M2.poisoned == 1)
						M2.Poison(P,M2)
					M2.Battle(P,M2)
					if(M2)
						M2.gonealready = 0
					if(P.dead)
						Dead(P)
						return
				if(P.monstergroup.len)
					P.inbattle = 0
					spawn()P.MainBattle(P,M)
					return
			else
				for(var/mob/monsters/M2 in P.monstergroup)
					if(P.dead)
						P.Dead(P)
						return
					if(M2.poisoned == 1)
						M2.Poison(P,M2)
					M2.Battle(P,M2)
					if(M2)
						M2.gonealready = 0
					if(P.dead)
						Dead(P)
						return
				if(P.poisoned)
					Poison(P,M)
					if(P.hp <= 0)
						return
				P.Battle(P,M)
				if(P.monstergroup.len != 0 && P.monstersinbattle == 0)
					P.monstersinbattle = 1
				if(P.ran == 1)
					Run2(P)
					return
				if(P.monstergroup.len)
					P.inbattle = 0
					spawn()P.MainBattle(P,M)
					return

		//If you ran
		Run2(mob/player/P)
			for(var/mob/M2 in P.monstergroup)
				del(M2)
			P.ran = 0
			P.stolen = 0
			P.islocked = 0
			P.lib = 0
			P.monstersinbattle = 0
			P.inbattle = 0
			P.checkbattle = 1
			P.monstersfighting = 0
			for(var/obj/O in P.textlist)
				del(O)
			for(var/obj/O in P.battlelist)
				del(O)
			SuperEnd(P)

		//If you died
		Dead(mob/player/P)
			for(var/mob/M2 in P.monstergroup)
				del(M2)
			P.dead=0
			P.stolen = 0
			P.islocked = 0
			P.lib = 0
			P.monstersinbattle = 0
			P.inbattle = 0
			P.checkbattle = 1
			P.monstersfighting = 0
			for(var/obj/O in P.textlist)
				del(O)
			for(var/obj/O in P.battlelist)
				del(O)
			P.story = 0
			SuperEnd(P)

		SuperEnd(mob/player/P)
			P.uppcnt = 0
			P.atkcnt = 0
			P.othcnt = 0
			P.tempstr = P.str
			P.tempint = P.int
			P.tempagl = P.agl
			P.templuk = P.luk
			P.tempdex = P.dex
			P.starter = 0
			P.nospell = 0
			P.nosight = 0
			P.bar = 0
			P.bon = 0
			P.bedragon = 0
			P.battling = 0

		//If you are poisoned
		Poison(mob/player/P,mob/monsters/M)
			var/poisondmg = P.hp / 50
			poisondmg = round(poisondmg)
			poisondmg += rand(-3,3)
			if(poisondmg < 1)
				poisondmg = 1
			P.DamageAddInfo(P,"[P] takes [poisondmg]","poison damage!",'hit.ogg')
			P.hp -= poisondmg
			if(P.hp <= 0)
				M.Deathcheck(P,M)

		Battle(mob/player/P,mob/monsters/M)
			if(P.bedragon)
				DrAttack(P,M)
				return
			P.stage = ""
			P.lib = 1
			P.islocked = 1
			P.defending = 0
			P.page = 1
			for(var/index in P.monstergroup)
				if(!ismob(index))
					P.monstergroup-=index
			var/mob/M2=P.monstergroup[1]
			var/monstername=initial(M2.name)
			monstername="[monstername][monster_number2]"
			if(!P.monstersinbattle)return
			AddInfo(P,"Monsters!  What will you do?","Select a Command on the Left!")
			MakeArrow(P,1,13)
			P.arrows.menu = new/list(1,5)
			P.arrows.menu[1][1] = "1,13"
			P.arrows.menu[1][2] = "1,12:2"
			P.arrows.menu[1][3] = "1,11:5"
			P.arrows.menu[1][4] = "1,10:7"
			P.arrows.menu[1][5] = "1,9:9"
			while(!P.arrows.command)
				sleep(1)
			sleep(4)
			if(arrows.command == 1)
				CheckArrows(P)
				Attack(P,M)
			else if(arrows.command == 2)
				CheckArrows(P)
				Spell(P,M)
			else if(arrows.command == 3)
				CheckArrows(P)
				Item(P,M)
			else if(arrows.command == 4)
				CheckArrows(P)
				Defend(P,M)
			else if(arrows.command == 5)
				CheckArrows(P)
				Run(P,M)

		DrAttack(mob/player/P,mob/monsters/M)
			var/damage = rand(550,920) + round(P.strength/10)
			for(var/mob/monsters/m in P.monstergroup)
				var/misser = rand(0,2)
				if(misser != 2)
					var/random = rand(0,1)
					if(random == 1)
						DamageAddInfo(P,"You breathe flames!","[damage] damage!",'attack.ogg','hit.ogg')
					else if(random == 0)
						DamageAddInfo(P,"You slice your enemies!","[damage] damage!",'attack.ogg','hit.ogg')
					m.hp -= damage
					sleep(12)
					if(m.hp <= 0)
						P.Deathcheck(P,M)
				else
					var/random = rand(0,1)
					if(random == 1)
						DamageAddInfo(P,"You breathe flames!","[m] somehow dodges!",'attack.ogg','dodge.ogg')
					if(random == 0)
						DamageAddInfo(P,"You slice your enemies!","[m] somehow dodges!",'attack.ogg','dodge.ogg')
				sleep(12)
			var/chance = rand(0,7)
			if(chance == 4)
				DamageAddInfo(P,"You suddenly shake...!","You return to normal form!")
				P.bedragon = 0
				sleep(12)

		Attack(mob/player/P,mob/monsters/M)
			var/mob/monsters/enemy = Targetting(P,M)
			var/damage = (P.tempstr + P.tempdex + rand(-10,10)) - (enemy.tempstr + enemy.tempdex + rand(-M.mrand,M.mrand))
			var/chancehit = ((P.tempagl + (rand(7,14))/10) + rand(-100,100)) - ((enemy.tempagl + (rand(7,14))/10) + rand(-100,100))
			var/chancehit2 = rand(0,2)
			var/critical = ((P.templuk + P.tempagl + P.tempdex + rand(0,50))*2) - (enemy.templuk + enemy.tempagl + enemy.tempdex + rand(0,50))
			var/realchance = rand(1,20)
			if(M.defending)
				damage /= 2
				critical /= 2
				damage = round(damage)
				critical = round(critical)
			if(realchance == 5 || realchance == 15)
				if(critical >= 1)
					var/criticalchance = (P.templuk * (rand(10,20)/10) + rand(-50,50)) - (enemy.templuk * (rand(10,20)/10) + rand(-50,50))
					if(criticalchance >= 1)
						DamageAddInfo(P,"You attack [enemy]!","[critical] damage!",'attack.ogg','hit.ogg',"Critical!  ")
						enemy.hp -= critical
						sleep(12)
						if(enemy.hp <= 0)
							P.Deathcheck(P,M)
					else
						DamageAddInfo(P,"You attack [enemy]!","Miss!",'attack.ogg','dodge.ogg',"Critical!  ")
						sleep(12)
				else
					DamageAddInfo(P,"You attack [enemy]!","Miss!",'attack.ogg','dodge.ogg',"Critical!  ")
					sleep(12)
			else if(chancehit <= 0)
				if(chancehit2 == 1)
					DamageAddInfo(P,"You attack [enemy]!","1 damage!",'attack.ogg','hit.ogg')
					enemy.hp --
					sleep(12)
					if(enemy.hp <= 0)
						P.Deathcheck(P,M)
				else
					DamageAddInfo(P,"You attack [enemy]!","Miss!",'attack.ogg','dodge.ogg')
					sleep(12)
			else
				if(damage >= 1)
					DamageAddInfo(P,"You attack [enemy]!","[damage] damage!",'attack.ogg','hit.ogg')
					enemy.hp -= damage
					sleep(12)
					if(enemy.hp <= 0)
						P.Deathcheck(P,M)
				else
					if(chancehit2 == 1)
						DamageAddInfo(P,"You attack [enemy]!","1 damage!",'attack.ogg','hit.ogg')
						enemy.hp --
						sleep(12)
						if(enemy.hp <= 0)
							P.Deathcheck(P,M)
					else
						DamageAddInfo(P,"You attack [enemy]!","No effect!",'attack.ogg','dodge.ogg')
						sleep(12)

		Spell(mob/player/P,mob/monsters/M)
			if(P.spells.len == 0)
				AddInfo(P,"You have no spells!","")
				sleep(12)
				Battle(P,M)
				return
			P.stage = "Spell Selection"
			MakeArrow(P,1,8)
			P.arrows.menu = new/list(3,4)
			if(P.page >= 1 && P.page <= 5)
				Lister(P,P.spage[P.page])
			else
				world << "ERROR: PAGE NUMBER INCORRECT!  REPORT THIS BUG IMMEDIATLY!  BUG ERROR #2!"
				return
			SpellListing(P,M)
			while(!P.arrows.spellchoice)
				sleep(1)
			for(var/obj/O in P.chooselist)
				del(O)
			if((P.arrows.spellchoice == 8 && Dimension2(P.spage[P.page]) <= 4 )|| P.arrows.spellchoice == 9)
				if(P.spage[P.page+1][1])
					P.page += 1
					Spell(P,M)
				else
					Battle(P,M)
					return
			var/spell = P.spage[P.page][P.arrows.spellchoice]
			if(spell == "Blaze")
				if(P.mp < 3)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M)
					return
				var/mob/monsters/target = Targetting(P,M)
				P.Blaze(P,target)
			else if(spell == "Blazemore")
				if(P.mp < 6)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M)
					return
				var/mob/monsters/target = Targetting(P,M)
				P.Blazemore(P,target)
			else if(spell == "Blazemost")
				if(P.mp < 16)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M)
					return
				var/mob/monsters/target = Targetting(P,M)
				P.Blazemore(P,target)
			else if(spell == "Firebal")
				if(P.mp < 6)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M)
					return
				P.Firebal(P)
			else if(spell == "Firebane")
				if(P.mp < 14)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M)
					return
				P.Firebane(P)
			else if(spell == "Firebolt")
				if(P.mp < 20)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M)
					return
				P.Firebolt(P)
			else if(spell == "Icebolt")
				if(P.mp < 4)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M)
					return
				var/mob/monsters/target = Targetting(P,M)
				P.Icebolt(P,target)
			else if(spell == "Snowstorm")
				if(P.mp < 9)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M)
					return
				P.Snowstorm(P)
			else if(spell == "Blizard")
				if(P.mp < 18)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M)
					return
				P.Blizard(P)
			else if(spell == "Bolt")
				if(P.mp < 4)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M)
					return
				var/mob/monsters/target = Targetting(P,M)
				P.Bolt(P,target)
			else if(spell == "Zap")
				if(P.mp < 10)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M)
					return
				P.Zap(P)
			else if(spell == "Thordain")
				if(P.mp < 24)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M)
					return
				P.Thordain(P)
			else if(spell == "Bang")
				if(P.mp < 5)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M)
					return
				P.Bang(P)
			else if(spell == "Boom")
				if(P.mp < 13)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M)
					return
				P.Boom(P)
			else if(spell == "Explodet")
				if(P.mp < 30)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M)
					return
				P.Explodet(P)
			else if(spell == "Infernos")
				if(P.mp < 4)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M)
					return
				P.Infernos(P)
			else if(spell == "Infermore")
				if(P.mp < 9)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M)
					return
				P.Infermore(P)
			else if(spell == "Infermost")
				if(P.mp < 17)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M)
					return
				P.Infermost(P)
			else if(spell == "Beat")
				if(P.mp < 9)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M)
					return
				var/mob/monsters/target = Targetting(P,M)
				P.Beat(P,target)
			else if(spell == "Defeat")
				if(P.mp < 21)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M)
					return
				P.Defeat(P)
			else if(spell == "Sap")
				if(P.mp < 5)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M)
					return
				var/mob/monsters/target = Targetting(P,M)
				P.Sap(P,target)
			else if(spell == "Decrease")
				if(P.mp < 12)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M)
					return
				P.Decrease(P)
			else if(spell == "Stopspell")
				if(P.mp < 10)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M)
					return
				P.Stopspell(P)
			else if(spell == "Surround")
				if(P.mp < 10)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M)
					return
				P.Surround(P)
			else if(spell == "BeDragon")
				if(P.mp < 34)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M)
					return
				P.BeDragon(P)
			else if(spell == "Fire Slash")
				if(P.mp < 10)
					AddInfo(P,"You do not have enough","MP to use this ability!")
					Battle(P,M)
					return
				var/mob/monsters/target = Targetting(P,M)
				P.FireSlash(P,target)
			else if(spell == "Ice Slash")
				if(P.mp < 10)
					AddInfo(P,"You do not have enough","MP to use this ability!")
					Battle(P,M)
					return
				var/mob/monsters/target = Targetting(P,M)
				P.IceSlash(P,target)
			else if(spell == "Lit Slash")
				if(P.mp < 10)
					AddInfo(P,"You do not have enough","MP to use this ability!")
					Battle(P,M)
					return
				var/mob/monsters/target = Targetting(P,M)
				P.LightningSlash(P,target)
			else if(spell == "Earth Slash")
				if(P.mp < 10)
					AddInfo(P,"You do not have enough","MP to use this ability!")
					Battle(P,M)
					return
				var/mob/monsters/target = Targetting(P,M)
				P.EarthSlash(P,target)
			else if(spell == "Wind Slash")
				if(P.mp < 10)
					AddInfo(P,"You do not have enough","MP to use this ability!")
					Battle(P,M)
					return
				var/mob/monsters/target = Targetting(P,M)
				P.WindSlash(P,target)

/*
		SPELLS THAT STILL NEED TO BE ADDED
			Heal - Single, Heal, 5
			Healmore - Single, Heal, 12
			Healmost - Single, Heal, 17
			Healus - Multiple, Heal, 30
			Healusall - Multiple, Heal, 55
			Upper - Single, Buff, 5
			Increase - Multiple, Buff, 12
			Bikill - Single, Buff, 25
			Antidote - Single, Restore, 2
			Bounce - Single, Buff, 20
			Barrier - Single, Buff, 11
*/
			else
				del(P.arrows)
				page = 1
				sleep(12)
				P.Battle(P,M)
				return
			del(P.arrows)
			page = 1
			sleep(12)

		Item(mob/player/P,mob/monsters/M)
			if(P.contents.len == 0)
				AddInfo(P,"You have no items!","")
				sleep(12)
				Battle(P,M)
				return
			P.stage = "Spell Selection"
			MakeArrow(P,1,8)
			P.arrows.menu = new/list(3,4)
			if(P.page >= 1 && P.page <= 5)
				Lister(P,P.ipage[P.page])
			else
				world << "ERROR: PAGE NUMBER INCORRECT!  REPORT THIS BUG IMMEDIATLY!  BUG ERROR #2!"
				return
			ItemListing(P,M)
			while(!P.arrows.spellchoice)
				sleep(1)
			for(var/obj/O in P.chooselist)
				del(O)
			if((P.arrows.spellchoice == 8 && Dimension2(P.ipage[P.page]) <= 4 )|| P.arrows.spellchoice == 9)
				if(P.ipage[P.page+1][1])
					P.page += 1
					Spell(P,M)
				else
					Battle(P,M)
					return
			var/item = P.ipage[P.page][P.arrows.spellchoice]
			world << item
			AddInfo(P,"Sorry, but you cannot use","items yet.")
			del(P.arrows)
			page = 1
			sleep(12)
			P.Battle(P,M)

		Lister(mob/player/P,list/pager)
			if(pager.len >= 1)
				P.arrows.menu[1][1] = "1,8"
			if(pager.len >= 2)
				P.arrows.menu[1][2] = "1,7:3"
			if(pager.len >= 3)
				P.arrows.menu[1][3] = "1,6:6"
			if(pager.len >= 4)
				P.arrows.menu[1][4] = "1,5:9"
			if(pager.len >= 5)
				P.arrows.menu[2][1] = "9,8"
			if(pager.len >= 6)
				P.arrows.menu[2][2] = "9,7:3"
			if(pager.len >= 7)
				P.arrows.menu[2][3] = "9,6:6"
			if(pager.len >= 8)
				P.arrows.menu[2][4] = "9,5:9"
			if(P.arrows.menu[2][1])
				P.arrows.menu[3][1] = "17,5:9"
				P.arrows.menu[3][2] = "17,5:9"
				P.arrows.menu[3][3] = "17,5:9"
				P.arrows.menu[3][4] = "17,5:9"
			else
				P.arrows.menu[2][1] = "9,5:9"
				P.arrows.menu[2][2] = "9,5:9"
				P.arrows.menu[2][3] = "9,5:9"
				P.arrows.menu[2][4] = "9,5:9"

		Defend(mob/player/P,mob/monsters/M)
			AddInfo(P,"[P.name] defends!","")
			P.defending = 1
			sleep(12)

		Run(mob/player/P,mob/monsters/M)
			if(P.story)
				DamageAddInfo(P,"You cannot run from","this battle!")
				Battle(P,M)
			var/mob/enemy = P.monstergroup[1]
			var/sucess = (P.tempagl * (rand(0,20)/10) + rand(-100,100)) - (enemy.agl * (rand(0,20)/10) + rand(-100,100))
			var/sucess2 = rand(1,4)
			if(sucess2 == 1 || sucess2 == 3)
				if(sucess >= 1)
					DamageAddInfo(P,"You attempt to run away!","You have fled!")
					P.ran = 1
				else
					DamageAddInfo(P,"You attempt to run away!","The path is blocked!!")
			else
				DamageAddInfo(P,"You attempt to run away!","The path is blocked!")
			sleep(12)

		Deathcheck(mob/player/P,mob/monsters/M)
			for(var/mob/monsters/M2 in P.monstergroup)
				if(M2.hp <= 0)
					AddInfo(P,"You have defeated the","[M2]!")
					sleep(15)
					AddInfo(P,"You get [M2.exp] EXP.","You get [M2.gold] gold!")
					sleep(15)
					P.exp += M2.exp
					P.jobexp += M2.exp
					P.gold += M2.gold
					P.MedalChance(P)
					P.ItemChance(P,M2)
					del M2

		CheckColorChange(mob/player/P,mob/monsters/M)
			var/color
			if(round(P.hp/P.mhp*100) < 16)
				color = "red"
			else if(round(P.hp/P.mhp*100) < 36)
				color = "green"
			else
				color = "white"
			if(color != P.origcolor)
				P.origcolor = color
				for(var/obj/O in P.textlist)
					del(O)
				for(var/obj/O in P.battlelist)
					del(O)
				CommandText(P,M)
				InfoText(P)
				if((P.level + 3) - M.level > 3)
					color = "green"
				else if((P.level - 3) - M.level < -3)
					color = "red"
				else
					color = "white"
				var/mob/M3=P.monstergroup[1]
				var/monstername=initial(M3.name)
				monstername="[monstername][monster_number2]"
				MonsterText(P,monstername,color)

		Targetting(mob/player/P,mob/monsters/M)
			P.stage = "Targeting"
			SelectionBackground(P)
			ChooseTargetInfo(P,M)
			MakeArrow(P,1,8)
			P.arrows.menu = new/list(2,4)
			if(P.monstergroup.len >= 1)
				P.arrows.menu[1][1] = "1,8"
			if(P.monstergroup.len >= 2)
				P.arrows.menu[1][2] = "1,7:3"
			if(P.monstergroup.len >= 3)
				P.arrows.menu[1][3] = "1,6:6"
			if(P.monstergroup.len >= 4)
				P.arrows.menu[1][4] = "1,5:9"
			if(P.monstergroup.len >= 5)
				P.arrows.menu[2][1] = "9,8"
			if(P.monstergroup.len >= 6)
				P.arrows.menu[2][2] = "9,7:3"
			if(P.monstergroup.len >= 7)
				P.arrows.menu[2][3] = "9,6:6"
			if(P.monstergroup.len >= 8)
				P.arrows.menu[2][4] = "9,5:9"
			AddInfo(P,"Attack?","Who will you attack?")
			while(!P.arrows.monsterselected)
				sleep(1)
			sleep(3)
			var/mob/monsters/enemy = P.arrows.monsterselected
			del(P.arrows)
			for(var/obj/O in P.chooselist)
				del(O)
			return enemy


mob
	monsters
		//If monster is poisoned.
		Poison(mob/player/P,mob/monsters/M)
			var/dmg = M.hp / 35
			dmg = round(dmg)
			M.hp -= dmg
			var/poisstop = rand(0,4)
			if(poisstop == 2)
				P.DamageAddInfo(P,"[M] takes [dmg] from poison!","The poison slipped out of the [M]'s body!")
				M.poisoned = 0
				sleep(10)
				return
			else
				P.DamageAddInfo(P,"[M] takes [dmg] from poison!","")
			sleep(10)
			if(M.hp <= 0)
				P.Deathcheck(P,M)
				if(P.monstergroup.len == 0)
					return

		Battle(mob/player/P,mob/monsters/M)
			var/action = pick(
				prob(100)
					1,
				prob(50)
					2,
				prob(25)
					3,
				prob(5)
					4)
			if(action == 1)
				M.Attack(P,M)
			else if(action == 2)
				M.Spell(P,M)
			else if(action == 3)
				M.Defend(P,M)
			else
				M.Run(P,M)

		Attack(mob/player/P,mob/monsters/M)
			var/damage = (M.tempstr + M.tempdex + rand(-M.mrand,M.mrand)) - (P.tempstr + P.tempdex + rand(-10,10))
			var/chancehit = ((M.tempagl + (rand(7,14))/10) + rand(-100,100)) - ((P.tempagl + (rand(7,14))/10) + rand(-100,100))
			var/chancehit2 = rand(0,2)
			var/critical = ((M.templuk + M.tempagl + M.tempdex + rand(0,50))*2) - (P.templuk + P.tempagl + P.tempdex + rand(0,50))
			var/realchance = rand(1,20)
			if(P.defending)
				damage /= 2
				critical /= 2
				damage = round(damage)
				critical = round(critical)
			if(realchance == 5 || realchance == 15)
				if(critical >= 1)
					var/criticalchance = (M.tempagl * (rand(10,20)/10) + rand(-50,50)) - (P.tempagl * (rand(10,20)/10) + rand(-50,50))
					if(criticalchance >= 1)
						DamageAddInfo(P,"[M] attacks!","[critical] damage!",'enemyattack.ogg','hit.ogg',"Critical!  ")
						P.hp -= critical
						sleep(12)
						if(P.hp <= 0)
							M.Deathcheck(P,M)
					else
						DamageAddInfo(P,"[M] attacks!","Miss!",'enemyattack.ogg','dodge.ogg',"Critical!  ")
						sleep(12)
				else
					DamageAddInfo(P,"[M] attacks!","Miss!",'enemyattack.ogg','dodge.ogg',"Critical!  ")
					sleep(12)
			else if(chancehit <= 0)
				if(chancehit2 == 1)
					DamageAddInfo(P,"[M] attacks!","1 damage!",'enemyattack.ogg','hit.ogg')
					P.hp --
					sleep(12)
					if(P.hp <= 0)
						M.Deathcheck(P,M)
				else
					DamageAddInfo(P,"[M] attacks!","Miss!",'enemyattack.ogg','dodge.ogg')
					sleep(12)
			else
				if(damage >= 1)
					DamageAddInfo(P,"[M] attacks!","[damage] damage!",'enemyattack.ogg','hit.ogg')
					P.hp -= damage
					sleep(12)
					if(P.hp <= 0)
						M.Deathcheck(P,M)
				else
					if(chancehit2 == 1)
						DamageAddInfo(P,"[M] attacks!","1 damage!",'enemyattack.ogg','hit.ogg')
						P.hp --
						sleep(12)
						if(P.hp <= 0)
							M.Deathcheck(P,M)
					else
						DamageAddInfo(P,"[M] attacks!","No effect!",'enemyattack.ogg','dodge.ogg')
						sleep(12)
			sleep(3)
			P.CheckColorChange(P,M)


		Spell(mob/player/P,mob/monsters/M)
			if(M.spell.len)
				var/select=pick(M.spell)
				var/mob/picked = pick(P)
				if(picked == null)picked = P
				if(M.mp <= 0)
					M.Attack(P,M)
					return
				M.mp -=5
				if(select=="Blaze")
					M.Blaze(P,picked,M)
				else if(select=="Icebolt")
					M.Icebolt(P,picked,M)
				else if(select == "Maul")
					M.Maul(P,picked,M)
				else
					M.Attack(P,M)
			else
				M.Attack(P,M)

		Defend(mob/player/P,mob/monsters/M)
			P.AddInfo(P,"[M] defends!","")
			M.defending = 1
			sleep(12)

		Run(mob/player/P,mob/monsters/M)
			var/sucess = (M.agl * (rand(0,20)/10) + rand(-100,100)) - (P.tempagl * (rand(0,20)/10) + rand(-100,100))
			var/sucess2 = rand(1,4)
			if(sucess2 == 1 || sucess2 == 3)
				if(sucess >= 1)
					DamageAddInfo(P,"[M] attempts to flee!","[M] has fled!")
					del M
				else
					DamageAddInfo(P,"[M] attempts to flee!","You block the escape!")
			else
				DamageAddInfo(P,"[M] attempts to flee!","You block the escape!")
			sleep(12)

		Deathcheck(mob/player/P,mob/monsters/M)
			if(P.hp <= 0)
				AddInfo(P,"You die!  The enemies run","off with half your Gold!")
				P.gold /= 2
				P.gold = round(P.gold)
				P.x=P.resx
				P.y=P.resy
				P.z=P.resz
				P.location = "Almenhest"
				P.hp = P.mhp
				P.dead = 1
				sleep(12)

