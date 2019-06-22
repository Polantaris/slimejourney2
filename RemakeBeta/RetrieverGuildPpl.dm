mob
	RetrieverGuildA // For First Town
		icon = 'slimes.dmi'
		Doorman
			icon_state = "blue"
			name = "Guard"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					if(usr.informant == 3 && usr.gotpass == 0)
						usr.islocked = 1
						switch(alert("[src]: Hey, wanna pass?","Pass?","Yes","No"))
							if("Yes")
								usr.loc = locate(15,36,1)
								usr << "<b><font color = olive>[src]:</b><font color = green> Seeya later!"
								if(usr.monsterfollow != null)
									usr.monsterfollow.loc = usr.loc
								usr.islocked = 0
								usr.gotpass = 1
							if("No")
								usr << "<b><font color = olive>[src]:</b><font color = green> Alright seeya."
								usr.islocked = 0
					else if(usr.informant == 3 && usr.gotpass == 1)
						usr.islocked = 1
						switch(alert("[src]: Hey, wanna pass?","Pass?","Yes","No"))
							if("Yes")
								usr.loc = locate(15,34,1)
								if(usr.monsterfollow != null)
									usr.monsterfollow.loc = usr.loc
								usr << "<b><font color = olive>[src]:</b><font color = green> Seeya later!"
								usr.islocked = 0
								usr.gotpass = 0
							if("No")
								usr << "<b><font color = olive>[src]:</b><font color = green> Alright seeya."
								usr.islocked = 0
					else
						usr << "<b><font color = olive>[src]:</b><font color = green> I have no time for newbies, talk to the Recruiter, or whoever he told you to talk to."
		Informant
			icon_state = "green"
			name = "Informant"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view (1)
					if(usr.informant == 0)
						usr << "<b><font color = olive>[src]:</b><font color = green> Please, leave me alone right now, I'm busy, if you need help, talk to the Recruiter."
					else if(usr.informant == 1)
						usr.informant = 2
						usr.islocked = 1
						usr << "<b><font color = olive>[src]:</b><font color = green> I have been informed to tell you about how we in the Retriever's Guild work."
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> Yeah!  I want to know already!"
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> Fiesty are we?  Either way, this system is very simple.  People of the past have lost items when the world changed.  Many people lost thier vaulables and we were formed to find them.  But so many items were lost that just a group of people couldn't get them, so we set up HQs all over the new world."
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> Now, all over the world the valuables of those who lost them are being returned because of us.  The way we find these objects is simple, someone informs us that they lost thier object and the place they were in when the world changed, and we target the portals to your left to warp you to that version of this world.  While you wont pass in time, the portals will shift you to the form the world was if it was never changed."
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> This makes it so that we can return these items to thier owners without changing the past.  There are 3 portals there as well.  Each one makes a different location in which you are transported to.  They all in the end lead to the same place, but each one is a different dungeon, so its better to choose the same one each time."
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> Depending on what quest you are on, the location the portal will bring you to will be different from someone else.  So someone on the 15th quest cannot help someone on the 3rd quest."
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> That's about it, anything I missed will be told to you by the recruiter now.  I'll seeya later!"
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> Alright, I'll seeya later, have fun!"
						usr.islocked = 0
					else if(usr.informant >= 2)
						usr.islocked = 1
						switch(alert("[src]: Hey!  Do you want to hear everything about the Retriever's Guild again?","Hear again?","Yes","No"))
							if("Yes")
								usr << "<b><font color = olive>[src]:</b><font color = green> Okay then, I'll repeat myself."
								sleep(20)
								usr << "<b><font color = olive>[src]:</b><font color = green> I have been informed to tell you about how we in the Retriever's Guild work."
								sleep(20)
								usr << "<b><font color = olive>[src]:</b><font color = green> Yeah!  I want to know already!"
								sleep(20)
								usr << "<b><font color = olive>[src]:</b><font color = green> Fiesty are we?  Either way, this system is very simple.  People of the past have lost items when the world changed.  Many people lost thier vaulables and we were formed to find them.  But so many items were lost that just a group of people couldn't get them, so we set up HQs all over the new world."
								sleep(20)
								usr << "<b><font color = olive>[src]:</b><font color = green> Now, all over the world the valuables of those who lost them are being returned because of us.  The way we find these objects is simple, someone informs us that they lost thier object and the place they were in when the world changed, and we target the portals to your left to warp you to that version of this world.  While you wont pass in time, the portals will shift you to the form the world was if it was never changed."
								sleep(20)
								usr << "<b><font color = olive>[src]:</b><font color = green> This makes it so that we can return these items to thier owners without changing the past.  There are 3 portals there as well.  Each one makes a different location in which you are transported to.  They all in the end lead to the same place, but each one is a different dungeon, so its better to choose the same one each time."
								sleep(20)
								usr << "<b><font color = olive>[src]:</b><font color = green> Depending on what quest you are on, the location the portal will bring you to will be different from someone else.  So someone on the 15th quest cannot help someone on the 3rd quest."
								sleep(20)
								usr << "<b><font color = olive>[src]:</b><font color = green> That's about it, anything I missed will be told to you by the recruiter now.  I'll seeya later!"
								sleep(20)
								usr << "<b><font color = olive>[usr]:</b><font color = green> Alright, I'll seeya later, have fun!"
								usr.islocked = 0
							if("No")
								usr << "<b><font color = olive>[src]:</b><font color = green> Okay, I'll seeya later."
								usr.islocked = 0

		MissionGiver
			icon_state = "white"
			name = "Mission Man"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					if(usr.retriever == 0)
						usr << "<b><font color = olive>[src]:</b><font color = green> Please, talk to the Recruiter since you are not a Retriever, I only give missions to Retrievers."
						usr.islocked = 0
					else if(usr.retriever == 1 && usr.gotitem2 == 0)
						usr.gotitem2 = 1
						usr.islocked = 1
						usr << "<b><font color = olive>[src]:</b><font color = green> Oh hello.  I see you are a Retriever since you have that badge.  Okay you're level...1.  I shall see what kind of a mission I have for you..."
						sleep(20)
						usr << "<i>The man goes behind the counter and you cannot see him.  Then he comes back.</i>"
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> I have a mission for you.  You are to find the Pendant of Demons.  In extra information here...<i>The man looks at the paper in his hand.</i>  It says that it attracts demons."
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> I think this shouldn't be too hard for you.  Good luck."
						usr.islocked = 0
					else if(usr.retriever == 1 && usr.gotitem2 == 1)
						usr << "<b><font color = olive>[src]:</b><font color = green> Hurry up!  These people want thier stuff back now!"
						usr.islocked = 0
					else if(usr.retriever == 1 && usr.gotitem2 == 2)
						usr.gotitem2 = 3
						usr.islocked = 1
						usr << "<b><font color = olive>[src]:</b><font color = green> Welcome back!  How did it go?"
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> It went great!  I found the Pendant of Demons!"
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> Excellent work!  The lady who wanted it back promised us 6,000 gold, you can have half."
						sleep(20)
						for(var/obj/quest/pendantofdemons/r in usr)
							del r
						usr << "<i>The [src] gives you 3,000 gold!</i>"
						usr.gold += 3000
						sleep(20)
						world << "<font color = teal>[usr] has completed his/her Mission!</font>"
						usr.retrieverlevel += 1
						world << "<font color = teal>[usr] is now a Level [usr.retrieverlevel] Retriever!</font>"
						usr.islocked = 0
					else if(usr.retriever == 1 && usr.gotitem2 == 3 && usr.gotitem3 == 0)
						usr.gotitem3 = 1
						usr.islocked = 1
						usr << "<i>He seems to be reading a letter from someone...</i>"
						usr << "<b><font color = olive>[src]:</b><font color = green> Oh my...that's terrible...he was the best...Huh?  Oh hello.  How are you doing?"
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> I'm good, but I was wondering what's wrong?"
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> Oh...you might not want to know...nevermind, I've already figured you out, and you would end up making me tell you anyway, so lets save the trouble.  I just figured out...that...our...best agent...Codename, BlackFire, was just annihilated <i>He suddenly starts crying</i> *Sniff* in a terrible dungeon. *Sniff*  We were great friends, I should have *Sniff*...It's all my fault...*Sniff*  Sorry you have to hear that...but if you want...nevermind it's too dangerous for you...Unless...no, I'm not going to cause you to die like...*Sniff* He...did..."
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> I want to do it!"
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> NO!  You can't!  It's extremely dangerous.  He told us when he first came back from the Innkeeper that it was easy pie.  Now, 2 days later, he's dead!  I cannot take the risk of causing you to die as well, and the worst part is, I told him to do it!  I'm so damn stupid!"
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> There's no way you could have know that it would have gotten that bad!"
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> THAT'S MY JOB!  My job, says to give the missions to people who can take the monsters inside, not give out Death to all of them!  And I won't be doing my job, AGAIN if I send you in!  You will die faster than he did, he was our best!  There's no way you could possibly do it, if he couldn't!"
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> I'm doing it no matter what you say!  If I have to, I will even go on foot!"
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> You wish!  That's impossible.  Besides, I have to open the gate for you, which I'm NOT doing!  You are no where near prepared for out there.  The Wild Beasts would eat you alive!"
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> Come on!  I'm doing great at this, and I have the savior's blood in me, I know he can do it, he surpased much worse!"
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> You have NO IDEA what's passed that mark.  Anything could be there, even a Dark Demon God!"
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> Or the Zenithian Castle for all you know!"
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> YOU ARE INSANE!  No wonder your Father ''saved us all''!  He was a physco path, just like you!  If you really want to be murdered and die, then go ahead, I'll open the portals for you!  But if you die, this time, it's NOT my fault!  You are looking for The Holy Ball of Water.  And may the Gods be with you, because there's nothing else watching over you now."
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> Pah, a Good Luck would help..."
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> Yeah, whatever."
						usr.islocked = 0
					else if(usr.retriever == 1 && usr.gotitem3 == 1)
						usr << "<b><font color = olive>[src]:</b><font color = green> Pah.  I'm surprized you're not dead yet."
					else if(usr.retriever == 1 && usr.gotitem3 == 2)
						usr.gotitem3 = 3
						usr.islocked = 1
						usr << "<b><font color = olive>[src]:</b><font color = green> Not dead yet?  That's surprizing."
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> Yeah, it is, isn't it?  Well, what's more surprizing?  I GOT THE ITEM!"
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> WHAT???  Let me see that!  Let's see...Impossible!  How?"
						for(var/obj/quest/ballofholy/r in usr)
							del r
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> I don't know, but I can tell you, it got A LOT harder as I got on, it wasn't any normal dungeon."
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> Nicely done!  Well, as our rule, Retriever Level of 3 and higher can leave the Town in which they became a Retriever in.  I still have a couple of missions left that you can do, but if you want, feel free to go on out of town."
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> Thanks!  Also, what do I get for this, besides that?"
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> Your choice.  An Experience Potion, an Unknown Potion, or 5,000,000 Gold."
						sleep(20)
						switch(alert("[src]: Well, which one do you want?","Pick a reward!","Experience Potion","Unknown Potion","5,000,000 Gold"))
							if("Experience Potion")
								usr << "<b><font color = olive>[src]:</b><font color = green> Here's the Experience Potion, and once again, GOOD JOB!"
								new /obj/Special/PotExp (usr)
							if("Unknown Potion")
								usr << "<b><font color = olive>[src]:</b><font color = green> Here's the Unknown Potion, and once again, GOOD JOB!"
								new /obj/Special/UnknownPot (usr)
							if("5,000,000 Gold")
								usr << "<b><font color = olive>[src]:</b><font color = green> Here's the 5,000,000 Gold, and once again, GOOD JOB!"
								usr.gold += 5000000
						sleep(20)
						world << "<font color = teal>[usr] has completed his/her Mission!</font>"
						usr.retrieverlevel += 1
						world << "<font color = teal>[usr] is now a Level [usr.retrieverlevel] Retriever!</font>"
						usr.islocked = 0
					else if(usr.retriever == 1 && usr.gotitem3 == 3 && usr.gotitem4 == 0)
						usr.gotitem4 = 1
						usr.islocked = 1
						usr << "<b><font color = olive>[src]:</b><font color = green> Perfect timing!  We just got a new mission about 10 seconds ago.  Interesting enough, it's from your Mother.  She said some emblem your father gave her just suddenly dissapeared.  She also said she got some note saying that you had to be the only one going in to get it back, or they are going to massacre anyone else.  It says here...That you can keep it once you find it, but she says you need it to be welcomed back with the Zenithians, whenever you happen to find their castle.  She left the plane that we need to send you to to get it back, go whenever you want."
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> Okay, thanks!  I'm on it."
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> I now trust you can handle it, but just a word of advice...it sounds like a trap, do be carful...  By the way, when you finish it, and get the item back, be sure to give me a buzz, just so I know that you can get another quest."
						usr.islocked = 0
					else if(usr.retriever == 1 && usr.gotitem4 == 1)
						usr << "<b><font color = olive>[src]:</b><font color = green> Hey ^_^!  Good luck on finding that Emblem."
					else if(usr.retriever == 1 && usr.gotitem4 == 2)
						usr.gotitem4 = 3
						usr.islocked = 1
						usr << "<b><font color = olive>[src]:</b><font color = green> Back already?  That was fast."
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> Well there wasn't much to get past."
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> Well that's good."
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> The monsters were really hard though"
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> Well since this was a mission recieved by the Guild and given to you, you do still get an increase on your Level.  Also, you still get a reward of your choice."
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> Cool!  What's my choice this time?"
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> Better this time.  2 Experience Potions, 2 Unknown Potions, or 25,000,000 Gold."
						sleep(20)
						switch(alert("[src]: Well, which one do you want?","Pick a reward!","Super Experience Potion","Super Unknown Potion","25,000,000 Gold"))
							if("Super Experience Potion")
								usr << "<b><font color = olive>[src]:</b><font color = green> Here's the Super Experience Potion."
								new /obj/Special/SuperPotExp (usr)
							if("2 Unknown Potion")
								usr << "<b><font color = olive>[src]:</b><font color = green> Here's the Super Unknown Potion."
								new /obj/Special/SuperUnknownPot (usr)
							if("25,000,000 Gold")
								usr << "<b><font color = olive>[src]:</b><font color = green> Here's the 25,000,000 Gold."
								usr.gold += 25000000
						sleep(20)
						world << "<font color = teal>[usr] has completed his/her Mission!</font>"
						usr.retrieverlevel += 1
						world << "<font color = teal>[usr] is now a Level [usr.retrieverlevel] Retriever!</font>"
						usr.islocked = 0
					else
						usr << "<b><font color = olive>[src]:</b><font color = green> Hey, we currently don't have any more missions for your level, you will have to wait until later.  Have fun."

		Recruiter
			icon_state = "black"
			name = "Retriver's Guild Recruiter"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					set category = "Other"
					set src in view(1)
					if(usr.retriever == 0 && usr.informant == 0 && usr.gotitem1 == 0)
						usr.informant = 1
						usr.islocked = 1
						usr << "<b><font color = olive>[src]:</b><font color = green> Hello sir, how may I help you?"
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> I am the age of 14, and I wish to join the Retriever's Guild."
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> I see...and what might be your name?"
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> It might be [usr]."
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> Is it [usr]?"
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> Yes it is.  Either way, my father was the great savior of this and other worlds, and I wish to be just like him."
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> So you plan to do that by becoming a Retriever?"
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> Of course I do, although he has passed away recently, I wish to be as courageous as he was, and be able to beat any type of creature, just like him."
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> I see.  Well to become a Retriever, it requires great work and dedication.  Are you ready to take on such tasks?"
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> As I said before, I will become just as great my father was."
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> It seems that your father was like an idol to you.  Well let me check to see if there's anything we can do for your initiation assignment.  While you wait, please talk to the Retriever Informant and come back when you are done."
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> Alright, thanks!"
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> Haha take care!"
						usr.islocked = 0
					else if(usr.retriever == 0 && usr.informant == 1 && usr.gotitem1 == 0)
						usr << "<b><font color = olive>[src]:</b><font color = green> Please, talk to the Informant and I will get back to you as soon as I can."
						usr.islocked = 0
					else if(usr.retriever == 0 && usr.informant == 2 && usr.gotitem1 == 0)
						usr.informant = 3
						usr.gotitem1 = 1
						usr.islocked = 1
						usr << "<b><font color = olive>[src]:</b><font color = green> Ahhh!  Welcome back, and just in time.  We have an initiation mission for you.  If you do this correctly, you will recieve a badge that will prove you are part of the Retriever's Guild."
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> Awesome!  What do I have to do?"
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> This one is actually quite easy so an initiater will be able to do this with shining colors."
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> At the back of the place, there's 3 portals, you should have been told about them by the Informant.  He also should have told you what you do in these."
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> Yes, he did, now what do I have to do?"
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> Eager are we?  Either way, at the end of the dungeons these portals lead you, is the same room, a room with an item at the end.  Bring the item back, and you will be reconized as a Retriever.  The item you are looking for is the Ruby of Lettergal.  Good luck!"
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> I will do my best."
						usr.islocked = 0
					else if(usr.retriever == 0 && usr.informant == 3 && usr.gotitem1 == 1)
						usr << "<b><font color = olive>[src]:</b><font color = green> Please get this item back as soon as possible, the owner who lost it is very impatient."
						usr.islocked = 0
					else if(usr.retriever == 0 && usr.informant == 3 && usr.gotitem1 == 2)
						usr.retriever = 1
						usr.retrieverlevel += 1
						usr.gotitem1 = 3
						usr.islocked = 1
						sleep(20)
						usr << "<b><font color = olive>[usr]:</b><font color = green> I found it!  I found the Ruby of Lettergal!"
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> Excellent job!  Since this is the initiation level, you will be given a Retriver's Badge.  I'll be right back."
						for(var/obj/quest/Rubyoflettergal/r in usr)
							del r
						sleep(20)
						usr << "<i>The [src] walks into the back room and comes back out with the badge.</i>"
						sleep(20)
						usr << "<b><font color = olive>[src]:</b><font color = green> Here you go.  Now anytime you want to do another quest for us, just talk to the person by the portals, he will give you a new quest."
						new /obj/quest/RetrieverMedal (usr)
						sleep(20)
						usr << "<i>You are now a part of the Retriever's Guild! Congradulations!</i>"
						world << "<font color = teal>[usr] has just completeled the first mission and has become a Retriever!</font>"
						usr.islocked = 0
					else
						usr << "<b><font color = olive>[src]:</b><font color = green> Hey [usr]!  How goes the Retrieving?  Getting like your father?  Well keep it up and you might be our best ever!"
						usr.islocked = 0