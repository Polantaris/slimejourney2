mob/var/battleended = 0
mob/var/pvpsummon = 1
mob/var/pvpplayer = 1
mob/var/libs = 0
mob/var/pvping
mob/var/pvp = 0

mob
	verb
		Attack_Someone()
			set category = "Other"
			if(src.pvp == 1)return
			src.pvp = 1
			var/list/list = new/list()
			for(var/mob/Newchar/M in view(2))
				list += M
				list -= src
			if(!list.len)
				view() << "There's no one to engage Combat with!"
				return
			if(src.dungeon == 1)
				view() << "You cannot engage in combat with someone in a dungeon!"
				return
			var/mob/A = input("Who will you attack?","Engage in Combat!") in list
			if(A.pvp == 1)
				src << "You cannot fight someone in a PVP Battle already!"
				src.pvp = 0
				return
			A.pvp = 1
			switch(input(A,"[src] has challenged you to a duel!  Will you accept?","Challenge!") in list("Yeah, let's fight!","No way, I'm a coward!"))
				if("Yeah, let's fight!")
					if(A)
						if(src)
							world << "[src] and [A] have engaged in combat!  The winner will recieve half of the loser's Gold!"
							sleep(10)
							A.pvping = src
							src.pvping = A
							PVPMasterBattle(src,A)
							src.pvp = 0
							A.pvp = 0
							return
				if("No way, I'm a coward!")
					world << "[A] is a coward and has refused to fight [src]!"
					return

