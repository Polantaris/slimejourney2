turf
	doors
		basic
			name = "Door"
			icon = 'turfs.dmi'
			icon_state = "door"
			density = 1
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					var/obj/keys/basickey/B = new /obj/keys/basickey
					if(locate(B.type) in usr.keyring.contents)
						set src in view(1)
						set category = "Other"
						icon_state = "invis"
						density = 0
						name = ""
						sleep(50)
						icon_state = "door"
						name = "Door"
						density = 1
					else
						usr.islocked = 1
						usr.CreateText(usr,"You need a Basic Key to open","this door.","","",20)
						usr.islocked = 0
					del B
		retriever1
			name = "Door"
			icon = 'turfs.dmi'
			icon_state = "door"
			density = 1
			Click()
				if(src in oview(1))Open()
			verb
				Open()
					var/obj/keys/retrieverkey1/B = new /obj/keys/retrieverkey1
					if(locate(B.type) in usr.keyring.contents)
						set src in view(1)
						set category = "Other"
						icon_state = "invis"
						density = 0
						name = ""
						sleep(50)
						icon_state = "door"
						name = "Door"
						density = 1
					else
						usr.islocked = 1
						usr.CreateText(usr,"You need a Bronze Retriever Key to open","this door.","","",20)
						usr.islocked = 0
					del B