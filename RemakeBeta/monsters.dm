mob
	monster
		var
			acting = 0
		proc
			RandWalk()
				while(1)
					src.acting = 1
					met_step_rand(src)
					sleep(rand(10,50))
					var/mob/Newchar/player=locate()in orange(src,11)
					if(!player)
						src.acting = 0
						break

			WaitToKill()
				if(src.islocked == 1)
					sleep(4200)
					del(src)
				else
					sleep(120)
					WaitToKill()

		Area1
			mp = 25
			Slime1
				icon = 'slimes.dmi'
				icon_state = "blue"
				name = "Slime"
				hp = 10
				attack = 7
				defense = 4
				intelligence = 5
				agility = 5
				expreward = 1
				gold = 2
				jobexpreward = 1
				spell = list("Attack")
				items = list("Herb")

			RedSlime2
				icon = 'slimes.dmi'
				icon_state = "red"
				name = "Red Slime"
				hp = 31
				attack = 14
				defense = 11
				intelligence = 13
				agility = 11
				expreward = 2
				gold = 3
				jobexpreward = 1
				spell = list("Blaze")
				items = list("Herb")

			HammerMan3
				icon = 'monsters.dmi'
				icon_state = "hammerman"
				name = "Hammer Man"
				hp = 84
				attack = 23
				defense = 17
				intelligence = 20
				agility = 18
				expreward = 6
				gold = 6
				jobexpreward = 3
				spell = list("Blaze","HammerFall")
				items = list("Magic Herb","Herb")

			JewelBag4
				icon = 'monsters.dmi'
				icon_state = "jewelbag"
				name = "Jewel Bag"
				hp = 183
				attack = 36
				defense = 31
				intelligence = 28
				agility = 62
				expreward = 8
				gold = 25
				jobexpreward = 4
				weakwind = 1
				spell = list("JewelThrow","GoldSteal")
				items = list("Magic Herb","Herb")

			SlimeNite5
				icon = 'monsters.dmi'
				icon_state = "slimenite"
				name = "Slime Knight"
				hp = 473
				attack = 53
				defense = 47
				intelligence = 32
				agility = 30
				expreward = 12
				gold = 15
				jobexpreward = 6
				spell = list("SwordRain")
				items = list("Large Herb")

			YellowSlime6
				icon = 'slimes.dmi'
				icon_state = "yellow"
				name = "Yellow Slime"
				hp = 642
				attack = 59
				defense = 52
				intelligence = 50
				agility = 46
				expreward = 16
				gold = 25
				jobexpreward = 8
				spell = list("Bolt")
				items = list("Large Herb")

			PinkSlime7
				icon = 'slimes.dmi'
				icon_state = "pink"
				name = "Pink Slime"
				hp = 1054
				attack = 64
				defense = 56
				intelligence = 55
				agility = 50
				expreward = 22
				gold = 35
				jobexpreward = 11
				spell = list("Gale","Heal")
				items = list("Large Herb","Large Magic Herb")

		Area2A
			mp = 35
			Golem1
				icon = 'monsters.dmi'
				icon_state = "golem"
				name = "Golem"
				hp = 1624
				attack = 78
				defense = 72
				intelligence = 70
				agility = 68
				expreward = 30
				gold = 100
				jobexpreward = 15
				weakfire = 1
				spell = list("Heal","RockToss","Trample","Knockdown")
				items = list("Large Herb","Large Magic Herb")

			Healer2
				icon = 'monsters.dmi'
				icon_state = "healer"
				name = "Healer"
				hp = 2131
				attack = 102
				defense = 93
				intelligence = 87
				agility = 84
				expreward = 40
				gold = 110
				jobexpreward = 20
				weaklit = 1
				spell = list("Healmore","Infernos","Healmore","SummonHealer1","SummonSlime1","Healmore")
				items = list("Tiny Meat","Large Magic Herb")

			Babble3
				icon = 'babbles.dmi'
				icon_state = "babble"
				name = "Babble"
				hp = 2873
				attack = 144
				defense = 131
				intelligence = 119
				agility = 121
				expreward = 54
				gold = 150
				jobexpreward = 27
				spell = list("Blazemore","Poison","Engulph")
				items = list("Small Meat","Large Magic Herb","Antidote")

			ThiefBag4
				icon = 'monsters.dmi'
				icon_state = "thiefbag"
				name = "Thief Bag"
				hp = 4121
				attack = 185
				defense = 162
				intelligence = 155
				agility = 271
				expreward = 62
				gold = 350
				jobexpreward = 31
				weakwind = 1
				spell = list("Trample2","Kirby","JewelRain","SummonThiefBag1")
				items = list("Small Meat","Small Noodles")

			GreenSlime5
				icon = 'slimes.dmi'
				icon_state = "green"
				name = "Green Slime"
				hp = 4932
				attack = 231
				defense = 202
				intelligence = 192
				agility = 194
				expreward = 70
				gold = 380
				jobexpreward = 35
				spell = list("Poison","Super Gale","Healmore")
				items = list("Small Meat","Small Noodles")

			Skeleton6
				icon = 'monsters.dmi'
				icon_state = "skeleton"
				name = "Skeleton"
				hp = 6121
				attack = 273
				defense = 245
				intelligence = 233
				agility = 237
				expreward = 86
				gold = 450
				jobexpreward = 43
				weaklit = 1
				weakwind = 1
				weakholy = 1
				spell = list("Bonetoss","Healmore","SummonSkeleton1")
				items = list("Meat","Small Noodles")

			Hammerlord7
				icon = 'monsters.dmi'
				icon_state = "hammerlord"
				name = "Hammer Lord"
				hp = 7231
				attack = 345
				defense = 334
				intelligence = 342
				agility = 332
				expreward = 100
				gold = 550
				jobexpreward = 50
				spell = list("HammerFall2","Healmore2","Blazemore2","SummonHammerman1")
				items = list("Meat","Small Noodles")

		Area2B
			mp = 45
			GoatHorn1
				icon = 'monsters.dmi'
				icon_state = "goathorn"
				name = "Goat Horn"
				hp = 9214
				attack = 394
				defense = 377
				intelligence = 376
				agility = 379
				expreward = 112
				gold = 675
				jobexpreward = 56
				spell = list("Ram","HornToss")
				items = list("Meat","Noodles")

			IceSloth2
				icon = 'monsters.dmi'
				icon_state = "icesloth"
				name = "Ice Sloth"
				hp = 11132
				attack = 462
				defense = 421
				intelligence = 431
				agility = 443
				expreward = 130
				gold = 800
				jobexpreward = 65
				weakfire = 1
				spell = list("IceTounge","Icicle","IceCall1")
				items = list("Meat","Noodles")

			TealSlime3
				icon = 'slimes.dmi'
				icon_state = "teal"
				name = "Teal Slime"
				hp = 13421
				attack = 523
				defense = 491
				intelligence = 501
				agility = 498
				expreward = 142
				gold = 1000
				jobexpreward = 71
				spell = list("Goop","Healmore2","Split1")
				items = list("Meat","Noodles")

			BloodBabble4
				icon = 'babbles.dmi'
				icon_state = "bloodbabble"
				name = "Blood Babble"
				hp = 17421
				attack = 674
				defense = 633
				intelligence = 652
				agility = 645
				expreward = 166
				gold = 1320
				jobexpreward = 88
				weakholy = 1
				spell = list("Disease","BloodRock","BloodRain","Absorb","Duplicate1")
				items = list("Meat","Noodles","Nullifier")

			BabyDragon5
				icon = 'monsters.dmi'
				icon_state = "bdragon"
				name = "Baby Dragon"
				hp = 20932
				attack = 812
				defense = 775
				intelligence = 763
				agility = 769
				expreward = 184
				gold = 1820
				jobexpreward = 92
				weakice = 1
				spell = list("FlameBreath","FireballODoom")
				items = list("Big Meat","Noodles")

			Lion6
				icon = 'monsters.dmi'
				icon_state = "lion"
				name = "Lion"
				hp = 25632
				attack = 952
				defense = 901
				intelligence = 899
				agility = 904
				expreward = 210
				gold = 2300
				jobexpreward = 105
				weakfire = 1
				spell = list("Bite","Roar","Absorb2")
				items = list("Big Meat","Noodles")

			BloodyBear7
				icon = 'monsters.dmi'
				icon_state = "firebear"
				name = "Bloody Bear"
				hp = 29852
				attack = 1124
				defense = 1083
				intelligence = 1093
				agility = 1084
				expreward = 234
				gold = 2560
				jobexpreward = 117
				weakholy = 1
				weakfire = 1
				spell = list("Bite","Roar","Absorb2","BloodRock","BloodRain")
				items = list("Big Meat","Noodles")

		Area3A
			mp = 60
			DemonSlime1
				icon = 'slimes.dmi'
				icon_state = "blue"
				name = "Demon Slime"
				hp = 122424
				attack = 1344
				defense = 1221
				intelligence = 1241
				agility = 1257
				expreward = 250
				gold = 3000
				jobexpreward = 125
				weakholy = 1
				weakearth = 1
				spell = list("Blazemost","Healmore3","SummonSlime3","MagicBlade")
				items = list("Big Meat","Noodles")

			Dragon2
				icon = 'monsters.dmi'
				icon_state = "bdragon"
				name = "Dragon"
				hp = 145921
				attack = 1521
				defense = 1394
				intelligence = 1421
				agility = 1433
				expreward = 290
				gold = 3500
				jobexpreward = 145
				weakice = 1
				spell = list("FlameBreath2","FireballODoom2","Blazemost")
				items = list("Big Meat","Large Noodles")

			Mage3
				icon = 'monsters.dmi'
				icon_state = "mage"
				name = "Mage"
				hp = 179432
				attack = 1623
				defense = 1492
				intelligence = 2062
				agility = 2011
				expreward = 330
				gold = 3800
				jobexpreward = 165
				spell = list("Blazemost2","Iceball","ThunderBolt","WindStrike","Quake","SummonMage1","Healmore3")
				items = list("Big Meat","Large Noodles")

			Warrior4
				icon = 'monsters.dmi'
				icon_state = "ragnar"
				name = "Warrior"
				hp = 263424
				attack = 10967
				defense = 8213
				intelligence = 4625
				agility = 4335
				expreward = 600
				gold = 5500
				jobexpreward = 300
				weakearth = 1
				weakholy = 1
				weakwind = 1
				spell = list("Attack")
				items = list("Huge Meat")

			SuperMage5
				icon = 'monsters.dmi'
				icon_state = "mage"
				name = "Super Mage"
				hp = 301424
				attack = 11724
				defense = 9562
				intelligence = 8732
				agility = 7452
				expreward = 850
				gold = 7000
				jobexpreward = 425
				spell = list("Blazemost2","Iceball","ThunderBolt","WindStrike","Quake","SummonMage2","Healmore3")
				items = list("Huge Meat","Large Noodles")

			BlackSlime6
				icon = 'slimes.dmi'
				icon_state = "black"
				name = "Black Slime"
				hp = 386273
				attack = 13234
				defense = 10892
				intelligence = 9556
				agility = 8242
				expreward = 1000
				gold = 8200
				jobexpreward = 500
				weakholy = 1
				spell = list("BlackHole","BlackFlub")
				items = list("Huge Meat","Large Noodles")

			WildCat7
				icon = 'monsters.dmi'
				icon_state = "wildcat"
				name = "Wild Cat"
				hp = 455232
				attack = 15623
				defense = 12332
				intelligence = 11673
				agility = 11442
				expreward = 1450
				gold = 10000
				jobexpreward = 725
				weakfire = 1
				weakearth = 1
				spell = list("Maul","Howl")
				items = list("Huge Meat","Large Noodles")

		Area3B
			mp = 70
			WhiteSlime1
				icon = 'slimes.dmi'
				icon_state = "white"
				name = "White Slime"
				hp = 875743
				attack = 18463
				defense = 14221
				intelligence = 10352
				agility = 10987
				expreward = 3500
				gold = 10000
				jobexpreward = 1750
				weakfire = 1
				spell = list("WhiteFlub","WhiteMassacre")
				items = list("Huge Meat","Large Noodles")

			Curer2
				icon = 'monsters.dmi'
				icon_state = "curer"
				name = "Curer"
				hp = 1092532
				attack = 24352
				defense = 16743
				intelligence = 15634
				agility = 14563
				expreward = 4750
				gold = 12500
				jobexpreward = 2325
				weakwind = 1
				spell = list("Healmost","Healus","Infermost","Tornado")
				items = list("Huge Meat","Large Noodles")

			FlameSlime3
				icon = 'slimes.dmi'
				icon_state = "fire"
				name = "Flame Slime"
				hp = 1354254
				attack = 28724
				defense = 20123
				intelligence = 17525
				agility = 18234
				expreward = 5500
				gold = 13000
				jobexpreward = 2750
				weakice = 1
				spell = list("Dancing Fire","Firebane","Flame Creation1","Master Fire")
				items = list("Gigantic Meat","Overly Sized Noodles")

			BloodBabble4
				icon = 'babbles.dmi'
				icon_state = "bloodbabble"
				name = "Blood Babble"
				hp = 1852343
				attack = 35342
				defense = 27456
				intelligence = 20424
				agility = 20134
				expreward = 6750
				gold = 14500
				jobexpreward = 3375
				weakwind = 1
				weakholy = 1
				spell = list("BloodMassacre","SuperBlood","Duplicate2")
				items = list("Gigantic Meat","Overly Sized Noodles","Nullifier")

			Warrior5
				icon = 'monsters.dmi'
				icon_state = "ragnar"
				name = "Super Warrior"
				hp = 2123443
				attack = 43242
				defense = 33535
				intelligence = 32443
				agility = 35234
				expreward = 7500
				gold = 17500
				jobexpreward = 3750
				weakearth = 1
				weakholy = 1
				weakwind = 1
				spell = list("Attack")
				items = list("Gigantic Meat","Overly Sized Noodles")

			IceBabble6
				icon = 'babbles.dmi'
				icon_state = "bluebabble"
				name = "Ice Babble"
				hp = 2546328
				attack = 47465
				defense = 38354
				intelligence = 37646
				agility = 36764
				expreward = 8900
				gold = 21000
				jobexpreward = 4450
				weakfire = 1
				spell = list("Rain of Ice","Icicle2","Summon Ice1")
				items = list("Gigantic Meat","Overly Sized Noodles")

			GoatHorn7
				icon = 'monsters.dmi'
				icon_state = "goathorn"
				name = "Goat Horn"
				hp = 3524252
				attack = 63425
				defense = 55635
				intelligence = 54575
				agility = 53453
				expreward = 10000
				gold = 25000
				jobexpreward = 5000
				spell = list("Ram2","Horn")
				items = list("Gigantic Meat","Overly Sized Noodles")

		Area3C
			mp = 80
			EvilHuman1
				icon = 'monsters.dmi'
				icon_state = "guy"
				name = "Evil Human"
				hp = 4234253
				attack = 76674
				defense = 66352
				intelligence = 66868
				agility = 70135
				expreward = 11500
				gold = 27000
				jobexpreward = 6050
				weakice = 1
				weakfire = 1
				weakholy = 1
				spell = list("Glare","Doom Portal1")
				items = list("Gigantic Meat","Overly Sized Noodles")

			YellowNite2
				icon = 'monsters.dmi'
				icon_state = "yellownite"
				name = "Yellow Knight"
				hp = 6473453
				attack = 98242
				defense = 90242
				intelligence = 88965
				agility = 88575
				expreward = 14500
				gold = 31500
				jobexpreward = 7250
				spell = list("Bolt Sword","Call1")
				items = list("Gigantic Meat","Overly Sized Noodles")

			HammerLord3
				icon = 'monsters.dmi'
				icon_state = "hammerlord"
				name = "Hammer Lord"
				hp = 7883525
				attack = 106242
				defense = 97982
				intelligence = 99825
				agility = 99932
				expreward = 15500
				gold = 32000
				jobexpreward = 7525
				spell = list("HammerBash")
				items = list("Gigantic Meat","Overly Sized Noodles")

			HammerGod4
				icon = 'monsters.dmi'
				icon_state = "hammergod"
				name = "Hammer God"
				hp = 8846363
				attack = 115262
				defense = 107362
				intelligence = 106574
				agility = 107757
				expreward = 17500
				gold = 35000
				jobexpreward = 8750
				spell = list("HammerCall1","HammerBash","Flatten")
				items = list("Gigantic Meat","Overly Sized Noodles")

			FireDemonite5
				icon = 'monsters.dmi'
				icon_state = "fdemonite"
				name = "Fire Demonite"
				hp = 9812626
				attack = 133525
				defense = 122125
				intelligence = 125623
				agility = 127363
				expreward = 20000
				gold = 40000
				jobexpreward = 10000
				spell = list("Firebal")
				items = list("Gigantic Meat","Overly Sized Noodles")

			Bear6
				icon = 'monsters.dmi'
				icon_state = "bearbeast"
				name = "Bear"
				hp = 10812626
				attack = 152245
				defense = 141242
				intelligence = 145363
				agility = 145225
				expreward = 22000
				gold = 45000
				jobexpreward = 11000
				spell = list("Claw","Howl2")
				items = list("Gigantic Meat","Overly Sized Noodles")

			MetalSlime7
				icon = 'slimes.dmi'
				icon_state = "metal"
				name = "Metal Slime"
				hp = 3
				attack = 53425
				defense = 15252600
				intelligence = 145362
				agility = 15632600
				expreward = 100000
				gold = 1000
				jobexpreward = 50000
				immuneall = 1
				spell = list("Defeat","Master Blaze","Master Icebolt","Master Gale","Master Heal")
				items = list("Gigantic Meat","Overly Sized Noodles")


		Outside1
			mp = 90
			KingSlime1
				icon = 'slimes.dmi'
				icon_state = "kingblue"
				name = "King Slime"
				hp = 24812626
				attack = 214132
				defense = 182413
				intelligence = 213510
				agility = 206467
				expreward = 150000
				gold = 100000
				jobexpreward = 75000
				spell = list("Healusmore","TheNukeSpell","Double Call2")
				items = list("Gigantic Meat","Overly Sized Noodles")

			KingSlimeUnique1
				icon = 'slimes.dmi'
				icon_state = "kingblue"
				name = "King Slime"
				hp = 86155424
				attack = 455850
				defense = 422501
				intelligence = 423369
				agility = 411251
				expreward = 400000
				gold = 500000
				jobexpreward = 200000
				spell = list("Healusmore","TheNukeSpell","Double Call2")
				items = list("Gigantic Meat","Overly Sized Noodles","Super EXP Potion","Super Unknown Potion")

			JewelBag2
				icon = 'monsters.dmi'
				icon_state = "jewelbag"
				name = "Jewel Bag"
				hp = 26584412
				attack = 265840
				defense = 241145
				intelligence = 235841
				agility = 229658
				expreward = 170000
				gold = 110000
				jobexpreward = 85000
				spell = list("JewelThrow2","GoldSteal2")
				items = list("Gigantic Meat","Overly Sized Noodles")

			JewelBagUnique2
				icon = 'monsters.dmi'
				icon_state = "jewelbag"
				name = "Jewel Bag"
				hp = 99694811
				attack = 550515
				defense = 508120
				intelligence = 500251
				agility = 500552
				expreward = 450000
				gold = 750000
				jobexpreward = 275000
				spell = list("JewelThrow2","GoldSteal2")
				items = list("Gigantic Meat","Overly Sized Noodles","Super EXP Potion","Super Unknown Potion")

			Babble3
				icon = 'babbles.dmi'
				icon_state = "babble"
				name = "Babble"
				hp = 31002581
				attack = 301254
				defense = 286452
				intelligence = 281145
				agility = 282354
				expreward = 190000
				gold = 130000
				jobexpreward = 95000
				spell = list("Poison Doom","Splatter","Blow Up1")
				items = list("Gigantic Meat","Overly Sized Noodles","Antidote")

			BabbleUnique3
				icon = 'babbles.dmi'
				icon_state = "babble"
				name = "Babble"
				hp = 115684512
				attack = 751215
				defense = 722151
				intelligence = 711147
				agility = 712542
				expreward = 500000
				gold = 1020000
				jobexpreward = 360000
				spell = list("Poison Doom","Splatter","Blow Up1")
				items = list("Gigantic Meat","Overly Sized Noodles","Super EXP Potion","Super Unknown Potion","Antidote")

		SouthTunnel
			mp = 100
			OldTree1
				icon = 'monsters.dmi'
				icon_state = "oldtree"
				name = "Old Tree"
				hp = 55183215
				attack = 551425
				defense = 445685
				intelligence = 455215
				agility = 466581
				expreward = 275000
				gold = 200000
				jobexpreward = 137500
				spell = list("Leaf Cutter")
				items = list("Gigantic Meat","Overly Sized Noodles")

			WingedBeast2
				icon = 'monsters.dmi'
				icon_state = "wingedbeast"
				name = "Winged Beast"
				hp = 57888452
				attack = 612050
				defense = 551525
				intelligence = 522504
				agility = 553215
				expreward = 300000
				gold = 225000
				jobexpreward = 150000
				spell = list("Wing Beat")
				items = list("Gigantic Meat","Overly Sized Noodles")

			IceMan3
				icon = 'monsters.dmi'
				icon_state = "iceman"
				name = "Ice Man"
				hp = 63651512
				attack = 668451
				defense = 599551
				intelligence = 599615
				agility = 605621
				expreward = 350000
				gold = 255000
				jobexpreward = 175000
				spell = list("Blizzard2","IceCall1","IceRage")
				items = list("Gigantic Meat","Overly Sized Noodles")

			RedKingSlime4
				icon = 'slimes.dmi'
				icon_state = "kingred"
				name = "Red King Slime"
				hp = 71515132
				attack = 712551
				defense = 633265
				intelligence = 633251
				agility = 663615
				expreward = 400000
				gold = 300000
				jobexpreward = 200000
				spell = list("KillerFlame","Split2","Explode")
				items = list("Gigantic Meat","Overly Sized Noodles")

		Mine
			mp = 110
			MineSlime1
				icon = 'slimes.dmi'
				icon_state = "bronze"
				name = "Mine Slime"
				hp = 82215452
				attack = 769961
				defense = 711025
				intelligence = 698965
				agility = 688985
				expreward = 450000
				gold = 350000
				jobexpreward = 225000
				spell = list("Shake","Mine Disease")
				items = list("Gigantic Meat","Overly Sized Noodles")

			SuperMineSlime2
				icon = 'slimes.dmi'
				icon_state = "brown"
				name = "Super Mine Slime"
				hp = 100215452
				attack = 844582
				defense = 800021
				intelligence = 802250
				agility = 811241
				expreward = 525000
				gold = 450000
				jobexpreward = 262500
				spell = list("Shake","Mine Disease")
				items = list("Gigantic Meat","Overly Sized Noodles")

			MineSlimeUnique1
				icon = 'slimes.dmi'
				icon_state = "bronze"
				name = "Mine Slime"
				hp = 192454510
				attack = 1142441
				defense = 1075552
				intelligence = 1066962
				agility = 1099652
				expreward = 700000
				gold = 600000
				jobexpreward = 350000
				spell = list("Shake","Mine Disease")
				items = list("Gigantic Meat","Overly Sized Noodles")

			SuperMineSlimeUnique2
				icon = 'slimes.dmi'
				icon_state = "brown"
				name = "Super Mine Slime"
				hp = 212454510
				attack = 1432441
				defense = 1375552
				intelligence = 1366962
				agility = 1399652
				expreward = 900000
				gold = 750000
				jobexpreward = 400000
				spell = list("Shake","Mine Disease")
				items = list("Gigantic Meat","Overly Sized Noodles")


		Area4
			mp = 200
			RedSlime1
				icon = 'slimes.dmi'
				icon_state = "red"
				name = "Ultimate Red Slime"
				hp = 120552541
				attack = 2696500
				defense = 2225410
				intelligence = 2112500
				agility = 2122500
				expreward = 900000
				gold = 1500000
				jobexpreward = 450000
				spell = list("Death Blaze")
				items = list("Gigantic Meat","Overly Sized Noodles")

			SlimeKnight2
				icon = 'monsters.dmi'
				icon_state = "slimenite"
				name = "Ultimate Slime Knight"
				hp = 144215202
				attack = 3215120
				defense = 2955210
				intelligence = 2885480
				agility = 2875470
				expreward = 950000
				gold = 1800000
				jobexpreward = 500000
				spell = list("SwordRain2")
				items = list("Gigantic Meat","Overly Sized Noodles")

			Demonite3
				icon = 'monsters.dmi'
				icon_state = "demonite"
				name = "Ultimate Demonite"
				hp = 188548125
				attack = 4021540
				defense = 3788480
				intelligence = 3885410
				agility = 3822540
				expreward = 1000000
				gold = 2100000
				jobexpreward = 600000
				spell = list("Stab","NoMP")
				items = list("Gigantic Meat","Overly Sized Noodles")

			Skeleton4
				icon = 'monsters.dmi'
				icon_state = "skeleton"
				name = "Ultimate Skeleton"
				hp = 224554151
				attack = 4558120
				defense = 4296650
				intelligence = 4300510
				agility = 4289580
				expreward = 1050000
				gold = 2450000
				jobexpreward = 725000
				spell = list("Super Bone")
				items = list("Gigantic Meat","Overly Sized Noodles")

		Summoned
			items = list("None")
			SummonedSlime1
				mp = 35
				icon = 'slimes.dmi'
				icon_state = "blue"
				name = "Summoned Slime"
				hp = 2131
				attack = 121
				defense = 112
				intelligence = 101
				agility = 104
				expreward = 30
				gold = 125
				jobexpreward = 15
				spell = list("Blazemore","Heal","SummonSlime1")

			SummonedHealer1
				mp = 35
				icon = 'monsters.dmi'
				icon_state = "healer"
				name = "Summoned Healer"
				hp = 2131
				attack = 102
				defense = 93
				intelligence = 87
				agility = 84
				expreward = 24
				gold = 110
				jobexpreward = 12
				weaklit = 1
				spell = list("Healmore","Infernos","Healmore","SummonSlime1","Healmore")

			SummonedThiefBag1
				mp = 35
				icon = 'monsters.dmi'
				icon_state = "thiefbag"
				name = "Summoned Thief Bag"
				hp = 4121
				attack = 185
				defense = 162
				intelligence = 155
				agility = 271
				expreward = 44
				gold = 350
				jobexpreward = 22
				spell = list("Knockover","Kirby","JewelRain","SummonThiefBag1")

			SummonedSkeleton1
				mp = 35
				icon = 'monsters.dmi'
				icon_state = "skeleton"
				name = "Summoned Skeleton"
				hp = 6121
				attack = 273
				defense = 245
				intelligence = 233
				agility = 237
				expreward = 60
				gold = 450
				jobexpreward = 30
				weaklit = 1
				weakwind = 1
				weakholy = 1
				spell = list("Bonetoss","Healmore","SummonSkeleton1")

			SummonedHammerman1
				mp = 35
				icon = 'monsters.dmi'
				icon_state = "hammerman"
				name = "Summoned Hammer Man"
				hp = 7231
				attack = 321
				defense = 316
				intelligence = 311
				agility = 312
				expreward = 68
				gold = 500
				jobexpreward = 34
				spell = list("HammerFall2","Healmore2","Blazemore2")

			SummonedIceSloth1
				mp = 45
				icon = 'monsters.dmi'
				icon_state = "icesloth"
				name = "Summoned Ice Sloth"
				hp = 11132
				attack = 462
				defense = 421
				intelligence = 431
				agility = 443
				expreward = 130
				gold = 800
				jobexpreward = 65
				weakfire = 1
				spell = list("IceTounge","Icicle","IceCall1")

			SummonedTealSlime1
				mp = 45
				icon = 'slimes.dmi'
				icon_state = "teal"
				name = "Summoned Teal Slime"
				hp = 13421
				attack = 523
				defense = 491
				intelligence = 501
				agility = 498
				expreward = 142
				gold = 1000
				jobexpreward = 71
				spell = list("Goop","Healmore2","Split")

			SummonedBloodBabble1
				mp = 45
				icon = 'babbles.dmi'
				icon_state = "bloodbabble"
				name = "Summoned Blood Babble"
				hp = 17421
				attack = 674
				defense = 633
				intelligence = 652
				agility = 645
				expreward = 166
				gold = 1320
				jobexpreward = 88
				weakholy = 1
				spell = list("Disease","BloodRock","BloodRain","Absorb","Duplicate1")

			SummonedSlime2
				mp = 45
				icon = 'slimes.dmi'
				icon_state = "blue"
				name = "Summoned Demon Slime"
				hp = 174352
				attack = 1543
				defense = 1482
				intelligence = 1502
				agility = 1512
				expreward = 350
				gold = 4620
				jobexpreward = 175
				weakholy = 1
				weakearth = 1
				spell = list("Blazemost","Healmore3","SummonSlime2","MagicBlade")

			SummonedSlime3
				mp = 60
				icon = 'slimes.dmi'
				icon_state = "blue"
				name = "Summoned Demon Slime"
				hp = 122424
				attack = 1344
				defense = 1221
				intelligence = 1241
				agility = 1257
				expreward = 250
				gold = 3000
				jobexpreward = 125
				weakholy = 1
				weakearth = 1
				spell = list("Blazemost","Healmore3","SummonSlime3","MagicBlade")

			SummonedMage1
				mp = 60
				icon = 'monsters.dmi'
				icon_state = "mage"
				name = "Summoned Mage"
				hp = 179432
				attack = 1623
				defense = 1492
				intelligence = 2062
				agility = 2011
				expreward = 330
				gold = 3800
				jobexpreward = 165
				weakholy = 1
				weakearth = 1
				spell = list("Blazemost2","Iceball","ThunderBolt","WindStrike","Quake","SummonMage1","Healmore3")

			SummonedMage2
				mp = 60
				icon = 'monsters.dmi'
				icon_state = "mage"
				name = "Summoned Mage"
				hp = 301424
				attack = 11724
				defense = 9562
				intelligence = 8732
				agility = 7452
				expreward = 850
				gold = 7000
				jobexpreward = 425
				spell = list("Blazemost2","Iceball","ThunderBolt","WindStrike","Quake","SummonMage2","Healmore3")

			SummonedBlackSlime1
				mp = 60
				icon = 'slimes.dmi'
				icon_state = "black"
				name = "Summoned Black Slime"
				hp = 386273
				attack = 13234
				defense = 10892
				intelligence = 9556
				agility = 8242
				expreward = 1000
				gold = 8200
				jobexpreward = 500
				spell = list("BlackHole","BlackFlub1")

			SummonedWildCat1
				mp = 60
				icon = 'monsters.dmi'
				icon_state = "wildcat"
				name = "Summoned Wild Cat"
				hp = 455232
				attack = 15623
				defense = 12332
				intelligence = 11673
				agility = 11442
				expreward = 1450
				gold = 10000
				jobexpreward = 725
				spell = list("Maul","Howl1")

			SummonedWhiteSlime1
				mp = 70
				icon = 'slimes.dmi'
				icon_state = "white"
				name = "Summoned White Slime"
				hp = 875740
				attack = 18463
				defense = 14221
				intelligence = 10352
				agility = 10987
				expreward = 3500
				gold = 10000
				jobexpreward = 1750
				spell = list("WhiteFlub1","WhiteMassacre")

			SummonedFlameSlime1
				mp = 70
				icon = 'slimes.dmi'
				icon_state = "fire"
				name = "Summoned Flame Slime"
				hp = 1354250
				attack = 28724
				defense = 20123
				intelligence = 17525
				agility = 18234
				expreward = 5500
				gold = 13000
				jobexpreward = 2750
				weakice = 1
				spell = list("Dancing Fire","Firebane","Flame Creation","Master Fire")

			SummonedBloodBabble2
				mp = 70
				icon = 'babbles.dmi'
				icon_state = "bloodbabble"
				name = "Summoned Blood Babble"
				hp = 1354250
				attack = 28724
				defense = 20123
				intelligence = 17525
				agility = 18234
				expreward = 5500
				gold = 13000
				jobexpreward = 2750
				weakwind = 1
				weakholy = 1
				spell = list("BloodMassacre","SuperBlood","Duplicate2")

			SummonedIceBabble1
				mp = 70
				icon = 'babbles.dmi'
				icon_state = "bluebabble"
				name = "Summoned Ice Babble"
				hp = 2546320
				attack = 47465
				defense = 38354
				intelligence = 37646
				agility = 36764
				expreward = 8900
				gold = 21000
				jobexpreward = 4450
				weakfire = 1
				spell = list("Rain of Ice","Icicle2","Summon Ice1")

			SummonedEvilHuman1
				mp = 80
				icon = 'monsters.dmi'
				icon_state = "guy"
				name = "Summoned Evil Human"
				hp = 4234253
				attack = 76674
				defense = 66352
				intelligence = 66868
				agility = 70135
				expreward = 11500
				gold = 27000
				jobexpreward = 6050
				weakice = 1
				weakfire = 1
				weakholy = 1
				spell = list("Glare","Doom Portal1")

			SummonedYellowNite1
				mp = 80
				icon = 'monsters.dmi'
				icon_state = "yellownite"
				name = "Summoned Yellow Knight"
				hp = 6473453
				attack = 98242
				defense = 90242
				intelligence = 88965
				agility = 88575
				expreward = 14500
				gold = 31500
				jobexpreward = 7250
				spell = list("Bolt Sword","Call1")

			SummonedHammerGod1
				mp = 80
				icon = 'monsters.dmi'
				icon_state = "hammergod"
				name = "Summoned Hammer God"
				hp = 8846363
				attack = 115262
				defense = 107362
				intelligence = 106574
				agility = 107757
				expreward = 17500
				gold = 35000
				jobexpreward = 8750
				spell = list("HammerCall1","HammerBash","Flatten")

			SummonedHammerLord1
				mp = 80
				icon = 'monsters.dmi'
				icon_state = "hammerlord"
				name = "Summoned Hammer Lord"
				hp = 7883525
				attack = 106242
				defense = 97982
				intelligence = 99825
				agility = 99932
				expreward = 15500
				gold = 32000
				jobexpreward = 7525
				spell = list("HammerBash")

			SummonedBear1
				mp = 80
				icon = 'monsters.dmi'
				icon_state = "bearbeast"
				name = "Summoned Bear"
				hp = 10812626
				attack = 152245
				defense = 141242
				intelligence = 145363
				agility = 145225
				expreward = 22000
				gold = 45000
				jobexpreward = 11000
				spell = list("Claw","Howl2")

			SummonedKingSlime1
				mp = 80
				icon = 'slimes.dmi'
				icon_state = "kingblue"
				name = "Summoned King Slime"
				hp = 44812626
				attack = 244132
				defense = 222413
				intelligence = 25351
				agility = 246467
				expreward = 175000
				gold = 100000
				jobexpreward = 87500
				spell = list("Healusmore","TheNukeSpell","Double Call1")

			SummonedKingSlime2
				mp = 90
				icon = 'slimes.dmi'
				icon_state = "kingblue"
				name = "Summoned King Slime"
				hp = 24812626
				attack = 214132
				defense = 182413
				intelligence = 21351
				agility = 206467
				expreward = 150000
				gold = 100000
				jobexpreward = 75000
				spell = list("Healusmore","TheNukeSpell","Double Call2")

			SummonedBabble1
				mp = 90
				icon = 'babbles.dmi'
				icon_state = "babble"
				name = "Summoned Babble"
				hp = 31002581
				attack = 301254
				defense = 286452
				intelligence = 281145
				agility = 282354
				expreward = 190000
				gold = 130000
				jobexpreward = 95000
				spell = list("Poison Doom","Splatter","Blow Up1")

			SummonedIceMan1
				icon = 'monsters.dmi'
				icon_state = "iceman"
				name = "Summoned Ice Man"
				hp = 63651512
				attack = 668451
				defense = 599551
				intelligence = 599615
				agility = 605621
				expreward = 350000
				gold = 255000
				jobexpreward = 175000
				spell = list("Blizzard2","IceCall2","IceRage")
				items = list("Gigantic Meat","Overly Sized Noodles")

			SummonedRedKingSlime1
				icon = 'slimes.dmi'
				icon_state = "kingred"
				name = "Summoned Red King Slime"
				hp = 71515132
				attack = 712551
				defense = 633265
				intelligence = 633251
				agility = 663615
				expreward = 400000
				gold = 300000
				jobexpreward = 200000
				spell = list("KillerFlame","Split2","Explode")
				items = list("Gigantic Meat","Overly Sized Noodles")

		Bosses
			Golem1
				mp = 25
				icon = 'monsters.dmi'
				icon_state = "golem"
				name = "Golem"
				hp = 9342
				attack = 103
				defense = 89
				intelligence = 83
				agility = 80
				expreward = 50
				gold = 250
				jobexpreward = 25
				weakfire = 1
				spell = list("Heal","RockToss","Trample","Knockdown")
				items = list("Gigantic Meat","Overly Sized Noodles")

			DemonSlime2
				mp = 50
				icon = 'slimes.dmi'
				icon_state = "blue"
				name = "Demon Slime"
				hp = 174352
				attack = 1543
				defense = 1482
				intelligence = 1502
				agility = 1512
				expreward = 350
				gold = 4620
				jobexpreward = 175
				weakholy = 1
				weakearth = 1
				spell = list("Blazemost","Healmore3","SummonSlime2","MagicBlade")
				items = list("Gigantic Meat","Overly Sized Noodles")

			KingSlime3
				mp = 100
				icon = 'slimes.dmi'
				icon_state = "kingblue"
				name = "King Slime"
				hp = 29488421
				attack = 233512
				defense = 212150
				intelligence = 213510
				agility = 206467
				expreward = 150000
				gold = 100000
				jobexpreward = 75000
				spell = list("Healusmore","TheNukeSpell","Double Call1")
				items = list("Gigantic Meat","Overly Sized Noodles")

			TreeGod4
				mp = 200
				icon = 'monsters.dmi'
				icon_state = "livingtree"
				name = "The Tree God"
				hp = 525210141
				attack = 966502
				defense = 912250
				intelligence = 911520
				agility = 912551
				expreward = 1800000
				gold = 3500000
				jobexpreward = 900000
				spell = list("LeafHorde","Growth")
				items = list("Gigantic Meat","Overly Sized Noodles")

			SuperBoss
				mp = 1000
				icon = 'slimes.dmi'
				icon_state = "kinggold"
				name = "King Gold God Slime"
				hp = 999999999
				attack = 999999
				defense = 888888
				intelligence = 999999
				agility = 999999
				expreward = 1000000
				gold = 1000000000
				jobexpreward = 500000
				spell = list("Attack")
				items = list("Gigantic Meat","Overly Sized Noodles")


