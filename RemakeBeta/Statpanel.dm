obj
	click
		icon = 'turfs.dmi'
		icon_state = "Click"
		name = "Other"
		Click()
			var/mob/Newchar/M
			M = usr
			M.OtherBrowse()

	worldsay_button
		layer = MOB_LAYER + 1
		icon = 'turfs.dmi'
		icon_state = "worldsay"
		name = "World Say"
		Click()
			var/mob/Newchar/M
			M = usr
			M.Worldsay()
		New(client/C)
			if(C)
				screen_loc="16,2"
				C.screen+=src

	worldemote_button
		layer = MOB_LAYER + 1
		icon = 'turfs.dmi'
		icon_state = "worldemote"
		name = "World Emote"
		Click()
			var/mob/Newchar/M
			M = usr
			M.Worldemote()
		New(client/C)
			if(C)
				screen_loc="16,1"
				C.screen+=src

	say_button
		layer = MOB_LAYER + 1
		icon = 'turfs.dmi'
		icon_state = "viewsay"
		name = "Say"
		Click()
			var/mob/Newchar/M
			M = usr
			M.SayB()
		New(client/C)
			if(C)
				screen_loc="17,2"
				C.screen+=src

	emote_button
		layer = MOB_LAYER + 1
		icon = 'turfs.dmi'
		icon_state = "viewemote"
		name = "Emote"
		Click()
			var/mob/Newchar/M
			M = usr
			M.EmoteB()
		New(client/C)
			if(C)
				screen_loc="17,1"
				C.screen+=src

	stat_panel_hp
		layer = MOB_LAYER + 1
		icon = 'HPPanel.dmi'
		icon_state = "100HP"
		name = "HP Bar"
		Click()
			var/mob/Newchar/M
			M = usr
			M.StatBrowse()
		New(client/C)
			if(C)
				screen_loc="1,3"
				C.screen+=src

	stat_panel_summon_hp
		layer = MOB_LAYER + 1
		icon = 'HPPanel.dmi'
		icon_state = "0HP"
		name = "Summon's HP Bar"
		Click()
			var/mob/Newchar/M
			M = usr
			M.SummonBrowse()
		New(client/C)
			if(C)
				screen_loc="1,17"
				C.screen+=src

	stat_panel_summon_mp
		layer = MOB_LAYER + 1
		icon = 'MPPanel.dmi'
		icon_state = "0HP"
		name = "Summon's MP Bar"
		Click()
			var/mob/Newchar/M
			M = usr
			M.SummonBrowse()
		New(client/C)
			if(C)
				screen_loc="2,17"
				C.screen+=src

	stat_panel_summon_exp
		layer = MOB_LAYER + 1
		icon = 'EXPPanel.dmi'
		icon_state = "0HP"
		name = "Summon's EXP Bar"
		Click()
			var/mob/Newchar/M
			M = usr
			M.SummonBrowse()
		New(client/C)
			if(C)
				screen_loc="3,17"
				C.screen+=src

	stat_panel_mp
		layer = MOB_LAYER + 1
		icon = 'MPPanel.dmi'
		icon_state = "100HP"
		name = "MP Bar"
		Click()
			var/mob/Newchar/M
			M = usr
			M.StatBrowse()
		New(client/C)
			if(C)
				screen_loc="1,2"
				C.screen+=src

	stat_panel_exp
		layer = MOB_LAYER + 1
		icon = 'EXPPanel.dmi'
		icon_state = "100HP"
		name = "EXP Bar"
		Click()
			var/mob/Newchar/M
			M = usr
			M.LevelBrowse()
		New(client/C)
			if(C)
				screen_loc="2,1"
				C.screen+=src

	stat_panel_jexp
		layer = MOB_LAYER + 1
		icon = 'JobEXPPanel.dmi'
		icon_state = "100HP"
		name = "Job EXP Bar"
		Click()
			var/mob/Newchar/M
			M = usr
			M.LevelBrowse()
		New(client/C)
			if(C)
				screen_loc="3,1"
				C.screen+=src

