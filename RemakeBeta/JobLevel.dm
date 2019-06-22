mob
	proc
		checkjoblevel()
			if(!istext(src.jobexpreq)&&src.jobexp>=src.jobexpreq)
				jobexpreqfind()
			else if(src.job == "Level 2 Warrior")
				skillpts()
			else if(src.job == "Level 2 Mage")
				skillpts()
			else if(src.job == "Level 2 Assassin")
				skillpts()
			else if(src.job == "Level 2 Priest")
				skillpts()



		skillpts()
			if(src.jobexp >= 25000000)
				src.jobexp -= 25000000
				src.skillpoints += 1
				src << "Congradulations!  You recieved a skill point!"
				skillpts()

		joblevelup()
			src << "Congradulations, your Job Level is now [src.joblevel + 1]!"
			if(src.job == "Warrior")
				WarriorLevel()
			else if(src.job == "Mage")
				MageLevel()
			else if(src.job == "Assassin")
				AssassinLevel()
			else if(src.job == "Priest")
				PriestLevel()
			checkjoblevel()

		jobexpreqfind()
			src.joblevel += 1
			if(src.joblevel == 2)
				src.jobexpreq = 45
			else if(src.joblevel == 3)
				src.jobexpreq = 75
			else if(src.joblevel == 4)
				src.jobexpreq = 125
			else if(src.joblevel == 5)
				src.jobexpreq = 175
			else if(src.joblevel == 6)
				src.jobexpreq = 225
			else if(src.joblevel == 7)
				src.jobexpreq = 300
			else if(src.joblevel == 8)
				src.jobexpreq = 375
			else if(src.joblevel == 9)
				src.jobexpreq = 450
			else if(src.joblevel == 10)
				src.jobexpreq = 525
			else if(src.joblevel == 11)
				src.jobexpreq = 600
			else if(src.joblevel == 12)
				src.jobexpreq = 700
			else if(src.joblevel == 13)
				src.jobexpreq = 800
			else if(src.joblevel == 14)
				src.jobexpreq = 900
			else if(src.joblevel == 15)
				src.jobexpreq = 1000
			else if(src.joblevel == 16)
				src.jobexpreq = 1100
			else if(src.joblevel == 17)
				src.jobexpreq = 1300
			else if(src.joblevel == 18)
				src.jobexpreq = 1500
			else if(src.joblevel == 19)
				src.jobexpreq = 1700
			else if(src.joblevel == 20)
				src.jobexpreq = 1900
			else if(src.joblevel == 21)
				src.jobexpreq = 2100
			else if(src.joblevel == 22)
				src.jobexpreq = 2450
			else if(src.joblevel == 23)
				src.jobexpreq = 2800
			else if(src.joblevel == 24)
				src.jobexpreq = 3150
			else if(src.joblevel == 25)
				src.jobexpreq = 3400
			else if(src.joblevel == 26)
				src.jobexpreq = 3750
			else if(src.joblevel == 27)
				src.jobexpreq = 4300
			else if(src.joblevel == 28)
				src.jobexpreq = 4800
			else if(src.joblevel == 29)
				src.jobexpreq = 5300
			else if(src.joblevel == 30)
				src.jobexpreq = 5800
			else if(src.joblevel == 31)
				src.jobexpreq = 6300
			else if(src.joblevel == 32)
				src.jobexpreq = 7000
			else if(src.joblevel == 33)
				src.jobexpreq = 7700
			else if(src.joblevel == 34)
				src.jobexpreq = 8400
			else if(src.joblevel == 35)
				src.jobexpreq = 9100
			else if(src.joblevel == 36)
				src.jobexpreq = 9800
			else if(src.joblevel == 37)
				src.jobexpreq = 11000
			else if(src.joblevel == 38)
				src.jobexpreq = 12500
			else if(src.joblevel == 39)
				src.jobexpreq = 14000
			else if(src.joblevel == 40)
				src.jobexpreq = 16000
			else if(src.joblevel == 41)
				src.jobexpreq = "Max Level Dude!"
				src << "<font color = blue><b><i><u>You have achieved the maximum level!</font></u></i></b>"
			src.gotjexp = 0
			src.neededjexp = src.jobexpreq - src.jobexp
			joblevelup()