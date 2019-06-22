mob/var/list/storage = new/list()

obj
	Storage_Chest
		name = "Storage Chest"
		icon = 'turfs.dmi'
		icon_state = "closechest"
		density = 1
		Click()
			if(src in oview(1))Check()
		verb
			Check()
				set category = "Other"
				set src in oview(1)
				switch(input("[src]: Welcome to your storage chest.  You can maintain items here.  What do you want to do?","Chest!") in list("-=Cancel=-","Check Items","Put in Items","Take out Items"))
					if("Check Items")
						for(var/obj/O in usr.storage)
							usr << O
					if("Put in Items")
						if(usr.contents != list())
							var/list/listy = new/list()
							listy += "-=Cancel=-"
							for(var/obj/O in usr.contents)
								if(istype(O,/obj/NormalItems))
									listy += O
								if(istype(O,/obj/Food))
									listy += O
								if(istype(O,/obj/Special))
									listy += O
								if(istype(O,/obj/dolls))
									listy += O
								if(istype(O,/obj/summons))
									listy += O
								if(istype(O,/obj/house_items))
									listy += O
							var/obj/itemy = input("What item are you putting in the storage?","Put item in!") in listy
							usr.storage += itemy
							usr.contents -= itemy
							usr << "<i>You have put [itemy] into the storage."
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Idiot, you need items!"
					if("Take out Items")
						if(usr.storage != list())
							var/list/list = new/list()
							for(var/obj/O in usr.storage)
								list += "-=Cancel=-"
								list += O
							var/obj/item = input("What item are you taking out of the storage?","Take item out!") in list
							usr.contents += item
							usr.storage -= item
							usr << "<i>You have taken [item] out of the storage."
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> Retard, try having items in the storage first."