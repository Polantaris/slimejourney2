mob
	proc
		checklevel()
			if(!istext(src.expreq)&&src.exp>=src.expreq)
				levelup()

		levelup()
			if(src.color == "Blue")
				var
					hprand = rand (10,30)
					mprand = rand (5,15)
					atkrand = rand (2,6)
					defrand = rand (2,6)
					intrand = rand (2,6)
					aglrand = rand (2,6)
				if(src.job == "Assassin")
					hprand = rand(6,18)
					defrand = rand (1,3)
					aglrand = rand (4,12)
				if(src.job == "Mage")
					hprand = rand(6,18)
					mprand = rand (10,30)
					intrand = rand (4,12)
				if(src.job == "Warrior")
					mprand = rand(3,9)
					hprand = rand (20,60)
					atkrand = rand (4,12)
					defrand = rand (4,12)
				src << "<font color = blue><b>You have gained a level!"
				src << 'levelup.wav'
				src << "<font color = blue><b>You are now level [src.level + 1]!"
				sleep(3)
				src << "<b><font color = blue>Your Max HP went up [hprand] points!"
				sleep(3)
				src.maxhp += hprand
				src << "<b><font color = blue>Your Max MP went up [mprand] points!"
				sleep(3)
				src.maxmp += mprand
				src << "<b><font color = blue>Your Attack went up [atkrand] points!"
				sleep(3)
				src.attack += atkrand
				src << "<b><font color = blue>Your Defense went up [defrand] points!"
				sleep(3)
				src.defense += defrand
				src << "<b><font color = blue>Your Intelligence went up [intrand] points!"
				sleep(3)
				src.intelligence += intrand
				src << "<b><font color = blue>Your Agility went up [aglrand] points!"
				sleep(3)
				src.agility += aglrand
				src.level += 1
				if(src.clan == "Getral")
					var
						xtrarand1 = rand(1,5)
						xtrarand2 = rand(1,5)
					src << "<b><font color = blue>Your attack went up [xtrarand1] because you are in the Getral Clan!"
					sleep(3)
					src << "<b><font color = blue>Your defense went up [xtrarand2] because you are in the Getral Clan!"
					src.attack += xtrarand1
					src.defense += xtrarand2
				if(src.clan == "Lorth")
					var
						xtrarand1 = rand(4,12)
						xtrarand2 = rand(1,5)
					src << "<b><font color = blue>Your MP went up [xtrarand1] because you are in the Lorth Clan!"
					sleep(3)
					src << "<b><font color = blue>Your intelligence went up [xtrarand2] because you are in the Lorth Clan!"
					src.maxmp += xtrarand1
					src.intelligence += xtrarand2
				if(src.clan == "Mektory")
					var
						xtrarand1 = rand(4,12)
						xtrarand2 = rand(4,12)
					src << "<b><font color = blue>Your HP went up [xtrarand1] because you are in the Mektory Clan!"
					sleep(3)
					src << "<b><font color = blue>Your MP went up [xtrarand2] because you are in the Mektory Clan!"
					src.maxhp += xtrarand1
					src.maxmp += xtrarand2
				if(src.clan == "Pelset")
					var
						xtrarand1 = rand(1,5)
						xtrarand2 = rand(1,5)
					src << "<b><font color = blue>Your defense went up [xtrarand1] because you are in the Pelset Clan!"
					sleep(3)
					src << "<b><font color = blue>Your agility went up [xtrarand2] because you are in the Pelset Clan!"
					src.defense += xtrarand1
					src.agility += xtrarand2
				if(src.clan == "Hyolth")
					var
						xtrarand1 = rand(1,5)
						xtrarand2 = rand(1,5)
					src << "<b><font color = blue>Your attack went up [xtrarand1] because you are in the Hyolth Clan!"
					sleep(3)
					src << "<b><font color = blue>Your agility went up [xtrarand2] because you are in the Hyolth Clan!"
					src.attack += xtrarand1
					src.agility += xtrarand2
			if(src.color == "Red")
				var
					hprand = rand (30,90)
					mprand = rand (15,45)
					atkrand = rand (5,15)
					defrand = rand (5,15)
					intrand = rand (5,15)
					aglrand = rand (5,15)
				if(src.job == "Assassin")
					hprand = rand(10,30)
					defrand = rand (2,6)
					aglrand = rand (8,24)
				if(src.job == "Mage")
					hprand = rand(10,30)
					mprand = rand (25,75)
					intrand = rand (8,24)
				if(src.job == "Warrior")
					mprand = rand(5,15)
					hprand = rand (50,150)
					atkrand = rand (8,24)
					defrand = rand (8,24)
				src << "<font color = blue><b>You have gained a level!"
				src << 'levelup.wav'
				src << "<font color = blue><b>You are now level [src.level + 1]!"
				sleep(3)
				src << "<b><font color = blue>Your Max HP went up [hprand] points!"
				sleep(3)
				src.maxhp += hprand
				src << "<b><font color = blue>Your Max MP went up [mprand] points!"
				sleep(3)
				src.maxmp += mprand
				src << "<b><font color = blue>Your Attack went up [atkrand] points!"
				sleep(3)
				src.attack += atkrand
				src << "<b><font color = blue>Your Defense went up [defrand] points!"
				sleep(3)
				src.defense += defrand
				src << "<b><font color = blue>Your Intelligence went up [intrand] points!"
				sleep(3)
				src.intelligence += intrand
				src << "<b><font color = blue>Your Agility went up [aglrand] points!"
				sleep(3)
				src.agility += aglrand
				src.level += 1
				if(src.clan == "Getral")
					var
						xtrarand1 = rand(3,9)
						xtrarand2 = rand(3,9)
					src << "<b><font color = blue>Your attack went up [xtrarand1] because you are in the Getral Clan!"
					sleep(3)
					src << "<b><font color = blue>Your defense went up [xtrarand2] because you are in the Getral Clan!"
					src.attack += xtrarand1
					src.defense += xtrarand2
				if(src.clan == "Lorth")
					var
						xtrarand1 = rand(6,18)
						xtrarand2 = rand(3,9)
					src << "<b><font color = blue>Your MP went up [xtrarand1] because you are in the Lorth Clan!"
					sleep(3)
					src << "<b><font color = blue>Your intelligence went up [xtrarand2] because you are in the Lorth Clan!"
					src.maxmp += xtrarand1
					src.intelligence += xtrarand2
				if(src.clan == "Mektory")
					var
						xtrarand1 = rand(6,18)
						xtrarand2 = rand(6,18)
					src << "<b><font color = blue>Your HP went up [xtrarand1] because you are in the Mektory Clan!"
					sleep(3)
					src << "<b><font color = blue>Your MP went up [xtrarand2] because you are in the Mektory Clan!"
					src.maxhp += xtrarand1
					src.maxmp += xtrarand2
				if(src.clan == "Pelset")
					var
						xtrarand1 = rand(3,9)
						xtrarand2 = rand(3,9)
					src << "<b><font color = blue>Your defense went up [xtrarand1] because you are in the Pelset Clan!"
					sleep(3)
					src << "<b><font color = blue>Your agility went up [xtrarand2] because you are in the Pelset Clan!"
					src.defense += xtrarand1
					src.agility += xtrarand2
				if(src.clan == "Hyolth")
					var
						xtrarand1 = rand(3,9)
						xtrarand2 = rand(3,9)
					src << "<b><font color = blue>Your attack went up [xtrarand1] because you are in the Hyolth Clan!"
					sleep(3)
					src << "<b><font color = blue>Your agility went up [xtrarand2] because you are in the Hyolth Clan!"
					src.attack += xtrarand1
					src.agility += xtrarand2
			if(src.color == "Yellow")
				var
					hprand = rand (50,150)
					mprand = rand (50,150)
					atkrand = rand (8,24)
					defrand = rand (8,24)
					intrand = rand (8,24)
					aglrand = rand (8,24)
				if(src.job == "Assassin")
					hprand = rand(30,90)
					defrand = rand (5,15)
					aglrand = rand (13,39)
				if(src.job == "Mage")
					hprand = rand(30,90)
					mprand = rand (80,240)
					intrand = rand (13,39)
				if(src.job == "Warrior")
					mprand = rand(15,45)
					hprand = rand (80,240)
					atkrand = rand (13,39)
					defrand = rand (13,39)
				src << "<font color = blue><b>You have gained a level!"
				src << 'levelup.wav'
				src << "<font color = blue><b>You are now level [src.level + 1]!"
				sleep(3)
				src << "<b><font color = blue>Your Max HP went up [hprand] points!"
				sleep(3)
				src.maxhp += hprand
				src << "<b><font color = blue>Your Max MP went up [mprand] points!"
				sleep(3)
				src.maxmp += mprand
				src << "<b><font color = blue>Your Attack went up [atkrand] points!"
				sleep(3)
				src.attack += atkrand
				src << "<b><font color = blue>Your Defense went up [defrand] points!"
				sleep(3)
				src.defense += defrand
				src << "<b><font color = blue>Your Intelligence went up [intrand] points!"
				sleep(3)
				src.intelligence += intrand
				src << "<b><font color = blue>Your Agility went up [aglrand] points!"
				sleep(3)
				src.agility += aglrand
				src.level += 1
				if(src.clan == "Getral")
					var
						xtrarand1 = rand(4,12)
						xtrarand2 = rand(4,12)
					src << "<b><font color = blue>Your attack went up [xtrarand1] because you are in the Getral Clan!"
					sleep(3)
					src << "<b><font color = blue>Your defense went up [xtrarand2] because you are in the Getral Clan!"
					src.attack += xtrarand1
					src.defense += xtrarand2
				if(src.clan == "Lorth")
					var
						xtrarand1 = rand(10,30)
						xtrarand2 = rand(4,12)
					src << "<b><font color = blue>Your MP went up [xtrarand1] because you are in the Lorth Clan!"
					sleep(3)
					src << "<b><font color = blue>Your intelligence went up [xtrarand2] because you are in the Lorth Clan!"
					src.maxmp += xtrarand1
					src.intelligence += xtrarand2
				if(src.clan == "Mektory")
					var
						xtrarand1 = rand(10,30)
						xtrarand2 = rand(10,30)
					src << "<b><font color = blue>Your HP went up [xtrarand1] because you are in the Mektory Clan!"
					sleep(3)
					src << "<b><font color = blue>Your MP went up [xtrarand2] because you are in the Mektory Clan!"
					src.maxhp += xtrarand1
					src.maxmp += xtrarand2
				if(src.clan == "Pelset")
					var
						xtrarand1 = rand(4,12)
						xtrarand2 = rand(4,12)
					src << "<b><font color = blue>Your defense went up [xtrarand1] because you are in the Pelset Clan!"
					sleep(3)
					src << "<b><font color = blue>Your agility went up [xtrarand2] because you are in the Pelset Clan!"
					src.defense += xtrarand1
					src.agility += xtrarand2
				if(src.clan == "Hyolth")
					var
						xtrarand1 = rand(4,12)
						xtrarand2 = rand(4,12)
					src << "<b><font color = blue>Your attack went up [xtrarand1] because you are in the Hyolth Clan!"
					sleep(3)
					src << "<b><font color = blue>Your agility went up [xtrarand2] because you are in the Hyolth Clan!"
					src.attack += xtrarand1
					src.agility += xtrarand2
			if(src.color == "Pink")
				var
					hprand = rand (80,240)
					mprand = rand (80,240)
					atkrand = rand (13,39)
					defrand = rand (13,39)
					intrand = rand (13,39)
					aglrand = rand (13,39)
				if(src.job == "Assassin")
					hprand = rand(50,150)
					defrand = rand (8,24)
					aglrand = rand (20,60)
				if(src.job == "Mage")
					hprand = rand(50,150)
					mprand = rand (120,360)
					intrand = rand (20,60)
				if(src.job == "Warrior")
					mprand = rand(25,75)
					hprand = rand (120,360)
					atkrand = rand (20,60)
					defrand = rand (20,60)
				src << "<font color = blue><b>You have gained a level!"
				src << 'levelup.wav'
				src << "<font color = blue><b>You are now level [src.level + 1]!"
				sleep(3)
				src << "<b><font color = blue>Your Max HP went up [hprand] points!"
				sleep(3)
				src.maxhp += hprand
				src << "<b><font color = blue>Your Max MP went up [mprand] points!"
				sleep(3)
				src.maxmp += mprand
				src << "<b><font color = blue>Your Attack went up [atkrand] points!"
				sleep(3)
				src.attack += atkrand
				src << "<b><font color = blue>Your Defense went up [defrand] points!"
				sleep(3)
				src.defense += defrand
				src << "<b><font color = blue>Your Intelligence went up [intrand] points!"
				sleep(3)
				src.intelligence += intrand
				src << "<b><font color = blue>Your Agility went up [aglrand] points!"
				sleep(3)
				src.agility += aglrand
				src.level += 1
				if(src.clan == "Getral")
					var
						xtrarand1 = rand(6,18)
						xtrarand2 = rand(6,18)
					src << "<b><font color = blue>Your attack went up [xtrarand1] because you are in the Getral Clan!"
					sleep(3)
					src << "<b><font color = blue>Your defense went up [xtrarand2] because you are in the Getral Clan!"
					src.attack += xtrarand1
					src.defense += xtrarand2
				if(src.clan == "Lorth")
					var
						xtrarand1 = rand(15,45)
						xtrarand2 = rand(6,18)
					src << "<b><font color = blue>Your MP went up [xtrarand1] because you are in the Lorth Clan!"
					sleep(3)
					src << "<b><font color = blue>Your intelligence went up [xtrarand2] because you are in the Lorth Clan!"
					src.maxmp += xtrarand1
					src.intelligence += xtrarand2
				if(src.clan == "Mektory")
					var
						xtrarand1 = rand(15,45)
						xtrarand2 = rand(15,45)
					src << "<b><font color = blue>Your HP went up [xtrarand1] because you are in the Mektory Clan!"
					sleep(3)
					src << "<b><font color = blue>Your MP went up [xtrarand2] because you are in the Mektory Clan!"
					src.maxhp += xtrarand1
					src.maxmp += xtrarand2
				if(src.clan == "Pelset")
					var
						xtrarand1 = rand(6,18)
						xtrarand2 = rand(6,18)
					src << "<b><font color = blue>Your defense went up [xtrarand1] because you are in the Pelset Clan!"
					sleep(3)
					src << "<b><font color = blue>Your agility went up [xtrarand2] because you are in the Pelset Clan!"
					src.defense += xtrarand1
					src.agility += xtrarand2
				if(src.clan == "Hyolth")
					var
						xtrarand1 = rand(6,18)
						xtrarand2 = rand(6,18)
					src << "<b><font color = blue>Your attack went up [xtrarand1] because you are in the Hyolth Clan!"
					sleep(3)
					src << "<b><font color = blue>Your agility went up [xtrarand2] because you are in the Hyolth Clan!"
					src.attack += xtrarand1
					src.agility += xtrarand2
			if(src.color == "Purple")
				var
					hprand = rand (120,360)
					mprand = rand (120,360)
					atkrand = rand (20,60)
					defrand = rand (20,60)
					intrand = rand (20,60)
					aglrand = rand (20,60)
				if(src.job == "Assassin")
					hprand = rand(80,240)
					defrand = rand (13,39)
					aglrand = rand (32,96)
				if(src.job == "Mage")
					hprand = rand(80,240)
					mprand = rand (180,540)
					intrand = rand (32,96)
				if(src.job == "Warrior")
					mprand = rand(40,120)
					hprand = rand (180,540)
					atkrand = rand (32,96)
					defrand = rand (32,96)
				src << "<font color = blue><b>You have gained a level!"
				src << 'levelup.wav'
				src << "<font color = blue><b>You are now level [src.level + 1]!"
				sleep(3)
				src << "<b><font color = blue>Your Max HP went up [hprand] points!"
				sleep(3)
				src.maxhp += hprand
				src << "<b><font color = blue>Your Max MP went up [mprand] points!"
				sleep(3)
				src.maxmp += mprand
				src << "<b><font color = blue>Your Attack went up [atkrand] points!"
				sleep(3)
				src.attack += atkrand
				src << "<b><font color = blue>Your Defense went up [defrand] points!"
				sleep(3)
				src.defense += defrand
				src << "<b><font color = blue>Your Intelligence went up [intrand] points!"
				sleep(3)
				src.intelligence += intrand
				src << "<b><font color = blue>Your Agility went up [aglrand] points!"
				sleep(3)
				src.agility += aglrand
				src.level += 1
				if(src.clan == "Getral")
					var
						xtrarand1 = rand(10,30)
						xtrarand2 = rand(10,30)
					src << "<b><font color = blue>Your attack went up [xtrarand1] because you are in the Getral Clan!"
					sleep(3)
					src << "<b><font color = blue>Your defense went up [xtrarand2] because you are in the Getral Clan!"
					src.attack += xtrarand1
					src.defense += xtrarand2
				if(src.clan == "Lorth")
					var
						xtrarand1 = rand(25,75)
						xtrarand2 = rand(10,30)
					src << "<b><font color = blue>Your MP went up [xtrarand1] because you are in the Lorth Clan!"
					sleep(3)
					src << "<b><font color = blue>Your intelligence went up [xtrarand2] because you are in the Lorth Clan!"
					src.maxmp += xtrarand1
					src.intelligence += xtrarand2
				if(src.clan == "Mektory")
					var
						xtrarand1 = rand(25,75)
						xtrarand2 = rand(25,75)
					src << "<b><font color = blue>Your HP went up [xtrarand1] because you are in the Mektory Clan!"
					sleep(3)
					src << "<b><font color = blue>Your MP went up [xtrarand2] because you are in the Mektory Clan!"
					src.maxhp += xtrarand1
					src.maxmp += xtrarand2
				if(src.clan == "Pelset")
					var
						xtrarand1 = rand(10,30)
						xtrarand2 = rand(10,30)
					src << "<b><font color = blue>Your defense went up [xtrarand1] because you are in the Pelset Clan!"
					sleep(3)
					src << "<b><font color = blue>Your agility went up [xtrarand2] because you are in the Pelset Clan!"
					src.defense += xtrarand1
					src.agility += xtrarand2
				if(src.clan == "Hyolth")
					var
						xtrarand1 = rand(10,30)
						xtrarand2 = rand(10,30)
					src << "<b><font color = blue>Your attack went up [xtrarand1] because you are in the Hyolth Clan!"
					sleep(3)
					src << "<b><font color = blue>Your agility went up [xtrarand2] because you are in the Hyolth Clan!"
					src.attack += xtrarand1
					src.agility += xtrarand2
			if(src.color == "Brown")
				var
					hprand = rand (180,540)
					mprand = rand (180,540)
					atkrand = rand (32,96)
					defrand = rand (32,96)
					intrand = rand (32,96)
					aglrand = rand (32,96)
				if(src.job == "Assassin")
					hprand = rand(120,360)
					defrand = rand (20,60)
					aglrand = rand (50,150)
				if(src.job == "Mage")
					hprand = rand(120,360)
					mprand = rand (310,930)
					intrand = rand (50,150)
				if(src.job == "Warrior")
					mprand = rand(60,180)
					hprand = rand (310,930)
					atkrand = rand (50,150)
					defrand = rand (50,150)
				src << "<font color = blue><b>You have gained a level!"
				src << 'levelup.wav'
				src << "<font color = blue><b>You are now level [src.level + 1]!"
				sleep(3)
				src << "<b><font color = blue>Your Max HP went up [hprand] points!"
				sleep(3)
				src.maxhp += hprand
				src << "<b><font color = blue>Your Max MP went up [mprand] points!"
				sleep(3)
				src.maxmp += mprand
				src << "<b><font color = blue>Your Attack went up [atkrand] points!"
				sleep(3)
				src.attack += atkrand
				src << "<b><font color = blue>Your Defense went up [defrand] points!"
				sleep(3)
				src.defense += defrand
				src << "<b><font color = blue>Your Intelligence went up [intrand] points!"
				sleep(3)
				src.intelligence += intrand
				src << "<b><font color = blue>Your Agility went up [aglrand] points!"
				sleep(3)
				src.agility += aglrand
				src.level += 1
				if(src.clan == "Getral")
					var
						xtrarand1 = rand(12,36)
						xtrarand2 = rand(12,36)
					src << "<b><font color = blue>Your attack went up [xtrarand1] because you are in the Getral Clan!"
					sleep(3)
					src << "<b><font color = blue>Your defense went up [xtrarand2] because you are in the Getral Clan!"
					src.attack += xtrarand1
					src.defense += xtrarand2
				if(src.clan == "Lorth")
					var
						xtrarand1 = rand(30,75)
						xtrarand2 = rand(12,36)
					src << "<b><font color = blue>Your MP went up [xtrarand1] because you are in the Lorth Clan!"
					sleep(3)
					src << "<b><font color = blue>Your intelligence went up [xtrarand2] because you are in the Lorth Clan!"
					src.maxmp += xtrarand1
					src.intelligence += xtrarand2
				if(src.clan == "Mektory")
					var
						xtrarand1 = rand(30,75)
						xtrarand2 = rand(30,75)
					src << "<b><font color = blue>Your HP went up [xtrarand1] because you are in the Mektory Clan!"
					sleep(3)
					src << "<b><font color = blue>Your MP went up [xtrarand2] because you are in the Mektory Clan!"
					src.maxhp += xtrarand1
					src.maxmp += xtrarand2
				if(src.clan == "Pelset")
					var
						xtrarand1 = rand(12,36)
						xtrarand2 = rand(12,36)
					src << "<b><font color = blue>Your defense went up [xtrarand1] because you are in the Pelset Clan!"
					sleep(3)
					src << "<b><font color = blue>Your agility went up [xtrarand2] because you are in the Pelset Clan!"
					src.defense += xtrarand1
					src.agility += xtrarand2
				if(src.clan == "Hyolth")
					var
						xtrarand1 = rand(12,36)
						xtrarand2 = rand(12,36)
					src << "<b><font color = blue>Your attack went up [xtrarand1] because you are in the Hyolth Clan!"
					sleep(3)
					src << "<b><font color = blue>Your agility went up [xtrarand2] because you are in the Hyolth Clan!"
					src.attack += xtrarand1
					src.agility += xtrarand2
			if(src.color == "Green")
				var
					hprand = rand (310,930)
					mprand = rand (310,930)
					atkrand = rand (50,150)
					defrand = rand (50,150)
					intrand = rand (50,150)
					aglrand = rand (50,150)
				if(src.job == "Assassin")
					hprand = rand(180,540)
					defrand = rand (32,96)
					aglrand = rand (85,255)
				if(src.job == "Mage")
					hprand = rand(180,540)
					mprand = rand (510,1530)
					intrand = rand (85,255)
				if(src.job == "Warrior")
					mprand = rand(90,270)
					hprand = rand (510,1530)
					atkrand = rand (85,255)
					defrand = rand (85,255)
				src << "<font color = blue><b>You have gained a level!"
				src << 'levelup.wav'
				src << "<font color = blue><b>You are now level [src.level + 1]!"
				sleep(3)
				src << "<b><font color = blue>Your Max HP went up [hprand] points!"
				sleep(3)
				src.maxhp += hprand
				src << "<b><font color = blue>Your Max MP went up [mprand] points!"
				sleep(3)
				src.maxmp += mprand
				src << "<b><font color = blue>Your Attack went up [atkrand] points!"
				sleep(3)
				src.attack += atkrand
				src << "<b><font color = blue>Your Defense went up [defrand] points!"
				sleep(3)
				src.defense += defrand
				src << "<b><font color = blue>Your Intelligence went up [intrand] points!"
				sleep(3)
				src.intelligence += intrand
				src << "<b><font color = blue>Your Agility went up [aglrand] points!"
				sleep(3)
				src.agility += aglrand
				src.level += 1
				if(src.clan == "Getral")
					var
						xtrarand1 = rand(15,45)
						xtrarand2 = rand(15,45)
					src << "<b><font color = blue>Your attack went up [xtrarand1] because you are in the Getral Clan!"
					sleep(3)
					src << "<b><font color = blue>Your defense went up [xtrarand2] because you are in the Getral Clan!"
					src.attack += xtrarand1
					src.defense += xtrarand2
				if(src.clan == "Lorth")
					var
						xtrarand1 = rand(40,100)
						xtrarand2 = rand(15,45)
					src << "<b><font color = blue>Your MP went up [xtrarand1] because you are in the Lorth Clan!"
					sleep(3)
					src << "<b><font color = blue>Your intelligence went up [xtrarand2] because you are in the Lorth Clan!"
					src.maxmp += xtrarand1
					src.intelligence += xtrarand2
				if(src.clan == "Mektory")
					var
						xtrarand1 = rand(40,100)
						xtrarand2 = rand(40,100)
					src << "<b><font color = blue>Your HP went up [xtrarand1] because you are in the Mektory Clan!"
					sleep(3)
					src << "<b><font color = blue>Your MP went up [xtrarand2] because you are in the Mektory Clan!"
					src.maxhp += xtrarand1
					src.maxmp += xtrarand2
				if(src.clan == "Pelset")
					var
						xtrarand1 = rand(15,45)
						xtrarand2 = rand(15,45)
					src << "<b><font color = blue>Your defense went up [xtrarand1] because you are in the Pelset Clan!"
					sleep(3)
					src << "<b><font color = blue>Your agility went up [xtrarand2] because you are in the Pelset Clan!"
					src.defense += xtrarand1
					src.agility += xtrarand2
				if(src.clan == "Hyolth")
					var
						xtrarand1 = rand(15,45)
						xtrarand2 = rand(15,45)
					src << "<b><font color = blue>Your attack went up [xtrarand1] because you are in the Hyolth Clan!"
					sleep(3)
					src << "<b><font color = blue>Your agility went up [xtrarand2] because you are in the Hyolth Clan!"
					src.attack += xtrarand1
					src.agility += xtrarand2
			if(src.color == "Teal")
				var
					hprand = rand (510,1530)
					mprand = rand (510,1530)
					atkrand = rand (85,255)
					defrand = rand (85,255)
					intrand = rand (85,255)
					aglrand = rand (85,255)
				if(src.job == "Assassin")
					hprand = rand(310,930)
					defrand = rand (50,150)
					aglrand = rand (125,375)
				if(src.job == "Mage")
					hprand = rand(310,930)
					mprand = rand (600,1800)
					intrand = rand (125,375)
				if(src.job == "Warrior")
					mprand = rand(155,465)
					hprand = rand (600,1800)
					atkrand = rand (125,375)
					defrand = rand (125,375)
				src << "<font color = blue><b>You have gained a level!"
				src << 'levelup.wav'
				src << "<font color = blue><b>You are now level [src.level + 1]!"
				sleep(3)
				src << "<b><font color = blue>Your Max HP went up [hprand] points!"
				sleep(3)
				src.maxhp += hprand
				src << "<b><font color = blue>Your Max MP went up [mprand] points!"
				sleep(3)
				src.maxmp += mprand
				src << "<b><font color = blue>Your Attack went up [atkrand] points!"
				sleep(3)
				src.attack += atkrand
				src << "<b><font color = blue>Your Defense went up [defrand] points!"
				sleep(3)
				src.defense += defrand
				src << "<b><font color = blue>Your Intelligence went up [intrand] points!"
				sleep(3)
				src.intelligence += intrand
				src << "<b><font color = blue>Your Agility went up [aglrand] points!"
				sleep(3)
				src.agility += aglrand
				src.level += 1
				if(src.clan == "Getral")
					var
						xtrarand1 = rand(20,60)
						xtrarand2 = rand(20,60)
					src << "<b><font color = blue>Your attack went up [xtrarand1] because you are in the Getral Clan!"
					sleep(3)
					src << "<b><font color = blue>Your defense went up [xtrarand2] because you are in the Getral Clan!"
					src.attack += xtrarand1
					src.defense += xtrarand2
				if(src.clan == "Lorth")
					var
						xtrarand1 = rand(55,165)
						xtrarand2 = rand(20,60)
					src << "<b><font color = blue>Your MP went up [xtrarand1] because you are in the Lorth Clan!"
					sleep(3)
					src << "<b><font color = blue>Your intelligence went up [xtrarand2] because you are in the Lorth Clan!"
					src.maxmp += xtrarand1
					src.intelligence += xtrarand2
				if(src.clan == "Mektory")
					var
						xtrarand1 = rand(55,165)
						xtrarand2 = rand(55,165)
					src << "<b><font color = blue>Your HP went up [xtrarand1] because you are in the Mektory Clan!"
					sleep(3)
					src << "<b><font color = blue>Your MP went up [xtrarand2] because you are in the Mektory Clan!"
					src.maxhp += xtrarand1
					src.maxmp += xtrarand2
				if(src.clan == "Pelset")
					var
						xtrarand1 = rand(20,60)
						xtrarand2 = rand(20,60)
					src << "<b><font color = blue>Your defense went up [xtrarand1] because you are in the Pelset Clan!"
					sleep(3)
					src << "<b><font color = blue>Your agility went up [xtrarand2] because you are in the Pelset Clan!"
					src.defense += xtrarand1
					src.agility += xtrarand2
				if(src.clan == "Hyolth")
					var
						xtrarand1 = rand(20,60)
						xtrarand2 = rand(20,60)
					src << "<b><font color = blue>Your attack went up [xtrarand1] because you are in the Hyolth Clan!"
					sleep(3)
					src << "<b><font color = blue>Your agility went up [xtrarand2] because you are in the Hyolth Clan!"
					src.attack += xtrarand1
					src.agility += xtrarand2
			if(src.color == "Black")
				var
					hprand = rand (700,2100)
					mprand = rand (700,2100)
					atkrand = rand (150,450)
					defrand = rand (150,450)
					intrand = rand (150,450)
					aglrand = rand (150,450)
				if(src.job == "Assassin")
					hprand = rand(440,1320)
					defrand = rand (125,375)
					aglrand = rand (220,660)
				if(src.job == "Mage")
					hprand = rand(440,1320)
					mprand = rand (1100,3300)
					intrand = rand (220,660)
				if(src.job == "Warrior")
					mprand = rand(220,660)
					hprand = rand (1100,3300)
					atkrand = rand (220,660)
					defrand = rand (220,660)
				src << "<font color = blue><b>You have gained a level!"
				src << 'levelup.wav'
				src << "<font color = blue><b>You are now level [src.level + 1]!"
				sleep(3)
				src << "<b><font color = blue>Your Max HP went up [hprand] points!"
				sleep(3)
				src.maxhp += hprand
				src << "<b><font color = blue>Your Max MP went up [mprand] points!"
				sleep(3)
				src.maxmp += mprand
				src << "<b><font color = blue>Your Attack went up [atkrand] points!"
				sleep(3)
				src.attack += atkrand
				src << "<b><font color = blue>Your Defense went up [defrand] points!"
				sleep(3)
				src.defense += defrand
				src << "<b><font color = blue>Your Intelligence went up [intrand] points!"
				sleep(3)
				src.intelligence += intrand
				src << "<b><font color = blue>Your Agility went up [aglrand] points!"
				sleep(3)
				src.agility += aglrand
				src.level += 1
				if(src.clan == "Getral")
					var
						xtrarand1 = rand(30,90)
						xtrarand2 = rand(30,90)
					src << "<b><font color = blue>Your attack went up [xtrarand1] because you are in the Getral Clan!"
					sleep(3)
					src << "<b><font color = blue>Your defense went up [xtrarand2] because you are in the Getral Clan!"
					src.attack += xtrarand1
					src.defense += xtrarand2
				if(src.clan == "Lorth")
					var
						xtrarand1 = rand(80,240)
						xtrarand2 = rand(30,90)
					src << "<b><font color = blue>Your MP went up [xtrarand1] because you are in the Lorth Clan!"
					sleep(3)
					src << "<b><font color = blue>Your intelligence went up [xtrarand2] because you are in the Lorth Clan!"
					src.maxmp += xtrarand1
					src.intelligence += xtrarand2
				if(src.clan == "Mektory")
					var
						xtrarand1 = rand(80,240)
						xtrarand2 = rand(80,240)
					src << "<b><font color = blue>Your HP went up [xtrarand1] because you are in the Mektory Clan!"
					sleep(3)
					src << "<b><font color = blue>Your MP went up [xtrarand2] because you are in the Mektory Clan!"
					src.maxhp += xtrarand1
					src.maxmp += xtrarand2
				if(src.clan == "Pelset")
					var
						xtrarand1 = rand(30,90)
						xtrarand2 = rand(30,90)
					src << "<b><font color = blue>Your defense went up [xtrarand1] because you are in the Pelset Clan!"
					sleep(3)
					src << "<b><font color = blue>Your agility went up [xtrarand2] because you are in the Pelset Clan!"
					src.defense += xtrarand1
					src.agility += xtrarand2
				if(src.clan == "Hyolth")
					var
						xtrarand1 = rand(30,90)
						xtrarand2 = rand(30,90)
					src << "<b><font color = blue>Your attack went up [xtrarand1] because you are in the Hyolth Clan!"
					sleep(3)
					src << "<b><font color = blue>Your agility went up [xtrarand2] because you are in the Hyolth Clan!"
					src.attack += xtrarand1
					src.agility += xtrarand2
			if(src.color == "White")
				var
					hprand = rand (1260,3780)
					mprand = rand (1260,3780)
					atkrand = rand (320,960)
					defrand = rand (320,960)
					intrand = rand (320,960)
					aglrand = rand (320,960)
				if(src.job == "Assassin")
					hprand = rand(700,2100)
					defrand = rand (225,675)
					aglrand = rand (550,660)
				if(src.job == "Mage")
					hprand = rand(700,2100)
					mprand = rand (1600,4800)
					intrand = rand (550,1650)
				if(src.job == "Warrior")
					mprand = rand(350,1050)
					hprand = rand (1600,4800)
					atkrand = rand (550,1650)
					defrand = rand (550,1650)
				src << "<font color = blue><b>You have gained a level!"
				src << 'levelup.wav'
				src << "<font color = blue><b>You are now level [src.level + 1]!"
				sleep(3)
				src << "<b><font color = blue>Your Max HP went up [hprand] points!"
				sleep(3)
				src.maxhp += hprand
				src << "<b><font color = blue>Your Max MP went up [mprand] points!"
				sleep(3)
				src.maxmp += mprand
				src << "<b><font color = blue>Your Attack went up [atkrand] points!"
				sleep(3)
				src.attack += atkrand
				src << "<b><font color = blue>Your Defense went up [defrand] points!"
				sleep(3)
				src.defense += defrand
				src << "<b><font color = blue>Your Intelligence went up [intrand] points!"
				sleep(3)
				src.intelligence += intrand
				src << "<b><font color = blue>Your Agility went up [aglrand] points!"
				sleep(3)
				src.agility += aglrand
				src.level += 1
				if(src.clan == "Getral")
					var
						xtrarand1 = rand(40,120)
						xtrarand2 = rand(40,120)
					src << "<b><font color = blue>Your attack went up [xtrarand1] because you are in the Getral Clan!"
					sleep(3)
					src << "<b><font color = blue>Your defense went up [xtrarand2] because you are in the Getral Clan!"
					src.attack += xtrarand1
					src.defense += xtrarand2
				if(src.clan == "Lorth")
					var
						xtrarand1 = rand(100,300)
						xtrarand2 = rand(40,120)
					src << "<b><font color = blue>Your MP went up [xtrarand1] because you are in the Lorth Clan!"
					sleep(3)
					src << "<b><font color = blue>Your intelligence went up [xtrarand2] because you are in the Lorth Clan!"
					src.maxmp += xtrarand1
					src.intelligence += xtrarand2
				if(src.clan == "Mektory")
					var
						xtrarand1 = rand(100,300)
						xtrarand2 = rand(100,300)
					src << "<b><font color = blue>Your HP went up [xtrarand1] because you are in the Mektory Clan!"
					sleep(3)
					src << "<b><font color = blue>Your MP went up [xtrarand2] because you are in the Mektory Clan!"
					src.maxhp += xtrarand1
					src.maxmp += xtrarand2
				if(src.clan == "Pelset")
					var
						xtrarand1 = rand(40,120)
						xtrarand2 = rand(40,120)
					src << "<b><font color = blue>Your defense went up [xtrarand1] because you are in the Pelset Clan!"
					sleep(3)
					src << "<b><font color = blue>Your agility went up [xtrarand2] because you are in the Pelset Clan!"
					src.defense += xtrarand1
					src.agility += xtrarand2
				if(src.clan == "Hyolth")
					var
						xtrarand1 = rand(40,120)
						xtrarand2 = rand(40,120)
					src << "<b><font color = blue>Your attack went up [xtrarand1] because you are in the Hyolth Clan!"
					sleep(3)
					src << "<b><font color = blue>Your agility went up [xtrarand2] because you are in the Hyolth Clan!"
					src.attack += xtrarand1
					src.agility += xtrarand2
			if(src.color == "Flame")
				var
					hprand = rand (3000,12000)
					mprand = rand (3000,12000)
					atkrand = rand (500,1500)
					defrand = rand (500,1500)
					intrand = rand (500,1500)
					aglrand = rand (500,1500)
				if(src.job == "Assassin")
					hprand = rand(1000,3000)
					defrand = rand (500,1500)
					aglrand = rand (800,2400)
				if(src.job == "Mage")
					hprand = rand(1000,3000)
					mprand = rand (5000,20000)
					intrand = rand (800,2400)
				if(src.job == "Warrior")
					mprand = rand(500,1500)
					hprand = rand (5000,20000)
					atkrand = rand (800,2400)
					defrand = rand (800,2400)
				src << "<font color = blue><b>You have gained a level!"
				src << 'levelup.wav'
				src << "<font color = blue><b>You are now level [src.level + 1]!"
				sleep(3)
				src << "<b><font color = blue>Your Max HP went up [hprand] points!"
				sleep(3)
				src.maxhp += hprand
				src << "<b><font color = blue>Your Max MP went up [mprand] points!"
				sleep(3)
				src.maxmp += mprand
				src << "<b><font color = blue>Your Attack went up [atkrand] points!"
				sleep(3)
				src.attack += atkrand
				src << "<b><font color = blue>Your Defense went up [defrand] points!"
				sleep(3)
				src.defense += defrand
				src << "<b><font color = blue>Your Intelligence went up [intrand] points!"
				sleep(3)
				src.intelligence += intrand
				src << "<b><font color = blue>Your Agility went up [aglrand] points!"
				sleep(3)
				src.agility += aglrand
				src.level += 1
				if(src.clan == "Getral")
					var
						xtrarand1 = rand(70,210)
						xtrarand2 = rand(70,210)
					src << "<b><font color = blue>Your attack went up [xtrarand1] because you are in the Getral Clan!"
					sleep(3)
					src << "<b><font color = blue>Your defense went up [xtrarand2] because you are in the Getral Clan!"
					src.attack += xtrarand1
					src.defense += xtrarand2
				if(src.clan == "Lorth")
					var
						xtrarand1 = rand(150,450)
						xtrarand2 = rand(70,210)
					src << "<b><font color = blue>Your MP went up [xtrarand1] because you are in the Lorth Clan!"
					sleep(3)
					src << "<b><font color = blue>Your intelligence went up [xtrarand2] because you are in the Lorth Clan!"
					src.maxmp += xtrarand1
					src.intelligence += xtrarand2
				if(src.clan == "Mektory")
					var
						xtrarand1 = rand(150,450)
						xtrarand2 = rand(150,450)
					src << "<b><font color = blue>Your HP went up [xtrarand1] because you are in the Mektory Clan!"
					sleep(3)
					src << "<b><font color = blue>Your MP went up [xtrarand2] because you are in the Mektory Clan!"
					src.maxhp += xtrarand1
					src.maxmp += xtrarand2
				if(src.clan == "Pelset")
					var
						xtrarand1 = rand(70,210)
						xtrarand2 = rand(70,210)
					src << "<b><font color = blue>Your defense went up [xtrarand1] because you are in the Pelset Clan!"
					sleep(3)
					src << "<b><font color = blue>Your agility went up [xtrarand2] because you are in the Pelset Clan!"
					src.defense += xtrarand1
					src.agility += xtrarand2
				if(src.clan == "Hyolth")
					var
						xtrarand1 = rand(70,210)
						xtrarand2 = rand(70,210)
					src << "<b><font color = blue>Your attack went up [xtrarand1] because you are in the Hyolth Clan!"
					sleep(3)
					src << "<b><font color = blue>Your agility went up [xtrarand2] because you are in the Hyolth Clan!"
					src.attack += xtrarand1
					src.agility += xtrarand2
			if(src.color == "Metal")
				var
					hprand = rand (5000,20000)
					mprand = rand (5000,20000)
					atkrand = rand (800,2400)
					defrand = rand (800,2400)
					intrand = rand (800,2400)
					aglrand = rand (800,2400)
				if(src.job == "Assassin")
					hprand = rand(3000,12000)
					defrand = rand (800,2400)
					aglrand = rand (1250,4500)
				if(src.job == "Mage")
					hprand = rand(3000,12000)
					mprand = rand (5000,20000)
					intrand = rand (1250,4500)
				if(src.job == "Warrior")
					mprand = rand(2000,8000)
					hprand = rand (5000,20000)
					atkrand = rand (1250,4500)
					defrand = rand (1250,4500)
				src << "<font color = blue><b>You have gained a level!"
				src << 'levelup.wav'
				src << "<font color = blue><b>You are now level [src.level + 1]!"
				sleep(3)
				src << "<b><font color = blue>Your Max HP went up [hprand] points!"
				sleep(3)
				src.maxhp += hprand
				src << "<b><font color = blue>Your Max MP went up [mprand] points!"
				sleep(3)
				src.maxmp += mprand
				src << "<b><font color = blue>Your Attack went up [atkrand] points!"
				sleep(3)
				src.attack += atkrand
				src << "<b><font color = blue>Your Defense went up [defrand] points!"
				sleep(3)
				src.defense += defrand
				src << "<b><font color = blue>Your Intelligence went up [intrand] points!"
				sleep(3)
				src.intelligence += intrand
				src << "<b><font color = blue>Your Agility went up [aglrand] points!"
				sleep(3)
				src.agility += aglrand
				src.level += 1
				if(src.clan == "Getral")
					var
						xtrarand1 = rand(120,360)
						xtrarand2 = rand(120,360)
					src << "<b><font color = blue>Your attack went up [xtrarand1] because you are in the Getral Clan!"
					sleep(3)
					src << "<b><font color = blue>Your defense went up [xtrarand2] because you are in the Getral Clan!"
					src.attack += xtrarand1
					src.defense += xtrarand2
				if(src.clan == "Lorth")
					var
						xtrarand1 = rand(350,1150)
						xtrarand2 = rand(120,360)
					src << "<b><font color = blue>Your MP went up [xtrarand1] because you are in the Lorth Clan!"
					sleep(3)
					src << "<b><font color = blue>Your intelligence went up [xtrarand2] because you are in the Lorth Clan!"
					src.maxmp += xtrarand1
					src.intelligence += xtrarand2
				if(src.clan == "Mektory")
					var
						xtrarand1 = rand(350,1150)
						xtrarand2 = rand(350,1150)
					src << "<b><font color = blue>Your HP went up [xtrarand1] because you are in the Mektory Clan!"
					sleep(3)
					src << "<b><font color = blue>Your MP went up [xtrarand2] because you are in the Mektory Clan!"
					src.maxhp += xtrarand1
					src.maxmp += xtrarand2
				if(src.clan == "Pelset")
					var
						xtrarand1 = rand(120,360)
						xtrarand2 = rand(120,360)
					src << "<b><font color = blue>Your defense went up [xtrarand1] because you are in the Pelset Clan!"
					sleep(3)
					src << "<b><font color = blue>Your agility went up [xtrarand2] because you are in the Pelset Clan!"
					src.defense += xtrarand1
					src.agility += xtrarand2
				if(src.clan == "Hyolth")
					var
						xtrarand1 = rand(120,360)
						xtrarand2 = rand(120,360)
					src << "<b><font color = blue>Your attack went up [xtrarand1] because you are in the Hyolth Clan!"
					sleep(3)
					src << "<b><font color = blue>Your agility went up [xtrarand2] because you are in the Hyolth Clan!"
					src.attack += xtrarand1
					src.agility += xtrarand2
			expreqfind()

		expreqfind()
			if(src.level == 2)
				src.expreq = 20
			if(src.level == 3)
				src.expreq = 30
			if(src.level == 4)
				src.expreq = 50
			if(src.level == 5)
				src.expreq = 70
			if(src.level == 6)
				src.expreq = 100
			if(src.level == 7)
				src.expreq = 130
			if(src.level == 8)
				src.expreq = 170
			if(src.level == 9)
				src.expreq = 210
			if(src.level == 10)
				src.expreq = 260
			if(src.level == 11)
				src.expreq = 320
			if(src.level == 12)
				src.expreq = 390
			if(src.level == 13)
				src.expreq = 470
			if(src.level == 14)
				src.expreq = 560
			if(src.level == 15)
				src.expreq = 660
				src << "<i>Your body starts shaking!</i>"
				sleep(10)
				src << "<i>You have become a Red Slime!</i>"
				src.color = "Red"
				src.icon_state = "red"
			if(src.level == 16)
				src.expreq = 780
			if(src.level == 17)
				src.expreq = 1000
			if(src.level == 18)
				src.expreq = 1130
			if(src.level == 19)
				src.expreq = 1270
			if(src.level == 20)
				src.expreq = 1420
			if(src.level == 21)
				src.expreq = 1580
			if(src.level == 22)
				src.expreq = 1750
			if(src.level == 23)
				src.expreq = 1930
			if(src.level == 24)
				src.expreq = 2120
			if(src.level == 25)
				src.expreq = 2320
			if(src.level == 26)
				src.expreq = 2530
			if(src.level == 27)
				src.expreq = 2750
			if(src.level == 28)
				src.expreq = 2980
			if(src.level == 29)
				src.expreq = 3220
			if(src.level == 30)
				src.expreq = 3470
				src << "<i>Your body starts shaking!</i>"
				sleep(10)
				src << "<i>You have become a Yellow Slime!</i>"
				src.color = "Yellow"
				src.icon_state = "yellow"
			if(src.level == 31)
				src.expreq = 3730
			if(src.level == 32)
				src.expreq = 4000
			if(src.level == 33)
				src.expreq = 4280
			if(src.level == 34)
				src.expreq = 4570
			if(src.level == 35)
				src.expreq = 4870
			if(src.level == 36)
				src.expreq = 5180
			if(src.level == 37)
				src.expreq = 5500
			if(src.level == 38)
				src.expreq = 5830
			if(src.level == 39)
				src.expreq = 6170
			if(src.level == 40)
				src.expreq = 6520
			if(src.level == 41)
				src.expreq = 6880
			if(src.level == 42)
				src.expreq = 7250
			if(src.level == 43)
				src.expreq = 7630
			if(src.level == 44)
				src.expreq = 8020
			if(src.level == 45)
				src.expreq = 8420
				src << "<i>Your body starts shaking!</i>"
				sleep(10)
				src << "<i>You have become a Pink Slime!</i>"
				src.color = "Pink"
				src.icon_state = "pink"
			if(src.level == 46)
				src.expreq = 8830
			if(src.level == 47)
				src.expreq = 9250
			if(src.level == 48)
				src.expreq = 9680
			if(src.level == 49)
				src.expreq = 10120
			if(src.level == 50)
				src.expreq = 10570
			if(src.level == 51)
				src.expreq = 11030
			if(src.level == 52)
				src.expreq = 11200
			if(src.level == 53)
				src.expreq = 11680
			if(src.level == 54)
				src.expreq = 12170
			if(src.level == 55)
				src.expreq = 12670
			if(src.level == 56)
				src.expreq = 13180
			if(src.level == 57)
				src.expreq = 13700
			if(src.level == 58)
				src.expreq = 14230
			if(src.level == 59)
				src.expreq = 14770
			if(src.level == 60)
				src.expreq = 15320
			if(src.level == 61)
				src.expreq = 15880
			if(src.level == 62)
				src.expreq = 16350
			if(src.level == 63)
				src.expreq = 16930
			if(src.level == 64)
				src.expreq = 18020
			if(src.level == 65)
				src.expreq = 18620
			if(src.level == 66)
				src.expreq = 19230
			if(src.level == 67)
				src.expreq = 19850
			if(src.level == 68)
				src.expreq = 20480
			if(src.level == 69)
				src.expreq = 21120
			if(src.level == 70)
				src.expreq = 21770
			if(src.level == 71)
				src.expreq = 22430
			if(src.level == 72)
				src.expreq = 23100
			if(src.level == 73)
				src.expreq = 23780
			if(src.level == 74)
				src.expreq = 24470
			if(src.level == 75)
				src.expreq = 25170
				src << "<i>Your body starts shaking!</i>"
				sleep(10)
				src << "<i>You have become a Purple Slime!</i>"
				src.color = "Purple"
				src.icon_state = "purple"
			if(src.level == 76)
				src.expreq = 25880
			if(src.level == 77)
				src.expreq = 26600
			if(src.level == 78)
				src.expreq = 27330
			if(src.level == 79)
				src.expreq = 28070
			if(src.level == 80)
				src.expreq = 28820
			if(src.level == 81)
				src.expreq = 29580
			if(src.level == 82)
				src.expreq = 30350
			if(src.level == 83)
				src.expreq = 31130
			if(src.level == 84)
				src.expreq = 31920
			if(src.level == 85)
				src.expreq = 32720
			if(src.level == 86)
				src.expreq = 33530
			if(src.level == 87)
				src.expreq = 34350
			if(src.level == 88)
				src.expreq = 35180
			if(src.level == 89)
				src.expreq = 36020
			if(src.level == 90)
				src.expreq = 36870
			if(src.level == 91)
				src.expreq = 37730
			if(src.level == 92)
				src.expreq = 38600
			if(src.level == 93)
				src.expreq = 39480
			if(src.level == 94)
				src.expreq = 40370
			if(src.level == 95)
				src.expreq = 41370
			if(src.level == 96)
				src.expreq = 42470
			if(src.level == 97)
				src.expreq = 43570
			if(src.level == 98)
				src.expreq = 44670
			if(src.level == 99)
				src.expreq = 45770
			if(src.level == 100)
				src.expreq = 46870
			if(src.level == 101)
				src.expreq = 48000
			if(src.level == 102)
				src.expreq = 49000
			if(src.level == 103)
				src.expreq = 50000
			if(src.level == 104)
				src.expreq = 51000
			if(src.level == 105)
				src.expreq = 51200
				src << "<i>Your body starts shaking!</i>"
				sleep(10)
				src << "<i>You have become a Brown Slime!</i>"
				src.color = "Brown"
				src.icon_state = "brown"
			if(src.level == 106)
				src.expreq = 52400
			if(src.level == 107)
				src.expreq = 53600
			if(src.level == 108)
				src.expreq = 54800
			if(src.level == 109)
				src.expreq = 56000
			if(src.level == 110)
				src.expreq = 57500
			if(src.level == 111)
				src.expreq = 59000
			if(src.level == 112)
				src.expreq = 60500
			if(src.level == 113)
				src.expreq = 62000
			if(src.level == 114)
				src.expreq = 63100
			if(src.level == 115)
				src.expreq = 64200
			if(src.level == 116)
				src.expreq = 65300
			if(src.level == 117)
				src.expreq = 66400
			if(src.level == 118)
				src.expreq = 67500
			if(src.level == 119)
				src.expreq = 68600
			if(src.level == 120)
				src.expreq = 69700
			if(src.level == 121)
				src.expreq = 70800
			if(src.level == 122)
				src.expreq = 71900
			if(src.level == 123)
				src.expreq = 73000
			if(src.level == 124)
				src.expreq = 74100
			if(src.level == 125)
				src.expreq = 75200
			if(src.level == 126)
				src.expreq = 76300
			if(src.level == 127)
				src.expreq = 77400
			if(src.level == 128)
				src.expreq = 78500
			if(src.level == 129)
				src.expreq = 82000
			if(src.level == 130)
				src.expreq = 84000
			if(src.level == 131)
				src.expreq = 86000
			if(src.level == 132)
				src.expreq = 88000
			if(src.level == 133)
				src.expreq = 92000
			if(src.level == 134)
				src.expreq = 94000
			if(src.level == 135)
				src.expreq = 96000
				src << "<i>Your body starts shaking!</i>"
				sleep(10)
				src << "<i>You have become a Green Slime!</i>"
				src.color = "Green"
				src.icon_state = "green"
			if(src.level == 136)
				src.expreq = 98000
			if(src.level == 137)
				src.expreq = 102000
			if(src.level == 138)
				src.expreq = 104000
			if(src.level == 139)
				src.expreq = 106000
			if(src.level == 140)
				src.expreq = 108000
			if(src.level == 141)
				src.expreq = 113000
			if(src.level == 142)
				src.expreq = 116000
			if(src.level == 143)
				src.expreq = 119000
			if(src.level == 144)
				src.expreq = 122000
			if(src.level == 145)
				src.expreq = 125000
			if(src.level == 146)
				src.expreq = 128000
			if(src.level == 147)
				src.expreq = 132000
			if(src.level == 148)
				src.expreq = 135000
			if(src.level == 149)
				src.expreq = 138000
			if(src.level == 150)
				src.expreq = 141000
			if(src.level == 151)
				src.expreq = 145000
			if(src.level == 152)
				src.expreq = 149000
			if(src.level == 153)
				src.expreq = 153000
			if(src.level == 154)
				src.expreq = 157000
			if(src.level == 155)
				src.expreq = 161000
			if(src.level == 156)
				src.expreq = 165000
			if(src.level == 157)
				src.expreq = 169000
			if(src.level == 158)
				src.expreq = 173000
			if(src.level == 159)
				src.expreq = 177000
			if(src.level == 160)
				src.expreq = 186000
			if(src.level == 161)
				src.expreq = 191000
			if(src.level == 162)
				src.expreq = 196000
			if(src.level == 163)
				src.expreq = 201000
			if(src.level == 164)
				src.expreq = 206000
			if(src.level == 165)
				src.expreq = 217000
			if(src.level == 166)
				src.expreq = 223000
			if(src.level == 167)
				src.expreq = 229000
			if(src.level == 168)
				src.expreq = 235000
			if(src.level == 169)
				src.expreq = 241000
			if(src.level == 170)
				src.expreq = 247000
			if(src.level == 171)
				src.expreq = 254000
			if(src.level == 172)
				src.expreq = 261000
			if(src.level == 173)
				src.expreq = 268000
			if(src.level == 174)
				src.expreq = 275000
			if(src.level == 175)
				src.expreq = 285000
			if(src.level == 176)
				src.expreq = 295000
			if(src.level == 177)
				src.expreq = 305000
			if(src.level == 178)
				src.expreq = 315000
			if(src.level == 179)
				src.expreq = 325000
			if(src.level == 180)
				src.expreq = 335000
			if(src.level == 181)
				src.expreq = 345000
			if(src.level == 182)
				src.expreq = 355000
			if(src.level == 183)
				src.expreq = 365000
			if(src.level == 184)
				src.expreq = 375000
			if(src.level == 185)
				src.expreq = 385000
			if(src.level == 186)
				src.expreq = 395000
			if(src.level == 187)
				src.expreq = 405000
			if(src.level == 188)
				src.expreq = 415000
			if(src.level == 189)
				src.expreq = 435000
			if(src.level == 190)
				src.expreq = 455000
				src << "<i>Your body starts shaking!</i>"
				sleep(10)
				src << "<i>You have become a Teal Slime!</i>"
				src.color = "Teal"
				src.icon_state = "teal"
			if(src.level == 191)
				src.expreq = 475000
			if(src.level == 192)
				src.expreq = 495000
			if(src.level == 193)
				src.expreq = 515000
			if(src.level == 194)
				src.expreq = 535000
			if(src.level == 195)
				src.expreq = 555000
			if(src.level == 196)
				src.expreq = 575000
			if(src.level == 197)
				src.expreq = 595000
			if(src.level == 198)
				src.expreq = 615000
			if(src.level == 199)
				src.expreq = 635000
			if(src.level == 200)
				src.expreq = 655000
			if(src.level == 201)
				src.expreq = 680000
			if(src.level == 202)
				src.expreq = 700000
			if(src.level == 203)
				src.expreq = 725000
			if(src.level == 204)
				src.expreq = 750000
			if(src.level == 205)
				src.expreq = 775000
			if(src.level == 206)
				src.expreq = 800000
			if(src.level == 207)
				src.expreq = 825000
			if(src.level == 208)
				src.expreq = 850000
			if(src.level == 209)
				src.expreq = 875000
			if(src.level == 210)
				src.expreq = 900000
			if(src.level == 211)
				src.expreq = 930000
			if(src.level == 212)
				src.expreq = 960000
			if(src.level == 213)
				src.expreq = 990000
			if(src.level == 214)
				src.expreq = 1020000
			if(src.level == 215)
				src.expreq = 1050000
			if(src.level == 216)
				src.expreq = 1080000
			if(src.level == 217)
				src.expreq = 1110000
			if(src.level == 218)
				src.expreq = 1140000
			if(src.level == 219)
				src.expreq = 1170000
			if(src.level == 220)
				src.expreq = 1205000
			if(src.level == 221)
				src.expreq = 1240000
			if(src.level == 222)
				src.expreq = 1275000
			if(src.level == 223)
				src.expreq = 1310000
			if(src.level == 224)
				src.expreq = 1345000
			if(src.level == 225)
				src.expreq = 1380000
			if(src.level == 226)
				src.expreq = 1415000
			if(src.level == 227)
				src.expreq = 1450000
			if(src.level == 228)
				src.expreq = 1485000
			if(src.level == 229)
				src.expreq = 1520000
			if(src.level == 230)
				src.expreq = 1555000
			if(src.level == 231)
				src.expreq = 1595000
			if(src.level == 232)
				src.expreq = 1635000
			if(src.level == 233)
				src.expreq = 1675000
			if(src.level == 234)
				src.expreq = 1715000
			if(src.level == 235)
				src.expreq = 1755000
			if(src.level == 236)
				src.expreq = 1795000
			if(src.level == 237)
				src.expreq = 1835000
			if(src.level == 238)
				src.expreq = 1875000
			if(src.level == 239)
				src.expreq = 1915000
			if(src.level == 240)
				src.expreq = 1955000
			if(src.level == 241)
				src.expreq = 2005000
			if(src.level == 242)
				src.expreq = 2055000
			if(src.level == 243)
				src.expreq = 2105000
			if(src.level == 244)
				src.expreq = 2155000
			if(src.level == 245)
				src.expreq = 2205000
			if(src.level == 246)
				src.expreq = 2255000
			if(src.level == 247)
				src.expreq = 2305000
			if(src.level == 248)
				src.expreq = 2355000
			if(src.level == 249)
				src.expreq = 2405000
			if(src.level == 250)
				src.expreq = 2455000
			if(src.level == 251)
				src.expreq = 2515000
			if(src.level == 252)
				src.expreq = 2575000
			if(src.level == 253)
				src.expreq = 2635000
			if(src.level == 254)
				src.expreq = 2695000
			if(src.level == 255)
				src.expreq = 2755000
			if(src.level == 256)
				src.expreq = 2815000
			if(src.level == 257)
				src.expreq = 2875000
			if(src.level == 258)
				src.expreq = 2935000
			if(src.level == 259)
				src.expreq = 2995000
			if(src.level == 260)
				src.expreq = 3055000
			if(src.level == 261)
				src.expreq = 3130000
			if(src.level == 262)
				src.expreq = 3205000
			if(src.level == 263)
				src.expreq = 3280000
			if(src.level == 264)
				src.expreq = 3355000
			if(src.level == 265)
				src.expreq = 3420000
			if(src.level == 266)
				src.expreq = 3495000
			if(src.level == 267)
				src.expreq = 3570000
			if(src.level == 268)
				src.expreq = 3645000
			if(src.level == 269)
				src.expreq = 3720000
			if(src.level == 270)
				src.expreq = 3795000
			if(src.level == 271)
				src.expreq = 3885000
			if(src.level == 272)
				src.expreq = 3975000
			if(src.level == 273)
				src.expreq = 4065000
			if(src.level == 274)
				src.expreq = 4155000
			if(src.level == 275)
				src.expreq = 4245000
			if(src.level == 276)
				src.expreq = 4335000
			if(src.level == 277)
				src.expreq = 4425000
			if(src.level == 278)
				src.expreq = 4515000
			if(src.level == 279)
				src.expreq = 4605000
			if(src.level == 280)
				src.expreq = 4695000
				src << "<i>Your body starts shaking!</i>"
				sleep(10)
				src << "<i>You have become a Black Slime!</i>"
				src.color = "Black"
				src.icon_state = "black"
			if(src.level == 281)
				src.expreq = 4795000
			if(src.level == 282)
				src.expreq = 4895000
			if(src.level == 283)
				src.expreq = 4995000
			if(src.level == 284)
				src.expreq = 5095000
			if(src.level == 285)
				src.expreq = 5195000
			if(src.level == 286)
				src.expreq = 5295000
			if(src.level == 287)
				src.expreq = 5395000
			if(src.level == 288)
				src.expreq = 5495000
			if(src.level == 289)
				src.expreq = 5595000
			if(src.level == 290)
				src.expreq = 5695000
			if(src.level == 291)
				src.expreq = 5805000
			if(src.level == 292)
				src.expreq = 5915000
			if(src.level == 293)
				src.expreq = 6025000
			if(src.level == 294)
				src.expreq = 6135000
			if(src.level == 295)
				src.expreq = 6245000
			if(src.level == 296)
				src.expreq = 6355000
			if(src.level == 297)
				src.expreq = 6465000
			if(src.level == 298)
				src.expreq = 6575000
			if(src.level == 299)
				src.expreq = 6685000
			if(src.level == 300)
				src.expreq = 6795000
			if(src.level == 301)
				src.expreq = 6920000
			if(src.level == 302)
				src.expreq = 7070000
			if(src.level == 303)
				src.expreq = 7220000
			if(src.level == 304)
				src.expreq = 7370000
			if(src.level == 305)
				src.expreq = 7520000
			if(src.level == 306)
				src.expreq = 7670000
			if(src.level == 307)
				src.expreq = 7820000
			if(src.level == 308)
				src.expreq = 7970000
			if(src.level == 309)
				src.expreq = 8120000
			if(src.level == 310)
				src.expreq = 8270000
			if(src.level == 311)
				src.expreq = 8400000
			if(src.level == 312)
				src.expreq = 8600000
			if(src.level == 313)
				src.expreq = 8800000
			if(src.level == 314)
				src.expreq = 9000000
			if(src.level == 315)
				src.expreq = 9200000
			if(src.level == 316)
				src.expreq = 9400000
			if(src.level == 317)
				src.expreq = 9600000
			if(src.level == 318)
				src.expreq = 9800000
			if(src.level == 319)
				src.expreq = 10000000
			if(src.level == 320)
				src.expreq = 10200000
			if(src.level == 321)
				src.expreq = 10450000
			if(src.level == 322)
				src.expreq = 10700000
			if(src.level == 323)
				src.expreq = 10950000
			if(src.level == 324)
				src.expreq = 11200000
			if(src.level == 325)
				src.expreq = 11450000
			if(src.level == 326)
				src.expreq = 11700000
			if(src.level == 327)
				src.expreq = 11950000
			if(src.level == 328)
				src.expreq = 12200000
			if(src.level == 329)
				src.expreq = 12450000
			if(src.level == 330)
				src.expreq = 13000000
			if(src.level == 331)
				src.expreq = 13300000
			if(src.level == 332)
				src.expreq = 13600000
			if(src.level == 333)
				src.expreq = 13900000
			if(src.level == 334)
				src.expreq = 14200000
			if(src.level == 335)
				src.expreq = 14500000
			if(src.level == 336)
				src.expreq = 14800000
			if(src.level == 337)
				src.expreq = 15100000
			if(src.level == 338)
				src.expreq = 15400000
			if(src.level == 339)
				src.expreq = 15700000
			if(src.level == 340)
				src.expreq = 16000000
			if(src.level == 341)
				src.expreq = 16400000
			if(src.level == 342)
				src.expreq = 16800000
			if(src.level == 343)
				src.expreq = 17200000
			if(src.level == 344)
				src.expreq = 17600000
			if(src.level == 345)
				src.expreq = 18000000
			if(src.level == 346)
				src.expreq = 18400000
			if(src.level == 347)
				src.expreq = 18800000
			if(src.level == 348)
				src.expreq = 19200000
			if(src.level == 349)
				src.expreq = 19400000
			if(src.level == 350)
				src.expreq = 19800000
			if(src.level == 351)
				src.expreq = 20200000
			if(src.level == 352)
				src.expreq = 20600000
			if(src.level == 353)
				src.expreq = 21500000
			if(src.level == 354)
				src.expreq = 22000000
			if(src.level == 355)
				src.expreq = 22500000
			if(src.level == 356)
				src.expreq = 23000000
			if(src.level == 357)
				src.expreq = 23500000
			if(src.level == 358)
				src.expreq = 24000000
			if(src.level == 359)
				src.expreq = 24500000
			if(src.level == 360)
				src.expreq = 25000000
			if(src.level == 361)
				src.expreq = 25500000
			if(src.level == 362)
				src.expreq = 26000000
			if(src.level == 363)
				src.expreq = 26500000
			if(src.level == 364)
				src.expreq = 27000000
			if(src.level == 365)
				src.expreq = 27500000
			if(src.level == 366)
				src.expreq = 28100000
			if(src.level == 367)
				src.expreq = 28700000
			if(src.level == 368)
				src.expreq = 29300000
			if(src.level == 369)
				src.expreq = 29900000
			if(src.level == 370)
				src.expreq = 30500000
			if(src.level == 371)
				src.expreq = 31100000
			if(src.level == 372)
				src.expreq = 31700000
			if(src.level == 373)
				src.expreq = 32300000
			if(src.level == 374)
				src.expreq = 32900000
			if(src.level == 375)
				src.expreq = 33500000
			if(src.level == 376)
				src.expreq = 34100000
			if(src.level == 377)
				src.expreq = 34700000
			if(src.level == 378)
				src.expreq = 37300000
			if(src.level == 379)
				src.expreq = 37900000
			if(src.level == 380)
				src.expreq = 38500000
			if(src.level == 381)
				src.expreq = 39200000
			if(src.level == 382)
				src.expreq = 39900000
			if(src.level == 383)
				src.expreq = 40600000
			if(src.level == 384)
				src.expreq = 41300000
			if(src.level == 385)
				src.expreq = 42000000
			if(src.level == 386)
				src.expreq = 42700000
			if(src.level == 387)
				src.expreq = 43400000
			if(src.level == 388)
				src.expreq = 44100000
			if(src.level == 389)
				src.expreq = 44800000
			if(src.level == 390)
				src.expreq = 45500000
			if(src.level == 391)
				src.expreq = 46200000
			if(src.level == 392)
				src.expreq = 46900000
			if(src.level == 393)
				src.expreq = 47600000
			if(src.level == 394)
				src.expreq = 48300000
			if(src.level == 395)
				src.expreq = 49000000
			if(src.level == 396)
				src.expreq = 49800000
			if(src.level == 397)
				src.expreq = 50600000
			if(src.level == 398)
				src.expreq = 51400000
			if(src.level == 399)
				src.expreq = 52200000
			if(src.level == 400)
				src.expreq = 53000000
			if(src.level == 401)
				src.expreq = 53600000
			if(src.level == 402)
				src.expreq = 54400000
			if(src.level == 403)
				src.expreq = 55200000
			if(src.level == 404)
				src.expreq = 56000000
			if(src.level == 405)
				src.expreq = 56800000
			if(src.level == 406)
				src.expreq = 57600000
			if(src.level == 407)
				src.expreq = 58400000
			if(src.level == 408)
				src.expreq = 59200000
			if(src.level == 409)
				src.expreq = 60000000
			if(src.level == 410)
				src.expreq = 60800000
			if(src.level == 411)
				src.expreq = 61800000
			if(src.level == 412)
				src.expreq = 62800000
			if(src.level == 413)
				src.expreq = 63800000
			if(src.level == 414)
				src.expreq = 64800000
			if(src.level == 415)
				src.expreq = 65800000
			if(src.level == 416)
				src.expreq = 66800000
			if(src.level == 417)
				src.expreq = 67800000
			if(src.level == 418)
				src.expreq = 68800000
			if(src.level == 419)
				src.expreq = 69800000
			if(src.level == 420)
				src.expreq = 70800000
				src << "<i>Your body starts shaking!</i>"
				sleep(10)
				src << "<i>You have become a White Slime!</i>"
				src.color = "White"
				src.icon_state = "white"
			if(src.level == 421)
				src.expreq = 71900000
			if(src.level == 422)
				src.expreq = 73000000
			if(src.level == 423)
				src.expreq = 74100000
			if(src.level == 424)
				src.expreq = 75200000
			if(src.level == 425)
				src.expreq = 76300000
			if(src.level == 426)
				src.expreq = 77400000
			if(src.level == 427)
				src.expreq = 78500000
			if(src.level == 428)
				src.expreq = 79600000
			if(src.level == 429)
				src.expreq = 80700000
			if(src.level == 430)
				src.expreq = 81800000
			if(src.level == 431)
				src.expreq = 83000000
			if(src.level == 432)
				src.expreq = 84200000
			if(src.level == 433)
				src.expreq = 85400000
			if(src.level == 434)
				src.expreq = 86600000
			if(src.level == 435)
				src.expreq = 87800000
			if(src.level == 436)
				src.expreq = 89000000
			if(src.level == 437)
				src.expreq = 90200000
			if(src.level == 438)
				src.expreq = 91400000
			if(src.level == 439)
				src.expreq = 92600000
			if(src.level == 440)
				src.expreq = 93800000
			if(src.level == 441)
				src.expreq = 95100000
			if(src.level == 442)
				src.expreq = 96400000
			if(src.level == 443)
				src.expreq = 97700000
			if(src.level == 444)
				src.expreq = 99000000
			if(src.level == 445)
				src.expreq = 100300000
			if(src.level == 446)
				src.expreq = 101600000
			if(src.level == 447)
				src.expreq = 102900000
			if(src.level == 448)
				src.expreq = 104200000
			if(src.level == 449)
				src.expreq = 105500000
			if(src.level == 450)
				src.expreq = 106800000
			if(src.level == 451)
				src.expreq = 108200000
			if(src.level == 452)
				src.expreq = 109600000
			if(src.level == 453)
				src.expreq = 111000000
			if(src.level == 454)
				src.expreq = 112400000
			if(src.level == 455)
				src.expreq = 113800000
			if(src.level == 456)
				src.expreq = 115200000
			if(src.level == 457)
				src.expreq = 116600000
			if(src.level == 458)
				src.expreq = 118000000
			if(src.level == 459)
				src.expreq = 119400000
			if(src.level == 460)
				src.expreq = 120800000
			if(src.level == 461)
				src.expreq = 122300000
			if(src.level == 462)
				src.expreq = 123800000
			if(src.level == 463)
				src.expreq = 125300000
			if(src.level == 464)
				src.expreq = 126800000
			if(src.level == 465)
				src.expreq = 128300000
			if(src.level == 466)
				src.expreq = 129800000
			if(src.level == 467)
				src.expreq = 131300000
			if(src.level == 468)
				src.expreq = 132800000
			if(src.level == 469)
				src.expreq = 134300000
			if(src.level == 470)
				src.expreq = 135800000
			if(src.level == 471)
				src.expreq = 137000000
			if(src.level == 472)
				src.expreq = 140000000
			if(src.level == 473)
				src.expreq = 142000000
			if(src.level == 474)
				src.expreq = 144000000
			if(src.level == 475)
				src.expreq = 146000000
			if(src.level == 476)
				src.expreq = 148000000
			if(src.level == 477)
				src.expreq = 150000000
			if(src.level == 478)
				src.expreq = 152000000
			if(src.level == 479)
				src.expreq = 154000000
			if(src.level == 480)
				src.expreq = 156000000
			if(src.level == 481)
				src.expreq = 158000000
			if(src.level == 482)
				src.expreq = 160000000
			if(src.level == 483)
				src.expreq = 162000000
			if(src.level == 484)
				src.expreq = 164000000
			if(src.level == 485)
				src.expreq = 166000000
			if(src.level == 486)
				src.expreq = 168000000
			if(src.level == 487)
				src.expreq = 170000000
			if(src.level == 488)
				src.expreq = 172000000
			if(src.level == 489)
				src.expreq = 174000000
			if(src.level == 490)
				src.expreq = 176000000
			if(src.level == 491)
				src.expreq = 178000000
			if(src.level == 492)
				src.expreq = 180000000
			if(src.level == 493)
				src.expreq = 182000000
			if(src.level == 494)
				src.expreq = 184000000
			if(src.level == 495)
				src.expreq = 186000000
			if(src.level == 496)
				src.expreq = 188000000
			if(src.level == 497)
				src.expreq = 190000000
			if(src.level == 498)
				src.expreq = 192000000
			if(src.level == 499)
				src.expreq = 194000000
			if(src.level == 500)
				src.expreq = 196000000
			if(src.level == 501)
				src.expreq = 198000000
			if(src.level == 502)
				src.expreq = 200000000
			if(src.level == 503)
				src.expreq = 203000000
			if(src.level == 504)
				src.expreq = 206000000
			if(src.level == 505)
				src.expreq = 209000000
			if(src.level == 506)
				src.expreq = 212000000
			if(src.level == 507)
				src.expreq = 215000000
			if(src.level == 508)
				src.expreq = 218000000
			if(src.level == 509)
				src.expreq = 221000000
			if(src.level == 510)
				src.expreq = 224000000
			if(src.level == 511)
				src.expreq = 227000000
			if(src.level == 512)
				src.expreq = 230000000
			if(src.level == 513)
				src.expreq = 233000000
			if(src.level == 514)
				src.expreq = 236000000
			if(src.level == 515)
				src.expreq = 239000000
			if(src.level == 516)
				src.expreq = 242000000
			if(src.level == 517)
				src.expreq = 245000000
			if(src.level == 518)
				src.expreq = 248000000
			if(src.level == 519)
				src.expreq = 251000000
			if(src.level == 520)
				src.expreq = 254000000
			if(src.level == 521)
				src.expreq = 257000000
			if(src.level == 522)
				src.expreq = 260000000
			if(src.level == 523)
				src.expreq = 263000000
			if(src.level == 524)
				src.expreq = 266000000
			if(src.level == 525)
				src.expreq = 269000000
			if(src.level == 526)
				src.expreq = 272000000
			if(src.level == 527)
				src.expreq = 275000000
			if(src.level == 528)
				src.expreq = 278000000
			if(src.level == 529)
				src.expreq = 281000000
			if(src.level == 530)
				src.expreq = 284000000
			if(src.level == 531)
				src.expreq = 287000000
			if(src.level == 532)
				src.expreq = 290000000
			if(src.level == 533)
				src.expreq = 294000000
			if(src.level == 534)
				src.expreq = 298000000
			if(src.level == 535)
				src.expreq = 302000000
			if(src.level == 536)
				src.expreq = 306000000
			if(src.level == 537)
				src.expreq = 310000000
			if(src.level == 538)
				src.expreq = 314000000
			if(src.level == 539)
				src.expreq = 318000000
			if(src.level == 540)
				src.expreq = 322000000
			if(src.level == 541)
				src.expreq = 326000000
			if(src.level == 542)
				src.expreq = 330000000
			if(src.level == 543)
				src.expreq = 334000000
			if(src.level == 544)
				src.expreq = 338000000
			if(src.level == 545)
				src.expreq = 342000000
			if(src.level == 546)
				src.expreq = 346000000
			if(src.level == 547)
				src.expreq = 350000000
			if(src.level == 548)
				src.expreq = 354000000
			if(src.level == 549)
				src.expreq = 358000000
			if(src.level == 550)
				src.expreq = 362000000
			if(src.level == 551)
				src.expreq = 366000000
			if(src.level == 552)
				src.expreq = 370000000
			if(src.level == 553)
				src.expreq = 374000000
			if(src.level == 554)
				src.expreq = 378000000
			if(src.level == 555)
				src.expreq = 382000000
			if(src.level == 556)
				src.expreq = 386000000
			if(src.level == 557)
				src.expreq = 390000000
			if(src.level == 558)
				src.expreq = 394000000
			if(src.level == 559)
				src.expreq = 398000000
			if(src.level == 560)
				src.expreq = 402000000
			if(src.level == 561)
				src.expreq = 406000000
			if(src.level == 562)
				src.expreq = 410000000
			if(src.level == 563)
				src.expreq = 415000000
			if(src.level == 564)
				src.expreq = 420000000
			if(src.level == 565)
				src.expreq = 425000000
			if(src.level == 566)
				src.expreq = 430000000
			if(src.level == 567)
				src.expreq = 435000000
			if(src.level == 568)
				src.expreq = 440000000
			if(src.level == 569)
				src.expreq = 445000000
			if(src.level == 570)
				src.expreq = 450000000
			if(src.level == 571)
				src.expreq = 455000000
			if(src.level == 572)
				src.expreq = 460000000
			if(src.level == 573)
				src.expreq = 465000000
			if(src.level == 574)
				src.expreq = 470000000
			if(src.level == 575)
				src.expreq = 475000000
			if(src.level == 576)
				src.expreq = 480000000
			if(src.level == 577)
				src.expreq = 485000000
			if(src.level == 578)
				src.expreq = 490000000
			if(src.level == 579)
				src.expreq = 495000000
			if(src.level == 580)
				src.expreq = 500000000
			if(src.level == 581)
				src.expreq = 505000000
			if(src.level == 582)
				src.expreq = 510000000
			if(src.level == 583)
				src.expreq = 515000000
			if(src.level == 584)
				src.expreq = 520000000
			if(src.level == 585)
				src.expreq = 525000000
			if(src.level == 586)
				src.expreq = 530000000
			if(src.level == 587)
				src.expreq = 535000000
			if(src.level == 588)
				src.expreq = 540000000
			if(src.level == 589)
				src.expreq = 545000000
			if(src.level == 590)
				src.expreq = 550000000
			if(src.level == 591)
				src.expreq = 556000000
			if(src.level == 592)
				src.expreq = 562000000
			if(src.level == 593)
				src.expreq = 568000000
			if(src.level == 594)
				src.expreq = 574000000
			if(src.level == 595)
				src.expreq = 580000000
			if(src.level == 596)
				src.expreq = 586000000
			if(src.level == 597)
				src.expreq = 592000000
			if(src.level == 598)
				src.expreq = 598000000
			if(src.level == 599)
				src.expreq = 604000000
			if(src.level == 600)
				src.expreq = 610000000
			if(src.level == 601)
				src.expreq = 616000000
			if(src.level == 602)
				src.expreq = 622000000
			if(src.level == 603)
				src.expreq = 628000000
			if(src.level == 604)
				src.expreq = 634000000
			if(src.level == 605)
				src.expreq = 640000000
			if(src.level == 606)
				src.expreq = 646000000
			if(src.level == 607)
				src.expreq = 652000000
			if(src.level == 608)
				src.expreq = 658000000
			if(src.level == 609)
				src.expreq = 664000000
			if(src.level == 610)
				src.expreq = 670000000
			if(src.level == 611)
				src.expreq = 676000000
			if(src.level == 612)
				src.expreq = 682000000
			if(src.level == 613)
				src.expreq = 688000000
			if(src.level == 614)
				src.expreq = 694000000
			if(src.level == 615)
				src.expreq = 706000000
			if(src.level == 616)
				src.expreq = 712000000
			if(src.level == 617)
				src.expreq = 718000000
			if(src.level == 618)
				src.expreq = 724000000
			if(src.level == 619)
				src.expreq = 730000000
			if(src.level == 620)
				src.expreq = 736000000
			if(src.level == 621)
				src.expreq = 744000000
			if(src.level == 622)
				src.expreq = 751000000
			if(src.level == 623)
				src.expreq = 758000000
			if(src.level == 624)
				src.expreq = 765000000
			if(src.level == 625)
				src.expreq = 772000000
			if(src.level == 626)
				src.expreq = 779000000
			if(src.level == 627)
				src.expreq = 786000000
			if(src.level == 628)
				src.expreq = 793000000
			if(src.level == 629)
				src.expreq = 800000000
			if(src.level == 630)
				src.expreq = 807000000
			if(src.level == 631)
				src.expreq = 814000000
			if(src.level == 632)
				src.expreq = 821000000
			if(src.level == 633)
				src.expreq = 828000000
			if(src.level == 634)
				src.expreq = 835000000
			if(src.level == 635)
				src.expreq = 842000000
			if(src.level == 636)
				src.expreq = 849000000
			if(src.level == 637)
				src.expreq = 856000000
			if(src.level == 638)
				src.expreq = 864000000
			if(src.level == 639)
				src.expreq = 871000000
			if(src.level == 640)
				src.expreq = 878000000
			if(src.level == 641)
				src.expreq = 885000000
			if(src.level == 642)
				src.expreq = 892000000
			if(src.level == 643)
				src.expreq = 899000000
			if(src.level == 644)
				src.expreq = 906000000
			if(src.level == 645)
				src.expreq = 914000000
			if(src.level == 646)
				src.expreq = 921000000
			if(src.level == 647)
				src.expreq = 928000000
			if(src.level == 648)
				src.expreq = 935000000
			if(src.level == 649)
				src.expreq = 942000000
			if(src.level == 650)
				src.expreq = 949000000
				src << "<i>Your body starts shaking!</i>"
				sleep(10)
				src << "<i>You have become a Flame Slime!</i>"
				src.color = "Flame"
				src.icon_state = "fire"
			if(src.level == 651)
				src.expreq = 959000000
			if(src.level == 652)
				src.expreq = 969000000
			if(src.level == 653)
				src.expreq = 979000000
			if(src.level == 654)
				src.expreq = 989000000
			if(src.level == 655)
				src.expreq = 999000000
			if(src.level == 656)
				src.expreq = 1009000000
			if(src.level == 657)
				src.expreq = 1019000000
			if(src.level == 658)
				src.expreq = 1029000000
			if(src.level == 659)
				src.expreq = 1039000000
			if(src.level == 660)
				src.expreq = 1049000000
			if(src.level == 661)
				src.expreq = 1059000000
			if(src.level == 662)
				src.expreq = 1069000000
			if(src.level == 663)
				src.expreq = 1079000000
			if(src.level == 664)
				src.expreq = 1089000000
			if(src.level == 665)
				src.expreq = 1099000000
			if(src.level == 666)
				src.expreq = 1109000000
			if(src.level == 667)
				src.expreq = 1119000000
			if(src.level == 668)
				src.expreq = 1129000000
			if(src.level == 669)
				src.expreq = 1139000000
			if(src.level == 670)
				src.expreq = 1149000000
			if(src.level == 671)
				src.expreq = 1160000000
			if(src.level == 672)
				src.expreq = 1175000000
			if(src.level == 673)
				src.expreq = 1190000000
			if(src.level == 674)
				src.expreq = 1205000000
			if(src.level == 675)
				src.expreq = 1220000000
			if(src.level == 676)
				src.expreq = 1235000000
			if(src.level == 677)
				src.expreq = 1250000000
			if(src.level == 678)
				src.expreq = 1265000000
			if(src.level == 679)
				src.expreq = 1280000000
			if(src.level == 680)
				src.expreq = 1295000000
			if(src.level == 681)
				src.expreq = 1310000000
			if(src.level == 682)
				src.expreq = 1325000000
			if(src.level == 683)
				src.expreq = 1340000000
			if(src.level == 684)
				src.expreq = 1355000000
			if(src.level == 685)
				src.expreq = 1370000000
			if(src.level == 686)
				src.expreq = 1385000000
			if(src.level == 687)
				src.expreq = 1400000000
			if(src.level == 688)
				src.expreq = 1415000000
			if(src.level == 689)
				src.expreq = 1430000000
			if(src.level == 690)
				src.expreq = 1445000000
			if(src.level == 691)
				src.expreq = 1460000000
			if(src.level == 692)
				src.expreq = 1475000000
			if(src.level == 693)
				src.expreq = 1490000000
			if(src.level == 694)
				src.expreq = 1505000000
			if(src.level == 695)
				src.expreq = 1520000000
			if(src.level == 696)
				src.expreq = 1535000000
			if(src.level == 697)
				src.expreq = 1550000000
			if(src.level == 698)
				src.expreq = 1565000000
			if(src.level == 699)
				src.expreq = 1580000000
			if(src.level == 700)
				src.expreq = 1595000000
			if(src.level == 701)
				src.expreq = 1615000000
			if(src.level == 702)
				src.expreq = 1635000000
			if(src.level == 703)
				src.expreq = 1655000000
			if(src.level == 704)
				src.expreq = 1675000000
			if(src.level == 705)
				src.expreq = 1695000000
			if(src.level == 706)
				src.expreq = 1715000000
			if(src.level == 707)
				src.expreq = 1735000000
			if(src.level == 708)
				src.expreq = 1755000000
			if(src.level == 709)
				src.expreq = 1775000000
			if(src.level == 710)
				src.expreq = 1795000000
			if(src.level == 711)
				src.expreq = 1815000000
			if(src.level == 712)
				src.expreq = 1835000000
			if(src.level == 713)
				src.expreq = 1855000000
			if(src.level == 714)
				src.expreq = 1875000000
			if(src.level == 715)
				src.expreq = 1895000000
			if(src.level == 716)
				src.expreq = 1915000000
			if(src.level == 717)
				src.expreq = 1935000000
			if(src.level == 718)
				src.expreq = 1955000000
			if(src.level == 719)
				src.expreq = 1975000000
			if(src.level == 720)
				src.expreq = 1995000000
			if(src.level == 721)
				src.expreq = 2015000000
			if(src.level == 722)
				src.expreq = 2035000000
			if(src.level == 723)
				src.expreq = 2055000000
			if(src.level == 724)
				src.expreq = 2075000000
			if(src.level == 725)
				src.expreq = 2095000000
			if(src.level == 726)
				src.expreq = 2115000000
			if(src.level == 727)
				src.expreq = 2135000000
			if(src.level == 728)
				src.expreq = 2155000000
			if(src.level == 729)
				src.expreq = 2175000000
			if(src.level == 730)
				src.expreq = 2195000000
			if(src.level == 731)
				src.expreq = 2220000000
			if(src.level == 732)
				src.expreq = 2240000000
			if(src.level == 733)
				src.expreq = 2260000000
			if(src.level == 734)
				src.expreq = 2280000000
			if(src.level == 735)
				src.expreq = 2300000000
			if(src.level == 736)
				src.expreq = 2325000000
			if(src.level == 737)
				src.expreq = 2350000000
			if(src.level == 738)
				src.expreq = 2375000000
			if(src.level == 739)
				src.expreq = 2400000000
			if(src.level == 740)
				src.expreq = 2425000000
			if(src.level == 741)
				src.expreq = 2450000000
			if(src.level == 742)
				src.expreq = 2475000000
			if(src.level == 743)
				src.expreq = 2500000000
			if(src.level == 744)
				src.expreq = 2525000000
			if(src.level == 745)
				src.expreq = 2550000000
			if(src.level == 746)
				src.expreq = 2575000000
			if(src.level == 747)
				src.expreq = 2600000000
			if(src.level == 748)
				src.expreq = 2625000000
			if(src.level == 749)
				src.expreq = 2650000000
			if(src.level == 750)
				src.expreq = 2675000000
			if(src.level == 751)
				src.expreq = 2700000000
			if(src.level == 752)
				src.expreq = 2725000000
			if(src.level == 753)
				src.expreq = 2750000000
			if(src.level == 754)
				src.expreq = 2775000000
			if(src.level == 755)
				src.expreq = 2800000000
			if(src.level == 756)
				src.expreq = 2825000000
			if(src.level == 757)
				src.expreq = 2850000000
			if(src.level == 758)
				src.expreq = 2875000000
			if(src.level == 759)
				src.expreq = 2900000000
			if(src.level == 760)
				src.expreq = 2925000000
			if(src.level == 761)
				src.expreq = 2950000000
			if(src.level == 762)
				src.expreq = 2975000000
			if(src.level == 763)
				src.expreq = 3000000000
			if(src.level == 764)
				src.expreq = 3030000000
			if(src.level == 765)
				src.expreq = 3060000000
			if(src.level == 766)
				src.expreq = 3090000000
			if(src.level == 767)
				src.expreq = 3120000000
			if(src.level == 768)
				src.expreq = 3150000000
			if(src.level == 769)
				src.expreq = 3180000000
			if(src.level == 770)
				src.expreq = 3210000000
			if(src.level == 771)
				src.expreq = 3240000000
			if(src.level == 772)
				src.expreq = 3270000000
			if(src.level == 773)
				src.expreq = 3300000000
			if(src.level == 774)
				src.expreq = 3330000000
			if(src.level == 775)
				src.expreq = 3360000000
			if(src.level == 776)
				src.expreq = 3390000000
			if(src.level == 777)
				src.expreq = 3420000000
			if(src.level == 778)
				src.expreq = 3450000000
			if(src.level == 779)
				src.expreq = 3480000000
			if(src.level == 780)
				src.expreq = 3510000000
			if(src.level == 781)
				src.expreq = 3540000000
			if(src.level == 782)
				src.expreq = 3570000000
			if(src.level == 783)
				src.expreq = 3600000000
			if(src.level == 784)
				src.expreq = 3630000000
			if(src.level == 785)
				src.expreq = 3660000000
			if(src.level == 786)
				src.expreq = 3690000000
			if(src.level == 787)
				src.expreq = 3720000000
			if(src.level == 788)
				src.expreq = 3750000000
			if(src.level == 789)
				src.expreq = 3780000000
			if(src.level == 790)
				src.expreq = 3810000000
			if(src.level == 791)
				src.expreq = 3840000000
			if(src.level == 792)
				src.expreq = 3870000000
			if(src.level == 793)
				src.expreq = 3900000000
			if(src.level == 794)
				src.expreq = 3930000000
			if(src.level == 795)
				src.expreq = 3960000000
			if(src.level == 796)
				src.expreq = 3990000000
			if(src.level == 797)
				src.expreq = 4020000000
			if(src.level == 798)
				src.expreq = 4050000000
			if(src.level == 799)
				src.expreq = 4080000000
			if(src.level == 800)
				src.expreq = 4100000000
			if(src.level == 801)
				src.expreq = 4140000000
			if(src.level == 802)
				src.expreq = 4180000000
			if(src.level == 803)
				src.expreq = 4220000000
			if(src.level == 804)
				src.expreq = 4260000000
			if(src.level == 805)
				src.expreq = 4300000000
			if(src.level == 806)
				src.expreq = 4340000000
			if(src.level == 807)
				src.expreq = 4380000000
			if(src.level == 808)
				src.expreq = 4420000000
			if(src.level == 809)
				src.expreq = 4460000000
			if(src.level == 810)
				src.expreq = 4500000000
			if(src.level == 811)
				src.expreq = 4540000000
			if(src.level == 812)
				src.expreq = 4580000000
			if(src.level == 813)
				src.expreq = 4620000000
			if(src.level == 814)
				src.expreq = 4660000000
			if(src.level == 815)
				src.expreq = 4700000000
			if(src.level == 816)
				src.expreq = 4740000000
			if(src.level == 817)
				src.expreq = 4780000000
			if(src.level == 818)
				src.expreq = 4820000000
			if(src.level == 819)
				src.expreq = 4860000000
			if(src.level == 820)
				src.expreq = 4900000000
			if(src.level == 821)
				src.expreq = 4940000000
			if(src.level == 822)
				src.expreq = 4980000000
			if(src.level == 823)
				src.expreq = 5020000000
			if(src.level == 824)
				src.expreq = 5060000000
			if(src.level == 825)
				src.expreq = 5100000000
			if(src.level == 826)
				src.expreq = 5140000000
			if(src.level == 827)
				src.expreq = 5180000000
			if(src.level == 828)
				src.expreq = 5220000000
			if(src.level == 829)
				src.expreq = 5260000000
			if(src.level == 830)
				src.expreq = 5300000000
			if(src.level == 831)
				src.expreq = 5350000000
			if(src.level == 832)
				src.expreq = 5400000000
			if(src.level == 833)
				src.expreq = 5450000000
			if(src.level == 834)
				src.expreq = 5500000000
			if(src.level == 835)
				src.expreq = 5550000000
			if(src.level == 836)
				src.expreq = 5600000000
			if(src.level == 837)
				src.expreq = 5650000000
			if(src.level == 838)
				src.expreq = 5700000000
			if(src.level == 839)
				src.expreq = 5750000000
			if(src.level == 840)
				src.expreq = 5800000000
			if(src.level == 841)
				src.expreq = 5850000000
			if(src.level == 842)
				src.expreq = 5900000000
			if(src.level == 843)
				src.expreq = 5950000000
			if(src.level == 844)
				src.expreq = 6000000000
			if(src.level == 845)
				src.expreq = 6050000000
			if(src.level == 846)
				src.expreq = 6100000000
			if(src.level == 847)
				src.expreq = 6150000000
			if(src.level == 848)
				src.expreq = 6200000000
			if(src.level == 849)
				src.expreq = 6250000000
			if(src.level == 850)
				src.expreq = 6300000000
			if(src.level == 851)
				src.expreq = 6350000000
			if(src.level == 852)
				src.expreq = 6400000000
			if(src.level == 853)
				src.expreq = 6450000000
			if(src.level == 854)
				src.expreq = 6500000000
			if(src.level == 855)
				src.expreq = 6550000000
			if(src.level == 856)
				src.expreq = 6600000000
			if(src.level == 857)
				src.expreq = 6650000000
			if(src.level == 858)
				src.expreq = 6700000000
			if(src.level == 859)
				src.expreq = 6750000000
			if(src.level == 860)
				src.expreq = 6800000000
			if(src.level == 861)
				src.expreq = 6850000000
			if(src.level == 862)
				src.expreq = 6900000000
			if(src.level == 863)
				src.expreq = 6950000000
			if(src.level == 864)
				src.expreq = 7000000000
			if(src.level == 865)
				src.expreq = 7050000000
			if(src.level == 866)
				src.expreq = 7100000000
			if(src.level == 867)
				src.expreq = 7150000000
			if(src.level == 868)
				src.expreq = 7200000000
			if(src.level == 869)
				src.expreq = 7250000000
			if(src.level == 870)
				src.expreq = 7300000000
			if(src.level == 871)
				src.expreq = 7370000000
			if(src.level == 872)
				src.expreq = 7440000000
			if(src.level == 873)
				src.expreq = 7510000000
			if(src.level == 874)
				src.expreq = 7580000000
			if(src.level == 875)
				src.expreq = 7650000000
			if(src.level == 876)
				src.expreq = 7720000000
			if(src.level == 877)
				src.expreq = 7790000000
			if(src.level == 878)
				src.expreq = 7860000000
			if(src.level == 879)
				src.expreq = 7930000000
			if(src.level == 880)
				src.expreq = 8000000000
			if(src.level == 881)
				src.expreq = 8070000000
			if(src.level == 882)
				src.expreq = 8140000000
			if(src.level == 883)
				src.expreq = 8210000000
			if(src.level == 884)
				src.expreq = 8280000000
			if(src.level == 885)
				src.expreq = 8350000000
			if(src.level == 886)
				src.expreq = 8420000000
			if(src.level == 887)
				src.expreq = 8490000000
			if(src.level == 888)
				src.expreq = 8560000000
			if(src.level == 889)
				src.expreq = 8630000000
			if(src.level == 890)
				src.expreq = 8700000000
			if(src.level == 891)
				src.expreq = 8770000000
			if(src.level == 892)
				src.expreq = 8840000000
			if(src.level == 893)
				src.expreq = 8910000000
			if(src.level == 894)
				src.expreq = 8980000000
			if(src.level == 895)
				src.expreq = 9050000000
			if(src.level == 896)
				src.expreq = 9120000000
			if(src.level == 897)
				src.expreq = 9190000000
			if(src.level == 898)
				src.expreq = 9260000000
			if(src.level == 899)
				src.expreq = 9330000000
			if(src.level == 900)
				src.expreq = 9400000000
			if(src.level == 901)
				src.expreq = 9480000000
			if(src.level == 902)
				src.expreq = 9560000000
			if(src.level == 903)
				src.expreq = 9640000000
			if(src.level == 904)
				src.expreq = 9720000000
			if(src.level == 905)
				src.expreq = 9800000000
			if(src.level == 906)
				src.expreq = 9880000000
			if(src.level == 907)
				src.expreq = 9960000000
			if(src.level == 908)
				src.expreq = 10040000000
			if(src.level == 909)
				src.expreq = 10120000000
			if(src.level == 910)
				src.expreq = 10200000000
			if(src.level == 911)
				src.expreq = 10280000000
			if(src.level == 912)
				src.expreq = 10360000000
			if(src.level == 913)
				src.expreq = 10440000000
			if(src.level == 914)
				src.expreq = 10520000000
			if(src.level == 915)
				src.expreq = 10600000000
			if(src.level == 916)
				src.expreq = 10680000000
			if(src.level == 917)
				src.expreq = 10760000000
			if(src.level == 918)
				src.expreq = 10840000000
			if(src.level == 919)
				src.expreq = 10920000000
			if(src.level == 920)
				src.expreq = 11000000000
			if(src.level == 921)
				src.expreq = 11080000000
			if(src.level == 922)
				src.expreq = 11160000000
			if(src.level == 923)
				src.expreq = 11240000000
			if(src.level == 924)
				src.expreq = 11320000000
			if(src.level == 925)
				src.expreq = 11400000000
			if(src.level == 926)
				src.expreq = 11480000000
			if(src.level == 927)
				src.expreq = 11560000000
			if(src.level == 928)
				src.expreq = 11640000000
			if(src.level == 929)
				src.expreq = 11720000000
			if(src.level == 930)
				src.expreq = 11800000000
			if(src.level == 931)
				src.expreq = 11890000000
			if(src.level == 932)
				src.expreq = 11980000000
			if(src.level == 933)
				src.expreq = 12070000000
			if(src.level == 934)
				src.expreq = 12160000000
			if(src.level == 935)
				src.expreq = 12250000000
			if(src.level == 936)
				src.expreq = 12340000000
			if(src.level == 937)
				src.expreq = 12430000000
			if(src.level == 938)
				src.expreq = 12520000000
			if(src.level == 939)
				src.expreq = 12610000000
			if(src.level == 940)
				src.expreq = 12700000000
			if(src.level == 941)
				src.expreq = 12790000000
			if(src.level == 942)
				src.expreq = 12880000000
			if(src.level == 943)
				src.expreq = 12970000000
			if(src.level == 944)
				src.expreq = 13060000000
			if(src.level == 945)
				src.expreq = 13150000000
			if(src.level == 946)
				src.expreq = 13240000000
			if(src.level == 947)
				src.expreq = 13330000000
			if(src.level == 948)
				src.expreq = 13420000000
			if(src.level == 949)
				src.expreq = 13510000000
			if(src.level == 950)
				src.expreq = 13600000000
			if(src.level == 951)
				src.expreq = 13690000000
			if(src.level == 952)
				src.expreq = 13780000000
			if(src.level == 953)
				src.expreq = 13870000000
			if(src.level == 954)
				src.expreq = 13960000000
			if(src.level == 955)
				src.expreq = 14050000000
			if(src.level == 956)
				src.expreq = 14140000000
			if(src.level == 957)
				src.expreq = 14230000000
			if(src.level == 958)
				src.expreq = 14320000000
			if(src.level == 959)
				src.expreq = 14410000000
			if(src.level == 960)
				src.expreq = 15500000000
			if(src.level == 961)
				src.expreq = 15590000000
			if(src.level == 962)
				src.expreq = 15680000000
			if(src.level == 963)
				src.expreq = 15770000000
			if(src.level == 964)
				src.expreq = 15860000000
			if(src.level == 965)
				src.expreq = 15950000000
			if(src.level == 966)
				src.expreq = 16040000000
			if(src.level == 967)
				src.expreq = 16130000000
			if(src.level == 968)
				src.expreq = 16220000000
			if(src.level == 969)
				src.expreq = 16310000000
			if(src.level == 970)
				src.expreq = 16400000000
			if(src.level == 971)
				src.expreq = 16500000000
			if(src.level == 972)
				src.expreq = 16600000000
			if(src.level == 973)
				src.expreq = 16700000000
			if(src.level == 974)
				src.expreq = 16800000000
			if(src.level == 975)
				src.expreq = 16900000000
			if(src.level == 976)
				src.expreq = 17000000000
			if(src.level == 977)
				src.expreq = 17100000000
			if(src.level == 978)
				src.expreq = 17200000000
			if(src.level == 979)
				src.expreq = 17300000000
			if(src.level == 980)
				src.expreq = 17400000000
			if(src.level == 981)
				src.expreq = 17500000000
			if(src.level == 982)
				src.expreq = 17600000000
			if(src.level == 983)
				src.expreq = 17700000000
			if(src.level == 984)
				src.expreq = 17800000000
			if(src.level == 985)
				src.expreq = 17900000000
			if(src.level == 986)
				src.expreq = 18000000000
			if(src.level == 987)
				src.expreq = 18100000000
			if(src.level == 988)
				src.expreq = 18200000000
			if(src.level == 989)
				src.expreq = 18300000000
			if(src.level == 990)
				src.expreq = 18400000000
			if(src.level == 991)
				src.expreq = 18500000000
			if(src.level == 992)
				src.expreq = 18600000000
			if(src.level == 993)
				src.expreq = 18700000000
			if(src.level == 994)
				src.expreq = 18800000000
			if(src.level == 995)
				src.expreq = 18900000000
			if(src.level == 996)
				src.expreq = 19000000000
			if(src.level == 997)
				src.expreq = 19100000000
			if(src.level == 998)
				src.expreq = 19200000000
			if(src.level == 999)
				src.expreq = 19300000000
			if(src.level == 1000)
				src.expreq = 19400000000
			if(src.level == 1001)
				src.expreq = 19500000000
			if(src.level == 1002)
				src.expreq = 19600000000
			if(src.level == 1003)
				src.expreq = 19700000000
			if(src.level == 1004)
				src.expreq = 19800000000
			if(src.level == 1005)
				src.expreq = 19900000000
			if(src.level == 1006)
				src.expreq = 20100000000
			if(src.level == 1007)
				src.expreq = 20200000000
			if(src.level == 1008)
				src.expreq = 20300000000
			if(src.level == 1009)
				src.expreq = 20400000000
			if(src.level == 1010)
				src.expreq = 20500000000
			if(src.level == 1011)
				src.expreq = 20600000000
			if(src.level == 1012)
				src.expreq = 20700000000
			if(src.level == 1013)
				src.expreq = 20800000000
			if(src.level == 1014)
				src.expreq = 20900000000
			if(src.level == 1015)
				src.expreq = 21000000000
			if(src.level == 1016)
				src.expreq = 21100000000
			if(src.level == 1017)
				src.expreq = 21200000000
			if(src.level == 1018)
				src.expreq = 21300000000
			if(src.level == 1019)
				src.expreq = 21400000000
			if(src.level == 1020)
				src.expreq = 21500000000
				src << "<i>Your body starts shaking!</i>"
				sleep(10)
				src << "<i>You have become a Metal Slime!</i>"
				src.color = "Metal"
				src.icon_state = "metal"
			if(src.level == 1021)
				src.expreq = "Max Level Dude!"
			src.gotexp = 0
			src.neededexp = src.expreq - src.exp
			checklevel()