mob
	var/obj/stat_panel_hp/stat_panel_hp
	var/obj/stat_panel_mp/stat_panel_mp
	var/obj/stat_panel_exp/stat_panel_exp
	var/obj/stat_panel_jexp/stat_panel_jexp
	var/obj/stat_panel_summon_hp/stat_panel_summon_hp
	var/obj/stat_panel_summon_mp/stat_panel_summon_mp
	var/obj/stat_panel_summon_exp/stat_panel_summon_exp
	var/obj/worldsay_button/worldsay_button
	var/obj/worldemote_button/worldemote_button
	var/obj/say_button/say_button
	var/obj/emote_button/emote_button
	var/obj/click/click
	var/item
	var/toks = 0
	Login()
		stat_panel_hp=new(client)
		stat_panel_mp=new(client)
		stat_panel_exp=new(client)
		stat_panel_jexp=new(client)
		stat_panel_summon_hp=new(client)
		stat_panel_summon_mp=new(client)
		stat_panel_summon_exp=new(client)
		worldsay_button=new(client)
		worldemote_button=new(client)
		say_button=new(client)
		emote_button=new(client)
		click=new(client)
		..()
	Stat()
		if(level == "Cow")return
		statpanel("Stats")
		if(poisoned == 1)
			stat("You are Poisoned.  In battle you will lose HP every turn.")
			stat(null)
		if(diseased == 1)
			stat("You are Diseased.  In battle, you can no longer use spells or skills, nor can you run away.")
			stat(null)
		switch(round(hp/maxhp*100))
			if(100)
				stat_panel_hp.icon_state = "100HP"
			if(92 to 99)
				stat_panel_hp.icon_state = "92HP"
			if(84 to 91)
				stat_panel_hp.icon_state = "84HP"
			if(76 to 83)
				stat_panel_hp.icon_state = "76HP"
			if(68 to 75)
				stat_panel_hp.icon_state = "68HP"
			if(60 to 67)
				stat_panel_hp.icon_state = "60HP"
			if(52 to 59)
				stat_panel_hp.icon_state = "52HP"
			if(44 to 51)
				stat_panel_hp.icon_state = "44HP"
			if(36 to 43)
				stat_panel_hp.icon_state = "36HP"
			if(28 to 35)
				stat_panel_hp.icon_state = "28HP"
			if(20 to 27)
				stat_panel_hp.icon_state = "20HP"
			if(10 to 19)
				stat_panel_hp.icon_state = "10HP"
			if(0 to 9)
				stat_panel_hp.icon_state = "0HP"
			else
				stat_panel_hp.icon_state = "0HP"
		if(mp == 0)
			stat_panel_mp.icon_state = "0HP"
		else
			switch(round(mp/maxmp*100))
				if(100)
					stat_panel_mp.icon_state = "100HP"
				if(92 to 99)
					stat_panel_mp.icon_state = "92HP"
				if(84 to 91)
					stat_panel_mp.icon_state = "84HP"
				if(76 to 83)
					stat_panel_mp.icon_state = "76HP"
				if(68 to 75)
					stat_panel_mp.icon_state = "68HP"
				if(60 to 67)
					stat_panel_mp.icon_state = "60HP"
				if(52 to 59)
					stat_panel_mp.icon_state = "52HP"
				if(44 to 51)
					stat_panel_mp.icon_state = "44HP"
				if(36 to 43)
					stat_panel_mp.icon_state = "36HP"
				if(28 to 35)
					stat_panel_mp.icon_state = "28HP"
				if(20 to 27)
					stat_panel_mp.icon_state = "20HP"
				if(10 to 19)
					stat_panel_mp.icon_state = "10HP"
				if(0 to 9)
					stat_panel_mp.icon_state = "0HP"
				else
					stat_panel_mp.icon_state = "0HP"
		stat("HP",stat_panel_hp)
		stat("MP",stat_panel_mp)
		stat("","Click Bars above to View More Detailed Stats Information")
		statpanel("Level Stats")
		stat("Level:","[level]")
		if(istext(expreq))
			stat_panel_exp.icon_state="100HP"
		else if(exp == 0)
			stat_panel_exp.icon_state = "0HP"
		else
			switch(round(gotexp/neededexp*100))
				if(100)
					stat_panel_exp.icon_state = "100HP"
				if(92 to 99)
					stat_panel_exp.icon_state = "92HP"
				if(84 to 91)
					stat_panel_exp.icon_state = "84HP"
				if(76 to 83)
					stat_panel_exp.icon_state = "76HP"
				if(68 to 75)
					stat_panel_exp.icon_state = "68HP"
				if(60 to 67)
					stat_panel_exp.icon_state = "60HP"
				if(52 to 59)
					stat_panel_exp.icon_state = "52HP"
				if(44 to 51)
					stat_panel_exp.icon_state = "44HP"
				if(36 to 43)
					stat_panel_exp.icon_state = "36HP"
				if(28 to 35)
					stat_panel_exp.icon_state = "28HP"
				if(20 to 27)
					stat_panel_exp.icon_state = "20HP"
				if(10 to 19)
					stat_panel_exp.icon_state = "10HP"
				if(0 to 9)
					stat_panel_exp.icon_state = "0HP"
				else
					stat_panel_exp.icon_state = "0HP"
		if(istext(jobexpreq))
			stat_panel_jexp.icon_state="100HP"
		else if(jobexp == 0)
			stat_panel_jexp.icon_state = "0HP"
		else
			switch(round(gotjexp/neededjexp*100))
				if(100)
					stat_panel_jexp.icon_state = "100HP"
				if(92 to 99)
					stat_panel_jexp.icon_state = "92HP"
				if(84 to 91)
					stat_panel_jexp.icon_state = "84HP"
				if(76 to 83)
					stat_panel_jexp.icon_state = "76HP"
				if(68 to 75)
					stat_panel_jexp.icon_state = "68HP"
				if(60 to 67)
					stat_panel_jexp.icon_state = "60HP"
				if(52 to 59)
					stat_panel_jexp.icon_state = "52HP"
				if(44 to 51)
					stat_panel_jexp.icon_state = "44HP"
				if(36 to 43)
					stat_panel_jexp.icon_state = "36HP"
				if(28 to 35)
					stat_panel_jexp.icon_state = "28HP"
				if(20 to 27)
					stat_panel_jexp.icon_state = "20HP"
				if(10 to 19)
					stat_panel_jexp.icon_state = "10HP"
				if(0 to 9)
					stat_panel_jexp.icon_state = "0HP"
				else
					stat_panel_jexp.icon_state = "0HP"
		stat("EXP:",stat_panel_exp)
		stat("Job EXP:",stat_panel_jexp)
		stat("","Click Bars above to View More Detailed Level Information")
		if(monsterinparty != null && monsterinparty != "Nothing")
			statpanel("Summon")
			stat("Name:","[monsterinparty]")
			stat(null)
			switch(round(monsterinparty.hp/monsterinparty.maxhp*100))
				if(100)
					stat_panel_summon_hp.icon_state = "100HP"
				if(92 to 99)
					stat_panel_summon_hp.icon_state = "92HP"
				if(84 to 91)
					stat_panel_summon_hp.icon_state = "84HP"
				if(76 to 83)
					stat_panel_summon_hp.icon_state = "76HP"
				if(68 to 75)
					stat_panel_summon_hp.icon_state = "68HP"
				if(60 to 67)
					stat_panel_summon_hp.icon_state = "60HP"
				if(52 to 59)
					stat_panel_summon_hp.icon_state = "52HP"
				if(44 to 51)
					stat_panel_summon_hp.icon_state = "44HP"
				if(36 to 43)
					stat_panel_summon_hp.icon_state = "36HP"
				if(28 to 35)
					stat_panel_summon_hp.icon_state = "28HP"
				if(20 to 27)
					stat_panel_summon_hp.icon_state = "20HP"
				if(10 to 19)
					stat_panel_summon_hp.icon_state = "10HP"
				if(0 to 9)
					stat_panel_summon_hp.icon_state = "0HP"
				else
					stat_panel_summon_hp.icon_state = "0HP"
			if(monsterinparty.mp == 0)
				stat_panel_summon_mp.icon_state = "0HP"
			else
				switch(round(monsterinparty.mp/monsterinparty.maxmp*100))
					if(100)
						stat_panel_summon_mp.icon_state = "100HP"
					if(92 to 99)
						stat_panel_summon_mp.icon_state = "92HP"
					if(84 to 91)
						stat_panel_summon_mp.icon_state = "84HP"
					if(76 to 83)
						stat_panel_summon_mp.icon_state = "76HP"
					if(68 to 75)
						stat_panel_summon_mp.icon_state = "68HP"
					if(60 to 67)
						stat_panel_summon_mp.icon_state = "60HP"
					if(52 to 59)
						stat_panel_summon_mp.icon_state = "52HP"
					if(44 to 51)
						stat_panel_summon_mp.icon_state = "44HP"
					if(36 to 43)
						stat_panel_summon_mp.icon_state = "36HP"
					if(28 to 35)
						stat_panel_summon_mp.icon_state = "28HP"
					if(20 to 27)
						stat_panel_summon_mp.icon_state = "20HP"
					if(10 to 19)
						stat_panel_summon_mp.icon_state = "10HP"
					if(0 to 9)
						stat_panel_summon_mp.icon_state = "0HP"
					else
						stat_panel_summon_mp.icon_state = "0HP"
			if(istext(monsterinparty.expreq))
				stat_panel_summon_exp.icon_state="100HP"
			else if(monsterinparty.exp == 0)
				stat_panel_summon_exp.icon_state = "0HP"
			else
				switch(round(monsterinparty.exp/monsterinparty.expreq*100))
					if(100)
						stat_panel_summon_exp.icon_state = "100HP"
					if(92 to 99)
						stat_panel_summon_exp.icon_state = "92HP"
					if(84 to 91)
						stat_panel_summon_exp.icon_state = "84HP"
					if(76 to 83)
						stat_panel_summon_exp.icon_state = "76HP"
					if(68 to 75)
						stat_panel_summon_exp.icon_state = "68HP"
					if(60 to 67)
						stat_panel_summon_exp.icon_state = "60HP"
					if(52 to 59)
						stat_panel_summon_exp.icon_state = "52HP"
					if(44 to 51)
						stat_panel_summon_exp.icon_state = "44HP"
					if(36 to 43)
						stat_panel_summon_exp.icon_state = "36HP"
					if(28 to 35)
						stat_panel_summon_exp.icon_state = "28HP"
					if(20 to 27)
						stat_panel_summon_exp.icon_state = "20HP"
					if(10 to 19)
						stat_panel_summon_exp.icon_state = "10HP"
					if(0 to 9)
						stat_panel_summon_exp.icon_state = "0HP"
					else
						stat_panel_summon_exp.icon_state = "0HP"
			stat("HP:",stat_panel_summon_hp)
			stat("MP:",stat_panel_summon_mp)
			stat("Exp:",stat_panel_summon_exp)
			if(monsterinparty.loyal >= 300)
				stat("Loyalty:","Extremely Happy")
			else if(monsterinparty.loyal >= 250)
				stat("Loyalty:","Moderately Happy")
			else if(monsterinparty.loyal >= 200)
				stat("Loyalty:","Happy")
			else if(monsterinparty.loyal >= 150)
				stat("Loyalty:","Normal")
			else if(monsterinparty.loyal >= 100)
				stat("Loyalty:","Obedient")
			else if(monsterinparty.loyal >= 80)
				stat("Loyalty:","Unhappy")
			else if(monsterinparty.loyal >= 50)
				stat("Loyalty:","Angry")
			else
				stat("Loyalty:","Overly Pissed")
			stat("","Click Bars above to View More Detailed Summon Information")
		statpanel("Skills")
		if(job == "Warrior")
			stat("Level 1","")
			stat(null)
			if(bash != 0)
				stat("Bash","Level [bash]")
			if(superbash != 0)
				stat("Super Bash","Level [superbash]")
			if(multiswing != 0)
				stat("Multi Swing","Level [multiswing]")
			if(megamultiswing != 0)
				stat("Mega Multi Swing","Level [megamultiswing]")
			if(enflameattack != 0)
				stat("Enflamed Attack","Level [enflameattack]")
			if(superenflameattack != 0)
				stat("Super Enflamed Attack","Level [superenflameattack]")
			if(iceattack != 0)
				stat("Iced Attack","Level [iceattack]")
			if(supericeattack != 0)
				stat("Super Iced Attack","Level [supericeattack]")
			if(tornattack != 0)
				stat("Tornado Attack","Level [tornattack]")
			if(supertornattack != 0)
				stat("Super Tornado Attack","Level [supertornattack]")
			if(consenattack != 0)
				stat("Consentrated Attack","Level [consenattack]")
			if(superconsenattack != 0)
				stat("Super Consentrated Attack","Level [superconsenattack]")
		if(job == "Mage")
			stat("Level 1","")
			stat(null)
			if(cblast != 0)
				stat("Cosmic Blast","Level [cblast]")
			if(masterscblast != 0)
				stat("Master's Cosmic Blast","Level [masterscblast]")
			if(fireburst != 0)
				stat("Fire Burst","Level [fireburst]")
			if(superfireburst != 0)
				stat("Super Fire Burst","Level [superfireburst]")
			if(iceburst != 0)
				stat("Ice Burst","Level [iceburst]")
			if(supericeburst != 0)
				stat("Super Ice Burst","Level [supericeburst]")
			if(lightningburst != 0)
				stat("Lightning Burst","Level [lightningburst]")
			if(superlightningburst != 0)
				stat("Super Lightning Burst","Level [superlightningburst]")
			if(windburst != 0)
				stat("Wind Burst","Level [windburst]")
			if(superwindburst != 0)
				stat("Super Wind Burst","Level [superwindburst]")
			if(earthburst != 0)
				stat("Earth Burst","Level [earthburst]")
			if(superearthburst != 0)
				stat("Super Earth Burst","Level [superearthburst]")
			if(beat != 0)
				stat("Beat","Level [beat]")
		if(job == "Assassin")
			stat("Level 1","")
			stat(null)
			if(speedstrike != 0)
				stat("Speed Strike","Level [speedstrike]")
			if(assassinate != 0)
				stat("Assassinate","Level [assassinate]")
			if(glare != 0)
				stat("Glare","Level [glare]")
			if(sd != 0)
				stat("Silent Death","Level [sd]")
			if(msd != 0)
				stat("Masterful Death","Level [msd]")
			if(pois != 0)
				stat("Poison Bottle","Level [pois]")
			if(mpd != 0)
				stat("MP Drain","Level [mpd]")
		if(job == "Priest")
			stat("Level 1","")
			stat(null)
			if(priestheal != 0)
				stat("Heal","Level [priestheal]")
			if(superheal != 0)
				stat("Super Heal","Level [superheal]")
			if(holybolt != 0)
				stat("Holy Bolt","Level [holybolt]")
			if(holylit != 0)
				stat("Holy Lightning","Level [holylit]")
			if(holycross != 0)
				stat("Holy Cross","Level [holycross]")
			if(holyham != 0)
				stat("Holy Hammer","Level [holyham]")
			if(holyhams != 0)
				stat("Holy Hammers","Level [holyhams]")
			if(beat != 0)
				stat("Beat","Level [beat]")
		if(job == "Level 2 Warrior")
			stat("Level 1","")
			stat(null)
			if(bash != 0)
				stat("Bash","Level [bash]")
			if(superbash != 0)
				stat("Super Bash","Level [superbash]")
			if(multiswing != 0)
				stat("Multi Swing","Level [multiswing]")
			if(megamultiswing != 0)
				stat("Mega Multi Swing","Level [megamultiswing]")
			if(enflameattack != 0)
				stat("Enflamed Attack","Level [enflameattack]")
			if(superenflameattack != 0)
				stat("Super Enflamed Attack","Level [superenflameattack]")
			if(iceattack != 0)
				stat("Iced Attack","Level [iceattack]")
			if(supericeattack != 0)
				stat("Super Iced Attack","Level [supericeattack]")
			if(tornattack != 0)
				stat("Tornado Attack","Level [tornattack]")
			if(supertornattack != 0)
				stat("Super Tornado Attack","Level [supertornattack]")
			if(consenattack != 0)
				stat("Consentrated Attack","Level [consenattack]")
			if(superconsenattack != 0)
				stat("Super Consentrated Attack","Level [superconsenattack]")
			stat(null)
			stat("Level 2","")
			stat(null)
		if(job == "Level 2 Mage")
			stat("Level 1","")
			if(cblast != 0)
				stat("Cosmic Blast","Level [cblast]")
			if(masterscblast != 0)
				stat("Master's Cosmic Blast","Level [masterscblast]")
			if(fireburst != 0)
				stat("Fire Burst","Level [fireburst]")
			if(superfireburst != 0)
				stat("Super Fire Burst","Level [superfireburst]")
			if(iceburst != 0)
				stat("Ice Burst","Level [iceburst]")
			if(supericeburst != 0)
				stat("Super Ice Burst","Level [supericeburst]")
			if(lightningburst != 0)
				stat("Lightning Burst","Level [lightningburst]")
			if(superlightningburst != 0)
				stat("Super Lightning Burst","Level [superlightningburst]")
			if(windburst != 0)
				stat("Wind Burst","Level [windburst]")
			if(superwindburst != 0)
				stat("Super Wind Burst","Level [superwindburst]")
			if(earthburst != 0)
				stat("Earth Burst","Level [earthburst]")
			if(superearthburst != 0)
				stat("Super Earth Burst","Level [superearthburst]")
			if(beat != 0)
				stat("Beat","Level [beat]")
			stat(null)
			stat("Level 2","")
			stat(null)
		if(job == "Level 2 Assassin")
			stat("Level 1","")
			stat(null)
			if(speedstrike != 0)
				stat("Speed Strike","Level [speedstrike]")
			if(assassinate != 0)
				stat("Assassinate","Level [assassinate]")
			if(glare != 0)
				stat("Glare","Level [glare]")
			if(sd != 0)
				stat("Silent Death","Level [sd]")
			if(msd != 0)
				stat("Masterful Death","Level [msd]")
			if(pois != 0)
				stat("Poison Bottle","Level [pois]")
			if(mpd != 0)
				stat("MP Drain","Level [mpd]")
			stat(null)
			stat("Level 2","")
			stat(null)
		if(job == "Level 2 Priest")
			stat("Level 1","")
			stat(null)
			if(priestheal != 0)
				stat("Heal","Level [priestheal]")
			if(superheal != 0)
				stat("Super Heal","Level [superheal]")
			if(holybolt != 0)
				stat("Holy Bolt","Level [holybolt]")
			if(holylit != 0)
				stat("Holy Lightning","Level [holylit]")
			if(holycross != 0)
				stat("Holy Cross","Level [holycross]")
			if(holyham != 0)
				stat("Holy Hammer","Level [holyham]")
			if(holyhams != 0)
				stat("Holy Hammers","Level [holyhams]")
			if(beat != 0)
				stat("Beat","Level [beat]")
			stat(null)
			stat("Level 2","")
			stat(null)
		statpanel("Other")
		stat("Click to View Other Information",click)
		statpanel("Items",contents)
		if(client.view == 10)
			worldsay_button.screen_loc="20,2"
			worldemote_button.screen_loc="20,1"
			say_button.screen_loc="21,2"
			emote_button.screen_loc="21,1"
			stat_panel_summon_hp.screen_loc="1,21"
			stat_panel_summon_mp.screen_loc="2,21"
			stat_panel_summon_exp.screen_loc="3,21"
		else if(client.view == 9)
			worldsay_button.screen_loc="18,2"
			worldemote_button.screen_loc="18,1"
			say_button.screen_loc="19,2"
			emote_button.screen_loc="19,1"
			stat_panel_summon_hp.screen_loc="1,19"
			stat_panel_summon_mp.screen_loc="2,19"
			stat_panel_summon_exp.screen_loc="3,19"
		else if(client.view == 8)
			worldsay_button.screen_loc="16,2"
			worldemote_button.screen_loc="16,1"
			say_button.screen_loc="17,2"
			emote_button.screen_loc="17,1"
			stat_panel_summon_hp.screen_loc="1,17"
			stat_panel_summon_mp.screen_loc="2,17"
			stat_panel_summon_exp.screen_loc="3,17"
		else if(client.view == 7)
			worldsay_button.screen_loc="14,2"
			worldemote_button.screen_loc="14,1"
			say_button.screen_loc="15,2"
			emote_button.screen_loc="15,1"
			stat_panel_summon_hp.screen_loc="1,15"
			stat_panel_summon_mp.screen_loc="2,15"
			stat_panel_summon_exp.screen_loc="3,15"
		else
			worldsay_button.screen_loc="12,2"
			worldemote_button.screen_loc="12,1"
			say_button.screen_loc="13,2"
			emote_button.screen_loc="13,1"
			stat_panel_summon_hp.screen_loc="1,13"
			stat_panel_summon_mp.screen_loc="2,13"
			stat_panel_summon_exp.screen_loc="3,13"

	proc
		StatBrowse()
			src << browse({"

			[src.name]'s Stats<br>
			HP: [num2text(src.hp,20)]/[num2text(src.maxhp,20)]<br>
			MP: [num2text(src.mp,20)]/[num2text(src.maxmp,20)]<br><br>

			Attack: [num2text(src.attack,20)]<br>
			Defense: [num2text(src.defense,20)]<br>
			Agility: [num2text(src.agility,20)]<br>
			Intelligence: [num2text(src.intelligence,20)]<br><br>

			[src.name]'s Other Information<br>
			Gold: [num2text(src.gold,20)]<br>
			Insured Gold: [num2text(src.banked_money,20)]<br><br>

			Color: [src.color]<br>
			Clan: [src.clan]

			"},"window=statbrowse;can_resize=0;size=320x355")

		LevelBrowse()
			src << browse({"

			[src.name]'s Level Stats<br>
			Level: [src.level]<br>
			Exp: [num2text(src.exp,20)]<br>
			Exp To Next Level: [num2text(src.expreq,20)]<br><br>

			Job: [src.job]<br>
			Job Level: [src.joblevel]<br>
			Job Exp: [num2text(src.jobexp,20)]<br>
			Job Exp To Next Level: [num2text(src.jobexpreq,20)]<br>
			Skillpoints: [src.skillpoints]<br><br>

			Retriever Level: [src.retrieverlevel]
			"},"window=levelbrowse;can_resize=0;size=320x300")

		SummonBrowse()
			if(!src.monsterinparty)return
			var/code = "[src.monsterinparty.name]'s Stats:<br>Level: [monsterinparty.level]<br><br>HP: [num2text(monsterinparty.hp,20)]/[num2text(monsterinparty.maxhp,20)]<br>MP: [num2text(monsterinparty.mp,20)]/[num2text(monsterinparty.maxmp,20)]<br>Loyalty: [monsterinparty.loyal]<br><br>Attack: [num2text(monsterinparty.attack,20)]<br>Defense: [num2text(monsterinparty.defense,20)]<br>Agility: [num2text(monsterinparty.agility,20)]<br>Intelligence: [num2text(monsterinparty.intelligence,20)]<br><br>Exp: [num2text(monsterinparty.exp,20)]<br>Exp To Next Level: [num2text(monsterinparty.expreq,20)]<br><br>Spells:<br>"
			for(var/i in src.monsterinparty.spell)
				code += "[i]<br>"
			src << browse("[code]","window=summonbrowse;can_resize=0;size=300x500")

		OtherBrowse()
			src << browse({"

			Other Info:<br>
			Players Online: [global.players.len]<br><br>

			Game Version: [version]<br><br>

			Your Guild: [src.guild]<br>
			Your Guild Leader: [src.guildleader]<br><br>

			Monsters You Have Killed: [src.monsterkilled2]<br><br>

			Metals You Own: [bmeds + smeds + gmeds] Total<br>
			Bronze Medals: [bmeds]<br>
			Silver Medals: [smeds]<br>
			Gold Medals: [gmeds]<br><br>

			Tokens: [src.toks]
			"},"window=summonbrowse;can_resize=0;size=300x500")

/*	Stat()
		statpanel("Stats")
		if(level == "Cow")return
		if(poisoned == 1)
			stat("You are Poisoned.  In battle you will lose HP every turn.")
			stat(null)
		if(diseased == 1)
			stat("You are Diseased.  In battle, you can no longer use spells or skills, nor can you run away.")
			stat(null)
		switch(round(hp/maxhp*100))
			if(100)
				stat_panel_hp.icon_state = "100HP"
			if(92 to 99)
				stat_panel_hp.icon_state = "92HP"
			if(84 to 91)
				stat_panel_hp.icon_state = "84HP"
			if(76 to 83)
				stat_panel_hp.icon_state = "76HP"
			if(68 to 75)
				stat_panel_hp.icon_state = "68HP"
			if(60 to 67)
				stat_panel_hp.icon_state = "60HP"
			if(52 to 59)
				stat_panel_hp.icon_state = "52HP"
			if(44 to 51)
				stat_panel_hp.icon_state = "44HP"
			if(36 to 43)
				stat_panel_hp.icon_state = "36HP"
			if(28 to 35)
				stat_panel_hp.icon_state = "28HP"
			if(20 to 27)
				stat_panel_hp.icon_state = "20HP"
			if(10 to 19)
				stat_panel_hp.icon_state = "10HP"
			if(0 to 9)
				stat_panel_hp.icon_state = "0HP"
			else
				stat_panel_hp.icon_state = "0HP"
		stat("HP:","[num2text(hp,20)]/[num2text(maxhp,20)]")
		stat(stat_panel_hp)
		if(mp == 0)
			stat_panel_mp.icon_state = "0HP"
		else
			switch(round(mp/maxmp*100))
				if(100)
					stat_panel_mp.icon_state = "100HP"
				if(92 to 99)
					stat_panel_mp.icon_state = "92HP"
				if(84 to 91)
					stat_panel_mp.icon_state = "84HP"
				if(76 to 83)
					stat_panel_mp.icon_state = "76HP"
				if(68 to 75)
					stat_panel_mp.icon_state = "68HP"
				if(60 to 67)
					stat_panel_mp.icon_state = "60HP"
				if(52 to 59)
					stat_panel_mp.icon_state = "52HP"
				if(44 to 51)
					stat_panel_mp.icon_state = "44HP"
				if(36 to 43)
					stat_panel_mp.icon_state = "36HP"
				if(28 to 35)
					stat_panel_mp.icon_state = "28HP"
				if(20 to 27)
					stat_panel_mp.icon_state = "20HP"
				if(10 to 19)
					stat_panel_mp.icon_state = "10HP"
				if(0 to 9)
					stat_panel_mp.icon_state = "0HP"
				else
					stat_panel_mp.icon_state = "0HP"
		stat("MP:","[num2text(mp,20)]/[num2text(maxmp,20)]")
		stat(stat_panel_mp)
		stat(null)
		stat("Attack","[num2text(attack,20)]")
		stat("Defense:","[num2text(defense,20)]")
		stat("Agility:","[num2text(agility,20)]")
		stat("Intelligence:","[num2text(intelligence,20)]")
		stat(null)
		stat("Gold:","[num2text(gold,20)]")
		stat("Insured Gold:","[num2text(banked_money,20)]")
		stat(null)
		stat("Color:","[color]")
		stat("Clan:","[clan]")
		statpanel("Level Stats")
		stat("Level:","[level]")
		if(istext(expreq))
			stat_panel_exp.icon_state="100HP"
		else if(exp == 0)
			stat_panel_exp.icon_state = "0HP"
		else
			switch(round(gotexp/neededexp*100))
				if(100)
					stat_panel_exp.icon_state = "100HP"
				if(92 to 99)
					stat_panel_exp.icon_state = "92HP"
				if(84 to 91)
					stat_panel_exp.icon_state = "84HP"
				if(76 to 83)
					stat_panel_exp.icon_state = "76HP"
				if(68 to 75)
					stat_panel_exp.icon_state = "68HP"
				if(60 to 67)
					stat_panel_exp.icon_state = "60HP"
				if(52 to 59)
					stat_panel_exp.icon_state = "52HP"
				if(44 to 51)
					stat_panel_exp.icon_state = "44HP"
				if(36 to 43)
					stat_panel_exp.icon_state = "36HP"
				if(28 to 35)
					stat_panel_exp.icon_state = "28HP"
				if(20 to 27)
					stat_panel_exp.icon_state = "20HP"
				if(10 to 19)
					stat_panel_exp.icon_state = "10HP"
				if(0 to 9)
					stat_panel_exp.icon_state = "0HP"
				else
					stat_panel_exp.icon_state = "0HP"
		stat("Exp:","[num2text(exp,20)]")
		stat("To Next:","[num2text(expreq,20)]")
		stat(stat_panel_exp)
		stat(null)
		stat(null)
		stat("Job:","[job]")
		stat("Job Level:","[joblevel]")
		if(istext(jobexpreq))
			stat_panel_jexp.icon_state="100HP"
		else if(jobexp == 0)
			stat_panel_jexp.icon_state = "0HP"
		else
			switch(round(gotjexp/neededjexp*100))
				if(100)
					stat_panel_jexp.icon_state = "100HP"
				if(92 to 99)
					stat_panel_jexp.icon_state = "92HP"
				if(84 to 91)
					stat_panel_jexp.icon_state = "84HP"
				if(76 to 83)
					stat_panel_jexp.icon_state = "76HP"
				if(68 to 75)
					stat_panel_jexp.icon_state = "68HP"
				if(60 to 67)
					stat_panel_jexp.icon_state = "60HP"
				if(52 to 59)
					stat_panel_jexp.icon_state = "52HP"
				if(44 to 51)
					stat_panel_jexp.icon_state = "44HP"
				if(36 to 43)
					stat_panel_jexp.icon_state = "36HP"
				if(28 to 35)
					stat_panel_jexp.icon_state = "28HP"
				if(20 to 27)
					stat_panel_jexp.icon_state = "20HP"
				if(10 to 19)
					stat_panel_jexp.icon_state = "10HP"
				if(0 to 9)
					stat_panel_jexp.icon_state = "0HP"
				else
					stat_panel_jexp.icon_state = "0HP"
		stat("Job Exp:","[num2text(jobexp,20)]")
		stat("To Next:","[num2text(jobexpreq,20)]")
		stat(stat_panel_jexp)
		stat(null)
		stat("Retriever Level:","[retrieverlevel]")
		if(monsterinparty != null)
			statpanel("Summon")
			stat("Name:","[monsterinparty]")
			stat(null)
			stat("HP:","[num2text(monsterinparty.hp,20)]/[num2text(monsterinparty.maxhp,20)]")
			switch(round(monsterinparty.hp/monsterinparty.maxhp*100))
				if(100)
					stat_panel_summon_hp.icon_state = "100HP"
				if(92 to 99)
					stat_panel_summon_hp.icon_state = "92HP"
				if(84 to 91)
					stat_panel_summon_hp.icon_state = "84HP"
				if(76 to 83)
					stat_panel_summon_hp.icon_state = "76HP"
				if(68 to 75)
					stat_panel_summon_hp.icon_state = "68HP"
				if(60 to 67)
					stat_panel_summon_hp.icon_state = "60HP"
				if(52 to 59)
					stat_panel_summon_hp.icon_state = "52HP"
				if(44 to 51)
					stat_panel_summon_hp.icon_state = "44HP"
				if(36 to 43)
					stat_panel_summon_hp.icon_state = "36HP"
				if(28 to 35)
					stat_panel_summon_hp.icon_state = "28HP"
				if(20 to 27)
					stat_panel_summon_hp.icon_state = "20HP"
				if(10 to 19)
					stat_panel_summon_hp.icon_state = "10HP"
				if(0 to 9)
					stat_panel_summon_hp.icon_state = "0HP"
				else
					stat_panel_summon_hp.icon_state = "0HP"
			stat(stat_panel_summon_hp)
			stat("MP:","[num2text(monsterinparty.mp,20)]/[num2text(monsterinparty.maxmp,20)]")
			if(monsterinparty.mp == 0)
				stat_panel_summon_mp.icon_state = "0HP"
			else
				switch(round(monsterinparty.mp/monsterinparty.maxmp*100))
					if(100)
						stat_panel_summon_mp.icon_state = "100HP"
					if(92 to 99)
						stat_panel_summon_mp.icon_state = "92HP"
					if(84 to 91)
						stat_panel_summon_mp.icon_state = "84HP"
					if(76 to 83)
						stat_panel_summon_mp.icon_state = "76HP"
					if(68 to 75)
						stat_panel_summon_mp.icon_state = "68HP"
					if(60 to 67)
						stat_panel_summon_mp.icon_state = "60HP"
					if(52 to 59)
						stat_panel_summon_mp.icon_state = "52HP"
					if(44 to 51)
						stat_panel_summon_mp.icon_state = "44HP"
					if(36 to 43)
						stat_panel_summon_mp.icon_state = "36HP"
					if(28 to 35)
						stat_panel_summon_mp.icon_state = "28HP"
					if(20 to 27)
						stat_panel_summon_mp.icon_state = "20HP"
					if(10 to 19)
						stat_panel_summon_mp.icon_state = "10HP"
					if(0 to 9)
						stat_panel_summon_mp.icon_state = "0HP"
					else
						stat_panel_summon_mp.icon_state = "0HP"
			stat(stat_panel_summon_mp)
			stat(null)
			stat("Loyalty","[monsterinparty.loyal]")
			if(monsterinparty.loyal >= 300)
				stat("","Extremely Happy")
			else if(monsterinparty.loyal >= 250)
				stat("","Moderately Happy")
			else if(monsterinparty.loyal >= 200)
				stat("","Happy")
			else if(monsterinparty.loyal >= 150)
				stat("","Normal")
			else if(monsterinparty.loyal >= 100)
				stat("","Obedient")
			else if(monsterinparty.loyal >= 80)
				stat("","Unhappy")
			else if(monsterinparty.loyal >= 50)
				stat("","Angry")
			else
				stat("","Overly Pissed")
			stat(null)
			stat("Attack","[num2text(monsterinparty.attack,20)]")
			stat("Defense:","[num2text(monsterinparty.defense,20)]")
			stat("Agility:","[num2text(monsterinparty.agility,20)]")
			stat("Intelligence:","[num2text(monsterinparty.intelligence,20)]")
			stat(null)
			stat("Level:","[monsterinparty.level]")
			stat(null)
			if(istext(monsterinparty.expreq))
				stat_panel_summon_exp.icon_state="100HP"
			else if(monsterinparty.exp == 0)
				stat_panel_summon_exp.icon_state = "0HP"
			else
				switch(round(monsterinparty.exp/monsterinparty.expreq*100))
					if(100)
						stat_panel_summon_exp.icon_state = "100HP"
					if(92 to 99)
						stat_panel_summon_exp.icon_state = "92HP"
					if(84 to 91)
						stat_panel_summon_exp.icon_state = "84HP"
					if(76 to 83)
						stat_panel_summon_exp.icon_state = "76HP"
					if(68 to 75)
						stat_panel_summon_exp.icon_state = "68HP"
					if(60 to 67)
						stat_panel_summon_exp.icon_state = "60HP"
					if(52 to 59)
						stat_panel_summon_exp.icon_state = "52HP"
					if(44 to 51)
						stat_panel_summon_exp.icon_state = "44HP"
					if(36 to 43)
						stat_panel_summon_exp.icon_state = "36HP"
					if(28 to 35)
						stat_panel_summon_exp.icon_state = "28HP"
					if(20 to 27)
						stat_panel_summon_exp.icon_state = "20HP"
					if(10 to 19)
						stat_panel_summon_exp.icon_state = "10HP"
					if(0 to 9)
						stat_panel_summon_exp.icon_state = "0HP"
					else
						stat_panel_summon_exp.icon_state = "0HP"
			stat(stat_panel_summon_exp)
			stat("Exp:","[num2text(monsterinparty.exp,20)]")
			stat("To Next:","[num2text(monsterinparty.expreq,20)]")
			stat(null)
			stat("Spells","")
			stat(monsterinparty.spell)
		statpanel("Other")
		stat("Players Online:","[global.players.len]")
		stat(null)
		stat("Version:","[version]")
		stat(null)
		stat(null)
		stat("Guild:","[guild]")
		stat("Guild Leader:","[guildleader]")
		stat(null)
		stat("Monsters Killed:","[monsterkilled2]")
		stat(null)
		stat("Medals","")
		stat("Bronze Medals:","[bmeds]")
		stat("Silver Medals:","[smeds]")
		stat("Gold Medals:","[gmeds]")
		statpanel("Items",contents)
		statpanel("Skills")
		if(job == "Warrior")
			if(bash != 0)
				stat("Bash","Level [bash]")
			if(superbash != 0)
				stat("Super Bash","Level [superbash]")
			if(multiswing != 0)
				stat("Multi Swing","Level [multiswing]")
			if(megamultiswing != 0)
				stat("Mega Multi Swing","Level [megamultiswing]")
			if(enflameattack != 0)
				stat("Enflamed Attack","Level [enflameattack]")
			if(superenflameattack != 0)
				stat("Super Enflamed Attack","Level [superenflameattack]")
			if(iceattack != 0)
				stat("Iced Attack","Level [iceattack]")
			if(supericeattack != 0)
				stat("Super Iced Attack","Level [supericeattack]")
			if(tornattack != 0)
				stat("Tornado Attack","Level [tornattack]")
			if(supertornattack != 0)
				stat("Super Tornado Attack","Level [supertornattack]")
			if(consenattack != 0)
				stat("Consentrated Attack","Level [consenattack]")
			if(superconsenattack != 0)
				stat("Super Consentrated Attack","Level [superconsenattack]")
		if(job == "Mage")
			if(cblast != 0)
				stat("Cosmic Blast","Level [cblast]")
			if(masterscblast != 0)
				stat("Master's Cosmic Blast","Level [masterscblast]")
			if(fireburst != 0)
				stat("Fire Burst","Level [fireburst]")
			if(superfireburst != 0)
				stat("Super Fire Burst","Level [superfireburst]")
			if(iceburst != 0)
				stat("Ice Burst","Level [iceburst]")
			if(supericeburst != 0)
				stat("Super Ice Burst","Level [supericeburst]")
			if(lightningburst != 0)
				stat("Lightning Burst","Level [lightningburst]")
			if(superlightningburst != 0)
				stat("Super Lightning Burst","Level [superlightningburst]")
			if(windburst != 0)
				stat("Wind Burst","Level [windburst]")
			if(superwindburst != 0)
				stat("Super Wind Burst","Level [superwindburst]")
			if(earthburst != 0)
				stat("Earth Burst","Level [earthburst]")
			if(superearthburst != 0)
				stat("Super Earth Burst","Level [superearthburst]")
			if(beat != 0)
				stat("Beat","Level [beat]")
		if(job == "Assassin")
			if(speedstrike != 0)
				stat("Speed Strike","Level [speedstrike]")
			if(assassinate != 0)
				stat("Assassinate","Level [assassinate]")
			if(glare != 0)
				stat("Glare","Level [glare]")
			if(sd != 0)
				stat("Silent Death","Level [sd]")
			if(msd != 0)
				stat("Masterful Death","Level [msd]")
			if(pois != 0)
				stat("Poison Bottle","Level [pois]")
			if(mpd != 0)
				stat("MP Drain","Level [mpd]")
		if(job == "Priest")
			if(priestheal != 0)
				stat("Heal","Level [priestheal]")
			if(superheal != 0)
				stat("Super Heal","Level [superheal]")
			if(holybolt != 0)
				stat("Holy Bolt","Level [holybolt]")
			if(holylit != 0)
				stat("Holy Lightning","Level [holylit]")
			if(holycross != 0)
				stat("Holy Cross","Level [holycross]")
			if(holyham != 0)
				stat("Holy Hammer","Level [holyham]")
			if(holyhams != 0)
				stat("Holy Hammers","Level [holyhams]")
			if(beat != 0)
				stat("Beat","Level [beat]")
		if(client.view == 10)
			worldsay_button.screen_loc="20,2"
			worldemote_button.screen_loc="20,1"
			say_button.screen_loc="21,2"
			emote_button.screen_loc="21,1"
			stat_panel_summon_hp.screen_loc="1,21"
			stat_panel_summon_mp.screen_loc="2,21"
			stat_panel_summon_exp.screen_loc="3,21"
		else if(client.view == 9)
			worldsay_button.screen_loc="18,2"
			worldemote_button.screen_loc="18,1"
			say_button.screen_loc="19,2"
			emote_button.screen_loc="19,1"
			stat_panel_summon_hp.screen_loc="1,19"
			stat_panel_summon_mp.screen_loc="2,19"
			stat_panel_summon_exp.screen_loc="3,19"
		else if(client.view == 8)
			worldsay_button.screen_loc="16,2"
			worldemote_button.screen_loc="16,1"
			say_button.screen_loc="17,2"
			emote_button.screen_loc="17,1"
			stat_panel_summon_hp.screen_loc="1,17"
			stat_panel_summon_mp.screen_loc="2,17"
			stat_panel_summon_exp.screen_loc="3,17"
		else if(client.view == 7)
			worldsay_button.screen_loc="14,2"
			worldemote_button.screen_loc="14,1"
			say_button.screen_loc="15,2"
			emote_button.screen_loc="15,1"
			stat_panel_summon_hp.screen_loc="1,15"
			stat_panel_summon_mp.screen_loc="2,15"
			stat_panel_summon_exp.screen_loc="3,15"
		else
			worldsay_button.screen_loc="12,2"
			worldemote_button.screen_loc="12,1"
			say_button.screen_loc="13,2"
			emote_button.screen_loc="13,1"
			stat_panel_summon_hp.screen_loc="1,13"
			stat_panel_summon_mp.screen_loc="2,13"
			stat_panel_summon_exp.screen_loc="3,13"*/

