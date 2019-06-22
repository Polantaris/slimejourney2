mob
	proc
		MonsterLevelCheck()
			if(!istext(src.monsterinparty.expreq)&&src.monsterinparty.exp>=src.monsterinparty.expreq)
				MonsterLevelup()


		MonsterLevelup()
			var/remainder = src.monsterinparty.exp - src.monsterinparty.expreq
			if(remainder <= 0)
				remainder = 0
			src.monsterinparty.exp = 0
			src.monsterinparty.exp += remainder
			src << "<font color = blue><b>[src.monsterinparty] gained a level!</font>"
			src << 'levelup.wav'
			src << "<font color = blue><b>[src.monsterinparty] is now level [src.monsterinparty.level + 1]!</font>"
			sleep(3)
			src.monsterinparty.maxhp += src.monsterinparty.hpgain
			src.monsterinparty.maxmp += src.monsterinparty.mpgain
			src.monsterinparty.attack += src.monsterinparty.atkgain
			src.monsterinparty.defense += src.monsterinparty.defgain
			src.monsterinparty.agility += src.monsterinparty.aglgain
			src.monsterinparty.intelligence += src.monsterinparty.intgain
			src.monsterinparty.expreq += src.monsterinparty.expgain
			src << "<font color = blue><b>[src.monsterinparty] gained [num2text(src.monsterinparty.hpgain,20)] HP!</font>"
			sleep(3)
			src << "<font color = blue><b>[src.monsterinparty] gained [num2text(src.monsterinparty.mpgain,20)] MP!</font>"
			sleep(3)
			src << "<font color = blue><b>[src.monsterinparty] gained [num2text(src.monsterinparty.atkgain,20)] Attack!</font>"
			sleep(3)
			src << "<font color = blue><b>[src.monsterinparty] gained [num2text(src.monsterinparty.defgain,20)] Defense!</font>"
			sleep(3)
			src << "<font color = blue><b>[src.monsterinparty] gained [num2text(src.monsterinparty.aglgain,20)] Agility!</font>"
			sleep(3)
			src << "<font color = blue><b>[src.monsterinparty] gained [num2text(src.monsterinparty.intgain,20)] Intelligence!</font>"
			sleep(3)
			if(istype(src.monsterfollow,/mob/summons/Metal_Slime_Summon))
				src.monsterinparty.hpgain += rand(0,1)
			else
				src.monsterinparty.hpgain += rand(10,25)
			src.monsterinparty.mpgain += rand(10,25)
			src.monsterinparty.atkgain += rand(4,9)
			src.monsterinparty.defgain += rand(4,9)
			src.monsterinparty.aglgain += rand(4,9)
			src.monsterinparty.intgain += rand(4,9)
			src.monsterinparty.expgain += rand(10,25)
			src.monsterinparty.hpgain += src.monsterinparty.extragain
			src.monsterinparty.mpgain += src.monsterinparty.extragain
			src.monsterinparty.atkgain += src.monsterinparty.extragain
			src.monsterinparty.defgain += src.monsterinparty.extragain
			src.monsterinparty.aglgain += src.monsterinparty.extragain
			src.monsterinparty.intgain += src.monsterinparty.extragain
			src.monsterinparty.expgain += src.monsterinparty.extraexp
			src << "<font color = blue><b>[src.monsterinparty]'s Exp to next level increased to [num2text(src.monsterinparty.expreq,20)]!</font>"
			src.monsterinparty.level += 1
			src.monsterinparty.loyal += 5
			if(src.monsterinparty.loyal >= 300)
				src.monsterinparty.loyal = 300
			MonsterLevelCheck()