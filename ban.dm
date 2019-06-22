//Baning and checking for ban codes.
mob/proc
	BanSomeone(mob/M as mob){var/savefile/F=new("Bans.sav");F["[M.key]"]<<M.key}
	CheckBan(mob/M as mob)
		var/savefile/F=new("Bans.sav"),c
		c += "0.0.0.0"
		F["[M.key]"]>>c;
		if(M.key==c)
			M<<"Your banned!"
			del M
	IPSomeone(client/C){var/savefile/S=new("IPBanned.sav");S["[C.address]"]<<C.address}
	CheckIP(mob/E as mob,client/C)
		var/savefile/S=new("IPBanned.sav"),c
		c += "0.0.0.0"
		S["[C.address]"]>>c
		if(client.address == c)
			E << "We are sorry, but you are IP Banned.  Please contact the Server Host and try to recieve rehabilitation to the server."
			del E
