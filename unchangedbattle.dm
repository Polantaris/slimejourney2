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
				enemy.mhp += rand(-enemy.mrand,enemy.mrand);enemy.hp = enemy.mhp
				src.monstergroup+=enemy
				src.monstergroupnumber=src.monstergroup
				src.monstersugot = src.monstergroup.len
			monster_number="[M.name][plural(src,monstergroup)]"
			monster_number2="[plural(src,monstergroup)]"
			src.checkbattle = 0
			MainBattle(src,M,monstergroup)
			if(monstergroup.len == 0)del(A)

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
		MainBattle(mob/player/P,mob/monsters/M,list/monstergroup)
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
			for(var/mob/mon in monstergroup)
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
			CommandText(P,M,monstergroup)
			InfoText(P)
			for(var/index in monstergroup)
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
			monstersinbattle = monstergroup.len
			P.islocked = 1
			P.defending = 0
			for(var/mob/monsters/M2 in monstergroup)
				M2.defending = 0
			if((P.agl + rand(-10,10)) >= (M.agl + rand(-10,10)))
				if(P.poisoned)
					Poison(P,M,monstergroup)
					if(P.hp <= 0)
						return
				P.Battle(P,M,monstergroup)
				if(monstergroup.len != 0 && P.monstersinbattle == 0)
					P.monstersinbattle = 1
				if(P.ran == 1)
					Run2(P)
					return
				for(var/mob/monsters/M2 in monstergroup)
					if(P.dead)
						P.Dead(P)
						return
					if(M2.poisoned == 1)
						M2.Poison(P,M2,monstergroup)
					M2.Battle(P,M2,monstergroup)
					if(M2)
						M2.gonealready = 0
					if(P.dead)
						Dead(P)
						return
				if(monstergroup.len)
					P.inbattle = 0
					spawn()P.MainBattle(P,M,monstergroup)
					return
			else
				for(var/mob/monsters/M2 in monstergroup)
					if(P.dead)
						P.Dead(P)
						return
					if(M2.poisoned == 1)
						M2.Poison(P,M2,monstergroup)
					M2.Battle(P,M2,monstergroup)
					if(M2)
						M2.gonealready = 0
					if(P.dead)
						Dead(P)
						return
				if(P.poisoned)
					Poison(P,M,monstergroup)
					if(P.hp <= 0)
						return
				P.Battle(P,M,monstergroup)
				if(monstergroup.len != 0 && P.monstersinbattle == 0)
					P.monstersinbattle = 1
				if(P.ran == 1)
					Run2(P)
					return
				if(monstergroup.len)
					P.inbattle = 0
					spawn()P.MainBattle(P,M,monstergroup)
					return

		//If you ran
		Run2(mob/player/P)
			for(var/mob/M2 in monstergroup)
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
			for(var/mob/M2 in monstergroup)
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
		Poison(mob/player/P,mob/monsters/M,list/monstergroup)
			var/poisondmg = P.hp / 50
			poisondmg = round(poisondmg)
			poisondmg += rand(-3,3)
			if(poisondmg < 1)
				poisondmg = 1
			P.DamageAddInfo(P,"You take [poisondmg] damage from poison!","",'hit.ogg')
			P.hp -= poisondmg
			if(P.hp <= 0)
				M.Deathcheck(P,M,monstergroup)

		Battle(mob/player/P,mob/monsters/M,list/monstergroup)
			if(P.bedragon)
				DrAttack(P,M,monstergroup)
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
				Attack(P,M,monstergroup)
			else if(arrows.command == 2)
				CheckArrows(P)
				Spell(P,M,monstergroup)
			else if(arrows.command == 3)
				CheckArrows(P)
				Item(P,M,monstergroup)
			else if(arrows.command == 4)
				CheckArrows(P)
				Defend(P,M,monstergroup)
			else if(arrows.command == 5)
				CheckArrows(P)
				Run(P,M,monstergroup)

		DrAttack(mob/player/P,mob/monsters/M,list/monstergroup)
			var/damage = rand(550,920) + round(P.strength/10)
			for(var/mob/monsters/m in monstergroup)
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
						P.Deathcheck(P,M,monstergroup)
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

		Attack(mob/player/P,mob/monsters/M,list/monstergroup)
			var/mob/monsters/enemy = Targetting(P,M,monstergroup)
			var/damage = (P.tempstr * P.tempdex + rand(-10,10)) - (enemy.tempstr * enemy.tempdex + rand(-10,10))
			var/chancehit = (P.tempagl * (rand(7,14)/10) + rand(-100,100)) - (enemy.tempagl * (rand(7,14)/10) + rand(-100,100))
			var/chancehit2 = rand(0,2)
			var/critical = (P.templuk * P.tempagl * P.tempdex + rand(0,50)) - (enemy.templuk * enemy.tempagl * enemy.tempdex + rand(0,50))
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
							P.Deathcheck(P,M,monstergroup)
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
						P.Deathcheck(P,M,monstergroup)
				else
					DamageAddInfo(P,"You attack [enemy]!","Miss!",'attack.ogg','dodge.ogg')
					sleep(12)
			else
				if(damage >= 1)
					DamageAddInfo(P,"You attack [enemy]!","[damage] damage!",'attack.ogg','hit.ogg')
					enemy.hp -= damage
					sleep(12)
					if(enemy.hp <= 0)
						P.Deathcheck(P,M,monstergroup)
				else
					if(chancehit2 == 1)
						DamageAddInfo(P,"You attack [enemy]!","1 damage!",'attack.ogg','hit.ogg')
						enemy.hp --
						sleep(12)
						if(enemy.hp <= 0)
							P.Deathcheck(P,M,monstergroup)
					else
						DamageAddInfo(P,"You attack [enemy]!","No effect!",'attack.ogg','dodge.ogg')
						sleep(12)

		Spell(mob/player/P,mob/monsters/M,list/monstergroup)
			if(P.spells.len == 0)
				AddInfo(P,"You have no spells!","")
				sleep(12)
				Battle(P,M,monstergroup)
				return
			P.stage = "Spell Selection"
			MakeArrow(P,1,8)
			P.arrows.menu = new/list(3,4)
			if(P.page >= 1 && P.page <= 5)
				Lister(P,P.spage[P.page])
			else
				world << "ERROR: PAGE NUMBER INCORRECT!  REPORT THIS BUG IMMEDIATLY!  BUG ERROR #2!"
				return
			SpellListing(P,M,monstergroup)
			while(!P.arrows.spellchoice)
				sleep(1)
			for(var/obj/O in P.chooselist)
				del(O)
			if((P.arrows.spellchoice == 8 && Dimension2(P.spage[P.page]) <= 4 )|| P.arrows.spellchoice == 9)
				if(P.spage[P.page+1][1])
					P.page += 1
					Spell(P,M,monstergroup)
				else
					Battle(P,M,monstergroup)
					return
			var/spell = P.spage[P.page][P.arrows.spellchoice]
			if(spell == "Blaze")
				if(P.mp < 3)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M,monstergroup)
					return
				var/mob/monsters/target = Targetting(P,M,monstergroup)
				P.Blaze(P,target,monstergroup)
			else if(spell == "Blazemore")
				if(P.mp < 6)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M,monstergroup)
					return
				var/mob/monsters/target = Targetting(P,M,monstergroup)
				P.Blazemore(P,target,monstergroup)
			else if(spell == "Blazemost")
				if(P.mp < 16)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M,monstergroup)
					return
				var/mob/monsters/target = Targetting(P,M,monstergroup)
				P.Blazemore(P,target,monstergroup)
			else if(spell == "Firebal")
				if(P.mp < 6)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M,monstergroup)
					return
				P.Firebal(P,monstergroup)
			else if(spell == "Firebane")
				if(P.mp < 14)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M,monstergroup)
					return
				P.Firebane(P,monstergroup)
			else if(spell == "Firebolt")
				if(P.mp < 20)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M,monstergroup)
					return
				P.Firebolt(P,monstergroup)
			else if(spell == "Icebolt")
				if(P.mp < 4)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M,monstergroup)
					return
				var/mob/monsters/target = Targetting(P,M,monstergroup)
				P.Icebolt(P,target,monstergroup)
			else if(spell == "Snowstorm")
				if(P.mp < 9)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M,monstergroup)
					return
				P.Snowstorm(P,monstergroup)
			else if(spell == "Blizard")
				if(P.mp < 18)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M,monstergroup)
					return
				P.Blizard(P,monstergroup)
			else if(spell == "Bolt")
				if(P.mp < 4)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M,monstergroup)
					return
				var/mob/monsters/target = Targetting(P,M,monstergroup)
				P.Bolt(P,target,monstergroup)
			else if(spell == "Zap")
				if(P.mp < 10)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M,monstergroup)
					return
				P.Zap(P,monstergroup)
			else if(spell == "Thordain")
				if(P.mp < 24)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M,monstergroup)
					return
				P.Thordain(P,monstergroup)
			else if(spell == "Bang")
				if(P.mp < 5)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M,monstergroup)
					return
				P.Bang(P,monstergroup)
			else if(spell == "Boom")
				if(P.mp < 13)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M,monstergroup)
					return
				P.Boom(P,monstergroup)
			else if(spell == "Explodet")
				if(P.mp < 30)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M,monstergroup)
					return
				P.Explodet(P,monstergroup)
			else if(spell == "Infernos")
				if(P.mp < 4)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M,monstergroup)
					return
				P.Infernos(P,monstergroup)
			else if(spell == "Infermore")
				if(P.mp < 9)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M,monstergroup)
					return
				P.Infermore(P,monstergroup)
			else if(spell == "Infermost")
				if(P.mp < 17)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M,monstergroup)
					return
				P.Infermost(P,monstergroup)
			else if(spell == "Beat")
				if(P.mp < 9)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M,monstergroup)
					return
				var/mob/monsters/target = Targetting(P,M,monstergroup)
				P.Beat(P,target,monstergroup)
			else if(spell == "Defeat")
				if(P.mp < 21)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M,monstergroup)
					return
				P.Defeat(P,monstergroup)
			else if(spell == "Sap")
				if(P.mp < 5)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M,monstergroup)
					return
				var/mob/monsters/target = Targetting(P,M,monstergroup)
				P.Sap(P,target,monstergroup)
			else if(spell == "Decrease")
				if(P.mp < 12)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M,monstergroup)
					return
				P.Decrease(P,monstergroup)
			else if(spell == "Stopspell")
				if(P.mp < 10)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M,monstergroup)
					return
				P.Stopspell(P,monstergroup)
			else if(spell == "Surround")
				if(P.mp < 10)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M,monstergroup)
					return
				P.Surround(P,monstergroup)
			else if(spell == "BeDragon")
				if(P.mp < 34)
					AddInfo(P,"You do not have enough","MP to cast!")
					Battle(P,M,monstergroup)
					return
				P.BeDragon(P)
			else if(spell == "Fire Slash")
				if(P.mp < 10)
					AddInfo(P,"You do not have enough","MP to use this ability!")
					Battle(P,M,monstergroup)
					return
				var/mob/monsters/target = Targetting(P,M,monstergroup)
				P.FireSlash(P,monstergroup,target)
			else if(spell == "Ice Slash")
				if(P.mp < 10)
					AddInfo(P,"You do not have enough","MP to use this ability!")
					Battle(P,M,monstergroup)
					return
				var/mob/monsters/target = Targetting(P,M,monstergroup)
				P.IceSlash(P,monstergroup,target)
			else if(spell == "Lit Slash")
				if(P.mp < 10)
					AddInfo(P,"You do not have enough","MP to use this ability!")
					Battle(P,M,monstergroup)
					return
				var/mob/monsters/target = Targetting(P,M,monstergroup)
				P.LightningSlash(P,monstergroup,target)
			else if(spell == "Earth Slash")
				if(P.mp < 10)
					AddInfo(P,"You do not have enough","MP to use this ability!")
					Battle(P,M,monstergroup)
					return
				var/mob/monsters/target = Targetting(P,M,monstergroup)
				P.EarthSlash(P,monstergroup,target)
			else if(spell == "Wind Slash")
				if(P.mp < 10)
					AddInfo(P,"You do not have enough","MP to use this ability!")
					Battle(P,M,monstergroup)
					return
				var/mob/monsters/target = Targetting(P,M,monstergroup)
				P.WindSlash(P,monstergroup,target)

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
				P.Battle(P,M,monstergroup)
				return
			del(P.arrows)
			page = 1
			sleep(12)

		Item(mob/player/P,mob/monsters/M,list/monstergroup)
			if(P.contents.len == 0)
				AddInfo(P,"You have no items!","")
				sleep(12)
				Battle(P,M,monstergroup)
				return
			P.stage = "Spell Selection"
			MakeArrow(P,1,8)
			P.arrows.menu = new/list(3,4)
			if(P.page >= 1 && P.page <= 5)
				Lister(P,P.ipage[P.page])
			else
				world << "ERROR: PAGE NUMBER INCORRECT!  REPORT THIS BUG IMMEDIATLY!  BUG ERROR #2!"
				return
			ItemListing(P,M,monstergroup)
			while(!P.arrows.spellchoice)
				sleep(1)
			for(var/obj/O in P.chooselist)
				del(O)
			if((P.arrows.spellchoice == 8 && Dimension2(P.ipage[P.page]) <= 4 )|| P.arrows.spellchoice == 9)
				if(P.ipage[P.page+1][1])
					P.page += 1
					Spell(P,M,monstergroup)
				else
					Battle(P,M,monstergroup)
					return
			var/item = P.ipage[P.page][P.arrows.spellchoice]
			world << item
			AddInfo(P,"Sorry, but you cannot use","items yet.")
			del(P.arrows)
			page = 1
			sleep(12)
			P.Battle(P,M,monstergroup)

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

		Defend(mob/player/P,mob/monsters/M,list/monstergroup)
			AddInfo(P,"[P.name] defends!","")
			P.defending = 1
			sleep(12)

		Run(mob/player/P,mob/monsters/M,list/monstergroup)
			if(P.story)
				DamageAddInfo(P,"You cannot run from","this battle!")
				Battle(P,M,monstergroup)
			var/mob/enemy = monstergroup[1]
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

		Deathcheck(mob/player/P,mob/monsters/M,list/monstergroup)
			for(var/mob/monsters/M2 in monstergroup)
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

		CheckColorChange(mob/player/P,mob/monsters/M,list/monstergroup)
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
				CommandText(P,M,monstergroup)
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

		Targetting(mob/player/P,mob/monsters/M,list/monstergroup)
			P.stage = "Targeting"
			SelectionBackground(P)
			ChooseTargetInfo(P,M,monstergroup)
			MakeArrow(P,1,8)
			P.arrows.menu = new/list(2,4)
			if(monstergroup.len >= 1)
				P.arrows.menu[1][1] = "1,8"
			if(monstergroup.len >= 2)
				P.arrows.menu[1][2] = "1,7:3"
			if(monstergroup.len >= 3)
				P.arrows.menu[1][3] = "1,6:6"
			if(monstergroup.len >= 4)
				P.arrows.menu[1][4] = "1,5:9"
			if(monstergroup.len >= 5)
				P.arrows.menu[2][1] = "9,8"
			if(monstergroup.len >= 6)
				P.arrows.menu[2][2] = "9,7:3"
			if(monstergroup.len >= 7)
				P.arrows.menu[2][3] = "9,6:6"
			if(monstergroup.len >= 8)
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
		Poison(mob/player/P,mob/monsters/M,list/monstergroup)
			var/dmg = M.hp / 35
			dmg = round(dmg)
			M.hp -= dmg
			var/poisstop = rand(0,4)
			if(poisstop == 2)
				P.DamageAddInfo(P,"The [M] suffered from [dmg] poison damage!","The poison slipped out of the [M]'s body!")
				M.poisoned = 0
				sleep(10)
				return
			P << "The [M] suffered from [dmg] poison damage!"
			sleep(10)
			if(M.hp <= 0)
				P.Deathcheck(P,M,monstergroup)
				if(P.monstergroup.len == 0)
					return

		Battle(mob/player/P,mob/monsters/M,list/monstergroup)
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
				M.Attack(P,M,monstergroup)
			else if(action == 2)
				M.Spell(P,M,monstergroup)
			else if(action == 3)
				M.Defend(P,M,monstergroup)
			else
				M.Run(P,M,monstergroup)

		Attack(mob/player/P,mob/monsters/M,list/monstergroup)
			var/damage = (M.tempstr * M.tempdex + rand(-10,10)) - (P.tempstr * P.tempdex + rand(-10,10))
			var/chancehit = (M.tempagl * (rand(7,14)/10) + rand(-100,100)) - (P.tempagl * (rand(7,14)/10) + rand(-100,100))
			var/chancehit2 = rand(0,2)
			var/critical = (M.templuk * M.tempagl * M.tempdex + rand(0,50)) - (P.templuk * P.tempagl * P.tempdex + rand(0,50))
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
							M.Deathcheck(P,M,monstergroup)
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
						M.Deathcheck(P,M,monstergroup)
				else
					DamageAddInfo(P,"[M] attacks!","Miss!",'enemyattack.ogg','dodge.ogg')
					sleep(12)
			else
				if(damage >= 1)
					DamageAddInfo(P,"[M] attacks!","[damage] damage!",'enemyattack.ogg','hit.ogg')
					P.hp -= damage
					sleep(12)
					if(P.hp <= 0)
						M.Deathcheck(P,M,monstergroup)
				else
					if(chancehit2 == 1)
						DamageAddInfo(P,"[M] attacks!","1 damage!",'enemyattack.ogg','hit.ogg')
						P.hp --
						sleep(12)
						if(P.hp <= 0)
							M.Deathcheck(P,M,monstergroup)
					else
						DamageAddInfo(P,"[M] attacks!","No effect!",'enemyattack.ogg','dodge.ogg')
						sleep(12)
			sleep(3)
			P.CheckColorChange(P,M,monstergroup)


		Spell(mob/player/P,mob/monsters/M,list/monstergroup)
			if(M.spell.len)
				var/select=pick(M.spell)
				var/mob/picked = pick(P)
				if(picked == null)picked = P
				if(M.mp <= 0)
					M.Attack(P,M,monstergroup)
					return
				M.mp -=5
				if(select=="Blaze")
					M.Blaze(P,picked,M,monstergroup)
				if(select=="Icebolt")
					M.Icebolt(P,picked,M,monstergroup)
				else
					M.Attack(P,M,monstergroup)
			else
				M.Attack(P,M,monstergroup)

		Defend(mob/player/P,mob/monsters/M,list/monstergroup)
			P.AddInfo(P,"[M] defends!","")
			M.defending = 1
			sleep(12)

		Run(mob/player/P,mob/monsters/M,list/monstergroup)
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

		Deathcheck(mob/player/P,mob/monsters/M,list/monstergroup)
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

