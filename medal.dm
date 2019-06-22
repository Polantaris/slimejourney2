obj
	number
		var/amount = 1

mob
	proc
		MedalChance(mob/player/P)
			var/chance = rand(1,10)
			if(chance == 3 || chance == 7)
				if(silverm >= 250)
					var/goldchance = rand(1,50)
					var/silverchance = rand(1,30)
					var/bronzechance = rand(1,20)
					if(goldchance == 25)
						sleep(15)
						AddInfo(P,"A monster medal drops...","It is gold!  Congradulations!")
						P.goldm += 1
						sleep(25)
					else if(silverchance == 10 || silverchance == 20)
						sleep(15)
						AddInfo(P,"A monster medal drops...","It is silver!  Yippie!")
						P.silverm += 1
						sleep(25)
					else if(bronzechance == 5 || bronzechance == 10 || bronzechance == 15)
						sleep(15)
						AddInfo(P,"A monster medal drops...","It is bronze!  That's nice.")
						P.bronzem += 1
						sleep(25)
				else if(bronzem >= 250)
					var/silverchance = rand(1,30)
					var/bronzechance = rand(1,20)
					if(silverchance == 10 || silverchance == 20)
						sleep(15)
						AddInfo(P,"A monster medal drops...","It is silver!  Yippie!")
						P.silverm += 1
						sleep(25)
					else if(bronzechance == 5 || bronzechance == 10 || bronzechance == 15)
						sleep(15)
						AddInfo(P,"A monster medal drops...","It is bronze!  That's nice.")
						P.bronzem += 1
						sleep(25)
				else
					var/bronzechance = rand(1,20)
					if(bronzechance == 5 || bronzechance == 10 || bronzechance == 15)
						sleep(15)
						AddInfo(P,"A monster medal drops...","It is bronze!  That's nice.")
						P.bronzem += 1
						sleep(25)

