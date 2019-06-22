turf
	Chests
		icon = 'turfs.dmi'
		icon_state = "closechest"
		density = 1

		Chest1
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest1 == 0)
						usr.chest1 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 2 Herbs, 1 Magic Herb, and 100 Gold!"
						new /obj/NormalItems/Herb (usr)
						new /obj/NormalItems/Herb (usr)
						new /obj/NormalItems/MagicHerb (usr)
						usr.gold += 100
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest2
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest2 == 0)
						usr.chest2 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find a Token!"
						new /obj/NormalItems/Token (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest3
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest3 == 0)
						usr.chest3 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 1 Herb, 5 Buckets and Tiny Meat!"
						new /obj/NormalItems/Herb (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/Food/Tiny_Meat (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest4
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest4 == 0)
						usr.chest4 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 1 Magic Herb, Tiny Meat, and a Small Box of Noodles!"
						new /obj/NormalItems/MagicHerb (usr)
						new /obj/Food/Tiny_Meat (usr)
						new /obj/Food/Small_Package_Noodles (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest5
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest5 == 0)
						usr.chest5 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 350 gold!"
						usr.gold += 350
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest6
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest6 == 0)
						usr.chest6 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 2 Small Packages of Noodles!"
						new /obj/Food/Small_Package_Noodles (usr)
						new /obj/Food/Small_Package_Noodles (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest7
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest7 == 0)
						usr.chest7 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 1 Herb, 2 Magic Herbs, 3 Buckets, 1 Tiny Meat, and 2 Small Packages of Noodles!"
						new /obj/NormalItems/Herb (usr)
						new /obj/NormalItems/MagicHerb (usr)
						new /obj/NormalItems/MagicHerb (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/Food/Tiny_Meat (usr)
						new /obj/Food/Small_Package_Noodles (usr)
						new /obj/Food/Small_Package_Noodles (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest8
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest8 == 0)
						usr.chest8 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 2 Tokens!"
						new /obj/NormalItems/Token (usr)
						new /obj/NormalItems/Token (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest9
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest9 == 0)
						usr.chest9 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 1 Small Meat!"
						new /obj/Food/Small_Meat (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest10
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest10 == 0)
						usr.chest10 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 2 Small Packages of Noodles!"
						new /obj/Food/Small_Package_Noodles (usr)
						new /obj/Food/Small_Package_Noodles (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest11
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest11 == 0)
						usr.chest11 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 1 Large Herb and 1 Large Magic Herb!"
						new /obj/NormalItems/Large_Herb (usr)
						new /obj/NormalItems/Large_MagicHerb (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest12
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest12 == 0)
						usr.chest12 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 5 Buckets!"
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest13
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest13 == 0)
						usr.chest13 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 1 Small Meat and 1 Token!"
						new /obj/Food/Small_Meat (usr)
						new /obj/NormalItems/Token (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest14
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest14 == 0)
						usr.chest14 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 1 Package of Noodles and 1,000 Gold!"
						new /obj/Food/Package_Noodles (usr)
						usr.gold += 1000
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest15
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest15 == 0)
						usr.chest15 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 1 Small Meat and 1,000 Gold!"
						new /obj/Food/Small_Meat (usr)
						usr.gold += 1000
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest16
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest16 == 0)
						usr.chest16 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 2,000 Gold!"
						usr.gold += 2000
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest17
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest17 == 0)
						usr.chest17 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 2 Small Meats!!"
						new /obj/Food/Small_Meat (usr)
						new /obj/Food/Small_Meat (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest18
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest18 == 0)
						usr.chest18 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 1 Meat!!"
						new /obj/Food/Meat (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest19
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest19 == 0)
						usr.chest19 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 8 Buckets!!"
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest20
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest20 == 0)
						usr.chest20 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 1 Meat, 1 Tiny Meat, and 1 Small Package of Noodles!!"
						new /obj/Food/Meat (usr)
						new /obj/Food/Small_Meat (usr)
						new /obj/Food/Small_Package_Noodles (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest21
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest21 == 0)
						usr.chest21 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 5,000 Gold!"
						usr.gold += 5000
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest22
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest22 == 0)
						usr.chest22 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 10,000 Gold, 2 Meats, and 2 Buckets"
						usr.gold += 10000
						new /obj/Food/Meat (usr)
						new /obj/Food/Meat (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest23
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest23 == 0)
						usr.chest23 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 20 Buckets!"
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						new /obj/NormalItems/Bucket (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest24
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest24 == 0)
						usr.chest24 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find A Yellow Slime Crystal!"
						new /obj/summons/Yellow_Slime_Crystal (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest25
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest25 == 0)
						usr.chest25 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 20 Tokens!"
						new /obj/NormalItems/Token (usr)
						new /obj/NormalItems/Token (usr)
						new /obj/NormalItems/Token (usr)
						new /obj/NormalItems/Token (usr)
						new /obj/NormalItems/Token (usr)
						new /obj/NormalItems/Token (usr)
						new /obj/NormalItems/Token (usr)
						new /obj/NormalItems/Token (usr)
						new /obj/NormalItems/Token (usr)
						new /obj/NormalItems/Token (usr)
						new /obj/NormalItems/Token (usr)
						new /obj/NormalItems/Token (usr)
						new /obj/NormalItems/Token (usr)
						new /obj/NormalItems/Token (usr)
						new /obj/NormalItems/Token (usr)
						new /obj/NormalItems/Token (usr)
						new /obj/NormalItems/Token (usr)
						new /obj/NormalItems/Token (usr)
						new /obj/NormalItems/Token (usr)
						new /obj/NormalItems/Token (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest26
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest26 == 0)
						usr.chest26 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 4 Meats, and 4 Large Packages of Noodles!"
						new /obj/Food/Meat (usr)
						new /obj/Food/Meat (usr)
						new /obj/Food/Meat (usr)
						new /obj/Food/Meat (usr)
						new /obj/Food/Large_Package_Noodles (usr)
						new /obj/Food/Large_Package_Noodles (usr)
						new /obj/Food/Large_Package_Noodles (usr)
						new /obj/Food/Large_Package_Noodles (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest27
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest27 == 0)
						usr.chest27 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 2 Big Meats!"
						new /obj/Food/Big_Meat (usr)
						new /obj/Food/Big_Meat (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest28
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest28 == 0)
						usr.chest28 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 250,000 Gold!"
						usr.gold += 250000
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest29
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest29 == 0)
						usr.chest29 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find a Potion of Experience!"
						new /obj/Special/PotExp (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest30
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest30 == 0)
						usr.chest30 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 2 Large Packages of Noodles!"
						new /obj/Food/Large_Package_Noodles (usr)
						new /obj/Food/Large_Package_Noodles (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest31
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest31 == 0)
						usr.chest31 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find an Unknown Potion!"
						new /obj/Special/UnknownPot (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest32
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest32 == 0)
						usr.chest32 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find a Metal Slime Crystal!"
						new /obj/summons/Metal_Slime_Crystal (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest33
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest33 == 0)
						usr.chest33 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 2 Big Meats, and 4 Large Packages of Noodles!"
						new /obj/Food/Big_Meat (usr)
						new /obj/Food/Big_Meat (usr)
						new /obj/Food/Large_Package_Noodles (usr)
						new /obj/Food/Large_Package_Noodles (usr)
						new /obj/Food/Large_Package_Noodles (usr)
						new /obj/Food/Large_Package_Noodles (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest34
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest34 == 0)
						usr.chest34 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find 4 Huge Meats!"
						new /obj/Food/Huge_Meat (usr)
						new /obj/Food/Huge_Meat (usr)
						new /obj/Food/Huge_Meat (usr)
						new /obj/Food/Huge_Meat (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

		Chest35
			name = "Chest"
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					set category = "Other";set src in view(1)
					if(usr.chest35 == 0)
						usr.chest35 = 1
						usr.islocked = 1
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "You find a Gold Slime Doll!"
						new /obj/dolls/GoldSlime (usr)
						usr.islocked = 0
						icon_state = "closechest"
					else
						usr.islocked = 0
						icon_state = "openchest"
						usr << "You open the chest and look inside..."
						sleep(10)
						usr << "There's nothing there!"
						icon_state = "closechest"
						usr.islocked = 0

