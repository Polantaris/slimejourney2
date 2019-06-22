obj
	var
		dropped = 0

mob
	var
		list
			spelllist = list()
			items = list()
			monstergroup = list()
			monsters

obj
	var
		list
			storagelist = list()

mob
	var
		area
		npcsay = 1
		bossbattleswon = 0
		monsterkilled = 0
		monsterkilled2 = 0
		bmeds = 0
		smeds = 0
		gmeds = 0
		whereat = "Town"
		housearea = 0
		monsterran = 0
		endbattle = 0
		monstersugot = 0
		banked_money = 0
		monstersinbattle = 0
		cannottalk = 0
		monsterinhouse = "No"
		monstersfighting = 0
		loggedin = 0
		chosemonnum = 0
		timeshow
		timeseca
		timemina
		timehoura
		timesec = 0
		timemin = 0
		timehour = 0
		gorbanwon = 0
		mobsinbattle = 4
		hpgain
		mpgain
		atkgain
		defgain
		aglgain
		intgain
		expgain
		extragain
		extraexp
		afk = 0
		mob/monsterinparty = null
		mob/monsterfollow = null
		awaymsg = "Available"
		member = 0
		rooms
		Admin = 0
		goldgain = 0
		hp = 0
		maxhp = 0
		mp = 0
		maxmp = 0
		attack = 0
		defense = 0
		intelligence = 0
		agility = 0
		color
		job = "None"
		level = 1
		joblevel = 1
		poisoned = 0
		diseased = 0
		jobexp = 0
		jobexpreq = 0
		exp = 0
		expreq = 0
		skillpoints = 0
		realexp = 0
		inbattle = 0
		monstersave1 = "Nothing"
		monstersave2 = "Nothing"
		monstersave3 = "Nothing"
		monstersave4 = "Nothing"
		monstersave5 = "Nothing"
		gold = 0
		class
		owner
		clan = "None"
		islocked = 0
		lockedforever = 0
		fighting
		battle
		amount
		monster_number = ""
		jobexpreward
		expreward
		memattack
		memdefense
		memintelligence
		memagility
		defensedoubled
		intelligencedoubled
		attackdoubled
		agilitydoubled
		mem = 0
		defend
		lib
		list/spell = new/list()
		innx = 30
		inny = 36
		innz = 1
		savex = 35
		savey = 26
		savez = 1
		stolen = 0
		lefttown
		weakice = 0
		weakfire = 0
		weakwind = 0
		weaklit = 0
		weakearth = 0
		weakholy = 0
		iceattack = 0
		tornattack = 0
		enflameattack = 0
		multiswing = 0
		bash = 0
		consenattack = 0
		superbash = 0
		superconsenattack = 0
		supericeattack = 0
		superenflameattack = 0
		supertornattack = 0
		megamultiswing = 0
		guards = 0
		cblast = 0
		masterscblast = 0
		fireburst = 0
		iceburst = 0
		lightningburst = 0
		windburst = 0
		earthburst = 0
		superfireburst = 0
		supericeburst = 0
		superlightningburst = 0
		superwindburst = 0
		superearthburst = 0
		beat = 0
		speedstrike = 0
		assassinate = 0
		glare = 0
		sd = 0
		msd = 0
		pois = 0
		mpd = 0
		priestheal = 0
		superheal = 0
		holybolt = 0
		holylit = 0
		holycross = 0
		holyham = 0
		holyhams = 0
		retriever = 0
		informant = 0
		gotitem1 = 0
		gotitem2 = 0
		gotitem3 = 0
		gotitem4 = 0
		oldlady = 0
		basement = 0
		gotpass = 0
		ownerhouse = 0
		lunch = 0
		retrieverlevel = 0
		immuneall = 0
		housex
		housey
		housez
		houseowned = null
		gonealready = 0
		drophouseitems = 0
		urhousex = 0
		urhousey = 0
		urhousez = 0
		dungeon = 0
		gotexp = 0
		neededexp = 10
		gotjexp = 0
		neededjexp = 15
		loyal = 100
		chest1 = 0
		chest2 = 0
		chest3 = 0
		chest4 = 0
		chest5 = 0
		chest6 = 0
		chest7 = 0
		chest8 = 0
		chest9 = 0
		chest10 = 0
		chest11 = 0
		chest12 = 0
		chest13 = 0
		chest14 = 0
		chest15 = 0
		chest16 = 0
		chest17 = 0
		chest18 = 0
		chest19 = 0
		chest20 = 0
		chest21 = 0
		chest22 = 0
		chest23 = 0
		chest24 = 0
		chest25 = 0
		chest26 = 0
		chest27 = 0
		chest28 = 0
		chest29 = 0
		chest30 = 0
		chest31 = 0
		chest32 = 0
		chest33 = 0
		chest34 = 0
		chest35 = 0
		chest36 = 0
		chest37 = 0
		chest38 = 0
		chest39 = 0
		chest40 = 0
		chest41 = 0
		chest42 = 0