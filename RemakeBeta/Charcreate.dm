#define BASE_MENU_CREATE_CHARACTER	"Start a New Slime!"
#define BASE_MENU_DELETE_CHARACTER	"Perminantly Kill an Old Slime!"
#define BASE_MENU_CANCEL			"Forget That!"
#define BASE_MENU_QUIT				"Leave the Slime Universe!"

/mob/Newchar/creating_character
	base_save_allowed = 0 // If player quits before choosing, don't want to save this mob

	Login()
		spawn()
			src.loc=locate(144,144,1)
			src.CreateCharacter()
			var/mob/BaseCamp/ChoosingCharacter/m = usr
			m.origChooseCharacter()
	proc
		CreateCharacter()
			var
				mob
					new_mob
			var
				prompt_title = "New Character"
				help_text = "What do you want to name the character?"
				default_value = key
				char_name = input(src, help_text, prompt_title, default_value) as null|text
			char_name = html_encode (char_name)
			if (!char_name)  //guess they don't want to create a new character after all, so send them to choose a character
				client.base_ChooseCharacter()
				return
			var
				ckey_name = ckey(char_name)
				list
					character = client.base_CharacterNames()
			if(length(char_name)<=1)
				alert("Your character's name has to be OVER 1 character.")
				world.log << "[src.key]([client.address]) tried to make a name over the max letters..."
				src.CreateCharacter()
				return
			if(length(char_name)>=25)
				alert("Your character's name cannot be OVER 25 characters!")
				src.CreateCharacter()
				return
			if (character.Find(ckey_name))
				alert("You already have a character named that!  Please choose another name.")
				src.CreateCharacter()
				return
			alert("This is Slime Journey 2.  If you want to know what happened in Slime Journey 1, it is highly recommended that you play and beat Slime Journey 1.  Also read the hub entry to find out what happened after you beat the Final Boss in Slime Journey 1.")
			new_mob = new /mob/Newchar
		//	switch(input("What job do you want?") in list ("Warrior","Mage","Thief","Priest","Merchant"))
			switch(input("What job do you want?") in list ("Warrior","Mage","Assassin","Priest"))
				if("Warrior")
					switch(alert("Warriors are combat maniacs.  While they get skills for combat, they do not get a lot of MP to use the skills.  They get more Attack and HP than everyone else.  Are you sure you want to be a Warrior?","Class Confirm","Yes","No"))
						if("Yes")
							new_mob.job = "Warrior"
						if("No")
							src.CreateCharacter()
				if("Mage")
					switch(alert("Mages are based apon Magic.  They have high ammounts of MP and Intelligence but low ammounts of HP, Attack, and Defense.  Thier speed is above normal.  Thier spells cause cause mass destruction.  Are you sure you want to be a Mage?","Class Confirm","Yes","No"))
						if("Yes")
							new_mob.job = "Mage"
						if("No")
							src.CreateCharacter()
				if("Assassin")
					switch(alert("Assassins are speed demons.  In troubled times, they can get away from any type of monsters.  They have the tendincy to attack first and hit twice.  Thier first attack does normal damage while thier second does 1/4th of the 1st attack.  While thier attacks aren't ALL too powerful, they get a nice spell list.  Are you sure you want to be an Assassin?","Class Confirm","Yes","No"))
						if("Yes")
							new_mob.job = "Assassin"
						if("No")
							src.CreateCharacter()
				if("Priest")
					switch(alert("Priests are the holy creatures of all.  They can heal themselves, and others, in combat.  They have some nice attack spells.  They have a normal range of all stats.  Are you sure you want to be a Priest?","Class Confirm","Yes","No"))
						if("Yes")
							new_mob.job = "Priest"
						if("No")
							src.CreateCharacter()
				if("Merchant")
					switch(alert("Merchants are the type that are to do anything to get a profit.  They steal items just so they can sell them, and they steal gold for the increased profit.  While Merchants are the most powerful class, they have a nice income.  They also gain extra gold from monsters and can have a more likey chance of getting items what a monsters falls.  Are you sure you want to be a Merchant?","Class Confirm","Yes","No"))
						if("Yes")
							new_mob.job = "Merchant"
						if("No")
							src.CreateCharacter()
			switch(input("You must now pick the Clan that you are associated with.  Each one will give you a different change in your attributes per level.") in list ("Getral","Lorth","Mektory","Pelset","Hyolth"))
				if("Getral")
					switch(alert("The Clan of Getral is a very strong clan.  They are based on Power and Strength.  If you choose this clan, when you level up, you will gain extra Attack and Defense.  Are you sure you want to be associated with the Getral Clan?","Clan Confirm","Yes","No"))
						if("Yes")
							new_mob.clan = "Getral"
							new_mob.attack += 2
							new_mob.defense += 2
						if("No")
							src.CreateCharacter()
				if("Lorth")
					switch(alert("The Clan of Lorth is very spiritual based.  They are based on Intelligence and Magical Power.  If you choose this clan, when you level up, you will gain extra Intelligence and MP.  Are you sure you want to be associated with the Lorth Clan?","Clan Confirm","Yes","No"))
						if("Yes")
							new_mob.clan = "Lorth"
							new_mob.intelligence += 2
							new_mob.maxmp += 10
						if("No")
							src.CreateCharacter()
				if("Mektory")
					switch(alert("The Clan of Mektory is very long living.  They are based apon Health Points and Magical Power.  If you choose this clan, when you level up, you will gain extra HP and MP.  Are you sure you want to be associated with the Mektory Clan?","Clan Confirm","Yes","No"))
						if("Yes")
							new_mob.clan = "Mektory"
							new_mob.maxhp += 10
							new_mob.maxmp += 10
						if("No")
							src.CreateCharacter()
				if("Pelset")
					switch(alert("The Clan of Pelset is a very defensive.  They are based on Defense and Speed.  If you choose this clan, when you level up, you will gain extra Agility and Defense.  Are you sure you want to be associated with the Pelset Clan?","Clan Confirm","Yes","No"))
						if("Yes")
							new_mob.clan = "Pelset"
							new_mob.agility += 2
							new_mob.defense += 2
						if("No")
							src.CreateCharacter()
				if("Hyolth")
					switch(alert("The Clan of Hyolth is a very fast and powerful.  They are based on Power and Speed.  If you choose this clan, when you level up, you will gain extra Attack and Agility.  Are you sure you want to be associated with the Hyolth Clan?","Clan Confirm","Yes","No"))
						if("Yes")
							new_mob.clan = "Hyolth"
							new_mob.agility += 2
							new_mob.attack += 2
						if("No")
							src.CreateCharacter()
			new_mob.level = 1
			new_mob.name = char_name
			src.client.mob = new_mob
			new_mob.level = 1
			del(src)



mob
	Newchar
		icon = 'Slimes.dmi'
		icon_state = "blue"
		color = "Blue"
		exp = 0
		expreq = 10
		jobexp = 0
		jobexpreq = 15
		level = "Cow"
		defense = 6
		hp = 20
		maxhp = 20
		attack = 9
		agility = 7
		intelligence = 6
		mp = 5
		maxmp = 5

		proc
			NewbzoneGo()
				switch(alert("Do you want to go to the Newbie Zone?  If you haven't played before it is highly adviced that you do.","Newbie Zone.","Yes","No"))
					if("Yes")
						src.savex = 14
						src.savey = 149
						src.loc = locate(14,149,1)
					if("No")
						src.loc = locate(35,26,1)
						src << "<i>You awake suddenly because of a terrifying dream of your Father, who was the savor of the world.  You then get up and remember, today you are the Slime Age of 14!  You then quickly pick up the Journal left by your Father and head out to the Retriever's Guild.</i>"