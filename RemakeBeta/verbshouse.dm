mob
	verb
		Go_To_House()
			set category = "House"
			if(src.urhousex == 0 && src.urhousey == 0 && src.urhousez == 0)
				src << "Either you do not own a house, or you didn't set a house location!"
				return
			else if(src.dungeon == 1)
				src << "You cannot warp to your house if you're in a dungeon!"
				return
			else
				src.loc = locate(urhousex,urhousey,urhousez)
				src.housearea = 1
				src << "You have been warped to your house location."
				for(var/verb in typesof(/mob/houseverbs/verb))usr.verbs-=verb
				for(var/verb in typesof(/mob/visitorhouseverbs/verb))usr.verbs-=verb
				usr.drophouseitems = 0
				if(usr.monsterfollow != null)
					usr.monsterfollow.loc = usr.loc
				return

	visitorhouseverbs
		verb
			Who_Owns_This_House()
				set category = "House"
				var/area/housing/A=loc.loc
				src << "[A.owner] owns this house."

			House_Number()
				set category = "House"
				var/area/housing/A=loc.loc
				src << "This is [A.name]."

	houseverbs
		verb
			Change_Welcome_Message(msg as text)
				set category = "House"
				var/area/housing/A=loc.loc
				A.welcomemsg=msg

			Change_Goodbye_Message(msg as text)
				set category = "House"
				var/area/housing/A=loc.loc
				A.goodbyemsg=msg

			Invite_Someone_To_Your_House()
				set category = "House"
				var/list/players=list()
				var/area/housing/A=loc.loc
				for(var/mob/Newchar/M in world)
					if(M.client)
						players+=M.key
				players -= A.invited
				players -= A.owner
				var/mob/invite_mob=input("Who do you wish to invite to enter your house?","Invite")in players as mob|null
				if(!invite_mob)return
				if(alert("Invite [invite_mob] to enter your house, are you sure?","Invite","Yes","No")=="Yes")
					A.invited+=invite_mob
					invite_mob << "You have been allowed access into [src]'s house!"
					src << "You have invited [invite_mob] into your house!"

			UnInvite_Someone_To_Your_House()
				set category = "House"
				var/area/housing/A=loc.loc
				var/list/players=list()
				players += A.invited
				var/mob/invite_mob=input("Who do you wish to uninvite access your house?","Invite")in players as mob|null
				if(!invite_mob)return
				if(alert("Uninvite [invite_mob] access your house, are you sure?","Invite","Yes","No")=="Yes")
					if(ismob(invite_mob))world.log<<"ismob"
					if(istype(A.invited,/list))world.log<<"islist"
					A.invited-=invite_mob
					invite_mob << "You have been uninvited into [src]'s house!"
					src << "You have uninvited [invite_mob] from your house!"

			Kill_Invite_List()
				set category = "House"
				var/area/housing/A = loc.loc
				A.invited = list()
				src << "You have just cleared your invite list."

			See_Who_Is_Invited()
				set category = "House"
				var/area/housing/A=loc.loc
				src << "The people who are invited are as follows.  Remember, these names are the invited's keys, not their name in game."
				for(var/invite in A.invited)src<<invite

			Set_House_Location()
				set category = "House"
				src.urhousex = src.x
				src.urhousey = src.y
				src.urhousez = src.z
				src << "You have set your house location!"

			Abandon_House()
				set category = "House"
				for(var/area/housing/A in world)
					if(A.owner == src.key)
						switch(alert("Are you sure you want to abandon your house, [A]?","Abandon House?","Yes","No"))
							if("Yes")
								A.owner = null
								for(var/obj/O in A)
									del O
								src.ownerhouse = 0
								A.invited = list()
								src.loc = locate(src.innx,src.inny,src.innz)
								A.welcomemsg = null
								A.goodbyemsg = null
								world << "[src] has reverted [A]!  Anyone can buy it now!"