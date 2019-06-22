area
	monstopper
		Enter(atom/M)
			if(istype(M,/mob/monsters))
				return 0
			return 1

mob
	var/weakness
	var/strength
	monsters
		var/obj/drop1
		var/obj/drop2
		var/hrand
		var/mrand
		New()
			src.tempstr = src.str
			src.tempdex = src.dex
			src.tempint = src.int
			src.tempagl = src.agl
			src.templuk = src.luk
			src.dir = pick(NORTH,SOUTH,EAST,WEST)
			if(src.x != 0 && src.y != 0 && src.z != 0)RandWalk()
		icon = 'slimes.dmi'
		icon_state = "blue"
		//Max Characters = 11
		DemonWorld
			Valley
				WeakSlime
					name = "Slime"
					hp = 8
					mhp = 8
					mp = 0
					mmp = 0
					str = 5
					int = 1
					agl = 3
					luk = 2
					dex = 3
					level = 1
					gold = 2
					exp = 1
					jobexp = 1
					hrand = 2
					mrand = 3
					drop1 = /obj/items/normal/herbs/weakherb
					drop2 = /obj/keys/basickey

				StrongSlime
					name = "Slime"
					hp = 20
					mhp = 20
					mp = 10
					mmp = 10
					str = 12
					int = 5
					agl = 10
					luk = 2
					dex = 18
					level = 3
					gold = 6
					exp = 4
					jobexp = 2
					hrand = 5
					mrand = 8
					spell = list("Blaze")
					drop1 = /obj/items/normal/herbs/weakherb

				RedSlime
					name = "Red Slime"
					icon_state = "red"
					hp = 33
					mhp = 33
					mp = 15
					mmp = 15
					str = 17
					int = 12
					agl = 19
					luk = 10
					dex = 22
					level = 4
					gold = 10
					exp = 7
					jobexp = 4
					hrand = 9
					mrand = 14
					spell = list("Icebolt")
					drop1 = /obj/items/normal/herbs/smallherb

				StrongRedSlime
					name = "Red Slime"
					icon_state = "red"
					hp = 45
					mhp = 45
					mp = 20
					mmp = 20
					str = 34
					int = 24
					agl = 25
					luk = 14
					dex = 30
					level = 6
					gold = 20
					exp = 14
					jobexp = 9
					hrand = 12
					mrand = 20
					spell = list("Icebolt")
					drop1 = /obj/items/normal/herbs/smallherb

		HumanWorld
			Valley
				StrongRedSlime
					name = "Red Slime"
					icon_state = "red"
					hp = 45
					mhp = 45
					mp = 20
					mmp = 20
					str = 34
					int = 24
					agl = 25
					luk = 14
					dex = 30
					level = 6
					gold = 20
					exp = 14
					jobexp = 9
					hrand = 12
					mrand = 20
					spell = list("Icebolt")
					drop1 = /obj/items/normal/herbs/smallherb

				WildLeopard
					icon = 'monsters.dmi'
					name = "WildLeopard"
					icon_state = "wildcat"
					hp = 75
					mhp = 75
					mp = 25
					mmp = 25
					str = 43
					int = 30
					agl = 35
					luk = 19
					dex = 38
					level = 8
					gold = 30
					exp = 21
					jobexp = 14
					hrand = 20
					mrand = 35
					spell = list("Maul")
					drop1 = /obj/items/normal/herbs/smallherb

		bosses
			Guard
				name = "Guard"
				icon_state = "red"
				hp = 52
				mhp = 52
				mp = 20
				mmp = 20
				str = 10
				int = 6
				agl = 9
				luk = 7
				dex = 9
				level = 3
				gold = 12
				exp = 8
				jobexp = 5
				hrand = 10
				mrand = 16
				spell = list("Blaze")
				drop1 = /obj/items/normal/herbs/smallherb
				drop2 = /obj/keys/basickey

		proc
			RandWalk()
				if(src.x >= 24 && src.x <= 31 && src.y >= 92 && src.y <= 98 && src.z == 4)
					return
				var/dun = 0
				for(var/mob/player/P in view())
					if(P in view())
						if(dun==0)
							dun = 1
							if(prob(25))
								src.dir=pick(NORTH,SOUTH,EAST,WEST)
								step_rand(src)
				sleep(50)
				RandWalk()