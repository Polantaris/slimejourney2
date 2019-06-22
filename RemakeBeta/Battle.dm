mob
	proc
		Bumped(O)
	Bump(O)
		..()
		if(ismob(O))
			O:Bumped(src)



mob/Bump(atom/A)
	src.area = src.whereat
	if(src.battle == 1)
		src << "You cannot fight this monster group, for it is already under attack!"
	else if(isobj(A))
		if(istype(A,/obj/dolls))
			var/randommsg = pick(dollbumps)
			usr << "<font color = olive><b>[A]: </b><font color = green>[randommsg]</font>"
	else if(ismob(A))
		if(istype(A,/mob/monster/Bosses/Golem1))
			if(src.bossbattleswon >= 1)
				usr << "<font color = olive><b>[A]: </b><font color = green>You have defeated me.  You may pass."
				if(src.x == 141)
					src.x += 2
				else if(src.y == 31)
					src.y -= 2
				else if(src.x == 68)
					src.x += 2
				return
			else
				usr << "<font color = olive><b>[A]: </b><font color = green>I have been waiting for you for some time.  Those stupid slimes, they don't understand what they are doing.  But no matter, you will never return with this item, for I am invincible.  Prepare yourself to...DIE!"
		if(istype(A,/mob/monster/Bosses/DemonSlime2))
			if(src.bossbattleswon >= 2)
				usr << "<font color = olive><b>[A]: </b><font color = green>You have defeated me.  You may pass."
				if(src.x == 50)
					src.x += 2
				else if(src.y == 96)
					src.y += 2
				else if(src.y == 118)
					src.y -= 2
				return
			else
				usr << "<font color = olive><b>[A]: </b><font color = green>I cannot believe that you have passed our first challenge.  No matter, soon we will break this stupid tie between worlds, and soon, our God will get lose, and reck this world once again.  But you will never be here to see it, Child of the Savior, for here is where you die."
		if(istype(A,/mob/monster/Bosses/KingSlime3))
			if(src.bossbattleswon >= 3)
				usr << "<font color = olive><b>[A]: </b><font color = green>You have defeated me.  You may pass."
				if(src.y ==122||src.y ==118)
					src.y += 2
				else if(src.x == 51)
					src.x += 2
				else if(src.y == 69)
					src.y -= 2
				else if(src.y == 28)
					src.y -= 2
				return
			else
				usr << "<font color = olive><b>[A]: </b><font color = green>Getting even this far was never anticipated.  Before I kill you, I will inform you of one thing.  What you are seeking, you will never find.  The millions of forms of our world, and your world, and then the Zenithian World.  There is absolutly no way, that even if you get passed me, that you will find a way to get to them.  So no matter how much you look, you will never find it.  But you will die here, so your looking is done with anyway!  Prepare yourself for annihalation!"
		if(istype(A,/mob/monster/Bosses/TreeGod4))
			if(src.bossbattleswon >= 4)
				usr << "<font color = olive><b>[A]: </b><font color = green>You have defeated me.  You may pass."
				if(src.x == 97)
					src.x -= 2
				else if(src.y == 34)
					src.y += 2
				else if(src.y == 35)
					src.y -= 2
				return
			else
				usr << "<font color = olive><b>[A]: </b><font color = green> Ahhhh interesting.  How we wished that the last 3 worlds you visited would be your end, it seems you somehow got passed them anyway.  There no is way you are getting passed me though.  I am a God, I am absolute, and there's nothing that stands between me, and your death.  Prepare yourself, fool.  My powers are unlimited!  For I am a God!  The emblem I hold is the only way to defeat me, and for you, it is defeat!"
		if(istype(A,/mob/monster/ZTChallengeMonsters/Gorban))
			if(src.gorbanwon)
				return
			usr << "<font color = olive><b>[A]: </b><font color = green> So you THINK you are ready?  FOOL!  You do not know anything!  For I am the most powerful creature that you have ever seen!  If you pass me, you will get what you were waiting for, if not, then the Devil awaits you!  Prepare yourself, for I know NO limits!"
		var/mob/M=A
		if(client||M.client)
			if(istype(M,/mob/monster))
				src.ran = 0
				src.dead = 0
				if(istype(A,/mob/monster/Bosses))
					amount = rand(2,3)
				else if(istype(A,/mob/monster/ZTChallengeMonsters))
					amount = 1
				else if(src.monstersfighting == 0)
					amount=rand(1,src.mobsinbattle)
					src.monstersfighting = amount
				else
					amount = src.monstersfighting
				if(istype(A,/mob/monster/Bosses) || istype(A,/mob/monster/ZTChallengeMonsters))
					usr << sound('boss.mid',1,0,0)
					src.whereat = "Boss"
				else
					usr << sound('battle.mid',1,0,0)
					src.whereat = "Battle"
				monstergroup=list()
				src.fighting = M
				M.fighting = src
				src.battle = 1
				M.battle = 1
				src.islocked = 1
				M.islocked = 1
				src.monstersinbattle = 0
				for(var/index=1,index<=amount,index++)
					var/mob/enemy=new M.type
					src.monstersinbattle += 1
					enemy.name = "[enemy.name][number2letter(index)]"
					src.monstergroup+=enemy
					src.monstergroupnumber=src.monstergroup
					src.monstersugot = src.monstergroup.len
				monster_number="[M.name][plural(monstergroup)]"
				src.checkbattle = 0
				MasterBattle(M,monstergroup)

