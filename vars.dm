//Global Variables
var
	players = 0

//Mob Variables
mob
	var
		//Stat Variables
		hp = 36
		mhp = 36
		mp = 7
		mmp = 7
		oh = -10000
		om = -10000
		ol = -10000
		oe = -10000
		str = 7
		int = 1
		agl = 2
		luk = 3
		dex = 3
		level = 1
		joblevel = 1
		retrieverlevel = 0
		gold = 0
		banked_gold = 0
		exp = 0
		expr = 10
		jobexp = 0
		jobexpr = 10
		rank = 0
		ap = 0
		job
		color = "Blue"
		clan = "Unknown"
		list/spell=new/list()
		//Saving Variables
		savex = 191
		savey = 191
		savez = 1
		resx = 12
		resy = 8
		resz = 2
		rest = "Almenhest"
		dunx
		duny
		dunz
		indungeon = 0
		warping = 0
		//Login/Logout Variables
		loggedin = 0
		//Guild Variables
		guild = "None!"
		guildleader
		//Chat Variables
		cannottalk = 0
		mutetalk = 0
		goldgain = 0
		list/ignore=new/list()
		worldsaytoggle = 0
		status = "Available"
		//Battle Variables
		battling = 0
		starter = 0
		bedragon = 0
		tempstr
		tempint
		tempagl
		templuk
		tempdex
		uppcnt
		atkcnt
		othcnt
		origcolor = "white"
		monstersinbattle
		inbattle
		islocked
		lib
		libs
		list/monstergroup = new/list()
		checkbattle
		monstersugot
		monstersfighting = 0
		dead
		ran
		mobsinbattle = 4
		monstergroupnumber
		amount
		monster_number
		monster_number2
		poisoned = 0
		gonealready = 0
		list/battlelist = new/list()
		list/chooselist = new/list()
		obj/arrow/arrows
		defending = 0
		stage
		page = 1
		howfar = 1
		//Enemy Effects
		nospell = 0
		nosight = 0
		bar = 0
		bon = 0
		//Spell Pages
		list/spells = list()
		list
			spage = new/list(5,8)
			paged = new/list()
		//Item Pages
		list
			ipage = new/list(100,8)
		//Other Variables
		location = "Almenhest"
		list/textlist = new/list()
		list/statlist = new/list()
		permo = 0
		inhouse = 0
		start1 = 0
		story = 0
		srun = 0
		sdead = 0
		obj/keyring/keyring = new/obj/keyring
		//Skill Variables
		stolen = 0
		//Medal Varaibles
		bronzem = 0
		silverm = 0
		goldm = 0
		story1 = 0
		//Quest/Story Variables
		guard = 0

obj
	keyring
	var
		//House Object Variables
		dropped = 0