//CODE FROM battlemobspells.dm!!!

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
			Blaze(mob/player/P,mob/target,list/monstergroup)
				var/dmg = rand(4,10)
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

			Blazemore(mob/player/P,mob/target,list/monstergroup)
				var/dmg = rand(150,250)
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

			Blazemost(mob/player/P,mob/target,list/monstergroup)
				var/dmg = rand(1300,1850)
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
			Firebal(mob/player/P,list/monstergroup)
				P.AddInfo(P,"You cast Firebal!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(50,85)
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


			Firebane(mob/player/P,list/monstergroup)
				P.AddInfo(P,"You cast Firebane!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(500,650)
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

			Firebolt(mob/player/P,list/monstergroup)
				P.AddInfo(P,"You cast Firebolt!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(1000,1200)
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
			Icebolt(mob/player/P,mob/target,list/monstergroup)
				var/dmg = rand(20,38)
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
			Snowstorm(mob/player/P,list/monstergroup)
				P.AddInfo(P,"You cast Snowstorm!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(150,200)
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

			Blizard(mob/player/P,list/monstergroup)
				P.AddInfo(P,"You cast Blizzard!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(700,800)
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
			Bolt(mob/player/P,mob/target,list/monstergroup)
				var/dmg = rand(30,60)
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
			Zap(mob/player/P,list/monstergroup)
				P.AddInfo(P,"You cast Zap!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(200,275)
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

			Thordain(mob/player/P,list/monstergroup)
				P.AddInfo(P,"You cast Thordain!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(1500,2000)
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
			Bang(mob/player/P,list/monstergroup)
				P.AddInfo(P,"You cast Bang!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(30,40)
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

			Boom(mob/player/P,list/monstergroup)
				P.AddInfo(P,"You cast Boom!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(350,500)
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

			Explodet(mob/player/P,list/monstergroup)
				P.AddInfo(P,"You cast Explodet!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(2200,2500)
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
			Infernos(mob/player/P,list/monstergroup)
				P.AddInfo(P,"You cast Infernos!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(40,50)
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

			Infermore(mob/player/P,list/monstergroup)
				P.AddInfo(P,"You cast Infermore!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(300,500)
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

			Infermost(mob/player/P,list/monstergroup)
				P.AddInfo(P,"You cast Infermost!","")
				P << 'spell.ogg'
				for(var/mob/target in monstergroup)
					var/dmg = rand(1750,2500)
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
			Beat(mob/player/P,mob/target,list/monstergroup)
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

			Defeat(mob/player/P,list/monstergroup)
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
			Decrease(mob/player/P,list/monstergroup)
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
			Stopspell(mob/player/P,list/monstergroup)
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

			Surround(mob/player/P,list/monstergroup)
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

			FireSlash(mob/player/P,list/monstergroup,mob/M)
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

			IceSlash(mob/player/P,list/monstergroup,mob/M)
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

			LightningSlash(mob/player/P,list/monstergroup,mob/M)
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

			WindSlash(mob/player/P,list/monstergroup,mob/M)
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

			EarthSlash(mob/player/P,list/monstergroup,mob/M)
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