mob/var/monstergroupnumber

mob
	proc
		number2letter(num as num)
			var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H","-I","-J")
			return letters[num]

		plural(list/plural_list)
			if(plural_list.len>1)
				return "s"
			else return ""

var/mob/Newchar/P
mob/var/checkbattle = 0

mob
	var
		dead = 0
		ran = 0
mob/proc
	Deathcheck()
	Battle()
	Spell()
	Attack()
	Run()
	MasterBattle()


mob
	Newchar
		MasterBattle(mob/monster/enemy,list/enemy2)
			if(src.inbattle == 1)
				return
			src.inbattle = 1
			if(monstergroup.len != 0 && src.monstersinbattle == 0)
				src.monstersinbattle = 1
			if(src.islocked == 0)
				src.islocked = 1
			var/found=0
			for(var/mob/M in monstergroup)
				found=1
			if(!found)
				src.stolen = 0
				src.battle = 0
				src.lib = 0
				src.mem = 0
				src << "Your party has defeated the [monster_number]!"
				src.monstersinbattle = 0
				if(istype(enemy,/mob/monster/Bosses/Golem1))
					usr << "<font color = olive><b>[enemy]: </b><font color = green> Impossible...I have been defeated?  But...how?  No...matter...my lord...will...soon destroy...you....."
				if(istype(enemy,/mob/monster/Bosses/DemonSlime2))
					usr << "<font color = olive><b>[enemy]: </b><font color = green> For...here...I die...you will still die...it is enivitable...we cannot lose...it is impossible...prepare yourself, fool...for it is soon time...for us...to destroy you...and everyone else...in your...world....."
				if(istype(enemy,/mob/monster/Bosses/KingSlime3))
					usr << "<font color = olive><b>[enemy]: </b><font color = green> While I might die here...just remember...that...it is impossible...to reach what...you are wanting to find...nevertheless...this world....is doomed....before you can even....see....it...this is only the beginning...soon....our invasion...will be....complete....."
				if(istype(enemy,/mob/monster/Bosses/TreeGod4))
					usr << "<font color = olive><b>[enemy]: </b><font color = green> HOW?  How...could you beat me....I see now...your power...is from your father...the maker of the emblem...even with it...your world...it is still doomed....it is enivitable...you and everyone you know...is near their ends....just you wait....the Invasion...it is soon...ready..."
				if(istype(enemy,/mob/monster/ZTChallengeMonsters/Gorban))
					usr << "<font color = olive><b>[enemy]: </b><font color = green> IMPRESSIVE!  I did not think you could do it.  Very well, continue on, and show them the item that my copy dropped.  They will bring you forward into the Light of Changing.  This Light is more than you think it is...wait and find out!"
					usr.gorbanwon = 1
				del (enemy)
				src << 'winbattle.wav'
				checklevel(src)
				checkjoblevel(src)
				if(src.monsterinparty)
					MonsterLevelCheck()
				src.islocked = 0
				src.inbattle = 0
				src.monstersfighting = 0
				src.checkbattle = 1
				src.whereat = src.area
				CheckMusic()
				return
			if(src.agility - enemy.agility >= 0 + rand(-20,20))
				if(src.poisoned == 1)
					var
						poisondmg = src.hp / 25
					src << "You recieve damage from poison!"
					sleep(10)
					src.hp -= poisondmg
					src.hp = round(src.hp)
					if(src.hp <= 0)
						enemy.Deathcheck(usr)
				Battle(enemy)
				if(monstergroup.len != 0 && src.monstersinbattle == 0)
					src.monstersinbattle = 1
				if(src.ran == 1)
					for(var/mob/M in monstergroup)
						del(M)
					src.ran = 0
					src.monstersinbattle = 0
					src.inbattle = 0
					src.whereat = src.area
					CheckMusic()
					return
				for(var/mob/M in monstergroup)
					if(dead)
						dead=0
						src.stolen = 0
						src.islocked = 0
						src.battle = 0
						src.lib = 0
						src.mem = 0
						src.monstersinbattle = 0
						src.inbattle = 0
						src.checkbattle = 1
						src.whereat = src.area
						CheckMusic()
						return
					if(M.poisoned == 1)
						var/S = src.hp / 30
						M.hp -= S
						M.hp = round(M.hp)
						P << "The [M] suffered from poison damage!"
						sleep(10)
						var
							poisstop = rand(0,4)
						if(M.hp <= 0)
							Deathcheck(M)
							src.whereat = src.area
							CheckMusic()
							return
						if(poisstop == 2)
							P << "The poison slipped out of the [M]'s body!"
							M.poisoned = 0
							sleep(10)
					M.Battle(src,enemy2)
					if(M)
						M.gonealready = 0
					if(dead)
						dead=0
						src.stolen = 0
						src.islocked = 0
						src.battle = 0
						src.lib = 0
						src.mem = 0
						src.monstersinbattle = 0
						src.inbattle = 0
						src.checkbattle = 1
						src.whereat = src.area
						CheckMusic()
						return
				if(monstergroup.len)
					if(src.monsterinparty)
						if(src.monsterinparty.loyal >= 80)
							UrMonsterBattle(enemy)
							src.inbattle = 0
						else
							src.inbattle = 0
							var/picko = rand(0,1)
							if(picko == 1 && src.monsterinparty.diseased == 0)
								UrMonsterSpell(enemy)
							else
								UrMonsterAttack()
					else
						src.inbattle = 0
					spawn()MasterBattle(enemy,enemy2)
					return
				else
					return
			else
				for(var/mob/M in monstergroup)
					if(dead)
						dead=0
						src.stolen = 0
						src.islocked = 0
						src.battle = 0
						src.lib = 0
						src.mem = 0
						src.monstersinbattle = 0
						src.inbattle = 0
						src.checkbattle = 1
						src.whereat = src.area
						CheckMusic()
						return
					if(M.poisoned == 1)
						var/S = src.hp / 30
						M.hp -= S
						M.hp = round(M.hp)
						P << "The [M] suffered from poison damage!"
						sleep(10)
						var
							poisstop = rand(0,4)
						if(M.hp <= 0)
							Deathcheck(M)
							src.whereat = src.area
							if(monstergroup.len == 0)
								src.stolen = 0
								src.islocked = 0
								src.battle = 0
								src.lib = 0
								src.mem = 0
								src.monstersinbattle = 0
								src.inbattle = 0
								src.checkbattle = 1
								src.whereat = src.area
								CheckMusic()
								return
						if(poisstop == 2)
							P << "The poison slipped out of the [M]'s body!"
							M.poisoned = 0
							sleep(10)
					M.Battle(src,enemy2)
					if(M)
						M.gonealready = 0
					if(dead)
						dead=0
						src.stolen = 0
						src.islocked = 0
						src.battle = 0
						src.lib = 0
						src.mem = 0
						src.monstersinbattle = 0
						src.inbattle = 0
						src.checkbattle = 1
						src.whereat = src.area
						CheckMusic()
						return
				if(src.poisoned == 1)
					var
						poisondmg = src.hp / 25
					src << "You recieve damage from poison!"
					sleep(10)
					src.hp -= poisondmg
					src.hp = round(src.hp)
					if(src.hp <= 0)
						enemy.Deathcheck(usr)
				Battle(enemy)
				if(monstergroup.len != 0 && src.monstersinbattle == 0)
					src.monstersinbattle = 1
				if(src.ran == 1)
					for(var/mob/M in monstergroup)
						del(M)
					src.ran = 0
					src.monstersinbattle = 0
					src.inbattle = 0
					src.whereat = src.area
					CheckMusic()
					return
				if(monstergroup.len)
					if(monsterinparty)
						if(src.monsterinparty.loyal >= 80)
							UrMonsterBattle(enemy)
							src.inbattle = 0
						else
							src.inbattle = 0
							var/picko = rand(0,1)
							if(picko == 1 && src.monsterinparty.diseased == 0)
								UrMonsterSpell(enemy)
							else
								UrMonsterAttack()
						spawn()MasterBattle(enemy,enemy2)
					else
						src.inbattle = 0
						spawn()MasterBattle(enemy,enemy2)
					return
				else
					return

		Battle(mob/enemy)
			if(src.monstersinbattle == 0)return
			src.lib = 1
		//	world << monstergroup.len
			for(var/index in monstergroup)
				if(!ismob(index))
					monstergroup-=index
			var/mob/M=monstergroup[1]
			var/monstername=initial(M.name)
			monstername="[monstername][plural(monstergroup)]"
			if(src.defend == 1)
				src.defense /= 2
				src.defend = 0
			//switch(input("You encountered [monstergroup.len] [monster_number][plural(monstergroup)]!  Command?","Battle!") in list("Attack","Spell","Item","Defend","Run"))
			switch(input("You encountered [monstergroup.len] [monstername]!  Command?","Battle!") in list("Attack","Spell","Item","Run"))
				if("Attack")
					Attack(enemy)
				if("Spell")
					Spell(enemy)
				if("Item")
					Item(enemy)
				if("Run")
					Run(enemy)

		Attack(mob/enemy2)
			var/mob/enemy=input("Who will you attack?","Select Target")in list("-=Cancel=-") + monstergroup
			if(enemy == "-=Cancel=-")
				Battle(enemy2)
				return
			if(istype(enemy, /mob/monster/ZTChallengeMonsters/BlueSlime) || istype(enemy, /mob/monster/ZTChallengeMonsters/RedSlime))
				src << "[src] attacks the [enemy]!"
				src << 'attack.wav'
				sleep(10)
				src << "[src] hits, but nothing happens!"
				src << 'dodge.wav'
				sleep(10)
				return
			else if(istype(enemy, /mob/monster/ZTChallengeMonsters/GreenSlime) || istype(enemy, /mob/monster/ZTChallengeMonsters/SpecialSlime))
				src << "[src] attacks the [enemy]!"
				src << 'attack.wav'
				sleep(10)
				src << "[src] hits, but nothing happens!"
				src << 'dodge.wav'
				sleep(10)
				return
			else if(istype(enemy, /mob/monster/ZTChallengeMonsters/TealSlime) || istype(enemy, /mob/monster/ZTChallengeMonsters/PurpleSlime))
				src << "[src] attacks the [enemy]!"
				src << 'attack.wav'
				sleep(10)
				src << "[src] hits, but nothing happens!"
				src << 'dodge.wav'
				sleep(10)
				return
			var
				damage = src.attack - enemy.defense + rand (-10,10)
				chancehit = src.agility - enemy.agility + rand(-5,5)
				critchance = rand (0,19)
				critdamage = src.attack * 1.5
				hit = src.agility - enemy.agility + rand(-2,2)
			critdamage = round(critdamage)
			if(hit <= 0)
				var
					onedmgchance = rand(1,2)
				if(onedmgchance == 1)
					src << "[src] attacks the [enemy]!"
					src << 'attack.wav'
					sleep(10)
					src << "[src] barely hit the [enemy], scraching it for 1 damage!"
					src << 'hit.wav'
					enemy.hp -= 1
					sleep(10)
				else
					src << "[src] attacks the [enemy]!"
					src << 'attack.wav'
					sleep(10)
					src << "[src] misses!"
					src << 'dodge.wav'
			else if(critchance == 9)
				src << "[src] attacks the [enemy]!"
				src << 'attack.wav'
				sleep(10)
				src << "Critical Hit!"
				src << 'criticalhit.wav'
				sleep(10)
				if(critdamage <= 0)
					src << "[src] attacks powerfully but [src] wildly misses!"
					src << 'dodge.wav'
					sleep(10)
				else if(critdamage >> 0)
					src << "[src] hit the [enemy] for [num2text(critdamage,20)]!"
					src << 'hit.wav'
					enemy.hp -= critdamage
					sleep(10)
			else if(chancehit > 0 && damage > 0)
				src << "[src] attacks the [enemy]!"
				src << 'attack.wav'
				sleep(10)
				src << "[src] hits the [enemy] for [num2text(damage,20)] damage!"
				src << 'hit.wav'
				enemy.hp -= damage
				sleep(10)
			else if(chancehit <= 0)
				var
					onedmgchance = rand(1,2)
				if(onedmgchance == 1)
					src << "[src] attacks the [enemy]!"
					src << 'attack.wav'
					sleep(10)
					src << "[src] barely hit the [enemy], scraching it for 1 damage!"
					src << 'hit.wav'
					enemy.hp -= 1
					sleep(10)
				else
					src << "[src] attacks the [enemy]!"
					src << 'attack.wav'
					sleep(10)
					src << "[src] misses!"
					src << 'dodge.wav'
			else if(damage <= 0)
				var
					onedmgchance = rand(1,2)
				if(onedmgchance == 1)
					src << "[src] attacks the [enemy]!"
					src << 'attack.wav'
					sleep(10)
					src << "[src] barely hit the [enemy], scraching it for 1 damage!"
					src << 'hit.wav'
					enemy.hp -= 1
					sleep(10)
				else
					src << "[src] attacks the [enemy]!"
					src << 'attack.wav'
					sleep(10)
					src << "[src] misses!"
					src << 'dodge.wav'
					sleep(10)
			if(src.job == "Assassin")
				var/assassindmg = damage*0.25
				assassindmg = round(assassindmg)
				if(assassindmg >= 1)
					src << "With [src]'s speed, [src] attacks again!"
					src << 'attack.wav'
					sleep(10)
					src << "[src] does [assassindmg]!"
					src << 'hit.wav'
					enemy.hp -= assassindmg
				else
					src << "With [src]'s speed, [src] attacks again!"
					src << 'attack.wav'
					sleep(10)
					src << "[src] misses terribly!"
					src << 'dodge.wav'
			if(enemy.hp <= 0)
				Deathcheck(enemy)


		Spell(mob/enemy)
			if(src.diseased == 1)
				src << "You are too dieseased to cast spells or use skills!"
				sleep(10)
				Battle(enemy)
				return
			if(src.spell == list())
				src << "You have no spells or skills!"
				sleep(10)
				Battle(enemy)
				return
			else
				PickSpell(enemy)


		Run(mob/monstergroup)
			var
				chancerun = src.agility - monstergroup.agility + rand(-5,5)
			src << "You start to flee..."
			sleep(10)
			if(src.diseased == 1)
				src << "But, you are too weak to get away, so you decide not to even try!"
				sleep(10)
				Battle(monstergroup)
				return
			if(chancerun > 0)
				src << "You run away from the [monstergroup] and get away safely!"
				src.islocked = 0
				src.lib = 0
				src.battle = 0
				src.mem = 0
				src.dead = 1
				src.ran = 1
				return 0
			else
				src << "You were blocked by the [monstergroup]!"
				sleep(10)

		Deathcheck(mob/enemy)
			src.monstersinbattle -= 1
			src << "Your party has killed the [enemy]!"
			sleep(10)
			src << "The [enemy] gave your party [enemy.expreward] exp and dropped [enemy.gold] gold!"
			src.exp += enemy.expreward
			if(src.monsterinparty)
				src.monsterinparty.exp += enemy.expreward
			//	src.monsterinparty.realexp += enemy.expreward
			src.gold += enemy.gold
			if(enemy.jobexpreward >= 1)
				src << "The [enemy] gave you [enemy.jobexpreward] job exp!"
				src.jobexp += enemy.jobexpreward
			src.gotexp += enemy.expreward
			src.gotjexp += enemy.jobexpreward
			src.monstersfighting -= 1
			src.monsterkilled += 1
			src.monsterkilled2 += 1
			if(src.monstersfighting == 0 && istype(enemy, /mob/monster/Bosses))
				src.bossbattleswon += 1
			ItemChance(enemy)
			MedalChance()
			del enemy
			return

