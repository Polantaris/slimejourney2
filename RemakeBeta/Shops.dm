mob
	Town1ppl
		ShopkeeperA
			icon_state = "green"
			name = "Shopkeeper Husband"
			Click()
				if(src in oview(2))Converse()
			verb
				Converse()
					set category = "Other"
					set src in oview(2)
					switch(input("Shopkeeper:  Hey man!  I'm so happy you lended part of your land for me to make my shop.  So, want to check out what I got?","Shop")in list("Herb - 15 Gold","Large Herb - 180 Gold","Antidote - 30 Gold","Magic Door of Return - 500 Gold","Cancel"))
						if("Cancel")
							return ..()
						if("Herb - 15 Gold")
							var/priceo = 15
							var/price = input("Shopkeeper: How many?","Buy Something")
							price = text2num(price)
							if(price <= 0)
								usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy negative items!"
								return
							priceo = price * priceo
							switch(alert("Are you sure you want [price] Herbs?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
								if("Yes")
									if(price > 100)
										usr << "<b><font color = olive>[src]:</b><font color = green> You can only buy 100 of a thing at a time.  Sorry!"
										return
									if(usr.gold >= priceo)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
										for(var/C = 1 to price)
											new /obj/NormalItems/Herb (usr)
										usr.gold -= priceo
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
								if("No")
									usr << "<b><font color = olive>[src]:</b><font color = green> Then go away!"
						if("Large Herb - 180 Gold")
							var/priceo = 180
							var/price = input("Shopkeeper: How many?","Buy Something")
							price = text2num(price)
							if(price <= 0)
								usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy negative items!"
								return
							priceo = price * priceo
							switch(alert("Are you sure you want [price] Large Herbs?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
								if("Yes")
									if(price > 100)
										usr << "<b><font color = olive>[src]:</b><font color = green> You can only buy 100 of a thing at a time.  Sorry!"
										return
									if(usr.gold >= priceo)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
										for(var/C = 1 to price)
											new /obj/NormalItems/Large_Herb (usr)
										usr.gold -= priceo
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
								if("No")
									usr << "<b><font color = olive>[src]:</b><font color = green> Then go away!"
						if("Antidote - 30 Gold")
							var/priceo = 30
							var/price = input("Shopkeeper: How many?","Buy Something")
							price = text2num(price)
							if(price <= 0)
								usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy negative items!"
								return
							priceo = price * priceo
							switch(alert("Are you sure you want [price] Antidotes?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
								if("Yes")
									if(price > 100)
										usr << "<b><font color = olive>[src]:</b><font color = green> You can only buy 100 of a thing at a time.  Sorry!"
										return
									if(usr.gold >= priceo)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
										for(var/C = 1 to price)
											new /obj/NormalItems/Antidote (usr)
										usr.gold -= priceo
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
								if("No")
									usr << "<b><font color = olive>[src]:</b><font color = green> Then go away!"
						if("Magic Door of Return - 500 Gold")
							var/priceo = 500
							var/price = input("Shopkeeper: How many?","Buy Something")
							price = text2num(price)
							if(price <= 0)
								usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy negative items!"
								return
							priceo = price * priceo
							switch(alert("Are you sure you want [price] Magic Doors of Return?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
								if("Yes")
									if(price > 100)
										usr << "<b><font color = olive>[src]:</b><font color = green> You can only buy 100 of a thing at a time.  Sorry!"
										return
									if(usr.gold >= priceo)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
										for(var/C = 1 to price)
											new /obj/NormalItems/MagicDoor (usr)
										usr.gold -= priceo
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
								if("No")
									usr << "<b><font color = olive>[src]:</b><font color = green> Then go away!"

		ShopkeeperB
			icon_state = "yellow"
			name = "Shopkeeper Wife"
			Click()
				if(src in oview(2))Converse()
			verb
				Converse()
					set category = "Other"
					set src in oview(2)
					switch(input("Shopkeeper:  Hey man!  I'm so happy you lended part of your land for me to make my shop.  So, want to check out what I got?","Shop")in list("Magic Herb - 30 Gold","Large Magic Herb - 350 Gold","Nullifier - 750 Gold","Token - 1,500 Gold","Cancel"))
						if("Cancel")
							usr << "[src]: Alright, seeya later."
							return ..()
						if("Magic Herb - 30 Gold")
							var/priceo = 30
							var/price = input("Shopkeeper: How many?","Buy Something")
							price = text2num(price)
							if(price <= 0)
								usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy negative items!"
								return
							priceo = price * priceo
							switch(alert("Are you sure you want [price] Magic Herbs?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
								if("Yes")
									if(price > 100)
										usr << "<b><font color = olive>[src]:</b><font color = green> You can only buy 100 of a thing at a time.  Sorry!"
										return
									if(usr.gold >= priceo)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
										for(var/C = 1 to price)
											new /obj/NormalItems/MagicHerb (usr)
										usr.gold -= priceo
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
								if("No")
									usr << "<b><font color = olive>[src]:</b><font color = green> Then go away!"
						if("Large Magic Herb - 350 Gold")
							var/priceo = 350
							var/price = input("Shopkeeper: How many?","Buy Something")
							price = text2num(price)
							if(price <= 0)
								usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy negative items!"
								return
							priceo = price * priceo
							switch(alert("Are you sure you want [price] Large Magic Herbs?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
								if("Yes")
									if(price > 100)
										usr << "<b><font color = olive>[src]:</b><font color = green> You can only buy 100 of a thing at a time.  Sorry!"
										return
									if(usr.gold >= priceo)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
										for(var/C = 1 to price)
											new /obj/NormalItems/Large_MagicHerb (usr)
										usr.gold -= priceo
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
								if("No")
									usr << "<b><font color = olive>[src]:</b><font color = green> Then go away!"
						if("Nullifier - 750 Gold")
							var/priceo = 750
							var/price = input("Shopkeeper: How many?","Buy Something")
							price = text2num(price)
							if(price <= 0)
								usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy negative items!"
								return
							priceo = price * priceo
							switch(alert("Are you sure you want [price] Nullifiers?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
								if("Yes")
									if(price > 100)
										usr << "<b><font color = olive>[src]:</b><font color = green> You can only buy 100 of a thing at a time.  Sorry!"
										return
									if(usr.gold >= priceo)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
										for(var/C = 1 to price)
											new /obj/NormalItems/Nullifier (usr)
										usr.gold -= priceo
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
								if("No")
									usr << "<b><font color = olive>[src]:</b><font color = green> Then go away!"
						if("Token - 1,500 Gold")
							var/priceo = 1500
							var/price = input("Shopkeeper: How many?","Buy Something")
							price = text2num(price)
							if(price <= 0)
								usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy negative items!"
								return
							priceo = price * priceo
							switch(alert("Are you sure you want [price] Tokens?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
								if("Yes")
									if(price > 100)
										usr << "<b><font color = olive>[src]:</b><font color = green> You can only buy 100 of a thing at a time.  Sorry!"
										return
									if(usr.gold >= priceo)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
										for(var/C = 1 to price)
											new /obj/NormalItems/Token (usr)
										usr.gold -= priceo
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
								if("No")
									usr << "<b><font color = olive>[src]:</b><font color = green> Then go away!"

		Inner
			icon_state = "black"
			name = "Innkeeper Bill"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					switch(alert(usr,"Innkeeper Bill: Hey!  To stay at the inn will be 15 gold.",,"Stay","Don't"))
						if("Stay")
							if(usr.gold >= 15)
								usr.islocked = 1
								usr << "<b><font color = olive>[src]:</b><font color = green> Good night!"
								usr.gold -= 15
								usr.hp = usr.maxhp
								usr.mp = usr.maxmp
								if(usr.monsterinparty != null)
									usr.monsterinparty.hp = usr.monsterinparty.maxhp
									usr.monsterinparty.mp = usr.monsterinparty.maxmp
									if(usr.monsterinparty.poisoned == 1)
										usr.monsterinparty.poisoned = 0
									if(usr.monsterinparty.diseased == 1)
										usr.monsterinparty.diseased = 0
								usr.poisoned = 0
								sleep(30)
								usr << "<b><font color = olive>[src]:</b><font color = green> Good morning [usr]! Have a nice day."
								usr.islocked = 0
							else
								usr << "<b><font color = olive>[src]:</b><font color = green> You don't have enough gold [usr].  Sorry."
						if("Don't")
							usr << "<b><font color = olive>[src]:</b><font color = green> Seeya later then!"


	Town2ppl
		Inner
			icon_state = "white"
			name = "Innkeeper"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					switch(alert(usr,"Innkeeper: Hello sir.  A stay at the in will be...150,000 Gold.  Yes, it's expensive, but its to stay alive, ya know?",,"Stay","Don't"))
						if("Stay")
							if(usr.gold >= 150000)
								usr.islocked = 1
								usr << "<b><font color = olive>[src]:</b><font color = green> Good night!"
								usr.gold -= 150000
								usr.hp = usr.maxhp
								usr.mp = usr.maxmp
								if(usr.monsterinparty != null)
									usr.monsterinparty.hp = usr.monsterinparty.maxhp
									usr.monsterinparty.mp = usr.monsterinparty.maxmp
									if(usr.monsterinparty.poisoned == 1)
										usr.monsterinparty.poisoned = 0
									if(usr.monsterinparty.diseased == 1)
										usr.monsterinparty.diseased = 0
								usr.poisoned = 0
								sleep(30)
								usr << "<b><font color = olive>[src]:</b><font color = green> Good morning sir! Have a nice day."
								usr.islocked = 0
							else
								usr << "<b><font color = olive>[src]:</b><font color = green> You don't have enough gold sir.  Sorry."
						if("Don't")
							usr << "<b><font color = olive>[src]:</b><font color = green> Seeya later then!"

		Food_Market
			icon_state = "brown"
			name = "Food Shopkeeper"
			Click()
				if(src in oview(2))Converse()
			verb
				Converse()
					set category = "Other"
					set src in oview(2)
					switch(input("Food Shopkeeper:  Hello, sir.  We have the best meat in the land!  Would you care to take a look?","Shop")in list("Cooked Huge Meat - 100,000 Gold","Cooked Gigantic Meat - 300,000 Gold","Cooked Large Noodles - 150,000 Gold","Cooked Overly Sized Noodles - 400,000 Gold","Cancel"))
						if("Cancel")
							return ..()
						if("Cooked Huge Meat - 100,000 Gold")
							var/priceo = 100000
							var/price = input("Shopkeeper: How many?","Buy Something")
							price = text2num(price)
							if(price <= 0)
								usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy negative items!"
								return
							priceo = price * priceo
							switch(alert("Are you sure you want [price] Cooked Huge Meat?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
								if("Yes")
									if(price > 100)
										usr << "<b><font color = olive>[src]:</b><font color = green> You can only buy 100 of a thing at a time.  Sorry!"
										return
									if(usr.gold >= priceo)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
										for(var/C = 1 to price)
											new /obj/Food/Cooked_Huge_Meat (usr)
										usr.gold -= priceo
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
								if("No")
									usr << "<b><font color = olive>[src]:</b><font color = green> Then go away!"
						if("Cooked Gigantic Meat - 300,000 Gold")
							var/priceo = 300000
							var/price = input("Shopkeeper: How many?","Buy Something")
							price = text2num(price)
							if(price <= 0)
								usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy negative items!"
								return
							priceo = price * priceo
							switch(alert("Are you sure you want [price] Cooked Gigantic Meat?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
								if("Yes")
									if(price > 100)
										usr << "<b><font color = olive>[src]:</b><font color = green> You can only buy 100 of a thing at a time.  Sorry!"
										return
									if(usr.gold >= priceo)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
										for(var/C = 1 to price)
											new /obj/Food/Cooked_Gigantic_Meat (usr)
										usr.gold -= priceo
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
								if("No")
									usr << "<b><font color = olive>[src]:</b><font color = green> Then go away!"
						if("Cooked Large Noodles - 150,000 Gold")
							var/priceo = 150000
							var/price = input("Shopkeeper: How many?","Buy Something")
							price = text2num(price)
							if(price <= 0)
								usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy negative items!"
								return
							priceo = price * priceo
							switch(alert("Are you sure you want [price] Cooked Large Noodles?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
								if("Yes")
									if(price > 100)
										usr << "<b><font color = olive>[src]:</b><font color = green> You can only buy 100 of a thing at a time.  Sorry!"
										return
									if(usr.gold >= priceo)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
										for(var/C = 1 to price)
											new /obj/Food/Cooked_Large_Package_Noodles (usr)
										usr.gold -= priceo
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
								if("No")
									usr << "<b><font color = olive>[src]:</b><font color = green> Then go away!"
						if("Cooked Overly Sized Noodles - 400,000 Gold")
							var/priceo = 400000
							var/price = input("Shopkeeper: How many?","Buy Something")
							price = text2num(price)
							if(price <= 0)
								usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy negative items!"
								return
							priceo = price * priceo
							switch(alert("Are you sure you want [price] Cooked Overly Sized Noodles?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
								if("Yes")
									if(price > 100)
										usr << "<b><font color = olive>[src]:</b><font color = green> You can only buy 100 of a thing at a time.  Sorry!"
										return
									if(usr.gold >= priceo)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
										for(var/C = 1 to price)
											new /obj/Food/Cooked_Overly_Sized_Package_Noodles (usr)
										usr.gold -= priceo
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
								if("No")
									usr << "<b><font color = olive>[src]:</b><font color = green> Then go away!"

		NormalShopkeeper
			icon_state = "purple"
			name = "General Store Shopkeeper"
			Click()
				if(src in oview(2))Converse()
			verb
				Converse()
					set category = "Other"
					set src in oview(2)
					switch(input("General Store Shopkeeper:  Hi!  Would you like to see my wares?  I don't have any herbs, don't see any need for them.  If you can take out the monsters around here, you don't need em.","Shop")in list("Antidote - 30 Gold","Magic Door of Return - 500 Gold","Nullifier - 750 Gold","Token - 1,500 Gold","Cancel"))
						if("Cancel")
							return ..()
						if("Antidote - 30 Gold")
							var/priceo = 30
							var/price = input("Shopkeeper: How many?","Buy Something")
							price = text2num(price)
							if(price <= 0)
								usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy negative items!"
								return
							priceo = price * priceo
							switch(alert("Are you sure you want [price] Antidotes?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
								if("Yes")
									if(price > 100)
										usr << "<b><font color = olive>[src]:</b><font color = green> You can only buy 100 of a thing at a time.  Sorry!"
										return
									if(usr.gold >= priceo)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
										for(var/C = 1 to price)
											new /obj/NormalItems/Antidote (usr)
										usr.gold -= priceo
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
								if("No")
									usr << "<b><font color = olive>[src]:</b><font color = green> Then go away!"
						if("Magic Door of Return - 500 Gold")
							var/priceo = 500
							var/price = input("Shopkeeper: How many?","Buy Something")
							price = text2num(price)
							if(price <= 0)
								usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy negative items!"
								return
							priceo = price * priceo
							switch(alert("Are you sure you want [price] Magic Doors of Return?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
								if("Yes")
									if(price > 100)
										usr << "<b><font color = olive>[src]:</b><font color = green> You can only buy 100 of a thing at a time.  Sorry!"
										return
									if(usr.gold >= priceo)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
										for(var/C = 1 to price)
											new /obj/NormalItems/MagicDoor (usr)
										usr.gold -= priceo
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
								if("No")
									usr << "<b><font color = olive>[src]:</b><font color = green> Then go away!"
						if("Nullifier - 750 Gold")
							var/priceo = 750
							var/price = input("Shopkeeper: How many?","Buy Something")
							price = text2num(price)
							if(price <= 0)
								usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy negative items!"
								return
							priceo = price * priceo
							switch(alert("Are you sure you want [price] Nullifiers?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
								if("Yes")
									if(price > 100)
										usr << "<b><font color = olive>[src]:</b><font color = green> You can only buy 100 of a thing at a time.  Sorry!"
										return
									if(usr.gold >= priceo)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
										for(var/C = 1 to price)
											new /obj/NormalItems/Nullifier (usr)
										usr.gold -= priceo
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
								if("No")
									usr << "<b><font color = olive>[src]:</b><font color = green> Then go away!"
						if("Token - 1,500 Gold")
							var/priceo = 1500
							var/price = input("Shopkeeper: How many?","Buy Something")
							price = text2num(price)
							if(price <= 0)
								usr << "<b><font color = olive>[src]:</b><font color = green> You stupid idiot!  You can't buy negative items!"
								return
							priceo = price * priceo
							switch(alert("Are you sure you want [price] Tokens?  This will cost [priceo] Gold!","Confirm Buy","Yes","No"))
								if("Yes")
									if(price > 100)
										usr << "<b><font color = olive>[src]:</b><font color = green> You can only buy 100 of a thing at a time.  Sorry!"
										return
									if(usr.gold >= priceo)
										usr << "<b><font color = olive>[src]:</b><font color = green> Here you go!"
										for(var/C = 1 to price)
											new /obj/NormalItems/Token (usr)
										usr.gold -= priceo
									else
										usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir, you don't have enough gold."
								if("No")
									usr << "<b><font color = olive>[src]:</b><font color = green> Then go away!"

