mob
	var
		guild = null
		guildleader

mob
	Mod
		verb
			New_Guild()
				set category = "Admin"
				var/name = input("What's this new guild's name?","Guild Name")
				var/list/players = new/list()
				for(var/mob/Newchar/P in world)
					if(P.guild == null)
						players += P
				if(players == list())
					src << "<font color = purple><i><b>There's nobody to make a guild for!"
					return
				var/mob/leader = input("Who's the leader?","Guild Leader") in players
				for(var/mob/Newchar/A in world)
					A << "<font color = purple><i><b>The guild of [name] has been created!  The leader is [leader]!"
				leader.guild = name
				leader.guildleader = leader.key
				leader.verbs+=typesof(/mob/guildleader/verb)
				leader.verbs+=typesof(/mob/guild/verb)

mob
	guildleader
		verb
			Guild_Recruit()
				set category = "Guild"
				var/list/players = new/list()
				for(var/mob/Newchar/P in world)
					if(P.guild == null)
						players += P
				if(players == list())
					src << "<font color = purple><i><b>There's no one to recruit!"
					return
				var/mob/invite = input("Who do you want to invite?","Invite Someone to Your Guild!") in players
				invite << input(invite,"[src] has invited you to join his guild, [src.guild].  Do you accept","Accpet Invite") in list("Yes","No")
				if("Yes")
					invite.guild = src.guild
					invite.guildleader = src.guildleader
					invite.verbs+=typesof(/mob/guild/verb)
					world << "<font color = purple><i><b>Under Invitation, [invite] has joined [src]'s guild!"
					return
				if("No")
					invite << "<font color = purple><i><b>You have turned down the invintation."
					return

			Guild_Remove()
				set category = "Guild"
				var/list/players = new/list()
				for(var/mob/Newchar/P in world)
					if(P.guild == src.guild)
						players += P
				if(players == list())
					src << "<font color = purple><i><b>There's no one to remove from your guild!"
					return
				var/mob/invite = input("Who do you want to uninvite?","Uninvite Someone from Your Guild!") in players
				invite.guild = null
				invite.guildleader = null
				invite.verbs-=typesof(/mob/guild/verb)
				world << "<font color = purple><i><b>[invite] was removed from [src]'s Guild!  How evil!"

		/*	Pass_Leadership()
				set category = "Guild"
				var/list/players = list(null)
				for(var/mob/Newchar/P in world)
					if(P.guild == src.guild)
						players += P
				if(players == list(null))
					src << "<font color = purple><i><b>There's no one to transfer Leadership to!"
					return
				var/mob/invite = input("Who do you want to pass leadership to?","Pass Leadership") in players
				src << input("Are you COMPLETELY sure you want to give your leadership over this guild to someone else?","Pass Leadership") in list("Yes!","No!")
				if("Yes!")
					src.guildleader = invite.key
					invite.guildleader = invite.key
					invite.verbs+=typesof(/mob/guildleader/verb)
					src.verbs-=typesof(/mob/guildleader/verb)
					src << "<font color = purple><i><b>You have removed your status as guild leader!"
					invite << "<font color = purple><i><b>[src] gave his status as the Guild Leader to you!"
					world << "<font color = purple><i><b>[src] gave his status as the Guild Leader to [invite]!"
				if("No!")
					src << "<font color = purple><i><b>You changed your mind."*/

mob
	guild
		verb
			Guild_Say(msg as text)
				set category = "Guild"
				if(src.goldgain == 1)
					var/list/players=list()
					for(var/mob/M in world)
						if(M.client&&M!=src)
							if(src.guild == M.guild)
								players+=M
					src<<"<font color = violet><b>Your voice has been removed!</font>"
					players<<"\icon[usr] <font color = purple><b>[usr] tried saying something, but his voice was removed!</font>"
				else
					for(var/mob/M in world)
						if(!M.worldsay_toggle&&!(src in M.ignore))
							if(src.guild == M.guild)
								M << "\icon[usr] <font color=purple><b>[usr] guildsays, ''[html_encode:(msg)]''</font>"

			Gs(msg as text)
				set hidden = 1
				set category = "Guild"
				if(src.goldgain == 1)
					var/list/players=list()
					for(var/mob/M in world)
						if(M.client&&M!=src)
							if(src.guild == M.guild)
								players+=M
					src<<"<font color = violet><b>Your voice has been removed!</font>"
					players<<"\icon[usr] <font color = purple><b>[usr] tried saying something, but his voice was removed!</font>"
				else
					for(var/mob/M in world)
						if(!M.worldsay_toggle&&!(src in M.ignore))
							if(src.guild == M.guild)
								M << "\icon[usr] <font color=purple><b>[usr] guildsays, ''[html_encode:(msg)]''</font>"

			Guild_Emote(msg as text)
				set category = "Guild"
				if(src.goldgain == 1)
					var/list/players=list()
					for(var/mob/M in world)
						if(M.client&&M!=src)
							if(src.guild == M.guild)
								players+=M
					src<<"<font color = violet><b>Your voice has been removed!</font>"
					players<<"\icon[usr] <font color = purple><b>[usr] tried saying something, but his voice was removed!</font>"
				else
					for(var/mob/M in world)
						if(!M.worldsay_toggle&&!(src in M.ignore))
							if(src.guild == M.guild)
								M << "<i><font color = purple>*[usr] [html_encode:(msg)]*"

			Ge(msg as text)
				set category = "Guild"
				set hidden = 1
				if(src.goldgain == 1)
					var/list/players=list()
					for(var/mob/M in world)
						if(M.client&&M!=src)
							if(src.guild == M.guild)
								players+=M
					src<<"<font color = violet><b>Your voice has been removed!</font>"
					players<<"\icon[usr] <font color = purple><b>[usr] tried saying something, but his voice was removed!</font>"
				else
					for(var/mob/M in world)
						if(!M.worldsay_toggle&&!(src in M.ignore))
							if(src.guild == M.guild)
								M << "<i><font color = purple>*[usr] [html_encode:(msg)]*"

			Guild_Who()
				set category = "Guild"
				for(var/mob/Newchar/N in world)
					if(N.guild == src.guild)
						var/index = 0
						if(index == 0)
							src << "<font color = purple><b>These are the players in your Guild."
							index = 1
						src << "<font color = purple><b>\icon[N] [N.name]([N.key]) - Level: [N.level] - Color: [N.color] - Job: [N.job]: Level [N.joblevel] - Clan: [N.clan] - Retriever Level: [N.retrieverlevel] - Summon: [N.monsterinparty] - Status: [N.awaymsg]!</font>"

// Guild House Codes Alpha. //

area
	guildbase
		var
			ownerguild
			ownerleader
			guardfunds
			list/intruders = new/list()
			welcomemsg = "Welcome to your guild base!"
			goodbyemsg = "Seeya!"
		base1
		base2
		base3
		base4
		base5
		base6
		base7
		base8
		base9
		base10

		Entered(atom/movable/A)
			if(istype(A,/mob/Newchar))
				var/mob/Newchar/B = A
				if(src.ownerguild == B.guild)
					B << "[src.welcomemsg]"
				else
					for(var/mob/Newchar/C in world)
						if(C.guild == src.ownerguild)
							C << "Your guild base is being invaded!  Protect it!"
					src.intruders += B