mob
	monster
		Deathcheck(mob/P,mob/Newchar/S)
			S = usr
			if(S.monsterinparty)
				P = S.monsterinparty
			if(P == S.monsterinparty)
				if(P.hp <= 0)
					S << "Your monster has died!  A spirit appears and suddenly, your gold bag feels lighter, but your monster was revived!"
					P.hp = P.maxhp
					P.mp = P.maxmp
					P.loyal = 100
					if(P.loyal <= 0)
						P.loyal = 0
					sleep(10)
					var/rando = rand(0,5)
					if(rando == 0)
						var/G = S.gold / 5
						S.gold -= G
						S.gold = round(S.gold)
						S << "<font color = olive><b>Spirit: </b><font color = green> Hello.  I have great pity for this monster, and I have revived it...for a small fee of 1/5th of your gold..."
					if(rando == 1)
						var/G = S.gold / 6
						S.gold -= G
						S.gold = round(S.gold)
						S << "<font color = olive><b>Spirit: </b><font color = green> Hello.  I have great pity for this monster, and I have revived it...for a small fee of 1/6th of your gold..."
					if(rando == 2)
						var/G = S.gold / 7
						S.gold -= G
						S.gold = round(S.gold)
						S << "<font color = olive><b>Spirit: </b><font color = green> Hello.  I have great pity for this monster, and I have revived it...for a small fee of 1/7th of your gold..."
					if(rando == 3)
						var/G = S.gold / 8
						S.gold -= G
						S.gold = round(S.gold)
						S << "<font color = olive><b>Spirit: </b><font color = green> Hello.  I have great pity for this monster, and I have revived it...for a small fee of 1/8th of your gold..."
					if(rando == 4)
						var/G = S.gold / 9
						S.gold -= G
						S.gold = round(S.gold)
						S << "<font color = olive><b>Spirit: </b><font color = green> Hello.  I have great pity for this monster, and I have revived it...for a small fee of 1/9th of your gold..."
					if(rando == 5)
						var/G = S.gold / 10
						S.gold -= G
						S.gold = round(S.gold)
						S << "<font color = olive><b>Spirit: </b><font color = green> Hello.  I have great pity for this monster, and I have revived it...for a small fee of 1/10th of your gold..."
			if(S.hp <= 0)
				S << "You died!  The [src] runs away with half your gold!"
				S.dead += 1
				S.gold /= 2
				S.gold = round(S.gold)
				src.gold += S.gold
				src.gold = round(src.gold)
				S.islocked = 0
				src.islocked = 0
				S.hp = S.maxhp
				S.lefttown = 0
				S.battle = 0
				src.battle = 0
				S.lib = 0
				S.poisoned = 0
				S.diseased = 0
				S.x = S.innx
				S.housearea = 0
				S.y = S.inny
				S.z = S.innz
				S.mem = 0
				S.dungeon = 0
				S.gotpass = 0
				if(S.monsterinparty != null)
					S << "[S.monsterinparty] went to the Priest with your coffin and awaited your revival!"
					S.monsterinparty.hp = S.monsterinparty.maxhp
					S.monsterfollow.loc = S.loc
				S.monstersfighting = 0
				src.checkbattle = 1
				S.area = "Town"
				del src

		Battle(mob/Newchar/P,list/enemy2)
			if(src.gonealready == 1)
				return
			src.gonealready = 1
			if(P != usr)
				P = usr
			for(var/mob/M in monstergroup)
			if(src.defend == 1)
				src.defense /= 2
				src.defend = 0
			var/action=pick(
				prob(50)
					"Attack",
				prob(5)
					"Run",
				prob(50)
					"Spell",
			)
			if(istype(src,/mob/monster/ZTChallengeMonsters/Gorban))
				action = "Spell"
			if(action == "Attack")
				Attack(P)
			if(action == "Spell")
				Spell(P,enemy2)
			if(action == "Run")
				Run(P,enemy2)

		Attack(mob/Newchar/P,mob/Newchar/S)
			P = usr
			if(P)
				var/mob/picked = pick(P,S)
				if(picked == null)picked = P
				var
					damage = src.attack - P.defense + rand (-10,10)
					chancehit = src.agility - P.agility + rand(-5,5)
					critchance = rand (0,19)
					critdamage = src.attack * 1.5
					hit = src.agility - picked.agility + rand(-2,2)
				S = P.monsterinparty
				critdamage = round(critdamage)
				if(hit <= 0)
					var
						onedmgchance = rand(1,2)
					if(onedmgchance == 2)
						P << "The [src] attacks [picked]!"
						P << 'enemyattack.wav'
						sleep(10)
						P << "The [src] barely hits [picked] scratching you for 1 damage!"
						P << 'hit.wav'
						picked.hp -= 1
						sleep(10)
						if(picked.hp <= 0)
							Deathcheck(picked)
					else
						P << "The [src] attacks [picked]!"
						P << 'enemyattack.wav'
						sleep(10)
						P << "The [src] misses!"
						P << 'dodge.wav'
						sleep(10)
				else if(critchance == 9)
					P << "The [src] attacks [picked]!"
					P << 'enemyattack.wav'
					sleep(10)
					P << "Critical Hit!"
					P << 'criticalhit.wav'
					sleep(10)
					if(critdamage <= 0)
						P << "The [src] attacks powerfully but wildly misses!"
						P << 'dodge.wav'
						sleep(10)
					else if(critdamage >> 0)
						P << "The [src] hits [picked] for [num2text(critdamage,20)]!"
						P << 'hit.wav'
						picked.hp -= critdamage
						sleep(10)
						if(picked.hp <= 0)
							Deathcheck(picked)
				else if(chancehit > 0 && damage > 0)
					P << "The [src] attacks [picked]!"
					P << 'enemyattack.wav'
					sleep(10)
					P << "The [src] hits [picked] for [num2text(damage,20)] damage!"
					P << 'hit.wav'
					picked.hp -= damage
					sleep(10)
					if(picked.hp <= 0)
						Deathcheck(picked)
				else if(chancehit <= 0)
					var
						onedmgchance = rand(1,2)
					if(onedmgchance == 2)
						P << "The [src] attacks [picked]!"
						P << 'enemyattack.wav'
						sleep(10)
						P << "The [src] barely hits [picked] scratching you for 1 damage!"
						P << 'hit.wav'
						picked.hp -= 1
						sleep(10)
						if(picked.hp <= 0)
							Deathcheck(picked)
					else
						P << "The [src] attacks [picked]!"
						P << 'enemyattack.wav'
						sleep(10)
						P << "The [src] misses!"
						P << 'dodge.wav'
						sleep(10)
				else if(damage <= 0)
					var
						onedmgchance = rand(1,2)
					if(onedmgchance == 2)
						P << "The [src] attacks [picked]!"
						P << 'enemyattack.wav'
						sleep(10)
						P << "The [src] barely hits [picked] scratching you for 1 damage!"
						P << 'hit.wav'
						picked.hp -= 1
						sleep(10)
						if(picked.hp <= 0)
							Deathcheck(picked)
					else
						P << "The [src] attacks [picked]!"
						P << 'enemyattack.wav'
						sleep(10)
						P << "The [src] misses!"
						P << 'dodge.wav'
						sleep(10)
			else
				world << "I stupidly forgot to go!"



		Spell(mob/Newchar/P,list/enemy2,mob/Newchar/S)
			P = usr
			if(src.spell)
				var/spellselect=pick(src.spell)
				S = P.monsterinparty
				var/mob/picked = pick(P,S)
				if(picked == null)picked = P
				if(P == null)Battle(P,enemy2)
				if(src.mp >= 5)
					mp -= 5
				else
					Battle(P,enemy2)
					return
				if(istype(picked,/mob/summons/Metal_Slime_Summon))
					Battle(P,enemy2)
					return
				else if(spellselect == "Attack")
					Battle(P,enemy2)
				else if(spellselect == "Blaze")
					Blaze(picked,P)
				else if(spellselect == "HammerFall")
					HammerFall(picked,enemy2,P)
				else if(spellselect == "JewelThrow")
					JewelThrow(picked,P)
				else if(spellselect == "GoldSteal")
					GoldSteal(picked,P)
				else if(spellselect == "SwordRain")
					SwordRain(picked,P)
				else if(spellselect == "Bolt")
					Bolt(picked,P)
				else if(spellselect == "Gale")
					Gale(picked,P)
				else if(spellselect == "Heal")
					Heal(picked,P)
				else if(spellselect == "RockToss")
					RockToss(picked,P)
				else if(spellselect == "Trample")
					Trample(picked,P)
				else if(spellselect == "Knockdown")
					Knockdown(picked,enemy2,P)
				else if(spellselect == "Healmore")
					Healmore(picked,P)
				else if(spellselect == "Infernos")
					Infernos(picked,P)
				else if(spellselect == "SummonSlime1")
					SummonSlime1(picked,enemy2,P)
				else if(spellselect == "SummonHealer1")
					SummonHealer1(picked,enemy2,P)
				else if(spellselect == "Poison")
					Poison(picked,P)
				else if(spellselect == "Engulph")
					Engulph(picked,P)
				else if(spellselect == "Knockover")
					Knockover(picked,enemy2,P)
				else if(spellselect == "SummonThiefBag1")
					SummonThiefBag1(picked,enemy2,P)
				else if(spellselect == "JewelRain")
					JewelRain(picked,P)
				else if(spellselect == "Kirby")
					Kirby(picked,P)
				else if(spellselect == "Super Gale")
					SuperGale(picked,P)
				else if(spellselect == "Bonetoss")
					BoneToss(picked,P)
				else if(spellselect == "SummonSkeleton1")
					SummonSkeleton1(picked,enemy2,P)
				else if(spellselect == "SummonHammerman1")
					SummonHammerman1(picked,enemy2,P)
				else if(spellselect == "Healmore2")
					Healmore2(picked,P)
				else if(spellselect == "HammerFall2")
					HammerFall2(picked,enemy2,P)
				else if(spellselect == "Blazemore")
					Blazemore(picked,P)
				else if(spellselect == "Blazemore2")
					Blazemore2(picked,P)
				else if(spellselect == "Ram")
					Ram(picked,P)
				else if(spellselect == "HornToss")
					HornToss(picked,P)
				else if(spellselect == "IceTounge")
					IceTounge(picked,P)
				else if(spellselect == "Icicle")
					Icicle(picked,P)
				else if(spellselect == "IceCall1")
					IceCall1(picked,enemy2,P)
				else if(spellselect == "Goop")
					Goop(picked,P)
				else if(spellselect == "Split1")
					Split1(picked,enemy2,P)
				else if(spellselect == "Disease")
					Disease(picked,P)
				else if(spellselect == "BloodRock")
					BloodRock(picked,enemy2,P)
				else if(spellselect == "BloodRain")
					BloodRain(picked,P)
				else if(spellselect == "Absorb")
					Absorb(picked,P)
				else if(spellselect == "Duplicate1")
					Duplicate1(picked,enemy2,P)
				else if(spellselect == "FlameBreath")
					FlameBreath(picked,P)
				else if(spellselect == "FireballODoom")
					FireballODoom(picked,P)
				else if(spellselect == "Bite")
					Bite(picked,P)
				else if(spellselect == "Roar")
					Roar(picked,enemy2,P)
				else if(spellselect == "Absorb2")
					Absorb2(picked,P)
				else if(spellselect == "SummonSlime2")
					SummonSlime2(picked,enemy2,P)
				else if(spellselect == "Blazemost")
					Blazemost(picked,P)
				else if(spellselect == "Healmore3")
					Healmore3(picked,P)
				else if(spellselect == "MagicBlade")
					MagicBlade(picked,enemy2,P)
				else if(spellselect == "FlameBreath2")
					FlameBreath(picked,P)
				else if(spellselect == "FireballODoom2")
					FireballODoom(picked,P)
				else if(spellselect == "SummonMage1")
					SummonMage1(picked,enemy2,P)
				else if(spellselect == "Quake")
					Quake(picked,P)
				else if(spellselect == "WindStrike")
					WindStrike(picked,P)
				else if(spellselect == "ThunderBolt")
					ThunderBolt(picked,P)
				else if(spellselect == "Iceball")
					Iceball(picked,P)
				else if(spellselect == "Blazemost2")
					Blazemost2(picked,P)
				else if(spellselect == "SummonMage2")
					SummonMage2(picked,enemy2,P)
				else if(spellselect == "BlackFlub1")
					BlackFlub1(picked,enemy2,P)
				else if(spellselect == "BlackHole")
					BlackHole(picked,P)
				else if(spellselect == "Howl1")
					Howl1(picked,enemy2,P)
				else if(spellselect == "Maul")
					Maul(picked,P)
				else if(spellselect == "WhiteFlub1")
					WhiteFlub1(picked,enemy2,P)
				else if(spellselect == "WhiteMassacre")
					WhiteMassacre(picked,P)
				else if(spellselect == "Healmost")
					Healmost(picked,P)
				else if(spellselect == "Healus")
					Healus(picked,enemy2,P)
				else if(spellselect == "Infermost")
					Infermost(picked,P)
				else if(spellselect == "Tornado")
					Tornado(picked,P)
				else if(spellselect == "Dancing Fire")
					DanceFire(picked,P)
				else if(spellselect == "Firebane")
					Firebane(picked,P)
				else if(spellselect == "Flame Creation1")
					FlameCreate1(picked,enemy2,P)
				else if(spellselect == "Master Fire")
					MasterFire(picked,P)
				else if(spellselect == "BloodMassacre")
					BloodMassacre(picked,enemy2,P)
				else if(spellselect == "SuperBlood")
					SuperBlood(picked,P)
				else if(spellselect == "Duplicate2")
					Duplicate2(picked,enemy2,P)
				else if(spellselect == "Rain of Ice")
					RainIce(picked,enemy2,P)
				else if(spellselect == "Icicle2")
					Icicle2(picked,enemy2,P)
				else if(spellselect == "Summon Ice1")
					SummonIce1(picked,enemy2,P)
				else if(spellselect == "Defeat")
					Defeat(picked,P)
				else if(spellselect == "Master Blaze")
					MasterBlaze(picked,P)
				else if(spellselect == "Master Icebolt")
					MasterIcebolt(picked,P)
				else if(spellselect == "Master Gale")
					MasterGale(picked,P)
				else if(spellselect == "Master Heal")
					MasterHeal(picked,P)
				else if(spellselect == "Ram2")
					Ram2(picked,enemy2,P)
				else if(spellselect == "Horn")
					Horn(picked,P)
				else if(spellselect == "Glare")
					Glare(picked,enemy2,P)
				else if(spellselect == "Bolt Sword")
					BoltSword(picked,P)
				else if(spellselect == "Doom Portal1")
					DoomPort1(picked,enemy2,P)
				else if(spellselect == "Call1")
					Call1(picked,enemy2,P)
				else if(spellselect == "HammerCall1")
					HammerCall1(picked,enemy2,P)
				else if(spellselect == "HammerBash")
					HammerBash(picked,enemy2,P)
				else if(spellselect == "Flatten")
					Flatten(picked,enemy2,P)
				else if(spellselect == "Howl2")
					Howl2(picked,enemy2,P)
				else if(spellselect == "Claw")
					Claw(picked,P)
				else if(spellselect == "Firebal")
					Firebal(picked,P)
				else if(spellselect == "TheNukeSpell")
					TheNukeSpell(picked,P)
				else if(spellselect == "Healusmore")
					Healusmore(picked,enemy2,P)
				else if(spellselect == "Double Call1")
					DoubleCall1(picked,enemy2,P)
				else if(spellselect == "Double Call2")
					DoubleCall2(picked,enemy2,P)
				else if(spellselect == "JewelThrow2")
					JewelThrow2(picked,P)
				else if(spellselect == "GoldSteal2")
					GoldSteal2(picked,P)
				else if(spellselect == "Poison Doom")
					PoisDoom(picked,enemy2,P)
				else if(spellselect == "Splatter")
					Splatter(picked,enemy2,P)
				else if(spellselect == "Blow Up1")
					Blowup1(picked,enemy2,P)
				else if(spellselect == "Death Blaze")
					DeathBlaze(picked,P)
				else if(spellselect == "SwordRain2")
					SwordRain2(picked,P)
				else if(spellselect == "Stab")
					Stab(picked,P)
				else if(spellselect == "NoMP")
					NoMP(P)
				else if(spellselect == "Super Bone")
					SuperBone(picked,enemy2,P)
				else if(spellselect == "LeafHorde")
					LeafHorde(picked,P)
				else if(spellselect == "Growth")
					Growth(picked,P)
				else if(spellselect == "Wing Beat")
					WingBeat(picked,P)
				else if(spellselect == "Leaf Cutter")
					LeafCutter(picked,P)
				else if(spellselect == "Blizzard2")
					Blizzard2(picked,P)
				else if(spellselect == "IceCall2")
					IceCall2(picked,P)
				else if(spellselect == "IceRage")
					IceRage(picked,P)
				else if(spellselect == "KillerFlame")
					KillerFlame(picked,P)
				else if(spellselect == "Split2")
					Split2(picked,P)
				else if(spellselect == "Explode")
					Explode(picked,P)
				else if(spellselect == "Teal Storm")
					TealStorm(picked,P)
				else if(spellselect == "Purple Storm")
					PurpleStorm(picked,P)
				else if(spellselect == "Blue Storm")
					BlueStorm(picked,P)
				else if(spellselect == "Red Storm")
					RedStorm(picked,P)
				else if(spellselect == "Green Storm")
					GreenStorm(picked,P)
				else if(spellselect == "Critical")
					Critical(picked,P)
				else if(spellselect == "Shake")
					Shake(picked,P)
				else if(spellselect == "Mine Disease")
					MineDisease(picked,P)
					P << "<font color = olive><b>[src]: </b><font color = green> Let's see how well you take THIS!"
					Critical(picked,P)
				else
					Battle(P,enemy2)
			else
				Battle(P,enemy2)

		Run(mob/Newchar/P,mob/enemy2)
			if(P != usr)
				P = usr
			if(P)
				if(istype(src,/mob/monster/Bosses/))
					Battle(P,enemy2)
					return
				src.monstersinbattle -= 1
				var
					chancerun = src.agility - P.agility + rand(-250,250)
				P << "The [src] starts to flee..."
				sleep(10)
				if(chancerun >> 0)
					P << "The [src] gets away safely!"
					P.monsterran = 1
					P.islocked = 0
					src.islocked = 0
					P.lib = 0
					P.battle = 0
					src.battle = 0
					src.expreward = 0
					src.gold = 0
					P.monstersinbattle -= 1
					del src
				else
					P << "You blocked the [src]!"
					sleep(10)
			else
				world << "I forgot to Run!"