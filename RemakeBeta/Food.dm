obj
	Food
		icon = 'turfs.dmi'
		icon_state = "item"
		Tiny_Meat
			name = "Tiny Meat"
			verb
				Info()
					set category = "Other"
					usr << "It's a blob of Raw Meat.  It is extremly tiny.  You have a feeling that you should keep it."
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Small_Meat
			name = "Small Meat"
			verb
				Info()
					set category = "Other"
					usr << "It's a blob of Raw Meat.  It is considerably small.  You have a feeling that you should keep it."
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Meat
			name = "Meat"
			verb
				Info()
					set category = "Other"
					usr << "It's a blob of Raw Meat.  It is normal sized.  You have a feeling that you should keep it."
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Large_Meat
			name = "Large Meat"
			verb
				Info()
					set category = "Other"
					usr << "It's a blob of Raw Meat.  It is considerably large.  You have a feeling that you should keep it."
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Big_Meat
			name = "Big Meat"
			verb
				Info()
					set category = "Other"
					usr << "It's a blob of Raw Meat.  It is big and juicy.  You have a feeling that you should keep it."
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Huge_Meat
			name = "Huge Meat"
			verb
				Info()
					set category = "Other"
					usr << "It's a blob of Raw Meat.  You consider it to be huge.  You have a feeling that you should keep it."
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Gigantic_Meat
			name = "Gigantic Meat"
			verb
				Info()
					set category = "Other"
					usr << "It's a blob of Raw Meat.  It is actually infact, true to it's name.  It is Gigantic.  You have a feeling that you should keep it."
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Small_Package_Noodles
			name = "Small Box of Noodles"
			verb
				Info()
					set category = "Other"
					usr << "It's a Box of Noodles.  They are raw.  You have a feeling that you should keep them."
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Package_Noodles
			name = "Box of Noodles"
			verb
				Info()
					set category = "Other"
					usr << "It's a Box of Noodles.  They are raw.  You have a feeling that you should keep them."
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Large_Package_Noodles
			name = "Large Box of Noodles"
			verb
				Info()
					set category = "Other"
					usr << "It's a Box of Noodles.  They are raw.  You have a feeling that you should keep them."
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Overly_Sized_Package_Noodles
			name = "Overly Sized Box of Noodles"
			verb
				Info()
					set category = "Other"
					usr << "It's a Box of Noodles.  They are raw.  You have a feeling that you should keep them."
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Cooked_Tiny_Meat
			name = "Cooked Tiny Meat"
			DblClick()
				Use()
			verb
				Info()
					set category = "Other"
					usr << "It's a blob of Cooked Meat.  It will heal your HP from 50 to 150 HP."
				Use()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Use this item in the battle screen!"
					else
						var
							healed = rand(50,150)
						usr << "You eat the [src]!"
						sleep(10)
						usr << "You are healed [healed] HP!"
						usr.hp += healed
						if(usr.hp >= usr.maxhp)
							usr.hp = usr.maxhp
						del(src)
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Cooked_Small_Meat
			name = "Cooked Small Meat"
			DblClick()
				Use()
			verb
				Info()
					set category = "Other"
					usr << "It's a blob of Cooked Meat.  It will heal your HP from 125 to 300 HP."
				Use()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Use this item in the battle screen!"
					else
						var
							healed = rand(125,300)
						usr << "You eat the [src]!"
						sleep(10)
						usr << "You are healed [healed] HP!"
						usr.hp += healed
						if(usr.hp >= usr.maxhp)
							usr.hp = usr.maxhp
						del(src)
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Cooked_Meat
			name = "Cooked Meat"
			DblClick()
				Use()
			verb
				Info()
					set category = "Other"
					usr << "It's a blob of Cooked Meat.  It will heal your HP from 250 to 550 HP."
				Use()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Use this item in the battle screen!"
					else
						var
							healed = rand(250,550)
						usr << "You eat the [src]!"
						sleep(10)
						usr << "You are healed [healed] HP!"
						usr.hp += healed
						if(usr.hp >= usr.maxhp)
							usr.hp = usr.maxhp
						del(src)
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Cooked_Large_Meat
			name = "Cooked Large Meat"
			DblClick()
				Use()
			verb
				Info()
					set category = "Other"
					usr << "It's a blob of Cooked Meat.  It will heal your HP from 525 to 950 HP."
				Use()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Use this item in the battle screen!"
					else
						var
							healed = rand(525,950)
						usr << "You eat the [src]!"
						sleep(10)
						usr << "You are healed [healed] HP!"
						usr.hp += healed
						if(usr.hp >= usr.maxhp)
							usr.hp = usr.maxhp
						del(src)
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Cooked_Big_Meat
			name = "Cooked Big Meat"
			DblClick()
				Use()
			verb
				Info()
					set category = "Other"
					usr << "It's a blob of Cooked Meat.  It will heal your HP from 900 to 1250 HP."
				Use()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Use this item in the battle screen!"
					else
						var
							healed = rand(900,1250)
						usr << "You eat the [src]!"
						sleep(10)
						usr << "You are healed [healed] HP!"
						usr.hp += healed
						if(usr.hp >= usr.maxhp)
							usr.hp = usr.maxhp
						del(src)
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Cooked_Huge_Meat
			name = "Cooked Huge Meat"
			DblClick()
				Use()
			verb
				Info()
					set category = "Other"
					usr << "It's a blob of Cooked Meat.  It will heal your HP from 1200 to 3550 HP."
				Use()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Use this item in the battle screen!"
					else
						var
							healed = rand(1200,3550)
						usr << "You eat the [src]!"
						sleep(10)
						usr << "You are healed [healed] HP!"
						usr.hp += healed
						if(usr.hp >= usr.maxhp)
							usr.hp = usr.maxhp
						del(src)
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Cooked_Gigantic_Meat
			name = "Cooked Gigantic Meat"
			DblClick()
				Use()
			verb
				Info()
					set category = "Other"
					usr << "It's a blob of Cooked Meat.  It will fully heal your HP."
				Use()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Use this item in the battle screen!"
					else
						usr << "You eat the [src]!"
						sleep(10)
						usr << "You are fully healed!"
						usr.hp = usr.maxhp
						del(src)
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Cooked_Small_Package_Noodles
			name = "Cooked Small Noodles"
			DblClick()
				Use()
			verb
				Info()
					set category = "Other"
					usr << "It's a Pot of Small Noodles.  They will heal your MP 100 to 500."
				Use()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Use this item in the battle screen!"
					else
						var
							healed = rand(100,500)
						usr << "You eat the [src]!"
						sleep(10)
						usr << "You are healed [healed] MP!"
						usr.mp += healed
						if(usr.mp >= usr.maxmp)
							usr.mp = usr.maxmp
						del(src)
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Cooked_Package_Noodles
			name = "Cooked Noodles"
			DblClick()
				Use()
			verb
				Info()
					set category = "Other"
					usr << "It's a Pot of Noodles.  They will heal your MP 400 to 1200."
				Use()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Use this item in the battle screen!"
					else
						var
							healed = rand(400,1200)
						usr << "You eat the [src]!"
						sleep(10)
						usr << "You are healed [healed] MP!"
						usr.mp += healed
						if(usr.mp >= usr.maxmp)
							usr.mp = usr.maxmp
						del(src)
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Cooked_Large_Package_Noodles
			name = "Cooked Large Noodles"
			DblClick()
				Use()
			verb
				Info()
					set category = "Other"
					usr << "It's a Pot of Large Noodles.  They will heal your MP 1100 to 3300."
				Use()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Use this item in the battle screen!"
					else
						var
							healed = rand(1100,3300)
						usr << "You eat the [src]!"
						sleep(10)
						usr << "You are healed [healed] MP!"
						usr.mp += healed
						if(usr.mp >= usr.maxmp)
							usr.mp = usr.maxmp
						del(src)
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc

		Cooked_Overly_Sized_Package_Noodles
			name = "Cooked Overly Sized Noodles"
			DblClick()
				Use()
			verb
				Info()
					set category = "Other"
					usr << "It's a Pot of Overly Sized Noodles.  They will heal your MP fully."
				Use()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Use this item in the battle screen!"
					else
						usr << "You eat the [src]!"
						sleep(10)
						usr << "Your MP has been healed fully!"
						usr.mp = usr.maxmp
						del(src)
				Drop()
					set category = "Other"
					if(usr.lib == 1)
						usr << "You are in battle!  Wait until Battle is over to drop this item!"
					else
						usr << "You drop the [src]!"
						src.loc = usr.loc