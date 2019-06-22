mob
	NewbZone
		icon = 'slimes.dmi'
		name = "Newbie Helper"
		Newb1
			icon_state = "red"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					usr << "Click on Doors to open them.  You can only open doors you are next to."
					usr << "When you finish up here, move on."

		Newb2
			icon_state = "green"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					usr << "The things above me or below me are monsters.  These are the first monsters you will actually see in the real game.  If you want to, try to fight one now."
					usr << "When you finish up here, move on."

		Newb3
			icon_state = "blue"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					usr << "As you grow up in level, also known as leveling up, you will change colors.  You start Blue, but as you gain levels you can change into various colors.  Remember though, asking when color change is against the rules.  Anyone seen asking it or telling it will be reported and punished properlly."
					usr << "You can talk to the various Slimes here to learn more about Color Changing."
					usr << "When you finish up here, move on."

		Newb4
			icon_state = "red"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					usr << "I'm a Red Slime. The only color change you will be told, is level 15 is when you turn Red!  Don't ask for anymore level changes though."

		Newb5
			icon_state = "yellow"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					usr << "I'm a Yellow Slime.  When you change color, your level ups begin increasing.  Sooner or later, you will get massive level ups just by your color!"

		Newb6
			icon_state = "pink"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					usr << "I'm a Pink Slime.  Something I'd like to tell you is, don't ask for color changes, like to actually obtain them, you will be booted then banned.  Do not ask for anything that no one else gets the privalage to.  Only ask logical questions."

		Newb7
			icon_state = "kingblue"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					usr << "I'm the Job Slime.  Before you started the game, you picked a Job.  It can also be known as a profession.  Your Job is what determines you abilities.  When you kill monsters, you also get Job EXP.  When you Job Levelup you get to level up a skill of your choice, according to your class.  Talk to the Slimes around here for more details on each Job.  If you think you picked the wrong Job for yourself, feel free to remake your character."
					usr << "When you finish up here, move on."


		Newb8
			icon_state = "yellow"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					usr << "I'm the Mage Slime.  Mages are very weak when they start.  They have no abilities what so ever, and they aren't that good at combat.  As you grow up, you get some massively powerful spells.  So as long as you can live the early parts of a Mage Slime, you will become a very powerful Slime in the end."

		Newb9
			icon_state = "red"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					usr << "I'm the Warrior Slime.  Warriors are probably the best class to start out with.  While they aren't as powerful as Mages in the end, a Warrior can still do some nice damage on their enemy."

		Newb10
			icon_state = "blue"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					usr << "I'm the Priest Slime.  Priests are average all out Slimes.  They start out normal, and end with average stats.  They have some nice skills versus Undead, if you see any of those, so they aren't the worst class, but they aren't the best either."

		Newb11
			icon_state = "black"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					usr << "I'm the Assassin Slime.  Assassins are very dangerous.  They get a second attack which make them unique.  Their speed is undeniable, so they are not easy to hit, either.  An Assassin is probably the best choice, in my oppinion."

		Newb12
			icon_state = "teal"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					usr << "I'm the Clan Slime.  Clans are organizations that worship a certain God.  The God in return grants them more abilities in certain fields.  For example, Mektory grants extra HP and MP to all his worshippers.  It's best to have yourself worship the best God for your class, but it's still up to you!"
					usr << "When you finish up here, move on."

		Newb13
			icon_state = "green"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					usr << "Welcome to the last part of the Newbie Zone.  Over those trees, there is a Boss Monster.  He is a Golem.  The Boss Golem is a special monster.  You can only beat him once.  While he will be on the field after World Refresh, he will let you pass him if you've beaten him already."
					usr << "When you finish up here, move on."

		Newb14
			icon_state = "white"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					usr << "Something to inform you off.  There are special walls and trees in dungeons.  Those walls and trees you cannot see through, as inclined above or under you.  And they are certain walls and trees you CAN see through, like between you and the Boss Golem back there.  Dungeons only have the Non-See-Through, while Towns have See-Through.  Know your walls!"
					usr << "When you finish up here, move on."

		Newb15
			icon_state = "purple"
			Click()
				if(src in oview(1))Converse()
			verb
				Converse()
					usr << "Thats everything!  Walk through the Portal behind me to get starting with the game!"

turf
	leavenewbzone
		name = ""
		icon = 'turfs.dmi'
		icon_state = "barrier"
		Enter()
			switch(alert("Are you sure you want to leave?","Leave?","Yes","No"))
				if("Yes")
					usr << "And so it begins..."
					sleep(20)
					usr.loc = locate(35,26,1)
					usr << "<i>You awake suddenly because of a terrifying dream of your Father, who was the savor of the world.  You then get up and remember, today you are the Slime Age of 14!  You then quickly pick up the Journal left by your Father and head out to the Retriever's Guild.</i>"
				if("No")
					usr << "So be it."