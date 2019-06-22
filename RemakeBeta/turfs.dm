turf
	Begin
		B
			name = "B"
			icon = 'letters.dmi'
			icon_state = "B"
			density = 1
			Click()
				var/mob/BaseCamp/ChoosingCharacter/m = usr
				m.origChooseCharacter()

		E
			name = "E"
			icon = 'letters.dmi'
			icon_state = "E"
			density = 1
			Click()
				var/mob/BaseCamp/ChoosingCharacter/m = usr
				m.origChooseCharacter()

		G
			name = "G"
			icon = 'letters.dmi'
			icon_state = "G"
			density = 1
			Click()
				var/mob/BaseCamp/ChoosingCharacter/m = usr
				m.origChooseCharacter()

		I
			name = "I"
			icon = 'letters.dmi'
			icon_state = "I"
			density = 1
			Click()
				var/mob/BaseCamp/ChoosingCharacter/m = usr
				m.origChooseCharacter()

		N
			name = "N"
			icon = 'letters.dmi'
			icon_state = "N"
			density = 1
			Click()
				var/mob/BaseCamp/ChoosingCharacter/m = usr
				m.origChooseCharacter()

	blackness
		name = ""
		icon = 'turfs.dmi'
		icon_state = "black"
		density = 1

	Sa
		name = ""
		icon = 'letters.dmi'
		icon_state = "SA"
		density = 1

	Ja
		name = ""
		icon = 'letters.dmi'
		icon_state = "JA"
		density = 1

	I1a
		name = ""
		icon = 'letters.dmi'
		icon_state = "I1A"
		density = 1

	I2a
		name = ""
		icon = 'letters.dmi'
		icon_state = "I2A"
		density = 1

	Sb
		name = ""
		icon = 'letters.dmi'
		icon_state = "SB"
		density = 1

	Jb
		name = ""
		icon = 'letters.dmi'
		icon_state = "JB"
		density = 1

	I1b
		name = ""
		icon = 'letters.dmi'
		icon_state = "I1B"
		density = 1

	I2b
		name = ""
		icon = 'letters.dmi'
		icon_state = "I2B"
		density = 1

	Sc
		name = ""
		icon = 'letters.dmi'
		icon_state = "SC"
		density = 1

	Jc
		name = ""
		icon = 'letters.dmi'
		icon_state = "JC"
		density = 1

	I1c
		name = ""
		icon = 'letters.dmi'
		icon_state = "I1C"
		density = 1

	I2c
		name = ""
		icon = 'letters.dmi'
		icon_state = "I2C"
		density = 1

	Sd
		name = ""
		icon = 'letters.dmi'
		icon_state = "SD"
		density = 1

	Jd
		name = ""
		icon = 'letters.dmi'
		icon_state = "JD"
		density = 1

	I1d
		name = ""
		icon = 'letters.dmi'
		icon_state = "I1D"
		density = 1

	I2d
		name = ""
		icon = 'letters.dmi'
		icon_state = "I2D"
		density = 1

	dontpass
		name = ""
		Enter(atom/movable/A)
			if(ismob(A))
				var/mob/M=A
				if(M.gotitem1==2)
					usr << "A mystical force blocks you from returning!"
					return 0
				if(M.gotitem2==2)
					usr << "A mystical force blocks you from returning!"
					return 0
				if(M.gotitem3==2)
					usr << "A mystical force blocks you from returning!"
					return 0
				if(M.gotitem4==2)
					usr << "A mystical force blocks you from returning!"
					return 0
				else
					.=..()

	warper
		name = ""
		Enter(mob/Newchar/A)
			if(istype(A,/mob/Newchar))
				if(A.gorbanwon)
					return
				A.islocked = 1
				A << "<i>As you approach the staircase, a sudden force stops your movement.</i>"
				sleep(20)
				A << "<b><font color = olive>????:</b><font color = green> Ahhhh....I have been waiting for you."
				sleep(20)
				A << "<b><font color = olive>????:</b><font color = green> You are wondering who I am...I am Jalack, of the Zenthians.  We are Zenithian Slimes, we have been sent out by the Zenithian Dragon to find you and to teach you."
				sleep(20)
				A << "<b><font color = olive>????:</b><font color = green> Come...I will show you what you must know..."
				A.loc = locate(14,14,10)
				A.islocked = 0
			else
				return ..()

	monster_blocker
		name = ""
		Enter(atom/movable/A)
			if(istype(A,/mob/summons)) return 1
			if(ismob(A))
				var/mob/M=A
				if(M.client)
					return ..()
			else return ..()

	upnotdown
		name = ""
		Enter(atom/movable/A)
			if(ismob(A))
				if(A.dir == NORTH)
					return ..()


	ArrowDown
		name = ""
		icon = 'turfs.dmi'
		icon_state = "arrowd"
		Enter(atom/movable/A)
			usr.y -= 3

	ArrowUp
		name = ""
		icon = 'turfs.dmi'
		icon_state = "arrowu"
		Enter(atom/movable/A)
			usr.y += 3

	ArrowLeft
		name = ""
		icon = 'turfs.dmi'
		icon_state = "arrowl"
		Enter(atom/movable/A)
			usr.x -= 3

	ArrowRight
		name = ""
		icon = 'turfs.dmi'
		icon_state = "arrowr"
		Enter(atom/movable/A)
			usr.x += 3

	towert
		name = ""
		icon = 'turfs.dmi'
		icon_state = "towert"

	towerb
		name = ""
		icon = 'turfs.dmi'
		icon_state = "towerb"

	blackwater
		name = ""
		icon = 'turfs.dmi'
		icon_state = "blackwater"

	woodchair
		name = ""
		icon = 'turfs.dmi'
		icon_state = "woodchair"

	sink
		name = ""
		icon = 'turfs.dmi'
		icon_state = "sink"
		density = 1

	sinkro
		name = ""
		icon = 'turfs.dmi'
		icon_state = "sinkro"
		density = 1

	sinklo
		name = ""
		icon = 'turfs.dmi'
		icon_state = "sinklo"
		density = 1

	sinkmo
		name = ""
		icon = 'turfs.dmi'
		icon_state = "sinkmo"
		density = 1

	stove
		name = ""
		icon = 'turfs.dmi'
		icon_state = "stove"
		density = 1

	dresser
		name = ""
		icon = 'turfs.dmi'
		icon_state = "dresser"
		density = 1

	armorsign
		name = ""
		icon = 'turfs.dmi'
		icon_state = "armorsign"
		density = 1

	weaponsign
		name = ""
		icon = 'turfs.dmi'
		icon_state = "weaponsign"
		density = 1

	innsign
		name = ""
		icon = 'turfs.dmi'
		icon_state = "innsign"
		density = 1

	cavewalledge1
		name = ""
		icon = 'turfs.dmi'
		icon_state = "caveedge1"
		density = 1

	cavewalledge2
		name = ""
		icon = 'turfs.dmi'
		icon_state = "caveedge2"
		density = 1

	cavewall
		name = ""
		icon = 'turfs.dmi'
		icon_state = "cavewall1"
		density = 1

	flamecavewall
		name = ""
		icon = 'turfs.dmi'
		icon_state = "flamecavewall1"
		density = 1

	cavedirt
		name = ""
		icon = 'turfs.dmi'
		icon_state = "cavefloor"

	flamecavedirt
		name = ""
		icon = 'turfs.dmi'
		icon_state = "flamecavefloor"

	caverock
		name = ""
		icon = 'turfs.dmi'
		icon_state = "caverock"
		density = 1

	rockpillaru
		name = ""
		icon = 'turfs.dmi'
		icon_state = "rockpillaru"
		density = 1

	rockpillard
		name = ""
		icon = 'turfs.dmi'
		icon_state = "rockpillard"
		density = 1

	caveenterance
		name = ""
		icon = 'turfs.dmi'
		icon_state = "caveenter"

	logbridge
		name = ""
		icon = 'turfs.dmi'
		icon_state = "logbridge"

	stonefloor
		name = ""
		icon = 'turfs.dmi'
		icon_state = "stonefloor"

	bedl
		density = 1
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bedl"

	bedr
		density = 1
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bedr"

	bridger
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bridger"

	bridgem
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bridgem"

	bridgel
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bridgel"

	brickwalledge
		name = ""
		icon = 'turfs.dmi'
		icon_state = "brickwalledge"
		density = 1

	brickwall
		name = ""
		icon = 'turfs.dmi'
		icon_state = "brickwall"
		density = 1

	dungeonbrickwalledge
		name = ""
		icon = 'turfs.dmi'
		icon_state = "brickwalledge"
		density = 1
		opacity = 1

	dungeonbrickwall
		name = ""
		icon = 'turfs.dmi'
		icon_state = "brickwall"
		density = 1
		opacity = 1

	path
		name = ""
		icon = 'turfs.dmi'
		icon_state = "path"

	greenpath
		name = ""
		icon = 'turfs.dmi'
		icon_state = "greenpath"

	bluepath
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bluepath"

	redpath
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redpath"

	redtobluepathu
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redbluepathu"

	redtobluepathd
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redbluepathd"

	redtobluepathl
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redbluepathl"

	redtobluepathr
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redbluepathr"

	brush
		name = ""
		icon = 'turfs.dmi'
		icon_state = "brush"

	firebrush
		name = ""
		icon = 'turfs.dmi'
		icon_state = "firebrush"

	whitecobble
		name = ""
		icon = 'turfs.dmi'
		icon_state = "whitecobble"

	greencobble
		name = ""
		icon = 'turfs.dmi'
		icon_state = "greencobble"

	firecobble
		name = ""
		icon = 'turfs.dmi'
		icon_state = "firecobble"

	redcobble
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redcobble"

	purplecobble
		name = ""
		icon = 'turfs.dmi'
		icon_state = "purplecobble"

	bluecobble
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bluecobble"

	churchbellu
		name = ""
		icon = 'turfs.dmi'
		icon_state = "churchbellu"
		density = 1

	churchbelld
		name = ""
		icon = 'turfs.dmi'
		icon_state = "churchbelld"
		density = 1

	cross
		name = ""
		icon = 'turfs.dmi'
		icon_state = "cross"
		density = 1

	fence
		name = ""
		icon = 'turfs.dmi'
		icon_state = "fence"
		density = 1

	firefence
		name = ""
		icon = 'turfs.dmi'
		icon_state = "firefence"
		density = 1

	door
		name = "Door"
		icon = 'turfs.dmi'
		icon_state = "door"
		density = 1
		Click()
			if(src in oview(1))
				icon_state = "invis"
				density = 0
				name = ""
				sleep(50)
				icon_state = "door"
				name = "Door"
				density = 1

	closeddoor
		name = "Door"
		icon = 'turfs.dmi'
		icon_state = "door"
		density = 1
		Click()
			if(src in oview(1))
				usr << "<i>A note was left on the door...<b>Sorry, but at this time, this building is out of service.  Please come back later.</font>"

	counter
		name = ""
		icon = 'turfs.dmi'
		icon_state = "counter"
		density = 1

	openedchest
		name = ""
		icon = 'turfs.dmi'
		icon_state = "openchest"
		density = 1

	closedchest
		name = ""
		icon = 'turfs.dmi'
		icon_state = "closechest"
		density = 1

	fireclosedchest
		name = ""
		icon = 'turfs.dmi'
		icon_state = "fireclosechest"
		density = 1

	tree
		name = ""
		icon = 'turfs.dmi'
		icon_state = "tree"
		density = 1

	dungeontree
		name = ""
		icon = 'turfs.dmi'
		icon_state = "tree"
		opacity = 1
		density = 1

	firetree
		name = ""
		icon = 'turfs.dmi'
		icon_state = "firetree"
		density = 1

	icetree
		name = ""
		icon = 'turfs.dmi'
		icon_state = "icetree"
		density = 1

	icebrush
		name = ""
		icon = 'turfs.dmi'
		icon_state = "icebrush"

	icegrass1
		name = ""
		icon = 'turfs.dmi'
		icon_state = "icegrass1"

	icegrass2
		name = ""
		icon = 'turfs.dmi'
		icon_state = "icegrass2"

	icewall
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bluewall"
		density = 1

	icewalledge
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bluewalledge"
		density = 1

	icepath
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bluepath"

	metaltable
		name = ""
		icon = 'turfs.dmi'
		icon_state = "metaltable"
		density = 1

	woodentable
		name = ""
		icon = 'turfs.dmi'
		icon_state = "woodtable"
		density = 1

	barrel
		name = ""
		icon = 'turfs.dmi'
		icon_state = "barrel"
		density = 1

	stairsup
		name = ""
		icon = 'turfs.dmi'
		icon_state = "stairsu"
		Enter()
			usr << "This staircase is inactive.  This is because the next area is not ready."

	stairsdown
		name = ""
		icon = 'turfs.dmi'
		icon_state = "stairsd"
		Enter()
			usr << "This staircase is inactive.  This is because the next area is not ready."

	redstairsup
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redstairsu"

	redstairsdown
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redstairsd"

	sky
		name = ""
		icon = 'turfs.dmi'
		icon_state = "sky"
		density = 1

	carpetn
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpetn"

	carpets
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpets"

	carpete
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpete"

	carpetw
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpetw"

	carpetne
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpetne"

	carpetnw
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpetnw"

	carpetse
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpetse"

	carpetsw
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpetsw"

	carpetswc
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpetcornersw"

	carpetsec
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpetcornerse"

	carpetnwc
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpetcornernw"

	carpetnec
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpetcornerne"

	carpet
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpet"

	pillaru
		name = ""
		icon = 'turfs.dmi'
		icon_state = "pillaru"
		density = 1

	pillard
		name = ""
		icon = 'turfs.dmi'
		icon_state = "pillard"
		density = 1

	tile
		name = ""
		icon = 'turfs.dmi'
		icon_state = "tile"

	marsh
		name = "Marsh"
		icon = 'turfs.dmi'
		icon_state = "marsh"
		density = 0
		Enter(atom/movable/A)
			usr.hp -= 1
			.=..()

	townw
		name = ""
		icon = 'turfs.dmi'
		icon_state = "townw"

	towne
		name = ""
		icon = 'turfs.dmi'
		icon_state = "towne"

	coastnse
		name = ""
		icon = 'turfs.dmi'
		icon_state = "coastnse"
		density = 1

	coastnsw
		name = ""
		icon = 'turfs.dmi'
		icon_state = "coastnsw"
		density = 1

	coastnwe
		name = ""
		icon = 'turfs.dmi'
		icon_state = "coastnwe"
		density = 1

	coastswe
		name = ""
		icon = 'turfs.dmi'
		icon_state = "coastswe"
		density = 1

	coastne
		name = ""
		icon = 'turfs.dmi'
		icon_state = "coastne"
		density = 1

	coastnw
		name = ""
		icon = 'turfs.dmi'
		icon_state = "coastnw"
		density = 1

	coastse
		name = ""
		icon = 'turfs.dmi'
		icon_state = "coastse"
		density = 1

	coastsw
		name = ""
		icon = 'turfs.dmi'
		icon_state = "coastsw"
		density = 1

	coastn
		name = ""
		icon = 'turfs.dmi'
		icon_state = "coastn"
		density = 1

	coasts
		name = ""
		icon = 'turfs.dmi'
		icon_state = "coasts"
		density = 1

	coaste
		name = ""
		icon = 'turfs.dmi'
		icon_state = "coaste"
		density = 1

	coastw
		name = ""
		icon = 'turfs.dmi'
		icon_state = "coastw"
		density = 1

	water
		name = ""
		icon = 'turfs.dmi'
		icon_state = "water"
		density = 1

	redwater
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redwater"
		density = 1

	hill
		name = ""
		icon = 'turfs.dmi'
		icon_state = "hill"

	forest
		name = ""
		icon = 'turfs.dmi'
		icon_state = "forest"

	grass1
		name = ""
		icon = 'turfs.dmi'
		icon_state = "grass1"

	grass2
		name = ""
		icon = 'turfs.dmi'
		icon_state = "grass2"

	firehill
		name = ""
		icon = 'turfs.dmi'
		icon_state = "firehill"

	fireforest
		name = ""
		icon = 'turfs.dmi'
		icon_state = "fireforest"

	firegrass1
		name = ""
		icon = 'turfs.dmi'
		icon_state = "firegrass1"

	firegrass2
		name = ""
		icon = 'turfs.dmi'
		icon_state = "firegrass2"

	sand
		name = ""
		icon = 'turfs.dmi'
		icon_state = "sand"

	hillside
		name = ""
		icon = 'turfs.dmi'
		icon_state = "hillside"
		density = 1

	mountain
		name = ""
		icon = 'turfs.dmi'
		icon_state = "mountain"
		density = 1

	leftbottomcentercobble
		name = ""
		icon = 'turfs.dmi'
		icon_state = "leftbottom"

	lefttopcentercobble
		name = ""
		icon = 'turfs.dmi'
		icon_state = "lefttop"

	righttopcentercobble
		name = ""
		icon = 'turfs.dmi'
		icon_state = "righttop"

	rightbottomcentercobble
		name = ""
		icon = 'turfs.dmi'
		icon_state = "rightbottom"

	fyellowflowers
		name = ""
		icon = 'turfs.dmi'
		icon_state = "yellowflowers"

	fredflowers
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redflowers"

	fpurpleflowers
		name = ""
		icon = 'turfs.dmi'
		icon_state = "purpleflowers"

	fblueflowers
		name = ""
		icon = 'turfs.dmi'
		icon_state = "blueflowers"

	chair
		name = ""
		icon = 'turfs.dmi'
		icon_state = "chair"

	table
		name = ""
		icon = 'turfs.dmi'
		icon_state = "table"
		density = 1

	centercobble
		name = ""
		icon = 'turfs.dmi'
		icon_state = "centercobble"

	pot
		name = ""
		icon = 'turfs.dmi'
		icon_state = "pot"
		density = 1

	barrier
		name = ""
		icon = 'turfs.dmi'
		icon_state = "barrier"
		Entered(mob/M)
			if(M.client)
				M.hp -= 2500
				var/mob/monster/Area1/Slime1/B = new /mob/monster/Area1/Slime1
				if(M.hp <= 0)
					B.Deathcheck()
				del B

	redbarrier
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redbarrier"

	walledge
		name = ""
		icon = 'turfs.dmi'
		icon_state = "walledge"
		density = 1

	dungeonbluewalledge
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bluewalledge"
		density = 1
		opacity = 1

	redwalledge
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redwalledge"
		density = 1
		opacity = 1

	castleedge
		name = ""
		icon = 'turfs.dmi'
		icon_state = "castleedge"
		density = 1
		opacity = 1

	lightwalledge
		name = ""
		icon = 'turfs.dmi'
		icon_state = "lightedwalledge"
		density = 1
		opacity = 1

	greenwalledge
		name = ""
		icon = 'turfs.dmi'
		icon_state = "greenwalledge"
		density = 1

	greenwall
		name = ""
		icon = 'turfs.dmi'
		icon_state = "greenwall"
		density = 1

	blackwalledge
		name = ""
		icon = 'turfs.dmi'
		icon_state = "blackwalledge"
		density = 1
		opacity = 1

	blackwall
		name = ""
		icon = 'turfs.dmi'
		icon_state = "blackwall"
		density = 1
		opacity = 1

	blackcobble
		name = ""
		icon = 'turfs.dmi'
		icon_state = "blackcobble"

	wall
		name = ""
		icon = 'turfs.dmi'
		icon_state = "wall"
		density = 1

	dungeonwall
		name = ""
		icon = 'turfs.dmi'
		icon_state = "wall"
		density = 1
		opacity = 1

	dungeonwalledge
		name = ""
		icon = 'turfs.dmi'
		icon_state = "walledge"
		density = 1
		opacity = 1

	dungeonbluewall
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bluewall"
		density = 1
		opacity = 1

	redwall
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redwall"
		density = 1
		opacity = 1

	castlebl
		name = ""
		icon = 'turfs.dmi'
		icon_state = "castlebl"

	castlebr
		name = ""
		icon = 'turfs.dmi'
		icon_state = "castlebr"

	castletl
		name = ""
		icon = 'turfs.dmi'
		icon_state = "castletl"

	castletr
		name = ""
		icon = 'turfs.dmi'
		icon_state = "castletr"

	thronebl
		name = ""
		icon = 'turfs.dmi'
		icon_state = "tbl"
		density = 1

	thronebm
		name = ""
		icon = 'turfs.dmi'
		icon_state = "tbm"

	thronebr
		name = ""
		icon = 'turfs.dmi'
		icon_state = "tbr"
		density = 1

	thronetr
		name = ""
		icon = 'turfs.dmi'
		icon_state = "ttr"
		density = 1

	thronetl
		name = ""
		icon = 'turfs.dmi'
		icon_state = "ttl"
		density = 1

	thronetm
		name = ""
		icon = 'turfs.dmi'
		icon_state = "ttm"
		density = 1

	hut
		name = ""
		icon = 'turfs.dmi'
		icon_state = "hut"

	invisiblewall
		name = ""
		density = 1