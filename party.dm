mob
	player
		var
			party
		verb
			Create_Party()
				set category = "Party"
				if(!party)
					src.islocked = 1
					src.CreateText(src,"You cannot create a party when","you are already in one.","","",50)
					src.islocked = 0