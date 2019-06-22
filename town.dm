area
	EnterHouse
		Entered(mob/player/P)
			if(P.warping)return
			P.warping = 1
			sleep(5)
			P.warping = 0
			P.z += 1

	ExitHouse
		Entered(mob/player/P)
			if(P.warping)return
			P.warping = 1
			sleep(5)
			P.warping = 0
			P.z -= 1

mob
	town1
		var/viewo = 1
		proc
			Talk(mob/player/P)
				if(P.islocked ==1)return
		icon = 'slimes.dmi'
		name = "Townsfolk"
		npc1
			icon_state = "red"
			Click()
				if(src in oview(viewo))Talk(usr)
			Talk(mob/player/P)
				..()
				P.islocked = 1
				P.CreateText(P,"Hey, [P].","How are you today?","","",20)
				P.CreateText(P,"[P]: I'm good.","Thanks for asking.","","",20)
				P.islocked = 0

		npc2
			icon_state = "green"
			Click()
				if(src in oview(viewo))Talk(usr)
			Talk(mob/player/P)
				..()
				P.islocked = 1
				P.CreateText(P,"Hey, I heard something is going","on at the Square.  Knowing","you, you want to check it out,","right?",20)
				P.CreateText(P,"[P]: Yeah, I do.","Thanks for telling me.","","",20)
				P.islocked = 0

		girl1
			icon_state = "pink"
			Click()
				if(src in oview(viewo))Talk(usr)
			Talk(mob/player/P)
				..()
				P.islocked = 1
				P.CreateText(P,"[P]! What the fuck!","I told you to knock before","you waltz into my house!","Pervert!",20)
				P.CreateText(P,"[P]: Sorry!!!","It won't happen again, I swear!","","",20)
				P.islocked = 0

		priest
			name = "Priest"
			icon_state = "bluewing"
			Click()
				if(src in oview(viewo))Talk(usr)
			Talk(mob/player/P)
				..()
				P.islocked = 1
				P.CreateText(P,"[P]...Welcome","to the Church.  I saved your","body here so that if you should","fall, you will return here.",20)
				P.CreateText(P,"[P]: Thank you","Father.  I shall remember","your generocity.","",20)
				P.resx = P.x
				P.resy = P.y
				P.resz = P.z
				P.rest = "Almenhest"
				P.islocked = 0

		girl2
			icon_state = "purple"
			Click()
				if(src in oview(viewo))Talk(usr)
			Talk(mob/player/P)
				..()
				P.islocked = 1
				P.CreateText(P,"Hello.  It's such a nice day.","","","",20)
				P.islocked = 0

		sign1
			icon = 'turfs.dmi'
			icon_state = "Sign"
			name = "Sign"
			Click()
				if(src in oview(viewo))Talk(usr)
			Talk(mob/player/P)
				..()
				P.islocked = 1
				P.CreateText(P,"West: Village Homes","North: The Square","East: The Church","",20)
				P.islocked = 0
		sign2
			icon = 'turfs.dmi'
			icon_state = "Sign"
			name = "Housing Department"
			Click()
				if(src in oview(viewo))Talk(usr)
			Talk(mob/player/P)
				..()
				P.islocked = 1
				P.CreateText(P,"Welcome to the Housing","Department.  No weaklings!","","",20)
				P.islocked = 0

		hguy
			icon_state = "white"
			name = "Guy"
			Click()
				if(src in oview(viewo))Talk(usr)
			Talk(mob/player/P)
				..()
				P.islocked = 1
				P.CreateText(P,"[src]: These guys sell people","houses.  They don't like people","who can't upkeep though.","If you aren't strong...",20)
				P.CreateText(P,"Well, let's just say that","they hate weaklings.  That's","why they lock their doors.","Go in if you are strong...",20)
				P.islocked = 0

	guild1
		var/viewo = 1
		proc
			Talk(mob/player/P)
				if(P.islocked == 1)return
		reception
			icon = 'slimes.dmi'
			icon_state = "white"
			name = "Receptionist"


	town2
		var/viewo = 1
		proc
			Talk(mob/player/P)
				if(P.islocked ==1)return

		waryone
			icon = 'slimes.dmi'
			icon_state = "black"
			name = "Person"
			Click()
				if(src in oview(viewo))Talk(usr)
			Talk(mob/player/P)
				..()
				P.islocked = 1
				P.CreateText(P,"[src]: Who are you?","You...","You shouldn't be here.","",20)
				P.CreateText(P,"[src]: Go away!","Before it's too late!","Leave before you get","yourself killed!",20)
				P.CreateText(P,"[P]: Why!?","What's going on here?","","",20)
				P.CreateText(P,"[src]: ...","","","",20)
				P.islocked = 0

		npc1
			icon = 'slimes.dmi'
			icon_state = "yellow"
			name = "Townsfolk"
			Click()
				if(src in oview(viewo))Talk(usr)
			Talk(mob/player/P)
				..()
				P.islocked = 1
				P.CreateText(P,"Hello traveler.  For your","safety, may I suggest","that you leave as soon","as you can.",20)
				P.islocked = 0

		priest
			icon = 'slimes.dmi'
			icon_state = "white"
			name = "Priest"
			Click()
				if(src in oview(viewo))Talk(usr)
			Talk(mob/player/P)
				..()
				P.islocked = 1
				P.CreateText(P,"Welcome to the Church.  You","are one of the only visitors","I've had in a long time.","Bless you.",20)
				P.resx = P.x
				P.resy = P.y
				P.resz = P.z
				P.rest = "MysteriousTown"
				P.islocked = 0

		guard
			icon = 'slimes.dmi'
			icon_state = "red"
			name = "Guard"
			Click()
				if(src in oview(viewo))Talk(usr)
			Talk(mob/player/P)
				..()
				P.islocked = 1
				if(P.guard)
					P.CreateText(P,"[src]: You may pass.","","","",20)
					if(P.loc == locate(20,49,4))
						P.loc = locate(20,51,4)
					else
						P.loc = locate(20,49,4)
				else
					P.story = 1
					P.CreateText(P,"[src]: Who are you?","You are not allowed to","pass.  Die!","",30)
					var/mob/monsters/bosses/Guard/G = new /mob/monsters/bosses/Guard
					P.Bump(G)
					while(P.battling)
						sleep(1)
					if(P.story == 0)
						P.CreateText(P,"[P]: I need to","beat that guard...","","",20)
						return
					P.story = 0
					P.CreateText(P,"[src]: You are strong.","I don't know who you are...","But you have gained my trust.","Please pass.",20)
					P.loc = locate(20,51,4)
					P.guard = 1

		annoyedguy
			icon = 'slimes.dmi'
			icon_state = "teal"
			name = "Annoyed Guy"
			Click()
				if(src in oview(viewo))Talk(usr)
			Talk(mob/player/P)
				..()
				P.islocked = 1
				P.CreateText(P,"[src]: Go away!","No one likes you!","","",20)
				P.islocked = 0

		silentone
			icon = 'slimes.dmi'
			icon_state = "black"
			name = "Silent Guy"
			Click()
				if(src in oview(viewo))Talk(usr)
			Talk(mob/player/P)
				..()
				P.islocked = 1
				P.CreateText(P,"[src]: ...","...","...","Leave me...",20)
				P.islocked = 0

		informer
			icon = 'slimes.dmi'
			icon_state = "blue"
			name = "???"
			Click()
				if(src in oview(viewo))Talk(usr)
			Talk(mob/player/P)
				..()
				if(P.story1 == 2)
					P.islocked = 1
					P.CreateText(P,"What lies before you","is no longer a body,","it is actually a statue","of the man.",30)
				P.islocked = 1
				P.CreateText(P,"[src]: Welcome, [P].","I have been awaiting you.","You are in the Dark World.  It","is also called the Demon World.",20)
				P.CreateText(P,"[src]: You are in the weakest of","sectors of the Demon World.","Find a way home.  When you do,","I will be in contact with you.",20)
				P.islocked = 0

		girl
			icon = 'slimes.dmi'
			icon_state = "pink"
			name = "Girl"
			Click()
				if(src in oview(viewo))Talk(usr)
			Talk(mob/player/P)
				..()
				P.islocked = 1
				P.CreateText(P,"[src]: Who are you?","It matters not.  I see","that you wish to go north.","To do that, beat the guard.",20)
				P.CreateText(P,"[P]: What guard?","","","",20)
				P.CreateText(P,"[src]: The guard.","The one in the center home.","He guards passage north, but","he trusts strength.",20)
				P.CreateText(P,"[P]: Thanks.","","","",20)
				P.islocked = 0

		barrelguard
			icon = 'slimes.dmi'
			icon_state = "yellow"
			name = "Guard"
			Click()
				if(src in oview(viewo))Talk(usr)
			Talk(mob/player/P)
				..()
				P.islocked = 1
				P.CreateText(P,"[src]: Git outta here.","","","",20)
				P.islocked = 0

