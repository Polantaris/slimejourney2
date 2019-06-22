mob
	Town1ppl
		icon = 'slimes.dmi'
		TownGuard
			icon_state = "metal"
			name = "Town Guard"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set src in view(1)
					set category = "Other"
					usr.islocked = 1
					if(usr.retrieverlevel >= 3)
						switch(alert("[src]: Sir!  I have been given autorization to let you leave town at will!  Will you be leaving right now?","Leave town","Yes","No"))
							if("Yes")
								usr << "<b><font color = olive>[src]:</b><font color = green> Yes sir!  Just follow this path, but be warry of the monsters, they can be a handful at times!  Also, some are stronger than others, REMEMBER THAT!"
								usr.x += 135
								usr.dungeon = 1
								if(usr.monsterfollow != null)
									usr.monsterfollow.loc = usr.loc
								usr.whereat = "Outside"
								usr << sound('outside.mid',1,0,0)
							if("No")
								usr << "<b><font color = olive>[src]:</b><font color = green> Yes sir!  I will not open the path to you at this time then, Sir!"
					else
						usr << "<b><font color = olive>[src]:</b><font color = green> Sorry sir!  I have not been given autorization to let you leave town, talk to the people at the Retriever's Guild, at the top left of town for more info!"
					usr.islocked = 0

		GoBackGuard
			icon_state = "metal"
			name = "Town Guard"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set src in view(1)
					set category = "Other"
					usr.islocked = 1
					switch(alert("[src]: Sir!  Do you want to go back to town?  Just talk to me whenever you do!","Leave Wilderness","Yes","No"))
						if("Yes")
							usr << "<b><font color = olive>[src]:</b><font color = green> Yes sir!  Just follow this path, Have a good day!!"
							usr.x -= 135
							usr.dungeon = 1
							if(usr.monsterfollow != null)
								usr.monsterfollow.loc = usr.loc
							usr.whereat = "Town"
							usr << sound('town.mid',1,0,0)
						if("No")
							usr << "<b><font color = olive>[src]:</b><font color = green> Yes sir!  I will not open the path to you at this time then, Sir!"
					usr.islocked = 0

		NormalGuard1
			name = "Guard 1"
			icon_state = "teal"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set src in view(1)
					set category = "Other"
					usr << "<b><font color = olive>[src]:</b><font color = green> We are here to guard the town, just incase somehow monsters get past the magic barrier set by these walls."

		NormalGuard2
			name = "Guard 2"
			icon_state = "blue"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set src in view(1)
					set category = "Other"
					usr << "<b><font color = olive>[src]:</b><font color = green> The magic barrier has been in place for thousands of years, but once in a while it leaks and a monster gets through. <i>You think to yourself that it couldn't have been in place that long, because the village hasn't been around that long.  But you don't say anything.</i>."

		WarriorDude
			name = "Warrior"
			icon_state = "red"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set src in view(1)
					set category = "Other"
					usr << "<b><font color = olive>[src]:</b><font color = green> Hey!  I'm a fellow retriever.  I've heard that around here is a cave that looks just like some kind of lost ruins.  I wanted to check it out, but the monsters around here are too strong for me.  I'd mind as well get another mission from the Guild."

		MageLady
			name = "Mage"
			icon_state = "pink"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set src in view(1)
					set category = "Other"
					usr << "<b><font color = olive>[src]:</b><font color = green> Hmmm.  A [usr.job].  Interesting that one of your type might get to this point.  You don't seem to be logical to be a [usr.job].  No matter.  A word of caution, Each monster around here has a ''Unique'' type.  It is much stronger than the other of its kind.  Be warry at all times, and you should run if you ever seem to encounter one of them, they are highly dangerous."

		NormalGuard3
			name = "Guard 3"
			icon_state = "gold"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set src in view(1)
					set category = "Other"
					if(usr.guards == 0)
						usr.guards = 1
						usr << "<b><font color = olive>[src]:</b><font color = green> Anyone have any cards?  This is so boring, and I forgot mine from last week, I think that King Slime ate them."
						sleep(20)
						usr << "<b><font color = olive>Guard 2:</b><font color = green> You baphoon, I told you not to leave them out, now what are we gonna do?"
						sleep(20)
						usr << "<b><font color = olive>Guard 4:</b><font color = green> *SIGH* No clue..."
					else if(usr.guards == 2)
						usr << "<b><font color = olive>[src]:</b><font color = green> YaY!  No more boring sitting..."
					else
						usr << "<b><font color = olive>[src]:</b><font color = green> *YAWN* I'm tired...too boring."

		NormalGuard4
			name = "Guard 4"
			icon_state = "purple"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set src in view(1)
					set category = "Other"
					if(usr.guards == 0)
						usr << "<b><font color = olive>[src]:</b><font color = green> Idiot King Slime..."
					else if(usr.guards == 1)
						usr.guards = 2
						usr << "<b><font color = olive>[src]:</b><font color = green> No cards...how nice.  Yo, Bill, do you still have those coins?"
						sleep(20)
						usr << "<b><font color = olive>Guard 2:</b><font color = green> Yeah, why?"
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> Excellent!  Hand them over."
						sleep(20)
						usr << "<i>After a few seconds the Guard casts a spell and got cards!</i>"
						sleep(20)
						usr << "<b><font color = olive>Guard 2:</b><font color = green> Yeah!  Good job!  Now we can do something again!  Let's just not let another King Slime eat them..."
					else if(usr.guards == 2)
						usr << "<b><font color = olive>[src]:</b><font color = green> Just deal them already you fatass."




		Priest
			icon_state = "blue"
			name = "Priest Bob"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = green> Hello [usr].  I hope that you take care of yourself.  If anything happens to you, I will be sure to heal you.  Also, for your referance, any foriegn town you go to, a Priest will always be at your side, make sure you always talk to a Priest at every town you go to."
					usr.innx = 30
					usr.inny = 36
					usr.innz = 1

		Sister
			icon_state = "pink"
			name = "Diane"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					if(usr.retriever == 0)
						usr << "<b><font color = olive>[src]:</b><font color = green> Hello Brother!  Happy Birthday.  Let me guess, your going to waist this year of your life fufilling your dream of becoming like Father, right?  Well, just have fun with it."
					else
						usr << "<b><font color = olive>[src]:</b><font color = green> Hello Brother.  If you need anything, ask Mother."

		Brother
			icon_state = "red"
			name = "Joe"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					if(retriever == 0)
						usr << "<b><font color = olive>[src]:</b><font color = green> Hey!  How is it going?  I seem to be forgetting something, no matter.  Oh yeah, Bro, if you need lunch, ask Mom."
					else
						usr << "<b><font color = olive>[src]:</b><font color = green> Hey.  Get your lunch?  Remember, whenever you need one, ask Mom.  You shouldn't leave the house without one!"

		Mother
			icon_state = "purple"
			name = "Mother"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					if(usr.lunch == 0 && usr.retriever == 0)
						usr << "<b><font color = olive>[src]:</b><font color = green> Morning [usr].  Happy Birthday.  I suppose your going to get stuffed in as part of the Retriever's Guild now, huh?  Well don't forget your lunch."
						usr << "<i>You get a lunch!</i>"
						new /obj/NormalItems/Lunch (usr)
						usr.lunch = 1
					else if(usr.lunch == 1 && usr.retriever == 0)
						usr << "<b><font color = olive>[src]:</b><font color = green> Come back if you need another."
					else if(usr.lunch == 0 && usr.retriever == 1)
						usr << "<b><font color = olive>[src]:</b><font color = green> I see your part of ''them'' now.  Well, all I can say is, I hope your happy now.  Anyway, here's a lunch for you, I will never stop supporting you."
						usr << "<i>You get a lunch!</i>"
						new /obj/NormalItems/Lunch (usr)
						usr.lunch = 1
					else
						usr << "<b><font color = olive>[src]:</b><font color = green> Have fun."

	Town2ppl
		icon = 'slimes.dmi'

		Townsfolk1
			icon_state = "yellow"
			name = "Townsfolk"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = green> Hi!  It has been a while since anyone has come though that gate...Welcome to Parthant!"

		Townsfolk2
			icon_state = "green"
			name = "Townsfolk"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = green> The cave to the east of town has this huge path that no one has ever gotten to the end to.  Maybe you should try it sometime."

		Townsfolk3
			icon_state = "blue"
			name = "Townsfolk"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = green> Mommy!  I want more milk, please!"

		Townsfolk4a
			icon_state = "orange"
			name = "Townsfolk"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = green> Go away, I have nothing to say to you, kid!"

		Townsfolk4b
			icon_state = "red"
			name = "Townsfolk"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = green> Go away, I have nothing to say to you, kid!"

		Townsfolk4c
			icon_state = "gold"
			name = "Townsfolk"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = green> Go away, I have nothing to say to you, kid!"

		Townsfolk4d
			icon_state = "violet"
			name = "Townsfolk"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = green> Go away, I have nothing to say to you, kid!"

		Townsfolk5
			icon_state = "fire"
			name = "Townsfolk"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = green> The Retriever's Guild is in the northwest side of town.  Since you are a Retriever, I see the badge, you should head there when you have nothing to do."

		Townsfolk6a
			icon_state = "violet"
			name = "Townsfolk"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = green> Hi!"

		Townsfolk6b
			icon_state = "red"
			name = "Townsfolk"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = green> Hi!"

		Townsfolk6c
			icon_state = "white"
			name = "Townsfolk"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = green> Hi!"

		Townsfolk6d
			icon_state = "teal"
			name = "Townsfolk"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = green> Hi!"

		Townsfolk7
			icon_state = "black"
			name = "Townsfolk"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = green> I hear the owner of that house in the southeast of town has some monster infested basement or something.  If you have nothing else to do, maybe you should check that out."

		Townsfolk8
			icon_state = "red"
			name = "Townsfolk"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = green> Tiny Medals are hidden all over town.  According to someone around here, if you get enough Tiny Medals, you will get a prize from the Medal King.  But according to legend, he's hidden so well, that no one has ever found the Medal King.  If you do, good job!"

		Townsfolk9
			icon_state = "gold"
			name = "Townsfolk"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = green> If you get a lot of Gold, see the Gold King.  The Gold King will trade high amounts of Gold for prizes."

		Townsfolk0
			icon_state = "metal"
			name = "Townsfolk"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = green> I'm a Retriever, just like you.  I have trained very, very hard and have gotten to the color of Metal.  Everyone thinks I'm a Metal Slime, but I'm not!  Such fools."

		Townsfolk11
			icon_state = "pink"
			name = "Townsfolk"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = green> If you are wondering where we all live, then think about it.  You can buy a house at the House Districts, can you not?  So can we!  We live on Districts that you can't go to, because you don't know anyone that lives there."

		Churchfolk1
			icon_state = "green"
			name = "Townsfolk"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = green> Be quiet!  I'm trying to pray in peace and quiet!"

		Churchfolk2
			icon_state = "teal"
			name = "Townsfolk"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = green> Can you keep it quiet, please?  I'm praying here!"

		Churchfolk3
			icon_state = "blue"
			name = "Townsfolk"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = green> Even Retriever's need to pray!  Give me some common curtisy!"
		Priest
			icon_state = "blue"
			name = "Priest"
			Click()
				if(src in oview(2))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(2)
					usr << "<b><font color = olive>[src]:</b><font color = green> Hello.  I can tell, by your aura that you worship Slime God.  Very well, come here again if you wish to be ressurected here, when you have fallen in combat."
					usr.innx = 30
					usr.inny = 36
					usr.innz = 1

		Quest
			OldLady
				icon_state = "mblue"
				name = "Old Lady"
				Click()
					if(src in oview(1))Converse()
				verb
					Converse()
						set category = "Other"
						set src in view(1)
						if(usr.oldlady == 0)
							alert("Old Lady: Yes?  Can I help you?","Old Lady","Quest","Leave")
							if("Quest")
								usr.oldlady = 1
								usr << "<b><font color = olive>[src]:</b><font color = green> Oh you are here for that request I put out in town a few weeks ago."
								sleep(20)
								usr << "<b><font color = olive>[usr]:</b><font color = green> Yes I am."
								sleep(20)
								usr << "<b><font color = olive>[src]:</b><font color = green> Good good!  Leave town in the North, and use this Key to open the gate to the Mine.  At the end of the Mine is a Gem I used to own.  Beware though, the Mine is full of dangerous monsters!"
								new /obj/quest/MineKey (usr)
								sleep(20)
								usr << "<b><font color = olive>[usr]:</b><font color = green> Okay, I'll be careful!"
								sleep(20)
								usr << "<b><font color = olive>[src]:</b><font color = green> Pace yourself, youngin!  Don't be an idiot!"
								sleep(20)
								usr << "<b><font color = olive>[usr]:</b><font color = green> I won't!"
							else
								usr << "<b><font color = olive>[src]:</b><font color = green> Bye then, youngin."
						else if(usr.oldlady == 1)
							usr << "<b><font color = olive>[src]:</b><font color = green> Take your time, youngin.  I don't need the Gem right away."
						else if(usr.oldlady == 2)
							usr << "<b><font color = olive>[src]:</b><font color = green> Take your time, youngin.  I don't need the Gem right away."

			Man
				icon_state = "teal"
				name = "Rich Man"
				Click()
					if(src in oview(1))Converse()
				verb
					Converse()
						set category = "Other"
						set src in view(1)
						if(usr.basement == 0)
							usr.basement = 1
							usr << "<b><font color = olive>[src]:</b><font color = green> I suppose you are here to get my basement cleaned out."
							sleep(20)
							usr << "<b><font color = olive>[src]:</b><font color = green> A freakin kid like you can't do shit!  Go back to cry to your fucking mom, moron!"
							sleep(20)
							usr << "<b><font color = olive>[usr]:</b><font color = green> Is that what you think?  Fine, then I guess the Retriever's won't work with you anymore, jackass."
							sleep(20)
							usr << "<b><font color = olive>[src]:</b><font color = green> You're a Retriever?  I'm sorry.  Kids normally aren't Retrievers.  I asked for their help...but they haven't come yet, unless they sent you."
							sleep(20)
							usr << "<b><font color = olive>[usr]:</b><font color = green> They didn't.  I just heard you needed help, so I came to help."
							sleep(20)
							usr << "<b><font color = olive>[src]:</b><font color = green> Okay.  Here's the wedge to knock the block away from the door in the basement.  It's infested with monsters.  At the deepest part of my basement, there's a monster, probably the leader, called Gorange.  He's an Orange Slime.  Kill him, and get his item, and I'll reward you."
							new /obj/quest/DoorWedge (usr)
							sleep(20)
							usr << "<b><font color = olive>[usr]:</b><font color = green> Okay, I'll do that!"
							sleep(20)
							usr << "<b><font color = olive>[src]:</b><font color = green> Take your time kid, I don't want you dieing down there."
						else if(usr.basement == 1)
							usr << "<b><font color = olive>[src]:</b><font color = green> Hey kid.  When you have that item, tell me."
						else if(usr.basement == 2)
							usr << "<b><font color = olive>[src]:</b><font color = green> Hey kid.  When you have that item, tell me."

			Wife
				icon_state = "pink"
				name = "Rich Man's Wife"
				Click()
					if(src in oview(1))Converse()
				verb
					Converse()
						set category = "Other"
						set src in view(1)
						if(usr.basement == 4)
							usr << "<b><font color = olive>[src]:</b><font color = green> Thanks for helping us.  Maybe you can do it again sometime."
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> What the hell do you want, kid?"

			Kid1
				icon_state = "yellow"
				name = "Rich Man's Kid"
				Click()
					if(src in oview(1))Converse()
				verb
					Converse()
						set category = "Other"
						set src in view(1)
						usr << "<b><font color = olive>[src]:</b><font color = green> Hello sir.  Want to be my friend?"
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> I can't, child.  I have a lot of things to do."

			Kid2
				icon_state = "blue"
				name = "Rich Man's Kid"
				Click()
					if(src in oview(1))Converse()
				verb
					Converse()
						set category = "Other"
						set src in view(1)
						usr << "<b><font color = olive>[src]:</b><font color = green> Hiya!  I'm really smart!  Did you know 485 times 2052 is 995220?  Huh? Did ya, did ya?"
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> No I didn't.  You are really smart."
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> Thanks!"

	Universal
		icon = 'slimes.dmi'
		Monstersaver
			icon_state = "fire"
			name = "Monster Saver Man"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set src in view(1)
					set category = "Other"
					switch(input("[src]: Hello.  I am the Monster Saver.  Please tell me what you want to do...","Monster Saver!") in list("What do you do?","What monsters do I have saved?","Delete a Monster!","Save a New Monster!","Load an Old Monster!","Nevermind..."))
						if("What do you do?")
							usr << "<b><font color = olive>[src]:</b><font color = green> I am the Monster Saver.  What I do is save the Monster Summons you have leveled up and increased during your gameplay.  As you play, you can save your Monster Summon with me, and revert it, and get a new one.  When you want to get a Monster Summon back, all you need is to talk to me and ask for your Old Monster Summon back.  Be warned though, once you Load a Monster Summon, it is erased from my databanks, if you revert it after getting it again, you will lose it forever...  I hold up to 5 Monster Summons at once.  Have fun!"
						if("What monsters do I have saved?")
							usr << "<b><font color = olive>[src]:</b><font color = green> These are the Monster Summons you have in my databanks..."
							usr << "<b><font color = olive>[src]:</b><font color = green> Slot 1: [usr.monstersave1]"
							usr << "<b><font color = olive>[src]:</b><font color = green> Slot 2: [usr.monstersave2]"
							usr << "<b><font color = olive>[src]:</b><font color = green> Slot 3: [usr.monstersave3]"
							usr << "<b><font color = olive>[src]:</b><font color = green> Slot 4: [usr.monstersave4]"
							usr << "<b><font color = olive>[src]:</b><font color = green> Slot 5: [usr.monstersave5]"
						if("Delete a Monster!")
							var/s = input("[src]: Are you sure you want to erase a Monster Summon from my databanks?  Doing this will completely erase any knowledge of it, it will cease to exist.  If you are completely sure, pick a Monster Summon...","Unsave a Monster!") in list("Cancel","Slot 1: [usr.monstersave1]","Slot 2: [usr.monstersave2]","Slot 3: [usr.monstersave3]","Slot 4: [usr.monstersave4]","Slot 5: [usr.monstersave5]")
							if(s == "Cancel")
								usr << "<b><font color = olive>[src]:</b><font color = green> Good idea..."
								return
							if(s == "Slot 1: [usr.monstersave1]")
								usr << "<b><font color = olive>[src]:</b><font color = green> As you wish..."
								usr.monstersave1 = "Nothing"
								return
							if(s == "Slot 2: [usr.monstersave2]")
								usr << "<b><font color = olive>[src]:</b><font color = green> As you wish..."
								usr.monstersave2 = "Nothing"
								return
							if(s == "Slot 3: [usr.monstersave3]")
								usr << "<b><font color = olive>[src]:</b><font color = green> As you wish..."
								usr.monstersave3 = "Nothing"
								return
							if(s == "Slot 4: [usr.monstersave4]")
								usr << "<b><font color = olive>[src]:</b><font color = green> As you wish..."
								usr.monstersave4 = "Nothing"
								return
							if(s == "Slot 5: [usr.monstersave5]")
								usr << "<b><font color = olive>[src]:</b><font color = green> As you wish..."
								usr.monstersave5 = "Nothing"
								return
						if("Save a New Monster!")
							if(usr.monsterinparty)
								var/s = input("[src]: Which save slot in my databanks do you wish to use?","Save a Monster Summon") in list("Cancel","Slot 1: [usr.monstersave1]","Slot 2: [usr.monstersave2]","Slot 3: [usr.monstersave3]","Slot 4: [usr.monstersave4]","Slot 5: [usr.monstersave5]")
								if(s == "Cancel")
									usr << "<b><font color = olive>[src]:</b><font color = green> Whatever..."
									return
								if(s == "Slot 1: [usr.monstersave1]")
									switch(alert("Are you sure you want to save over Slot 1?  It contains [usr.monstersave1]!","Confirm...","Yes","No"))
										if("Yes")
											usr << "<b><font color = olive>[src]:</b><font color = green> As you wish..."
											sleep(10)
											usr << "<i>Suddenly [usr.monsterinparty] begins to fade..."
											sleep(10)
											usr << "<b><font color = olive>[src]:</b><font color = green> Processing new data.....Processed [usr.monsterinparty].  It is now saved in my databanks..."
											usr.monstersave1 = usr.monsterinparty
											usr.monsterinparty = null
											del usr.monsterfollow
											usr.RemoveVerbSummons()
											return
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Good choice..."
											return
								if(s == "Slot 2: [usr.monstersave2]")
									switch(alert("Are you sure you want to save over Slot 2?  It contains [usr.monstersave2]!","Confirm...","Yes","No"))
										if("Yes")
											usr << "<b><font color = olive>[src]:</b><font color = green> As you wish..."
											sleep(10)
											usr << "<i>Suddenly [usr.monsterinparty] begins to fade..."
											sleep(10)
											usr << "<b><font color = olive>[src]:</b><font color = green> Processing new data.....Processed [usr.monsterinparty].  It is now saved in my databanks..."
											usr.monstersave2 = usr.monsterinparty
											usr.monsterinparty = null
											del usr.monsterfollow
											usr.RemoveVerbSummons()
											return
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Good choice..."
											return
								if(s == "Slot 3: [usr.monstersave3]")
									switch(alert("Are you sure you want to save over Slot 3?  It contains [usr.monstersave3]!","Confirm...","Yes","No"))
										if("Yes")
											usr << "<b><font color = olive>[src]:</b><font color = green> As you wish..."
											sleep(10)
											usr << "<i>Suddenly [usr.monsterinparty] begins to fade..."
											sleep(10)
											usr << "<b><font color = olive>[src]:</b><font color = green> Processing new data.....Processed [usr.monsterinparty].  It is now saved in my databanks..."
											usr.monstersave3 = usr.monsterinparty
											usr.monsterinparty = null
											del usr.monsterfollow
											usr.RemoveVerbSummons()
											return
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Good choice..."
											return
								if(s == "Slot 4: [usr.monstersave4]")
									switch(alert("Are you sure you want to save over Slot 4?  It contains [usr.monstersave4]!","Confirm...","Yes","No"))
										if("Yes")
											usr << "<b><font color = olive>[src]:</b><font color = green> As you wish..."
											sleep(10)
											usr << "<i>Suddenly [usr.monsterinparty] begins to fade..."
											sleep(10)
											usr << "<b><font color = olive>[src]:</b><font color = green> Processing new data.....Processed [usr.monsterinparty].  It is now saved in my databanks..."
											usr.monstersave4 = usr.monsterinparty
											usr.monsterinparty = null
											del usr.monsterfollow
											usr.RemoveVerbSummons()
											return
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Good choice..."
											return
								if(s == "Slot 5: [usr.monstersave5]")
									switch(alert("Are you sure you want to save over Slot 5?  It contains [usr.monstersave5]!","Confirm...","Yes","No"))
										if("Yes")
											usr << "<b><font color = olive>[src]:</b><font color = green> As you wish..."
											sleep(10)
											usr << "<i>Suddenly [usr.monsterinparty] begins to fade..."
											sleep(10)
											usr << "<b><font color = olive>[src]:</b><font color = green> Processing new data.....Processed [usr.monsterinparty].  It is now saved in my databanks..."
											usr.monstersave5 = usr.monsterinparty
											usr.monsterinparty = null
											del usr.monsterfollow
											usr.RemoveVerbSummons()
											return
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Good choice..."
											return
							else
								usr << "<b><font color = olive>[src]:</b><font color = green> You fool.  You cannot save nothing!"
								return
						if("Load an Old Monster!")
							if(usr.monsterinparty)
								usr << "<b><font color = olive>[src]:</b><font color = green> You cannot do this, for there is already a Monster Summon in your party!"
								return
							else
								var/s = input("[src]: Which save slot in my databanks do you wish to load from?","Load a Monster Summon") in list("Cancel","Slot 1: [usr.monstersave1]","Slot 2: [usr.monstersave2]","Slot 3: [usr.monstersave3]","Slot 4: [usr.monstersave4]","Slot 5: [usr.monstersave5]")
								if(s == "Cancel")
									usr << "<b><font color = olive>[src]:</b><font color = green> Whatever..."
									return
								if(s == "Slot 1: [usr.monstersave1]")
									switch(alert("Are you sure you want to load Slot 1?  It contains [usr.monstersave1]!","Confirm...","Yes","No"))
										if("Yes")
											usr << "<b><font color = olive>[src]:</b><font color = green> As you wish..."
											sleep(10)
											usr << "<i>Suddenly [usr.monstersave1] begins to appear again!"
											sleep(10)
											usr << "<b><font color = olive>[src]:</b><font color = green> Processing old data.....Processed [usr.monstersave1].  It is now restored to the real world..."
											usr.monsterinparty = usr.monstersave1
											var/mob/A = new usr.monsterinparty.type(locate(usr.x,usr.y,usr.z))
											A.name = usr.monsterinparty.name
											A.density = 0
											usr.monsterfollow = A
											usr.AddVerbSummons()
											usr.monstersave1 = "Nothing"
											return
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Fine..."
											return
								if(s == "Slot 2: [usr.monstersave2]")
									switch(alert("Are you sure you want to load Slot 2?  It contains [usr.monstersave2]!","Confirm...","Yes","No"))
										if("Yes")
											usr << "<b><font color = olive>[src]:</b><font color = green> As you wish..."
											sleep(10)
											usr << "<i>Suddenly [usr.monstersave2] begins to appear again!"
											sleep(10)
											usr << "<b><font color = olive>[src]:</b><font color = green> Processing old data.....Processed [usr.monstersave2].  It is now restored to the real world..."
											usr.monsterinparty = usr.monstersave2
											var/mob/A = new usr.monsterinparty.type(locate(usr.x,usr.y,usr.z))
											A.name = usr.monsterinparty.name
											A.density = 0
											usr.monsterfollow = A
											usr.AddVerbSummons()
											usr.monstersave2 = "Nothing"
											return
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Fine..."
											return
								if(s == "Slot 3: [usr.monstersave3]")
									switch(alert("Are you sure you want to load Slot 3?  It contains [usr.monstersave3]!","Confirm...","Yes","No"))
										if("Yes")
											usr << "<b><font color = olive>[src]:</b><font color = green> As you wish..."
											sleep(10)
											usr << "<i>Suddenly [usr.monstersave3] begins to appear again!"
											sleep(10)
											usr << "<b><font color = olive>[src]:</b><font color = green> Processing old data.....Processed [usr.monstersave3].  It is now restored to the real world..."
											usr.monsterinparty = usr.monstersave3
											var/mob/A = new usr.monsterinparty.type(locate(usr.x,usr.y,usr.z))
											A.name = usr.monsterinparty.name
											A.density = 0
											usr.monsterfollow = A
											usr.AddVerbSummons()
											usr.monstersave3 = "Nothing"
											return
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Fine..."
											return
								if(s == "Slot 4: [usr.monstersave4]")
									switch(alert("Are you sure you want to load Slot 4?  It contains [usr.monstersave4]!","Confirm...","Yes","No"))
										if("Yes")
											usr << "<b><font color = olive>[src]:</b><font color = green> As you wish..."
											sleep(10)
											usr << "<i>Suddenly [usr.monstersave4] begins to appear again!"
											sleep(10)
											usr << "<b><font color = olive>[src]:</b><font color = green> Processing old data.....Processed [usr.monstersave4].  It is now restored to the real world..."
											usr.monsterinparty = usr.monstersave4
											var/mob/A = new usr.monsterinparty.type(locate(usr.x,usr.y,usr.z))
											A.name = usr.monsterinparty.name
											A.density = 0
											usr.monsterfollow = A
											usr.AddVerbSummons()
											usr.monstersave4 = "Nothing"
											return
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Fine..."
											return
								if(s == "Slot 5: [usr.monstersave5]")
									switch(alert("Are you sure you want to load Slot 5?  It contains [usr.monstersave5]!","Confirm...","Yes","No"))
										if("Yes")
											usr << "<b><font color = olive>[src]:</b><font color = green> As you wish..."
											sleep(10)
											usr << "<i>Suddenly [usr.monstersave5] begins to appear again!"
											sleep(10)
											usr << "<b><font color = olive>[src]:</b><font color = green> Processing old data.....Processed [usr.monstersave5].  It is now restored to the real world..."
											usr.monsterinparty = usr.monstersave5
											var/mob/A = new usr.monsterinparty.type(locate(usr.x,usr.y,usr.z))
											A.name = usr.monsterinparty.name
											A.density = 0
											usr.monsterfollow = A
											usr.AddVerbSummons()
											usr.monstersave5 = "Nothing"
											return
										if("No")
											usr << "<b><font color = olive>[src]:</b><font color = green> Fine..."
											return
						if("Nevermind...")
							usr << "<b><font color = olive>[src]:</b><font color = green> Begone then, and stop waisting my time!"
							return
		Banker
			icon_state = "blue"
			name = "Insurance Man Phil"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set src in view(1)
					set category = "Other"
					usr << 'beep.wav'
					switch(alert("[src]: Hey, [usr]!  Welcome to my Insurance company.  What do you want to do?","Insurance!","Insure your Gold.","Uninsure your Gold.","Nothing."))
						if("Insure your Gold.")
							var/d = input("[src]: How much Gold do you want to Insure?  Please remember, Insured Gold cannot be used, but when something happens and you lose some Gold, you don't lose it either.") as num|null
							d = text2num(d)
							d = round(d)
							if(d >= usr.gold+1)
								usr << "<b><font color = olive>[src]:</b><font color = green> I'm very sorry, but you don't that much Gold to Insure!"
								return
							if(d <= 0)
								usr << "<b><font color = olive>[src]:</b><font color = green> I have better things to do then to talk to you...So don't waist my time!"
								return
							if(d <= usr.gold+1)
								usr << "<b><font color = olive>[src]:</b><font color = green> You made [d] Gold Insured, please remember that you cannot use it unless you Uninsure it now..."
								usr.banked_money += d
								usr.gold -=d
						if("Uninsure your Gold.")
							if(usr.banked_money <= 0)
								usr << "<b><font color = olive>[src]:</b><font color = green> Sorry, But it seems you don't have any Gold to Insure."
								return
							else
								var/m = input("[src]: You currently have [usr.banked_money] Gold Insured, How much do you wish to Uninsure?") as num|null
								m = text2num(m)
								m = round(m)
								if(m >= usr.banked_money+1)
									usr << "<b><font color = olive>[src]:</b><font color = green> You don't have that much Gold Insured!"
									return
								if(m <=0)
									return
								else
									usr.gold += m
									usr.banked_money -= m
									usr << "<b><font color = olive>[src]:</b><font color = green> There!  It's Uninsured.  You can use it whenever you want now."
									return
						if("Nothing.")
							usr << "<b><font color = olive>[src]:</b><font color = green> Don't waist my time!"
							return
