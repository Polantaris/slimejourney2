mob
	Shopkeepers
		var/viewo = 2
		var/list/wares = new/list()
		var/list/prices = new/list()
		proc
			Talk(mob/player/P)
		Click()
			if(src in oview(viewo))Talk(usr)
		Almenhest
			Herb_Trader
				name = "Herb Trader"
				icon = 'slimes.dmi'
				icon_state = "green"
				wares = list("-=Cancel=-","Weak Herb - 20 Gold","Small Herb - 50 Gold","Normal Herb - 150 Gold","Large Herb - 500 Gold","Strong Herb - 1,100 Gold","Giant Herb - 2,500 Gold")
				prices = list(0,20,50,150,500,1100,2500)

			Potion_Trader
				name = "Potion Trader"
				icon = 'slimes.dmi'
				icon_state = "red"
				wares = list("-=Cancel=-","Weak Potion - 150 Gold","Potion - 1,000 Gold","Strong Potion 6,550 Gold")
				prices = list(0,150,1000,6550)


			Talk(mob/player/P)
				set category = "Other"
				var/choice = input("[src.name]: Welcome to my shop!  What item would you like to buy?") in wares
				var/num = 0
				if(choice == "-=Cancel=-")
					return
				for(var/O = 1; O < wares.len + 1 ; O++)
					if(wares[O] == choice)
						num = O
						break
					else if(O == wares.len)
						world << "<b><font color = red>ERROR!  Item selected not in Merchant list!  Report IMMEDIATLY!  BUG ERROR #4!"
						return
				if(num == 0)
					usr << "<b>[src.name]:</b>  Have a nice day!"
					return
				else
					var/price = prices[num]
					var/many = input("[src.name]: How many [wares[num]] do you want?")
					many = text2num(many)
					if(many <= 0)
						usr << "<b>[src.name]:</b> Please be reasonable!  I cannot deal with you using that number."
						return
					else if(many > 100)
						usr << "<b>[src.name]:</b> I cannot sell more than 100 of something a time."
						return
					else
						var/type
						if(wares[num] == "Weak Herb - 20 Gold")
							type = /obj/items/normal/herbs/weakherb
						else if(wares[num] == "Small Herb - 50 Gold")
							type = /obj/items/normal/herbs/smallherb
						else if(wares[num] == "Normal Herb - 150 Gold")
							type = /obj/items/normal/herbs/normalherb
						else if(wares[num] == "Large Herb - 500 Gold")
							type = /obj/items/normal/herbs/largeherb
						else if(wares[num] == "Strong Herb - 1,100 Gold")
							type = /obj/items/normal/herbs/strongherb
						else if(wares[num] == "Giant Herb - 2,500 Gold")
							type = /obj/items/normal/herbs/giantherb
						else if(wares[num] == "Weak Potion - 150 Gold")
							type = /obj/items/normal/potions/weak
						else if(wares[num] == "Potion - 1,000 Gold")
							type = /obj/items/normal/potions/normal
						else if(wares[num] == "Strong Potion 6,550 Gold")
							type = /obj/items/normal/potions/strong
						var/obj/i = new type
						var/total = price * many
						var/answer = alert("[src.name]: That will be [total] Gold for [many] [i.name](s).  Is that ok?","Confirmation","Yes","No")
						del i
						if(answer == "Yes")
							if(usr.gold >= total)
								do
									new type (usr)
									many --
								while(many > 0)
								usr.gold -= total
								usr << "There you go!  Have a wonderful day!"
							else
								usr << "<b>[src.name]:</b> Get enough gold please."
						else
							usr << "<b>[src.name]:</b> Have a good day, then."

		MysteryTown
			Innkeeper
				viewo = 2
				icon = 'slimes.dmi'
				icon_state = "green"
				Click()
					if(src in oview(viewo))Talk(usr)
				Talk(mob/player/P)
					P.islocked = 1
					var/choice = input(P,"Welcome...12 Gold to stay.","Inn") in list("Yes", "No")
					if(choice == "Yes")
						if(P.gold >= 12)
							P.hp = P.mhp
							P.mp = P.mmp
						else
							P.CreateText(P,"You don't have 12 gold?","Ah forget it, I never get","buisness here anyway.","",20)
							P.hp = P.mhp
							P.mp = P.mmp
					P.islocked = 0
