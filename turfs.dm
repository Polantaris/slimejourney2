turf
	blackness
		name = ""
		icon = 'turfs.dmi'
		icon_state = "black"
		density = 1
		opacity = 1

	blackness2
		name = ""
		icon = 'turfs.dmi'
		icon_state = "black"
		density = 1

//Special Turfs
	monster_blocker
		name = ""
		Enter(atom/movable/A)
//			if(istype(A,/mob/summons)) return 1
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

//Normal turfs
	towert
		name = ""
		icon = 'turfs.dmi'
		icon_state = "towert"

	towerb
		name = ""
		icon = 'turfs.dmi'
		icon_state = "towerb"

	waterblack
		name = ""
		icon = 'turfs.dmi'
		icon_state = "blackwater"

	chairwood
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

	signarmor
		name = ""
		icon = 'turfs.dmi'
		icon_state = "armorsign"
		density = 1

	signweapon
		name = ""
		icon = 'turfs.dmi'
		icon_state = "weaponsign"
		density = 1

	signinn
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

	cavewallflame
		name = ""
		icon = 'turfs.dmi'
		icon_state = "flamecavewall1"
		density = 1

	cavedirt
		name = ""
		icon = 'turfs.dmi'
		icon_state = "cavefloor"

	cavedirtflame
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

	walledgebrick
		name = ""
		icon = 'turfs.dmi'
		icon_state = "brickwalledge"
		density = 1

	wallbrick
		name = ""
		icon = 'turfs.dmi'
		icon_state = "brickwall"
		density = 1

	walledgedungeonbrick
		name = ""
		icon = 'turfs.dmi'
		icon_state = "brickwalledge"
		density = 1
		opacity = 1

	walldungeonbrick
		name = ""
		icon = 'turfs.dmi'
		icon_state = "brickwall"
		density = 1
		opacity = 1

	path
		name = ""
		icon = 'turfs.dmi'
		icon_state = "path"

	pathgreen
		name = ""
		icon = 'turfs.dmi'
		icon_state = "greenpath"

	pathblue
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bluepath"

	pathred
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redpath"

	pathuredtoblue
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redbluepathu"

	pathdredtoblue
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redbluepathd"

	pathlredtoblue
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redbluepathl"

	pathrredtoblue
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redbluepathr"

	brush
		name = ""
		icon = 'turfs.dmi'
		icon_state = "brush"

	brushfire
		name = ""
		icon = 'turfs.dmi'
		icon_state = "firebrush"

	cobblewhite
		name = ""
		icon = 'turfs.dmi'
		icon_state = "whitecobble"

	cobblegreen
		name = ""
		icon = 'turfs.dmi'
		icon_state = "greencobble"

	cobblefire
		name = ""
		icon = 'turfs.dmi'
		icon_state = "firecobble"

	cobblered
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redcobble"

	cobblepurple
		name = ""
		icon = 'turfs.dmi'
		icon_state = "purplecobble"

	cobbleblue
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

	fencefire
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
			if(src in oview(1))Open()
		verb
			Open()
				set src in view(1)
				set category = "Other"
				icon_state = "invis"
				density = 0
				name = ""
				sleep(50)
				icon_state = "door"
				name = "Door"
				density = 1

	doorred
		name = "Door"
		icon = 'turfs.dmi'
		icon_state = "reddoor"
		density = 1
		Click()
			if(src in oview(1))Open()
		verb
			Open()
				set src in view(1)
				set category = "Other"
				icon_state = "invis"
				density = 0
				name = ""
				sleep(50)
				icon_state = "reddoor"
				name = "Door"
				density = 1

	doorblue
		name = "Door"
		icon = 'turfs.dmi'
		icon_state = "bluedoor"
		density = 1
		Click()
			if(src in oview(1))Open()
		verb
			Open()
				set src in view(1)
				set category = "Other"
				icon_state = "invis"
				density = 0
				name = ""
				sleep(50)
				icon_state = "bluedoor"
				name = "Door"
				density = 1

	doorlocked
		name = "Door"
		icon = 'turfs.dmi'
		icon_state = "door"
		density = 1
		Click()
			if(src in oview(1))Open()
		verb
			Open()
				set src in view(1)
				set category = "Other"
				usr << "<i>It's locked!"

	counter
		name = ""
		icon = 'turfs.dmi'
		icon_state = "counter"
		density = 1

	chestopened
		name = ""
		icon = 'turfs.dmi'
		icon_state = "openchest"
		density = 1

	chestclosed
		name = "Chest"
		icon = 'turfs.dmi'
		icon_state = "closechest"
		density = 1
		Click()
			if(src in oview(1))Open()
		verb
			Open()
				set src in view(1)
				set category = "Other"
				usr << "<i>You try to open the chest...but it's locked!"

	chestfireclosed
		name = ""
		icon = 'turfs.dmi'
		icon_state = "fireclosechest"
		density = 1

	tree
		name = ""
		icon = 'turfs.dmi'
		icon_state = "tree"
		density = 1

	treedungeon
		name = ""
		icon = 'turfs.dmi'
		icon_state = "tree"
		opacity = 1
		density = 1

	treefire
		name = ""
		icon = 'turfs.dmi'
		icon_state = "firetree"
		density = 1

	treeice
		name = ""
		icon = 'turfs.dmi'
		icon_state = "icetree"
		density = 1

	brushice
		name = ""
		icon = 'turfs.dmi'
		icon_state = "icebrush"

	grass1ice
		name = ""
		icon = 'turfs.dmi'
		icon_state = "icegrass1"

	grass2ice
		name = ""
		icon = 'turfs.dmi'
		icon_state = "icegrass2"

	wallice
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bluewall"
		density = 1

	walledgeice
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bluewalledge"
		density = 1

	pathice
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bluepath"

	tablemetal
		name = ""
		icon = 'turfs.dmi'
		icon_state = "metaltable"
		density = 1

	tablewooden
		name = ""
		icon = 'turfs.dmi'
		icon_state = "woodtable"
		density = 1

	barrel
		name = "Barrel"
		icon = 'turfs.dmi'
		icon_state = "barrel"
		density = 1
		Click()
			if(src in oview(1))Search(usr)
		proc
			Search(mob/player/P)
				P.islocked = 1
				P.CreateText(P,"You search inside the barrel...","","But you find nothing.","",20)
				P.islocked = 0

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

	stairsupred
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redstairsu"

	stairsdownred
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

	tilea
		name = ""
		icon = 'turfs.dmi'
		icon_state = "tile"
		Entered(mob/P)
			if(P.warping)return
			P.warping = 1
			sleep(8)
			P.warping = 0
			P.z -= 2

	tileb
		name = ""
		icon = 'turfs.dmi'
		icon_state = "tile"
		Entered(mob/P)
			if(P.warping)return
			P.warping = 1
			sleep(8)
			P.warping = 0
			P.z += 2

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

	waterred
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redwater"
		density = 1

	redwatersolid
		name = ""
		icon = 'turfs.dmi'
		icon_state = "solidredwater"

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

	hillfire
		name = ""
		icon = 'turfs.dmi'
		icon_state = "firehill"

	forestfire
		name = ""
		icon = 'turfs.dmi'
		icon_state = "fireforest"

	grass1fire
		name = ""
		icon = 'turfs.dmi'
		icon_state = "firegrass1"

	grass2fire
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

	centercobblelb
		name = ""
		icon = 'turfs.dmi'
		icon_state = "leftbottom"

	centercobblelt
		name = ""
		icon = 'turfs.dmi'
		icon_state = "lefttop"

	centercobblert
		name = ""
		icon = 'turfs.dmi'
		icon_state = "righttop"

	centercobblerb
		name = ""
		icon = 'turfs.dmi'
		icon_state = "rightbottom"

	flowersyellow
		name = ""
		icon = 'turfs.dmi'
		icon_state = "yellowflowers"

	flowersred
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redflowers"

	flowersred2
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redflowers2"

	flowerspurple
		name = ""
		icon = 'turfs.dmi'
		icon_state = "purpleflowers"

	flowersblue
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
	barrierred
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redbarrier"

	walledge
		name = ""
		icon = 'turfs.dmi'
		icon_state = "walledge"
		density = 1

	walledgedungeonblue
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bluewalledge"
		density = 1
		opacity = 1

	walledgered
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redwalledge"
		density = 1

	castleedge
		name = ""
		icon = 'turfs.dmi'
		icon_state = "castleedge"
		density = 1
		opacity = 1

	walledgelight
		name = ""
		icon = 'turfs.dmi'
		icon_state = "lightedwalledge"
		density = 1
		opacity = 1

	walledgegreen
		name = ""
		icon = 'turfs.dmi'
		icon_state = "greenwalledge"
		density = 1

	wallgreen
		name = ""
		icon = 'turfs.dmi'
		icon_state = "greenwall"
		density = 1

	walledgeblack
		name = ""
		icon = 'turfs.dmi'
		icon_state = "blackwalledge"
		density = 1
		opacity = 1

	wallblack
		name = ""
		icon = 'turfs.dmi'
		icon_state = "blackwall"
		density = 1
		opacity = 1

	cobbleblack
		name = ""
		icon = 'turfs.dmi'
		icon_state = "blackcobble"

	wall
		name = ""
		icon = 'turfs.dmi'
		icon_state = "wall"
		density = 1

	walldungeon
		name = ""
		icon = 'turfs.dmi'
		icon_state = "wall"
		density = 1
		opacity = 1

	walledgedungeon
		name = ""
		icon = 'turfs.dmi'
		icon_state = "walledge"
		density = 1
		opacity = 1

	bluewalldungeon
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bluewall"
		density = 1
		opacity = 1

	wallred
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redwall"
		density = 1

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