mob
	proc
		MedalChance()
			var/chance = rand(1,10)
			if(chance == 3||chance == 7)
				src << "You see something shiny on the ground!"
				sleep(10)
				var/schance = rand(1,3)
				var/gchance = rand(1,9)
				if(gchance == 5 && src.smeds >= 500)
					src << "It's a Gold Monster Medal!  Congradulations!"
					src.gmeds += 1
				else if(schance == 2 && src.bmeds >= 1000)
					src << "It's a Silver Monster Medal!  Congradulations!"
					src.smeds += 1
				else
					src << "It's a Bronze Monster Medal!  Congradulations!"
					src.bmeds += 1

		ItemChance(mob/monster/enemy)
			var/chance = rand(1,20)
			if(istype(enemy,/mob/monster/ZTChallengeMonsters/MetalBabble))
				chance = 1
			if(istype(enemy,/mob/monster/ZTChallengeMonsters/SpecialSlime))
				chance = 1
			if(istype(enemy,/mob/monster/ZTChallengeMonsters/Gorban))
				chance = 1
			if(chance == 1 || chance == 10 || chance == 19)
				var/item = pick(enemy.items)
				if(item == "Herb")
					chance = rand(1,10)
					if(chance == 3 || chance == 7)
						src << "You see something on the ground!"
						sleep(10)
						src << "It is a Herb!"
						new /obj/NormalItems/Herb (src)
				if(item == "Large Herb")
					chance = rand(1,15)
					if(chance == 3 || chance == 7||chance == 12)
						src << "You see something on the ground!"
						sleep(10)
						src << "It is a Large Herb!"
						new /obj/NormalItems/Large_Herb (src)
				if(item == "Magic Herb")
					chance = rand(1,10)
					if(chance == 3 || chance == 7)
						src << "You see something on the ground!"
						sleep(10)
						src << "It is a Magic Herb!"
						new /obj/NormalItems/MagicHerb (src)
				if(item == "Large Magic Herb")
					chance = rand(1,15)
					if(chance == 3 || chance == 7||chance == 12)
						src << "You see something on the ground!"
						sleep(10)
						src << "It is a Large Magic Herb!"
						new /obj/NormalItems/Large_MagicHerb (src)
				if(item == "Tiny Meat")
					chance = rand(1,15)
					if(chance == 3 || chance == 7||chance == 12)
						src << "You see something on the ground!"
						sleep(10)
						src << "It is a Tiny Meat!"
						new /obj/Food/Cooked_Tiny_Meat (src)
				if(item == "Small Meat")
					chance = rand(1,15)
					if(chance == 3 || chance == 7||chance == 12)
						src << "You see something on the ground!"
						sleep(10)
						src << "It is a Small Meat!"
						new /obj/Food/Cooked_Small_Meat (src)
				if(item == "Meat")
					chance = rand(1,20)
					if(chance == 3 || chance == 7||chance == 12||chance == 17)
						src << "You see something on the ground!"
						sleep(10)
						src << "It is a Meat!"
						new /obj/Food/Cooked_Meat (src)
				if(item == "Big Meat")
					chance = rand(1,20)
					if(chance == 3 || chance == 7||chance == 12||chance == 17)
						src << "You see something on the ground!"
						sleep(10)
						src << "It is a Big Meat!"
						new /obj/Food/Cooked_Big_Meat (src)
				if(item == "Huge Meat")
					chance = rand(1,30)
					if(chance == 3 || chance == 7||chance == 12||chance == 17||chance == 23 || chance == 27)
						src << "You see something on the ground!"
						sleep(10)
						src << "It is a Huge Meat!"
						new /obj/Food/Cooked_Huge_Meat (src)
				if(item == "Gigantic Meat")
					chance = rand(1,30)
					if(chance == 3 || chance == 7||chance == 12||chance == 17||chance == 23 || chance == 27)
						src << "You see something on the ground!"
						sleep(10)
						src << "It is a Gigantic Meat!"
						new /obj/Food/Cooked_Gigantic_Meat (src)
				if(item == "Small Noodles")
					chance = rand(1,20)
					if(chance == 3 || chance == 7||chance == 12||chance == 17)
						src << "You see something on the ground!"
						sleep(10)
						src << "It is Small Noodles!"
						new /obj/Food/Cooked_Small_Package_Noodles (src)
				if(item == "Noodles")
					chance = rand(1,25)
					if(chance == 3 || chance == 7||chance == 12||chance == 17||chance == 23)
						src << "You see something on the ground!"
						sleep(10)
						src << "It is Noodles!"
						new /obj/Food/Cooked_Package_Noodles (src)
				if(item == "Large Noodles")
					chance = rand(1,30)
					if(chance == 3 || chance == 7||chance == 12||chance == 17||chance == 23 || chance == 27)
						src << "You see something on the ground!"
						sleep(10)
						src << "It is Large Noodles!"
						new /obj/Food/Cooked_Large_Package_Noodles (src)
				if(item == "Overly Sized Noodles")
					chance = rand(1,40)
					if(chance == 3 || chance == 7||chance == 12||chance == 17||chance == 23 || chance == 27|| chance == 33 || chance == 37)
						src << "You see something on the ground!"
						sleep(10)
						src << "It is Overly Sized Noodles!"
						new /obj/Food/Cooked_Overly_Sized_Package_Noodles (src)
				if(item == "Unknown Potion")
					chance = rand(1,400)
					if(chance == 3||chance == 112||chance == 213 ||  chance == 331 )
						src << "You see something on the ground!"
						sleep(10)
						src << "It an Unknown Potion!"
						new /obj/Special/UnknownPot (src)
				if(item == "EXP Potion")
					chance = rand(1,400)
					if(chance == 3||chance == 112||chance == 213 ||  chance == 331 )
						src << "You see something on the ground!"
						sleep(10)
						src << "It is an EXP Potion!"
						new /obj/Special/PotExp (src)
				if(item == "Super EXP Potion")
					chance = rand(1,4000)
					if(chance == 3||chance == 1112||chance == 2113 ||  chance == 3315 )
						src << "You see something on the ground!"
						sleep(10)
						src << "It is a Super EXP Potion!"
						new /obj/Special/SuperPotExp (src)
				if(item == "Super Unknown Potion")
					chance = rand(1,4000)
					if(chance == 3||chance == 1112||chance == 2113 ||  chance == 3315 )
						src << "You see something on the ground!"
						sleep(10)
						src << "It is a Super Unknown Potion!"
						new /obj/Special/SuperUnknownPot (src)
				if(item == "Antidote")
					chance = rand(1,20)
					if(chance == 3 || chance == 7||chance == 12||chance == 17)
						src << "You see something on the ground!"
						sleep(10)
						src << "It is an Antidote!"
						new /obj/NormalItems/Antidote (src)
				if(item == "Nullifier")
					chance = rand(1,20)
					if(chance == 3 || chance == 7||chance == 12||chance == 17)
						src << "You see something on the ground!"
						sleep(10)
						src << "It is a Nullifier!"
						new /obj/NormalItems/Nullifier (src)
				if(item == "Charm 1")
					for(var/obj/o in src.contents)
						if(o.type == /obj/ZTItems/Charm1)
							return
					src << "You see something on the ground!"
					sleep(10)
					src << "It's the Charm of Metal!"
					new /obj/ZTItems/Charm1(src)
				if(item == "Charm 2")
					for(var/obj/o in src.contents)
						if(o.type == /obj/ZTItems/Charm2)
							return
					src << "You see something on the ground!"
					sleep(10)
					src << "It's the Charm of Skill!"
					new /obj/ZTItems/Charm2(src)
				if(item == "The Sacred Jewel")
					for(var/obj/o in src.contents)
						if(o.type == /obj/ZTItems/SJ)
							return
					src << "Gorban dies, then theres suddenly another Gorban behind the killed one.  The Gorban you killed was a copy!  He gives you an item..."
					sleep(10)
					src << "It's The Sacred Jewel"
					new /obj/ZTItems/SJ(src)