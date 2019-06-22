mob
	player
		proc
			AddSkill(mob/player/P)
				if(P.job == "Mage")
					P.MageSkill(P)
				else if(P.job == "Merchant")
					P.MerchantSkill(P)
				else if(P.job == "Thief")
					P.ThiefSkill(P)
				else if(P.job == "Priest")
					P.PriestSkill(P)
				else
					world << "ERROR! Unknown class skill.  ERROR!"
					return

			MageSkill(mob/player/P)
				if(P.joblevel == 3)
					AddInfo(P,"You learn Firebal!","Congradulations!")
					P.spells += "Firebal"

			ThiefSkill(mob/player/P)

			PriestSkill(mob/player/P)

			MerchantSkill(mob/player/P)
