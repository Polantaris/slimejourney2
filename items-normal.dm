obj
	items
		normal
			icon = 'turfs.dmi'
			icon_state = "item"
			var/healamount = 0
			herbs
				weakherb
					name = "Weak Herb"
					healamount = 25
				smallherb
					name = "Small Herb"
					healamount = 50
				normalherb
					name = "Herb"
					healamount = 80
				largeherb
					name = "Large Herb"
					healamount = 110
				strongherb
					name = "Strong Herb"
					healamount = 150
				giantherb
					name = "Giant Herb"
					healamount = 220
				verb
					Use()
						set category = "Other"
						if(usr.islocked)
							return
						if(usr.hp >= usr.mhp)
							usr << "You have no reason to use a [src.name] at this time!"
							return
						var/amount = rand(-10,10) + src.healamount
						usr << "You use the [src.name]!"
						sleep(12)
						usr << "You gain [amount] HP!"
						usr.hp += amount
						if(usr.hp >= usr.mhp)
							usr.hp = usr.mhp
						del(src)

			potions
				weak
					name = "Weak Potion"
					healamount = 12
				normal
					name = "Potion"
					healamount = 30
				strong
					name = "Strong Potion"
					healamount = 60
				verb
					Use()
						set category = "Other"
						if(usr.islocked)
							return
						if(usr.mp >= usr.mmp)
							usr << "You have no reason to use a [src.name] at this time!"
							return
						var/amount = rand(-7,7) + src.healamount
						usr << "You use the [src.name]!"
						sleep(12)
						usr << "You gain [amount] MP!"
						usr.hp += amount
						if(usr.mp >= usr.mmp)
							usr.mp = usr.mmp
						del(src)

			verb
				Drop()
					set category = "Other"
					if(usr.islocked)
						return
					usr << "You drop the [src.name]!"
					src.loc = usr.loc

mob
	proc
		ItemChance(mob/player/P,mob/monsters/M)
			var/chance1 = rand(1.20)
			var/chance2 = rand(1,20)
			var/continues = 1
			if(chance2 == 5||chance2 == 15)
				var/obj/O
				if(M.drop2)
					O = new M.drop2
				else
					return
				if(istype(O,/obj/keys))
					if(!(locate(O.type) in P.keyring))
						AddInfo(P,"An item drops from the beast!","It's a [O]!")
						sleep(12)
						O.loc = P.keyring
						continues = 0
				else
					AddInfo(P,"An item drops from the beast!","It is a [O]!")
					sleep(12)
					O.loc = P.contents
					continues = 0
			else if(chance1 == 10 && continues == 1)
				var/obj/O
				if(M.drop1)
					O = new M.drop1
				else
					return
				AddInfo(P,"An item drops from the beast!","It is a [O]!")
				sleep(12)
				O.loc = P.contents