mob
	proc
		PVPMasterBattle(mob/Newchar/A,mob/Newchar/B)
			if(!A.monsterinparty)
				A.pvpsummon = 0
			if(!B.monsterinparty)
				B.pvpsummon = 0
			if(A.pvpplayer == 0 && A.pvpsummon == 0)
				return
			if(B.pvpplayer == 0 && B.pvpsummon == 0)
				return
			if(A.islocked == 0)
				A.islocked = 1
			if(B.islocked == 0)
				B.islocked = 1
			if(A.poisoned == 1)
				var
					poisondmg = A.hp / 25
				view() << "[A] recieved damage from poison!"
				sleep(10)
				A.hp -= poisondmg
				A.hp = round(A.hp)
				if(A.hp <= 0)
					PVPDeathCheck(A,B)
			if(A.pvpplayer == 1)
				PVPBattle(A,B)
			if(B.poisoned == 1)
				var
					poisondmg = B.hp / 25
				view() << "[B] recieved damage from poison!"
				sleep(10)
				B.hp -= poisondmg
				B.hp = round(B.hp)
				if(B.hp <= 0)
					PVPDeathCheck(B,A)
			if(B.pvpplayer == 1)
				PVPBattle(B,A)
			if(A.battleended == 0 && B.battleended == 0)
				if(A.monsterinparty && A.pvpsummon == 1)
					if(A.monsterinparty.poisoned == 1)
						var
							poisondmg = A.monsterinparty.hp / 25
						view() << "[A.monsterinparty] recieved damage from poison!"
						sleep(10)
						A.monsterinparty.hp -= poisondmg
						A.monsterinparty.hp = round(A.monsterinparty.hp)
						if(A.monsterinparty.hp <= 0)
							PVPDeathCheck(A,B)
					PVPSummonBattle(A,B)
				if(B.monsterinparty && B.pvpsummon == 1)
					if(B.monsterinparty.poisoned == 1)
						var
							poisondmg = B.monsterinparty.hp / 25
						view() << "[B.monsterinparty] recieved damage from poison!"
						sleep(10)
						B.monsterinparty.hp -= poisondmg
						B.monsterinparty.hp = round(B.monsterinparty.hp)
						if(B.monsterinparty.hp <= 0)
							PVPDeathCheck(B,A)
					PVPSummonBattle(B,A)
			if(A.pvpsummon && A.pvpplayer && B.pvpplayer && B.pvpsummon)
				spawn()PVPMasterBattle(A,B)
			return

		PVPBattle(mob/Newchar/A,mob/Newchar/B)
			A.libs = 1
			B.libs = 1
			switch(input(A,"You encountered [B]!  Command?","Battle!") in list("Attack","Spell","Item"))
				if("Attack")
					PVPAttack(A,B)
				if("Spell")
					PVPSpell(A,B)
				if("Item")
					PVPItem(A,B)

		PVPAttack(mob/Newchar/A,mob/Newchar/B)
			var/list/enemys = new/list()
			enemys += B
			if(B.monsterinparty)
				enemys+=B.monsterinparty
			var/mob/enemy=input(A,"Who will you attack?","Select Target")in list("-=Cancel=-") + enemys
			if(enemy == "-=Cancel=-")
				PVPBattle(A,B)
				return
			var
				damage = A.attack - B.defense + rand (-10,10)
				chancehit = A.agility - B.agility + rand(-5,5)
				critchance = rand (0,19)
				critdamage = damage * 1.5
			critdamage = round(critdamage)
			if(critchance == 9)
				view() << "[A] attacks [enemy]!"
				view() << 'attack.wav'
				sleep(10)
				view() << "Critical Hit!"
				view() << 'criticalhit.wav'
				sleep(10)
				if(critdamage <= 0)
					view() << "[A] attacks powerfully but [A] wildly misses!"
					view() << 'dodge.wav'
					sleep(10)
				else if(critdamage >> 0)
					view() << "[A] hits [enemy] for [num2text(critdamage,20)]!"
					view() << 'hit.wav'
					B.hp -= critdamage
					sleep(10)
			else if(chancehit > 0 && damage > 0)
				view() << "[A] attacks [enemy]!"
				view() << 'attack.wav'
				sleep(10)
				view() << "[A] hits [enemy] for [num2text(damage,20)] damage!"
				view() << 'hit.wav'
				enemy.hp -= damage
				sleep(10)
			else if(chancehit <= 0)
				view() << "[A] attacks [enemy]!"
				view() << 'attack.wav'
				sleep(10)
				view() << "[A] misses!"
				view() << 'dodge.wav'
				sleep(10)
			else if(damage <= 0)
				var
					onedmgchance = rand(1,4)
				if(onedmgchance == 3)
					view() << "[A] attacks [enemy]!"
					view() << 'attack.wav'
					sleep(10)
					view() << "[A] barely hits [enemy], scraching [enemy] for 1 damage!"
					view() << 'hit.wav'
					B.hp -= 1
					sleep(10)
				else if(onedmgchance == 1)
					view() << "[A] attacks [enemy]!"
					view() << 'attack.wav'
					sleep(10)
					view() << "[A] misses!"
					view() << 'dodge.wav'
					sleep(10)
				else if(onedmgchance == 2)
					view() << "[A] attacks [enemy]!"
					view() << 'attack.wav'
					sleep(10)
					view() << "[A] misses!"
					view() << 'dodge.wav'
					sleep(10)
				else if(onedmgchance == 4)
					view() << "[A] attacks [enemy]!"
					view() << 'attack.wav'
					sleep(10)
					view() << "[A] misses!"
					view() << 'dodge.wav'
					sleep(10)
			if(A.job == "Assassin")
				var/assassindmg = damage*0.25
				assassindmg = round(assassindmg)
				if(assassindmg >= 1)
					view() << "With [A]'s speed, [A] attacks again!"
					view() << 'attack.wav'
					sleep(10)
					view() << "[A] does [assassindmg] damage to [enemy]!"
					view() << 'hit.wav'
					enemy.hp -= assassindmg
				else
					view() << "With [A]'s speed, [A] attacks again!"
					view() << 'attack.wav'
					sleep(10)
					view() << "[A] misses terribly!"
					view() << 'dodge.wav'
			if(enemy.hp <= 0)
				PVPDeathCheck(A,B)

		PVPSpell(mob/Newchar/A,mob/Newchar/B)
			if(A.diseased == 1)
				src << "You are too dieseased to cast spells or use skills!"
				sleep(10)
				PVPBattle(A,B)
				return
			if(A.spell == list())
				src << "You don't know any spells or skills!"
				sleep(10)
				PVPBattle(A,B)
				return
			else
				PVPPickSpell(A,B)

		PVPItem(mob/Newchar/A,mob/Newchar/B)
			var/list/owitems = new()
			var/tempval
			var/useitem
			for(var/x in A.contents)
				owitems += x
			owitems += "Cancel"
			if (owitems.len == 1)
				A << "You don't have any items."
				PVPBattle(A,B)
			else
				var/usesordrop = input(A,"Would you like to uses an item") in list("Use","Cancel")
				switch(usesordrop)
					if("Cancel")
						PVPBattle(A,B)
					if("Use")
						useitem = input(A,"Which item would you like to use?") in owitems
						if(useitem == "Cancel")
							PVPBattle(A,B)
							return
						else if(istype(useitem,/obj/NormalItems/Herb))
							view() << "[A] uses the [useitem]!"
							sleep(10)
							tempval = rand(10,30)
							A.hp += tempval
							view() << "[A] was healed for [tempval] HP."
							if(A.hp >= A.maxhp)
								A.hp = A.maxhp
							del(useitem)
						else if(istype(useitem,/obj/NormalItems/Large_Herb))
							view() << "[A] uses the [useitem]!"
							sleep(10)
							tempval = rand(50,125)
							A.hp += tempval
							view() << "[A] was healed for [tempval] HP."
							if(A.hp >= A.maxhp)
								A.hp = A.maxhp
							del(useitem)
						else if(istype(useitem,/obj/NormalItems/MagicHerb))
							view() << "[A] uses the [useitem]!"
							sleep(10)
							tempval = rand(10,20)
							A.mp += tempval
							view() << "[A] was healed for [tempval] MP."
							if(A.mp >= A.maxmp)
								A.mp = A.maxmp
							del(useitem)
						else if(istype(useitem,/obj/NormalItems/Large_MagicHerb))
							view() << "[A] uses the [useitem]!"
							sleep(10)
							tempval = rand(50,125)
							A.mp += tempval
							view() << "[A] was healed for [tempval] MP."
							if(A.mp >= A.maxmp)
								A.mp = A.maxmp
							del(useitem)
						else if(istype(useitem,/obj/NormalItems/Lunch))
							view() << "[A] uses the [useitem]!"
							sleep(10)
							tempval = rand(15,50)
							A.hp += tempval
							view() << "[A] was healed for [tempval] HP."
							if(A.hp >= A.maxhp)
								A.hp = A.maxhp
							A.lunch = 0
							del(useitem)
						else if(istype(useitem,/obj/Food/Cooked_Tiny_Meat))
							view() << "[A] uses the [useitem]!"
							sleep(10)
							tempval = rand(50,150)
							A.hp += tempval
							view() << "[A] was healed for [tempval] HP."
							if(A.hp >= A.maxhp)
								A.hp = A.maxhp
							del(useitem)
						else if(istype(useitem,/obj/Food/Cooked_Small_Meat))
							view() << "[A] uses the [useitem]!"
							sleep(10)
							tempval = rand(125,300)
							A.hp += tempval
							view() << "[A] was healed for [tempval] HP."
							if(A.hp >= A.maxhp)
								A.hp = A.maxhp
							del(useitem)
						else if(istype(useitem,/obj/Food/Cooked_Meat))
							view() << "[A] uses the [useitem]!"
							sleep(10)
							tempval = rand(225,550)
							A.hp += tempval
							view() << "[A] was healed for [tempval] HP."
							if(A.hp >= A.maxhp)
								A.hp = A.maxhp
							del(useitem)
						else if(istype(useitem,/obj/Food/Cooked_Large_Meat))
							view() << "[A] uses the [useitem]!"
							sleep(10)
							tempval = rand(525,950)
							A.hp += tempval
							view() << "[A] was healed for [tempval] HP."
							if(A.hp >= A.maxhp)
								A.hp = A.maxhp
							del(useitem)
						else if(istype(useitem,/obj/Food/Cooked_Big_Meat))
							view() << "[A] uses the [useitem]!"
							sleep(10)
							tempval = rand(900,1250)
							A.hp += tempval
							view() << "[A] was healed for [tempval] HP."
							if(A.hp >= A.maxhp)
								A.hp = A.maxhp
							del(useitem)
						else if(istype(useitem,/obj/Food/Cooked_Huge_Meat))
							view() << "[A] uses the [useitem]!"
							sleep(10)
							tempval = rand(1200,3550)
							A.hp += tempval
							view() << "[A] was healed for [tempval] HP."
							if(A.hp >= A.maxhp)
								A.hp = A.maxhp
							del(useitem)
						else if(istype(useitem,/obj/Food/Cooked_Gigantic_Meat))
							view() << "[A] uses the [useitem]!"
							sleep(10)
							view() << "[A]'s HP was fully healed!"
							A.hp = A.maxhp
							del(useitem)
						else if(istype(useitem,/obj/Food/Cooked_Small_Package_Noodles))
							view() << "[A] uses the [useitem]!"
							sleep(10)
							tempval = rand(100,500)
							A.mp += tempval
							view() << "[A] was healed for [tempval] MP."
							if(A.mp >= A.maxmp)
								A.mp = A.maxmp
							del(useitem)
						else if(istype(useitem,/obj/Food/Cooked_Package_Noodles))
							view() << "[A] uses the [useitem]!"
							sleep(10)
							tempval = rand(400,1200)
							A.mp += tempval
							view() << "[A] was healed for [tempval] MP."
							if(A.mp >= A.maxmp)
								A.mp = A.maxmp
							del(useitem)
						else if(istype(useitem,/obj/Food/Cooked_Large_Package_Noodles))
							view() << "[A] uses the [useitem]!"
							sleep(10)
							tempval = rand(1100,3300)
							A.mp += tempval
							view() << "[A] was healed for [tempval] MP."
							if(A.mp >= A.maxmp)
								A.mp = A.maxmp
							del(useitem)
						else if(istype(useitem,/obj/Food/Cooked_Overly_Sized_Package_Noodles))
							view() << "[A] uses the [useitem]!"
							sleep(10)
							view() << "[A]'s MP was fully healed!"
							A.mp = A.maxmp
							del(useitem)
						else if(istype(useitem,/obj/NormalItems/Antidote))
							if(A.poisoned == 0)
								A << "You cannot use an Antidote, because your not diseased!"
								PVPBattle(A,B)
								return
							else
								view() << "[A] uses the [useitem]!"
								sleep(10)
								view() << "The Poison has left [A] body!"
								A.poisoned = 0
								del(useitem)
						else if(istype(useitem,/obj/NormalItems/Nullifier))
							if(A.diseased == 0)
								A << "You cannot use a Nullifier, because your not diseased!"
								PVPBattle(A,B)
								return
							else
								view() << "[A] uses the [useitem]!"
								sleep(10)
								view() << "The diseases have fled from [A] body!"
								A.diseased = 0
								del(useitem)
						else
							A << "You can't use this item in combat!"
							PVPBattle(A,B)


		PVPSummonBattle(mob/Newchar/A,mob/Newchar/B)
			switch(input(A,"[src.monsterinparty.name]: What do you want me to do, Master?  I'll target myself, just give me a command!","Command Your Monster!") in list("Attack","Spell"))
				if("Attack")
					PVPSummonAttack(A,B)
				if("Spell")
					PVPSummonSpell(A,B)

		PVPSummonAttack(mob/Newchar/A,mob/Newchar/B)
			var/mob/enemy
			if(B.monsterinparty)
				enemy=pick(B,B.monsterinparty)
			else
				enemy = B
			var
				damage = A.monsterinparty.attack - enemy.defense + rand (-10,10)
				chancehit = A.monsterinparty.agility - enemy.agility + rand(-5,5)
				critchance = rand (0,19)
				critdamage = damage * 1.5
			critdamage = round(critdamage)
			if(critchance == 9)
				view() << "[A.monsterinparty.name] attacks [enemy]!"
				view() << 'attack.wav'
				sleep(10)
				view() << "Critical Hit!"
				view() << 'criticalhit.wav'
				sleep(10)
				if(critdamage <= 0)
					view() << "[A.monsterinparty.name] attacks powerfully but you wildly miss!"
					view() << 'dodge.wav'
					sleep(10)
				else if(critdamage >> 0)
					view() << "[A.monsterinparty.name] hits [enemy] for [num2text(critdamage,20)]!"
					view() << 'hit.wav'
					enemy.hp -= critdamage
					sleep(10)
					if(enemy.hp <= 0)
						view() << "For being able to kill [enemy], [A.monsterinparty.name] has received 2x Exp!"
						A.monsterinparty.exp += (enemy.expreward * 2)
						sleep(10)
						var/randmsg = pick(killmsg)
						view() << "\icon[A.monsterinparty] <font color = green><b>[A.monsterinparty] says, ''[randmsg]''</font>"
						PVPDeathCheck(A,B)
			else if(chancehit > 0 && damage > 0)
				view() << "[A.monsterinparty.name] attacks [enemy]!"
				view() << 'attack.wav'
				sleep(10)
				view() << "[A.monsterinparty.name] hits [enemy] for [num2text(damage,20)] damage!"
				view() << 'hit.wav'
				enemy.hp -= damage
				sleep(10)
				if(enemy.hp <= 0)
					view() << "For being able to kill [enemy], [A.monsterinparty.name] has received 2x Exp!"
					A.monsterinparty.exp += (enemy.expreward * 2)
					sleep(10)
					var/randmsg = pick(killmsg)
					view() << "\icon[A.monsterinparty] <font color = green><b>[A.monsterinparty] says, ''[randmsg]''</font>"
					PVPDeathCheck(A,B)
			else if(chancehit <= 0)
				view() << "[A.monsterinparty.name] attacks [enemy]!"
				view() << 'attack.wav'
				sleep(10)
				view() << "[A.monsterinparty.name] misses!"
				view() << 'dodge.wav'
				sleep(10)
			else if(damage <= 0)
				var
					onedmgchance = rand(1,4)
				if(onedmgchance == 3)
					view() << "[A.monsterinparty.name] attacks [enemy]!"
					view() << 'attack.wav'
					sleep(10)
					view() << "[A.monsterinparty.name] barely hits [enemy], scraching it for 1 damage!"
					view() << 'hit.wav'
					enemy.hp -= 1
					sleep(10)
					if(enemy.hp <= 0)
						view() << "For being able to kill [enemy], [A.monsterinparty.name] has received 2x Exp!"
						A.monsterinparty.exp += (enemy.expreward * 2)
						sleep(10)
						var/randmsg = pick(killmsg)
						view() << "\icon[A.monsterinparty] <font color = green><b>[A.monsterinparty] says, ''[randmsg]''</font>"
						PVPDeathCheck(A,B)
				else if(onedmgchance == 1)
					view() << "[A.monsterinparty.name] attacks [enemy]!"
					view() << 'attack.wav'
					sleep(10)
					view() << "[A.monsterinparty.name] misses!"
					view() << 'dodge.wav'
					sleep(10)
				else if(onedmgchance == 2)
					view() << "[A.monsterinparty.name] attacks [enemy]!"
					view() << 'attack.wav'
					sleep(10)
					view() << "[A.monsterinparty.name] misses!"
					view() << 'dodge.wav'
					sleep(10)
				else if(onedmgchance == 4)
					view() << "[A.monsterinparty.name] attacks [enemy]!"
					view() << 'attack.wav'
					sleep(10)
					view() << "[A.monsterinparty.name] misses!"
					view() << 'dodge.wav'
					sleep(10)

		PVPSummonSpell(mob/Newchar/A,mob/Newchar/B)
			switch(input(A,"What spell, Master?","Spell") in list("-=Cancel=-") + A.monsterinparty.spell)
				if("-=Cancel=-")
					PVPSummonBattle(A,B)
					return
				if("Blaze - 5 MP")
					PVPBlaze(A,B)
				if("Heal - 8 MP")
					PVPHeal(A,B)
				if("Poison Wave - 15 MP")
					PVPPoison(A,B)
				if("Splatter - 8 MP")
					PVPSplatter(A,B)
				if("Bash - 13 MP")
					PVPSummonBash(A,B)
				if("Antidote - 10 MP")
					PVPAntidote(A,B)
				if("Infernos - 20 MP")
					PVPInfernos(A,B)
				if("Healmore - 25 MP")
					PVPHealmore(A,B)
				if("Infermore - 50 MP")
					PVPInfermore(A,B)
				if("Bolt - 25 MP")
					PVPBolt(A,B)
				if("Blazemore - 50 MP")
					PVPBlazemore(A,B)
				if("Blazemost - 250 MP")
					PVPBlazemost(A,B)
				if("Healus - 80 MP")
					PVPHealus(A,B)
				if("Bang - 30 MP")
					PVPBang(A,B)
				if("Boom - 200 MP")
					PVPBoom(A,B)
				if("Explodet - 600 MP")
					PVPExplodet(A,B)
				if("Zap - 150 MP")
					PVPZap(A,B)
				if("Thordain - 500 MP")
					PVPThordain(A,B)
				if("Icebolt - 10 MP")
					PVPIcebolt(A,B)
				if("Snowstorm - 90 MP")
					PVPSnowstorm(A,B)
				if("Blizzard - 350 MP")
					PVPBlizzard(A,B)
				if("Gale - 40 MP")
					PVPGale(A,B)
				if("Tornado - 210 MP")
					PVPTornado(A,B)
				if("Hurricane - 550 MP")
					PVPHurricane(A,B)
				if("Earth Spike - 30 MP")
					PVPEarthSpike(A,B)
				if("Quake - 290 MP")
					PVPQuake(A,B)
				if("Earthquake - 500 MP")
					PVPEarthquake(A,B)
				if("Infermost - 500 MP")
					PVPInfermost(A,B)
				if("Healusmore - 750 MP")
					PVPHealusmore(A,B)
				if("King Blaze - 1000 MP")
					PVPKingBlaze(A,B)
				if("King Icebolt - 1000 MP")
					PVPKingIcebolt(A,B)
				if("King Bolt - 1000 MP")
					PVPKingBolt(A,B)
				if("King Gale - 1000 MP")
					PVPKingGale(A,B)
				if("King Holy Bolt - 1000 MP")
					PVPKingHolyBolt(A,B)
				else
					src << "[src.monsterinparty.name]: But Master, I don't have any skills!"
					PVPSummonBattle(A,B)

		PVPDeathCheck(mob/Newchar/A,mob/Newchar/B)
			if(B.monsterinparty)
				if(B.monsterinparty.hp <= 0)
					world << "[A] has defeated [B]'s Summon, [B.monsterinparty]!"
					B.pvpsummon = 0
					if(B.hp <= 0)
						world << "[A] is victorious in combat versus [B]!"
						view() << 'winbattle.wav'
						B.hp = B.maxhp
						B.loc = locate(B.innx,B.inny,B.innz)
						A.housearea = 0
						B.housearea = 0
						if(B.monsterinparty)
							B.monsterinparty.hp = B.monsterinparty.maxhp
							B.monsterinparty.loc = B.loc
						A.islocked = 0
						B.islocked = 0
						B.gold /= 2
						B.gold = round(B.gold)
						A.gold *= 2
						A.gold = round(A.gold)
						A.libs = 0
						B.libs = 0
						B.pvpsummon = 0
						B.pvpplayer = 0
						A.pvpplayer = 0
						A.pvpsummon = 0
			if(B.hp <= 0)
				if(B.pvpsummon == 1 && B.monsterinparty)
					world << "[A] has defeated [B] but the Battle isn't over yet!  [B]'s Summon, [B.monsterinparty] still survives!"
					B.pvpplayer = 0
				else
					world << "[A] has defeated [B].  Because [B] has no Summon, or it is dead, [A] is victorious!"
					view() << 'winbattle.wav'
					B.hp = B.maxhp
					B.loc = locate(B.innx,B.inny,B.innz)
					A.housearea = 0
					B.housearea = 0
					if(B.monsterinparty)
						B.monsterinparty.hp = B.monsterinparty.maxhp
						B.monsterinparty.loc = B.loc
					A.islocked = 0
					B.islocked = 0
					B.gold /= 2
					B.gold = round(B.gold)
					A.gold *= 2
					A.gold = round(A.gold)
					A.libs = 0
					B.libs = 0
					A.pvpsummon = 0
					A.pvpplayer = 0
					B.pvpsummon = 0
					B.pvpplayer = 0