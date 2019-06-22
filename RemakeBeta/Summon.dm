mob
	proc
		Blaze(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(10,30)
			if(src.monsterinparty.mp <= 4)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Blaze on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weakfire == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 5
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 5

		Poison(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(20,100)
			if(src.monsterinparty.mp <= 14)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] creates a Wave of Poison and directs it at [select]!"
				src << 'spell.wav'
				sleep(10)
				if(spelldmg >= 1)
					src << "The Wave does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 15
					sleep(10)
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += (select.expreward * 2)
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
					else
						var/chance = rand(0,4)
						if(chance == 1)
							src << "The [select] is poisoned!"
							select.poisoned = 1
						if(chance == 3)
							src << "The [select] is poisoned!"
							select.poisoned = 1
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 15

		Splatter(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.attack - select.defense + rand(40,100)
			if(src.monsterinparty.mp <= 7)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] Splatters on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(spelldmg >= 1)
					src << "The Splatter does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 8
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += (select.expreward * 2)
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 8

		SummonBash(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.attack - select.defense + rand(40,100)
				knockout = src.monsterinparty.agility - select.defense + rand(-10000,10000)
			if(src.monsterinparty.mp <= 12)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] Bashes the crap out of [select]!"
				src << 'spell.wav'
				sleep(10)
				if(spelldmg >= 1)
					src << "[src.monsterinparty]'s Hammer does [num2text(spelldmg,20)] damage and leaves loads of bruises on [select]'s head!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 13
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += (select.expreward * 2)
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
					else if(knockout >= 1)
						src << "[src.monsterinparty.name] knocked out [select]!"
						sleep(10)
						UrMonsterBattle()
				if(spelldmg <= 0)
					src << "The [select] does not feel a thing!"
					sleep(10)
					src.monsterinparty.mp -= 13

		Infernos(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(100,300)
			if(src.monsterinparty.mp <= 19)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Infernos on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weakwind == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 20
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 20

		Bolt(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(150,450)
			if(src.monsterinparty.mp <= 24)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Bolt on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weaklit == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 25
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 25

		Infermore(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(750,2000)
			if(src.monsterinparty.mp <= 49)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Infermore on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weakwind == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 50
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 50

		Infermost(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(14000,22000)
			if(src.monsterinparty.mp <= 499)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Infermost on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weakwind == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 500
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 500

		Blazemore(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(800,2500)
			if(src.monsterinparty.mp <= 49)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Blazemore on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weakfire == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 50
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 50

		Blazemost(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(6000,10000)
			if(src.monsterinparty.mp <= 249)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Blazemost on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weakfire == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 250
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 250

		Bang(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(50,200)
			if(src.monsterinparty.mp <= 29)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Bang on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weakfire == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 30
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 30

		Boom(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(4500,7000)
			if(src.monsterinparty.mp <= 199)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Boom on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weakfire == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 200
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 200

		Explodet(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(20000,35000)
			if(src.monsterinparty.mp <= 599)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Explodet on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weakfire == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 600
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 600

		Zap(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(2500,5000)
			if(src.monsterinparty.mp <= 149)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Zap on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weaklit == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 150
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 150

		Thordain(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(12500,21000)
			if(src.monsterinparty.mp <= 499)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Thordain on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weaklit == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 500
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 500

		Icebolt(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(50,175)
			if(src.monsterinparty.mp <= 9)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Icebolt on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weakice == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 10
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 10

		Snowstorm(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(700,1000)
			if(src.monsterinparty.mp <= 89)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Snowstorm on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weakice == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 90
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 90

		Blizzard(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(7000,13000)
			if(src.monsterinparty.mp <= 349)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Blizzard on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weakice == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 350
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 350

		Gale(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(300,550)
			if(src.monsterinparty.mp <= 39)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Gale on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weakwind == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 40
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 40

		Tornado(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(4000,7500)
			if(src.monsterinparty.mp <= 209)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Tornado on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weakwind == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 210
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 210

		Hurricane(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(15000,21000)
			if(src.monsterinparty.mp <= 549)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Hurricane on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weakwind == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(select.weakice == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 550
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 550

		EarthSpike(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(500,700)
			if(src.monsterinparty.mp <= 29)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Earth Spike on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weakearth == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 30
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 30

		Quake(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(5000,7500)
			if(src.monsterinparty.mp <= 289)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Quake on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weakearth == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 290
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 290

		Earthquake(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(11000,17000)
			if(src.monsterinparty.mp <= 499)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Earthquake on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weakearth == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 500
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 500

		Heal(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(5,20)
				mob/chose = pick(src,src.monsterinparty)
			if(src.monsterinparty.mp <= 7)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Heal on [chose]!"
				src << 'spell.wav'
				sleep(10)
				if(spelldmg >= 1)
					src << "[chose] heals [num2text(spelldmg,20)] HP!"
					sleep(10)
					chose.hp += spelldmg
					src.monsterinparty.mp -= 8
					if(chose.hp >= chose.maxhp)
						chose.hp = chose.maxhp
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 8

		Healmore(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(550,1100)
				mob/chose = pick(src,src.monsterinparty)
			if(src.monsterinparty.mp <= 24)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Healmore on [chose]!"
				src << 'spell.wav'
				sleep(10)
				if(spelldmg >= 1)
					src << "[chose] heals [num2text(spelldmg,20)] HP!"
					sleep(10)
					chose.hp += spelldmg
					src.monsterinparty.mp -= 25
					if(chose.hp >= chose.maxhp)
						chose.hp = chose.maxhp
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 25

		Healus(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(1000,10000)
			if(src.monsterinparty.mp <= 79)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Healus!"
				src << 'spell.wav'
				sleep(10)
				if(spelldmg >= 1)
					src << "The party gains [num2text(spelldmg,20)] HP!"
					sleep(10)
					src.hp += spelldmg
					src.monsterinparty.hp += spelldmg
					src.monsterinparty.mp -= 80
					if(src.hp >= src.maxhp)
						src.hp = src.maxhp
					if(src.monsterinparty.hp >= src.monsterinparty.maxhp)
						src.monsterinparty.hp = src.monsterinparty.maxhp
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 80

		Healusmore(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(50000,100000)
			if(src.monsterinparty.mp <= 749)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Healusmore!"
				src << 'spell.wav'
				sleep(10)
				if(spelldmg >= 1)
					src << "The party gains [num2text(spelldmg,20)] HP!"
					sleep(10)
					src.hp += spelldmg
					src.monsterinparty.hp += spelldmg
					src.monsterinparty.mp -= 750
					if(src.hp >= src.maxhp)
						src.hp = src.maxhp
					if(src.monsterinparty.hp >= src.monsterinparty.maxhp)
						src.monsterinparty.hp = src.monsterinparty.maxhp
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 750

		KingBlaze(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(50000,75000)
			if(src.monsterinparty.mp <= 999)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts King Blaze on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weakfire == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 1000
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 1000

		KingIcebolt(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(50000,75000)
			if(src.monsterinparty.mp <= 999)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts King Icebolt on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weakice == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 1000
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 1000

		KingBolt(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(50000,75000)
			if(src.monsterinparty.mp <= 999)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts King Bolt on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weaklit == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 1000
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 1000

		KingGale(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(50000,75000)
			if(src.monsterinparty.mp <= 999)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts King Gale on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weakwind == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 1000
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 1000

		KingHolyBolt(mob/select,list/enemy)
			var
				spelldmg = src.monsterinparty.intelligence - select.intelligence + rand(50000,75000)
			if(src.monsterinparty.mp <= 999)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts King Holy Bolt on [select]!"
				src << 'spell.wav'
				sleep(10)
				if(select.weakholy == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					src << "The spell does [num2text(spelldmg,20)] damage!"
					src << 'hit.wav'
					sleep(10)
					select.hp -= spelldmg
					src.monsterinparty.mp -= 1000
					if(select.hp <= 0)
						src << "For being able to kill [select], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += select.expreward
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(select)
				if(spelldmg <= 0)
					src << "The spell fails!"
					sleep(10)
					src.monsterinparty.mp -= 1000

		Antidote(mob/select,list/enemy)
			var
				mob/chose = pick(src,src.monsterinparty)
			if(src.monsterinparty.mp <= 9)
				src << "[src.monsterinparty]: But Master, I don't have enough MP!"
				UrMonsterBattle(enemy)
			if(chose.poisoned == 0)
				src << "[src.monsterinparty]: My target was not poisoned, if you want me to choose another target, make me cast the spell again!"
				UrMonsterBattle(enemy)
			else
				src << "[src.monsterinparty] casts Antidote on [chose]!"
				src << 'spell.wav'
				sleep(10)
				src << "[chose] is Unposioned!"
				chose.poisoned = 0
				src.monsterinparty.mp -= 10
				sleep(10)

mob
	Move()
		if(src.islocked)
			return 0
		else if(src.lockedforever)
			return 0
		..()
		if(src.monsterfollow != null)
			if(get_dist(src,src.monsterfollow) <= 1) return
			step_to(src.monsterfollow,src)
	//	for(var/mob/monster/enemy in orange(11))
	//		if(!enemy.acting)
	//			enemy.RandWalk()

obj
	summons
		icon = 'crystals.dmi'
		verb
			Drop()
				set category = "Other"
				if(usr.lib == 1)
					usr << "You are in battle!  Wait until Battle is over to drop this item!"
				else
					usr << "You drop the [src]!"
					src.loc = usr.loc

		Blue_Slime_Crystal
			icon_state = "bluecrys"
			name = "Blue Slime Summoning Crystal"
			DblClick()
				Use()
			verb
				Use()
					set category = "Other"
					if(usr.monsterinparty == null)
						usr << "The [src] begins to shake aruptly!  A blue beam comes out of the [src] and a Blue Slime is formed!  The [src] shatters into millions of pieces which are absorbed into the new monster..."
						var/mob/summons/Blue_Slime_Summon/B = new/mob/summons/Blue_Slime_Summon()
						usr << "<b><font color = olive>[B]:</b><font color = green> Hiya!  I'm a [B]!  Since You're my new master, name me properly!  I hate this name!"
						sleep(20)
						var/namea = input("What do you want to name the new [B]?","Name!")
						if(length(namea) <= 3)
							usr << "<b><font color = olive>Summon:</b><font color = green> My name isn't long enough, I'm going back in my crystal."
							return
						B.name = namea
						usr << "<b><font color = olive>[namea]:</b><font color = green> Thanks!  My new name is [namea]!"
						B.owner = usr
						usr.monsterinparty = B
						var/mob/A = new usr.monsterinparty.type(locate(usr.x,usr.y,usr.z))
						A.name = B.name
						A.density = 0
						usr.monsterfollow = A
						usr.AddVerbSummons()
						del(src)
					else
						usr << "You cannot have 2 monsters at once, get rid of your old one!"
				Info()
					set category = "Other"
					usr << "This is a Summoning Crystal.  This has the essence of a Blue Slime.  When used, a Blue Slime will join your party."

		Red_Slime_Crystal
			icon_state = "redcrys"
			name = "Red Slime Summoning Crystal"
			DblClick()
				Use()
			verb
				Use()
					set category = "Other"
					if(usr.monsterinparty == null)
						usr << "The [src] begins to shake aruptly!  A red beam comes out of the [src] and a Red Slime is formed!  The [src] shatters into millions of pieces which are absorbed into the new monster..."
						var/mob/summons/Red_Slime_Summon/B = new/mob/summons/Red_Slime_Summon()
						usr << "<b><font color = olive>[B]:</b><font color = green> Hiya!  I'm a [B]!  Since You're my new master, name me properly!  I hate this name!"
						sleep(20)
						var/namea = input("What do you want to name the new [B]?","Name!")
						if(length(namea) <= 3)
							usr << "<b><font color = olive>Summon:</b><font color = green> My name isn't long enough, I'm going back in my crystal."
							return
						B.name = namea
						usr << "<b><font color = olive>[namea]:</b><font color = green> Thanks!  My new name is [namea]!"
						B.owner = usr
						usr.monsterinparty = B
						var/mob/A = new usr.monsterinparty.type(locate(usr.x,usr.y,usr.z))
						A.name = B.name
						A.density = 0
						usr.monsterfollow = A
						usr.AddVerbSummons()
						del(src)
					else
						usr << "You cannot have 2 monsters at once, get rid of your old one!"
				Info()
					set category = "Other"
					usr << "This is a Summoning Crystal.  This has the essence of a Red Slime.  When used, a Red Slime will join your party."

		Babble_Crystal
			icon_state = "greencrys"
			name = "Babble Summoning Crystal"
			DblClick()
				Use()
			verb
				Use()
					set category = "Other"
					if(usr.monsterinparty == null)
						usr << "The [src] begins to shake aruptly!  A green beam comes out of the [src] and a Babble is formed!  The [src] shatters into millions of pieces which are absorbed into the new monster..."
						var/mob/summons/Babble_Summon/B = new/mob/summons/Babble_Summon()
						usr << "<b><font color = olive>[B]:</b><font color = green> Hiya!  I'm a [B]!  Since You're my new master, name me properly!  I hate this name!"
						sleep(20)
						var/namea = input("What do you want to name the new [B]?","Name!")
						if(length(namea) <= 3)
							usr << "<b><font color = olive>Summon:</b><font color = green> My name isn't long enough, I'm going back in my crystal."
							return
						B.name = namea
						usr << "<b><font color = olive>[namea]:</b><font color = green> Thanks!  My new name is [namea]!"
						B.owner = usr
						usr.monsterinparty = B
						var/mob/A = new usr.monsterinparty.type(locate(usr.x,usr.y,usr.z))
						A.name = B.name
						A.density = 0
						usr.monsterfollow = A
						usr.AddVerbSummons()
						del(src)
					else
						usr << "You cannot have 2 monsters at once, get rid of your old one!"
				Info()
					set category = "Other"
					usr << "This is a Summoning Crystal.  This has the essence of a Babble.  When used, a Babble will join your party."

		Hammer_Man_Crystal
			icon_state = "browncrys"
			name = "Hammer Man Crystal"
			DblClick()
				Use()
			verb
				Use()
					set category = "Other"
					if(usr.retrieverlevel <= 0)
						usr << "You cannot use this Summoning Crystal because your skill is not high enough!  When you are a Level 1 Retriever, you will be able to use this."
						return
					if(usr.monsterinparty == null)
						usr << "The [src] begins to shake aruptly!  A brown beam comes out of the [src] and a Hammer Man is formed!  The [src] shatters into millions of pieces which are absorbed into the new monster..."
						var/mob/summons/Hammer_Man_Summon/B = new/mob/summons/Hammer_Man_Summon()
						usr << "<b><font color = olive>[B]:</b><font color = green> Hiya!  I'm a [B]!  Since You're my new master, name me properly!  I hate this name!"
						sleep(20)
						var/namea = input("What do you want to name the new [B]?","Name!")
						if(length(namea) <= 3)
							usr << "<b><font color = olive>Summon:</b><font color = green> My name isn't long enough, I'm going back in my crystal."
							return
						B.name = namea
						usr << "<b><font color = olive>[namea]:</b><font color = green> Thanks!  My new name is [namea]!"
						B.owner = usr
						usr.monsterinparty = B
						var/mob/A = new usr.monsterinparty.type(locate(usr.x,usr.y,usr.z))
						A.name = B.name
						A.density = 0
						usr.monsterfollow = A
						usr.AddVerbSummons()
						del(src)
					else
						usr << "You cannot have 2 monsters at once, get rid of your old one!"
				Info()
					set category = "Other"
					usr << "This is a Summoning Crystal.  This has the essence of a Hammer Man.  When used, a Hammer Man will join your party."

		Healer_Crystal
			icon_state = "bluecrys"
			name = "Healer Crystal"
			DblClick()
				Use()
			verb
				Use()
					set category = "Other"
					if(usr.retrieverlevel <= 0)
						usr << "You cannot use this Summoning Crystal because your skill is not high enough!  When you are a Level 1 Retriever, you will be able to use this."
						return
					if(usr.monsterinparty == null)
						usr << "The [src] begins to shake aruptly!  A blue beam comes out of the [src] and a Healer is formed!  The [src] shatters into millions of pieces which are absorbed into the new monster..."
						var/mob/summons/Healer_Summon/B = new/mob/summons/Healer_Summon()
						usr << "<b><font color = olive>[B]:</b><font color = green> Hiya!  I'm a [B]!  Since You're my new master, name me properly!  I hate this name!"
						sleep(20)
						var/namea = input("What do you want to name the new [B]?","Name!")
						if(length(namea) <= 3)
							usr << "<b><font color = olive>Summon:</b><font color = green> My name isn't long enough, I'm going back in my crystal."
							return
						B.name = namea
						usr << "<b><font color = olive>[namea]:</b><font color = green> Thanks!  My new name is [namea]!"
						B.owner = usr
						usr.monsterinparty = B
						var/mob/A = new usr.monsterinparty.type(locate(usr.x,usr.y,usr.z))
						A.name = B.name
						A.density = 0
						usr.monsterfollow = A
						usr.AddVerbSummons()
						del(src)
					else
						usr << "You cannot have 2 monsters at once, get rid of your old one!"
				Info()
					set category = "Other"
					usr << "This is a Summoning Crystal.  This has the essence of a Healer.  When used, a Healer will join your party."

		Yellow_Slime_Crystal
			icon_state = "yellowcrys"
			name = "Yellow Slime Crystal"
			DblClick()
				Use()
			verb
				Use()
					set category = "Other"
					if(usr.retrieverlevel <= 0)
						usr << "You cannot use this Summoning Crystal because your skill is not high enough!  When you are a Level 1 Retriever, you will be able to use this."
						return
					if(usr.monsterinparty == null)
						usr << "The [src] begins to shake aruptly!  A blue beam comes out of the [src] and a Yellow Slime is formed!  The [src] shatters into millions of pieces which are absorbed into the new monster..."
						var/mob/summons/Yellow_Slime_Summon/B = new/mob/summons/Yellow_Slime_Summon()
						usr << "<b><font color = olive>[B]:</b><font color = green> Hiya!  I'm a [B]!  Since You're my new master, name me properly!  I hate this name!"
						sleep(20)
						var/namea = input("What do you want to name the new [B]?","Name!")
						if(length(namea) <= 3)
							usr << "<b><font color = olive>Summon:</b><font color = green> My name isn't long enough, I'm going back in my crystal."
							return
						B.name = namea
						usr << "<b><font color = olive>[namea]:</b><font color = green> Thanks!  My new name is [namea]!"
						B.owner = usr
						usr.monsterinparty = B
						var/mob/A = new usr.monsterinparty.type(locate(usr.x,usr.y,usr.z))
						A.name = B.name
						A.density = 0
						usr.monsterfollow = A
						usr.AddVerbSummons()
						del(src)
					else
						usr << "You cannot have 2 monsters at once, get rid of your old one!"
				Info()
					set category = "Other"
					usr << "This is a Summoning Crystal.  This has the essence of a Yellow Slime.  When used, a Yellow Slime will join your party."

		Slime_Knight_Crystal
			icon_state = "greencrys"
			name = "Slime Knight Crystal"
			DblClick()
				Use()
			verb
				Use()
					set category = "Other"
					if(usr.retrieverlevel <= 0)
						usr << "You cannot use this Summoning Crystal because your skill is not high enough!  When you are a Level 1 Retriever, you will be able to use this."
						return
					if(usr.monsterinparty == null)
						usr << "The [src] begins to shake aruptly!  A blue beam comes out of the [src] and a Slime Knight is formed!  The [src] shatters into millions of pieces which are absorbed into the new monster..."
						var/mob/summons/Slime_Knight_Summon/B = new/mob/summons/Slime_Knight_Summon()
						usr << "<b><font color = olive>[B]:</b><font color = green> Hiya!  I'm a [B]!  Since You're my new master, name me properly!  I hate this name!"
						sleep(20)
						var/namea = input("What do you want to name the new [B]?","Name!")
						if(length(namea) <= 3)
							usr << "<b><font color = olive>Summon:</b><font color = green> My name isn't long enough, I'm going back in my crystal."
							return
						B.name = namea
						usr << "<b><font color = olive>[namea]:</b><font color = green> Thanks!  My new name is [namea]!"
						B.owner = usr
						usr.monsterinparty = B
						var/mob/A = new usr.monsterinparty.type(locate(usr.x,usr.y,usr.z))
						A.name = B.name
						A.density = 0
						usr.monsterfollow = A
						usr.AddVerbSummons()
						del(src)
					else
						usr << "You cannot have 2 monsters at once, get rid of your old one!"
				Info()
					set category = "Other"
					usr << "This is a Summoning Crystal.  This has the essence of a Slime Knight.  When used, a Slime Knight will join your party."

		Metal_Slime_Crystal
			icon_state = "greycrys"
			name = "Metal Slime Crystal"
			DblClick()
				Use()
			verb
				Use()
					set category = "Other"
					if(usr.retrieverlevel <= 1)
						usr << "You cannot use this Summoning Crystal because your skill is not high enough!  When you are a Level 2 Retriever, you will be able to use this."
						return
					if(usr.monsterinparty == null)
						usr << "The [src] begins to shake aruptly!  A blue beam comes out of the [src] and a Metal Slime is formed!  The [src] shatters into millions of pieces which are absorbed into the new monster..."
						var/mob/summons/Metal_Slime_Summon/B = new/mob/summons/Metal_Slime_Summon()
						usr << "<b><font color = olive>[B]:</b><font color = green> Hiya!  I'm a [B]!  Since You're my new master, name me properly!  I hate this name!"
						sleep(20)
						var/namea = input("What do you want to name the new [B]?","Name!")
						if(length(namea) <= 3)
							usr << "<b><font color = olive>Summon:</b><font color = green> My name isn't long enough, I'm going back in my crystal."
							return
						B.name = namea
						usr << "<b><font color = olive>[namea]:</b><font color = green> Thanks!  My new name is [namea]!"
						B.owner = usr
						usr.monsterinparty = B
						var/mob/A = new usr.monsterinparty.type(locate(usr.x,usr.y,usr.z))
						A.name = B.name
						A.density = 0
						usr.monsterfollow = A
						usr.AddVerbSummons()
						del(src)
					else
						usr << "You cannot have 2 monsters at once, get rid of your old one!"
				Info()
					set category = "Other"
					usr << "This is a Summoning Crystal.  This has the essence of a Metal Slime.  When used, a Metal Slime will join your party."

		Gold_Slime_Crystal
			icon_state = "yellowcrys"
			name = "Gold Slime Crystal"
			DblClick()
				Use()
			verb
				Use()
					set category = "Other"
					if(usr.retrieverlevel <= 1)
						usr << "You cannot use this Summoning Crystal because your skill is not high enough!  When you are a Level 2 Retriever, you will be able to use this."
						return
					if(usr.monsterinparty == null)
						usr << "The [src] begins to shake aruptly!  A blue beam comes out of the [src] and a Gold Slime is formed!  The [src] shatters into millions of pieces which are absorbed into the new monster..."
						var/mob/summons/Gold_Slime_Summon/B = new/mob/summons/Gold_Slime_Summon()
						usr << "<b><font color = olive>[B]:</b><font color = green> Hiya!  I'm a [B]!  Since You're my new master, name me properly!  I hate this name!"
						sleep(20)
						var/namea = input("What do you want to name the new [B]?","Name!")
						if(length(namea) <= 3)
							usr << "<b><font color = olive>Summon:</b><font color = green> My name isn't long enough, I'm going back in my crystal."
							return
						B.name = namea
						usr << "<b><font color = olive>[namea]:</b><font color = green> Thanks!  My new name is [namea]!"
						B.owner = usr
						usr.monsterinparty = B
						var/mob/A = new usr.monsterinparty.type(locate(usr.x,usr.y,usr.z))
						A.name = B.name
						A.density = 0
						usr.monsterfollow = A
						usr.AddVerbSummons()
						del(src)
					else
						usr << "You cannot have 2 monsters at once, get rid of your old one!"
				Info()
					set category = "Other"
					usr << "This is a Summoning Crystal.  This has the essence of a Gold Slime.  When used, a Gold Slime will join your party."

		King_Slime_Crystal
			icon_state = "bluecrys"
			name = "King Slime Crystal"
			DblClick()
				Use()
			verb
				Use()
					set category = "Other"
					if(usr.retrieverlevel <= 1)
						usr << "You cannot use this Summoning Crystal because your skill is not high enough!  When you are a Level 2 Retriever, you will be able to use this."
						return
					if(usr.monsterinparty == null)
						usr << "The [src] begins to shake aruptly!  A blue beam comes out of the [src] and a King Slime is formed!  The [src] shatters into millions of pieces which are absorbed into the new monster..."
						var/mob/summons/King_Slime_Summon/B = new/mob/summons/King_Slime_Summon()
						usr << "<b><font color = olive>[B]:</b><font color = green> Hiya!  I'm a [B]!  Since You're my new master, name me properly!  I hate this name!"
						sleep(20)
						var/namea = input("What do you want to name the new [B]?","Name!")
						if(length(namea) <= 3)
							usr << "<b><font color = olive>Summon:</b><font color = green> My name isn't long enough, I'm going back in my crystal."
							return
						B.name = namea
						usr << "<b><font color = olive>[namea]:</b><font color = green> Thanks!  My new name is [namea]!"
						B.owner = usr
						usr.monsterinparty = B
						var/mob/A = new usr.monsterinparty.type(locate(usr.x,usr.y,usr.z))
						A.name = B.name
						A.density = 0
						usr.monsterfollow = A
						usr.AddVerbSummons()
						del(src)
					else
						usr << "You cannot have 2 monsters at once, get rid of your old one!"
				Info()
					set category = "Other"
					usr << "This is a Summoning Crystal.  This has the essence of a King Slime.  When used, a King Slime will join your party."

mob
	summons
		verb
			Rename_Monster()
				set category = "Summon"
				src.monsterinparty.name = input("What do your summon's name to be?","Summon Renaming",src.monsterinparty.name)
				src << "Your pet's new name is [src.monsterinparty.name]!"

			Revert_Monster()
				set category = "Summon"
				switch(alert("WARNING!  This command will completely revert your summon.  This means that if you summon it again, it will be at LEVEL 1 again!  Are you COMPLETELY sure you wish to do this?","Revert Summon?","Yes","No"))
					if("Yes")
						if(istype(src.monsterfollow,/mob/summons/Blue_Slime_Summon))
							src.monsterinparty = null
							del src.monsterfollow
							new /obj/summons/Blue_Slime_Crystal (usr)
							src << "Suddenly, your monster becomes an essence again and a crystal forms around it!"
							RemoveVerbSummons()
						if(istype(src.monsterfollow,/mob/summons/Red_Slime_Summon))
							del src.monsterfollow
							src.monsterinparty = null
							new /obj/summons/Red_Slime_Crystal (usr)
							src << "Suddenly, your monster becomes an essence again and a crystal forms around it!"
							RemoveVerbSummons()
						if(istype(src.monsterfollow,/mob/summons/Babble_Summon))
							del src.monsterfollow
							src.monsterinparty = null
							new /obj/summons/Babble_Crystal (usr)
							src << "Suddenly, your monster becomes an essence again and a crystal forms around it!"
							RemoveVerbSummons()
						if(istype(src.monsterfollow,/mob/summons/Hammer_Man_Summon))
							del src.monsterfollow
							src.monsterinparty = null
							new /obj/summons/Hammer_Man_Crystal (usr)
							src << "Suddenly, your monster becomes an essence again and a crystal forms around it!"
							RemoveVerbSummons()
						if(istype(src.monsterfollow,/mob/summons/Healer_Summon))
							del src.monsterfollow
							src.monsterinparty = null
							new /obj/summons/Healer_Crystal (usr)
							src << "Suddenly, your monster becomes an essence again and a crystal forms around it!"
							RemoveVerbSummons()
						if(istype(src.monsterfollow,/mob/summons/Yellow_Slime_Summon))
							del src.monsterfollow
							src.monsterinparty = null
							new /obj/summons/Yellow_Slime_Crystal (usr)
							src << "Suddenly, your monster becomes an essence again and a crystal forms around it!"
							RemoveVerbSummons()
						if(istype(src.monsterfollow,/mob/summons/Slime_Knight_Summon))
							del src.monsterfollow
							src.monsterinparty = null
							new /obj/summons/Slime_Knight_Crystal (usr)
							src << "Suddenly, your monster becomes an essence again and a crystal forms around it!"
							RemoveVerbSummons()
						if(istype(src.monsterfollow,/mob/summons/Metal_Slime_Summon))
							del src.monsterfollow
							src.monsterinparty = null
							new /obj/summons/Metal_Slime_Crystal (usr)
							src << "Suddenly, your monster becomes an essence again and a crystal forms around it!"
							RemoveVerbSummons()
						if(istype(src.monsterfollow,/mob/summons/Gold_Slime_Summon))
							del src.monsterfollow
							src.monsterinparty = null
							new /obj/summons/Gold_Slime_Crystal (usr)
							src << "Suddenly, your monster becomes an essence again and a crystal forms around it!"
							RemoveVerbSummons()
						if(istype(src.monsterfollow,/mob/summons/King_Slime_Summon))
							del src.monsterfollow
							src.monsterinparty = null
							new /obj/summons/King_Slime_Crystal (usr)
							src << "Suddenly, your monster becomes an essence again and a crystal forms around it!"
							RemoveVerbSummons()
					if("No")
						src << "You decided not to revert your summon..."

			Merge()
				set category = "Summon"
				alert("Merging with your monster involves a fusion between the two of you, your stats will be intertwined.  Spells will not be merged, but all of your stats will become one.  As of result of this, your pet will be sacrificed.  You cannot do this unless your pet is at least level 125, and has at least 250 loyalty to you.  Are you sure you wish to do this?","Merge?","Yes","No")
				if("Yes")
					if(src.monsterinparty.level >= 125 && src.monsterinparty.loyal >= 250)
						alert("[src.monsterinparty.name]: Are you SURE master?  I don't know how this will work out between us!","Confirm","Yes","No")
						if("Yes")
							src.attack = (src.attack + src.monsterinparty.attack) / 2
							src.defense = (src.defense + src.monsterinparty.defense) / 2
							src.intelligence = (src.intelligence + src.monsterinparty.intelligence) / 2
							src.agility = (src.agility + src.monsterinparty.agility) / 2
							src.maxhp = (src.maxhp + src.monsterinparty.maxhp) / 2
							src.maxmp = (src.maxmp + src.monsterinparty.maxmp) / 2
							src.maxhp = round(src.maxhp)
							src.maxmp = round(src.maxmp)
							src.attack = round(src.attack)
							src.defense = round(src.defense)
							src.intelligence = round(src.intelligence)
							src.agility = round(src.agility)
							src.mp = src.maxmp
							src.hp = src.maxhp
							src << "Your Max HP is now [src.maxhp]!"
							src << "Your Max MP is now [src.maxmp]!"
							src << "Your attack is now [src.attack]!"
							src << "Your defense is now [src.defense]!"
							src << "Your intelligence is now [src.intelligence]!"
							src << "Your agility is now [src.agility]!"
							client.base_DeleteMob(src.name)
							src.name = "[copytext(src.monsterinparty.name,1,4)]-[src.name]"
							client.base_SaveMob()
							src << "You have become [src.name]!"
							del src.monsterfollow
							del src.monsterinparty
							stat_panel_summon_hp.icon_state = "0HP"
							stat_panel_summon_mp.icon_state = "0HP"
							stat_panel_summon_exp.icon_state = "0HP"
							RemoveVerbSummons()
							return
						if("No")
							src << "<b><font color = olive>[src.monsterinparty.name]:</b><font color = green> That's a good idea, master!"
							return
					else
						src << "You cannot merge with your pet!  Either it's level is insufficent or it is not loyal to you enough!"
						return
				if("No")
					src << "You change your mind about merging with your summon."
					return

mob
	proc
		RemoveVerbSummons()
			src.verbs -= typesof(/mob/summons/verb)

		AddVerbSummons()
			src.verbs += typesof(/mob/summons/verb)

mob
	proc
		UrMonsterBattle(mob/enemy)
			var/found = 0
			for(var/mob/M in monstergroup)
				found = 1
			if(found == 0)return
			if(src.checkbattle == 1)
				src.checkbattle = 0
				return
			if(src.monstersinbattle == 0)return
			for(var/index in monstergroup)
				if(!ismob(index))
					monstergroup-=index
			var/mob/M=monstergroup[1]
			var/monstername=initial(M.name)
			monstername="[monstername][plural(monstergroup)]"
			if(src.monsterinparty.poisoned == 1)
				var/S = src.monsterinparty.hp / 30
				src.monsterinparty.hp -= S
				src.monsterinparty.hp = round(src.monsterinparty.hp)
				src << "[src.monsterinparty] suffered from poison damage!"
				sleep(10)
				var
					poisstop = rand(0,4)
				if(src.monsterinparty.hp <= 0)
					var/mob/monster/A
					A.Deathcheck(src.monsterinparty)
					return
				if(poisstop == 2)
					src << "The poison slipped out of [src.monsterinparty]'s body!"
					src.monsterinparty.poisoned = 0
					sleep(10)
			if(istype(enemy, /mob/monster/ZTChallengeMonsters/BlueSlime) || istype(enemy, /mob/monster/ZTChallengeMonsters/RedSlime))
				src << "[src.monsterinparty.name] stares at the enemy aimlessly!"
				return
			else if(istype(enemy, /mob/monster/ZTChallengeMonsters/GreenSlime) || istype(enemy, /mob/monster/ZTChallengeMonsters/SpecialSlime))
				src << "[src.monsterinparty.name] stares at the enemy aimlessly!"
				return
			else if(istype(enemy, /mob/monster/ZTChallengeMonsters/TealSlime) || istype(enemy, /mob/monster/ZTChallengeMonsters/PurpleSlime))
				src << "[src.monsterinparty.name] stares at the enemy aimlessly!"
				return
			switch(input("[src.monsterinparty.name]: Master!  I encountered [monstergroup.len] [monstername]!  What do you want me to do, Master?  I'll target myself, just give me a command!","Command Your Monster!") in list("Attack","Spell"))
				if("Attack")
					UrMonsterAttack()
					return
				if("Spell")
					if(src.monsterinparty.diseased == 1)
						src << "[src.monsterinparty]:  I'm too weak to do that!"
						UrMonsterBattle(enemy)
						return
					UrMonsterSpell()

		UrMonsterAttack()
			var/mob/enemy=pick(monstergroup)
			var
				damage = src.monsterinparty.attack - enemy.defense + rand (-10,10)
				chancehit = src.monsterinparty.agility - enemy.agility + rand(-5,5)
				critchance = rand (0,19)
				critdamage = src.monsterinparty.attack * 1.5
				hit = src.monsterinparty.agility - enemy.agility + rand(-2,2)
			critdamage = round(critdamage)
			if(hit <= 0)
				var
					onedmgchance = rand(1,2)
				if(onedmgchance == 2)
					src << "[src.monsterinparty.name] attacks the [enemy]!"
					src << 'attack.wav'
					sleep(10)
					src << "[src.monsterinparty.name] barely hits the [enemy], scraching it for 1 damage!"
					src << 'hit.wav'
					enemy.hp -= 1
					sleep(10)
					if(enemy.hp <= 0)
						src << "For being able to kill [enemy], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += (enemy.expreward * 2)
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(enemy)
				else
					src << "[src.monsterinparty.name] attacks the [enemy]!"
					src << 'attack.wav'
					sleep(10)
					src << "[src.monsterinparty.name] misses!"
					src << 'dodge.wav'
					sleep(10)
			else if(critchance == 9)
				src << "[src.monsterinparty.name] attacks the [enemy]!"
				src << 'attack.wav'
				sleep(10)
				src << "Critical Hit!"
				src << 'criticalhit.wav'
				sleep(10)
				if(critdamage <= 0)
					src << "[src.monsterinparty.name] attacks powerfully but you wildly miss!"
					src << 'dodge.wav'
					sleep(10)
				else if(critdamage >> 0)
					src << "[src.monsterinparty.name] hits the [enemy] for [num2text(critdamage,20)]!"
					src << 'hit.wav'
					enemy.hp -= critdamage
					sleep(10)
					if(enemy.hp <= 0)
						src << "For being able to kill [enemy], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += (enemy.expreward * 2)
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(enemy)
			else if(chancehit > 0 && damage > 0)
				src << "[src.monsterinparty.name] attacks the [enemy]!"
				src << 'attack.wav'
				sleep(10)
				src << "[src.monsterinparty.name] hits the [enemy] for [num2text(damage,20)] damage!"
				src << 'hit.wav'
				enemy.hp -= damage
				sleep(10)
				if(enemy.hp <= 0)
					src << "For being able to kill [enemy], [src.monsterinparty.name] has received 2x Exp!"
					src.monsterinparty.exp += (enemy.expreward * 2)
					sleep(10)
					var/randmsg = pick(killmsg)
					src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
					Deathcheck(enemy)
			else if(chancehit <= 0)
				var
					onedmgchance = rand(1,2)
				if(onedmgchance == 2)
					src << "[src.monsterinparty.name] attacks the [enemy]!"
					src << 'attack.wav'
					sleep(10)
					src << "[src.monsterinparty.name] barely hits the [enemy], scraching it for 1 damage!"
					src << 'hit.wav'
					enemy.hp -= 1
					sleep(10)
					if(enemy.hp <= 0)
						src << "For being able to kill [enemy], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += (enemy.expreward * 2)
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(enemy)
				else
					src << "[src.monsterinparty.name] attacks the [enemy]!"
					src << 'attack.wav'
					sleep(10)
					src << "[src.monsterinparty.name] misses!"
					src << 'dodge.wav'
					sleep(10)
			else if(damage <= 0)
				var
					onedmgchance = rand(1,2)
				if(onedmgchance == 2)
					src << "[src.monsterinparty.name] attacks the [enemy]!"
					src << 'attack.wav'
					sleep(10)
					src << "[src.monsterinparty.name] barely hits the [enemy], scraching it for 1 damage!"
					src << 'hit.wav'
					enemy.hp -= 1
					sleep(10)
					if(enemy.hp <= 0)
						src << "For being able to kill [enemy], [src.monsterinparty.name] has received 2x Exp!"
						src.monsterinparty.exp += (enemy.expreward * 2)
						sleep(10)
						var/randmsg = pick(killmsg)
						src << "\icon[src.monsterinparty] <font color = green><b>[src.monsterinparty] says, ''[randmsg]''</font>"
						Deathcheck(enemy)
				else
					src << "[src.monsterinparty.name] attacks the [enemy]!"
					src << 'attack.wav'
					sleep(10)
					src << "[src.monsterinparty.name] misses!"
					src << 'dodge.wav'
					sleep(10)

		UrMonsterSpell(mob/enemy)
			var/mob/picked = pick(monstergroup)
			if(istype(picked,/mob/monster/Area3C/MetalSlime7) || istype(picked,/mob/monster/ZTChallengeMonsters/MetalBabble))
				if(src.monsterinparty.loyal <= 79)
					UrMonsterAttack()
					return
				src << "Master, I'm not doing that, it will be a waist of my time!  [picked] is immune to spells!"
				UrMonsterBattle(enemy)
				return
			if(src.monsterinparty.loyal <= 79)
				var/spelly = pick(src.monsterinparty.spell)
				if(spelly == "Blaze - 5 MP")
					Blaze(picked,enemy)
				if(spelly == "Heal - 8 MP")
					Heal(picked,enemy)
				if(spelly == "Poison Wave - 15 MP")
					Poison(picked,enemy)
				if(spelly == "Splatter - 8 MP")
					Splatter(picked,enemy)
				if(spelly == "Bash - 13 MP")
					SummonBash(picked,enemy)
				if(spelly == "Antidote - 10 MP")
					Antidote(picked,enemy)
				if(spelly == "Infernos - 20 MP")
					Infernos(picked,enemy)
				if(spelly == "Healmore - 25 MP")
					Healmore(picked,enemy)
				if(spelly == "Infermore - 50 MP")
					Infermore(picked,enemy)
				if(spelly == "Bolt - 25 MP")
					Bolt(picked,enemy)
				if(spelly == "Blazemore - 50 MP")
					Blazemore(picked,enemy)
				if(spelly == "Blazemost - 250 MP")
					Blazemost(picked,enemy)
				if(spelly == "Healus - 80 MP")
					Healus(picked,enemy)
				if(spelly == "Bang - 30 MP")
					Bang(picked,enemy)
				if(spelly == "Boom - 200 MP")
					Boom(picked,enemy)
				if(spelly == "Explodet - 600 MP")
					Explodet(picked,enemy)
				if(spelly == "Zap - 150 MP")
					Zap(picked,enemy)
				if(spelly == "Thordain - 500 MP")
					Thordain(picked,enemy)
				if(spelly == "Icebolt - 10 MP")
					Icebolt(picked,enemy)
				if(spelly == "Snowstorm - 90 MP")
					Snowstorm(picked,enemy)
				if(spelly == "Blizzard - 350 MP")
					Blizzard(picked,enemy)
				if(spelly == "Gale - 40 MP")
					Gale(picked,enemy)
				if(spelly == "Tornado - 210 MP")
					Tornado(picked,enemy)
				if(spelly == "Hurricane - 550 MP")
					Hurricane(picked,enemy)
				if(spelly == "Earth Spike - 30 MP")
					EarthSpike(picked,enemy)
				if(spelly == "Quake - 290 MP")
					Quake(picked,enemy)
				if(spelly == "Earthquake - 500 MP")
					Earthquake(picked,enemy)
				if(spelly == "Infermost - 500 MP")
					Infermost(picked,enemy)
				if(spelly == "Healusmore - 750 MP")
					Healusmore(picked,enemy)
				if(spelly == "King Blaze - 1000 MP")
					KingBlaze(picked,enemy)
				if(spelly == "King Icebolt - 1000 MP")
					KingIcebolt(picked,enemy)
				if(spelly == "King Bolt - 1000 MP")
					KingBolt(picked,enemy)
				if(spelly == "King Gale - 1000 MP")
					KingGale(picked,enemy)
				if(spelly == "King Holy Bolt - 1000 MP")
					KingHolyBolt(picked,enemy)
				else
					UrMonsterBattle(enemy)
			switch(input(src,"What spell, Master?","Spell") in list("-=Cancel=-") + src.monsterinparty.spell)
				if("-=Cancel=-")
					UrMonsterBattle(enemy)
					return
				if("Blaze - 5 MP")
					Blaze(picked,enemy)
				if("Heal - 8 MP")
					Heal(picked,enemy)
				if("Poison Wave - 15 MP")
					Poison(picked,enemy)
				if("Splatter - 8 MP")
					Splatter(picked,enemy)
				if("Bash - 13 MP")
					SummonBash(picked,enemy)
				if("Antidote - 10 MP")
					Antidote(picked,enemy)
				if("Infernos - 20 MP")
					Infernos(picked,enemy)
				if("Healmore - 25 MP")
					Healmore(picked,enemy)
				if("Infermore - 50 MP")
					Infermore(picked,enemy)
				if("Bolt - 25 MP")
					Bolt(picked,enemy)
				if("Blazemore - 50 MP")
					Blazemore(picked,enemy)
				if("Blazemost - 250 MP")
					Blazemost(picked,enemy)
				if("Healus - 80 MP")
					Healus(picked,enemy)
				if("Bang - 30 MP")
					Bang(picked,enemy)
				if("Boom - 200 MP")
					Boom(picked,enemy)
				if("Explodet - 600 MP")
					Explodet(picked,enemy)
				if("Zap - 150 MP")
					Zap(picked,enemy)
				if("Thordain - 500 MP")
					Thordain(picked,enemy)
				if("Icebolt - 10 MP")
					Icebolt(picked,enemy)
				if("Snowstorm - 90 MP")
					Snowstorm(picked,enemy)
				if("Blizzard - 350 MP")
					Blizzard(picked,enemy)
				if("Gale - 40 MP")
					Gale(picked,enemy)
				if("Tornado - 210 MP")
					Tornado(picked,enemy)
				if("Hurricane - 550 MP")
					Hurricane(picked,enemy)
				if("Earth Spike - 30 MP")
					EarthSpike(picked,enemy)
				if("Quake - 290 MP")
					Quake(picked,enemy)
				if("Earthquake - 500 MP")
					Earthquake(picked,enemy)
				if("Infermost - 500 MP")
					Infermost(picked,enemy)
				if("Healusmore - 750 MP")
					Healusmore(picked,enemy)
				if("King Blaze - 1000 MP")
					KingBlaze(picked,enemy)
				if("King Icebolt - 1000 MP")
					KingIcebolt(picked,enemy)
				if("King Bolt - 1000 MP")
					KingBolt(picked,enemy)
				if("King Gale - 1000 MP")
					KingGale(picked,enemy)
				if("King Holy Bolt - 1000 MP")
					KingHolyBolt(picked,enemy)
				else
					src << "[src.monsterinparty.name]: But Master, I don't have any skills!"
					UrMonsterBattle(enemy)

mob
	TokenBuyer
		icon = 'slimes.dmi'
		icon_state = "gold"
		name = "Summon Seller"
		Click()
			if(src in oview(1))Converse()
		verb
			Converse()
				set category = "Other"
				set src in view(1)
				var/index = 0
				var/token
				for(var/obj/NormalItems/Token/T in usr)
					token += 1
				switch(input("[src]: Hey.  I got this brand new item stock, right from the Undergroud, if you wanna check it out, that is.  I mean brand new.  Check em out...","You have [token] tokens!  Check out this shop!")in list("Blue Slime Summoning Crystal - 2 Tokens","Red Slime Summoning Crystal - 6 Tokens","Babble Summoning Crystal - 10 Tokens","Hammer Man Summoning Crystal - 40 Tokens","Healer Summoning Crystal - 50 Tokens","Yellow Slime Summoning Crystal - 100 Tokens","Slime Knight Summoning Crystal - 125 Tokens","Metal Slime Summoning Crstal - 1500 Tokens","Gold Slime Summoning Crstal - 2000 Tokens","King Slime Summoning Crstal - 2750 Tokens","Cancel"))
					if("Cancel")
						return ..()
					if("Blue Slime Summoning Crystal - 2 Tokens")
						if(token >= 2)
							usr << "<b><font color = olive>[src]:</b><font color = green> Nice man...Here's the item..."
							new /obj/summons/Blue_Slime_Crystal (usr)
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=2)break
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> What the fuck, you asshole.  I want my tokens before you get my shit."
					if("Red Slime Summoning Crystal - 6 Tokens")
						if(token >= 6)
							usr << "<b><font color = olive>[src]:</b><font color = green> Nice man...Here's the item..."
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=6)break
							new /obj/summons/Red_Slime_Crystal (usr)
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> What the fuck, you asshole.  I want my tokens before you get my shit."
					if("Babble Summoning Crystal - 10 Tokens")
						if(token >= 10)
							usr << "<b><font color = olive>[src]:</b><font color = green> Nice man...Here's the item..."
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=10)break
							new /obj/summons/Babble_Crystal (usr)
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> What the fuck, you asshole.  I want my tokens before you get my shit."
					if("Hammer Man Summoning Crystal - 40 Tokens")
						if(token >= 40)
							usr << "<b><font color = olive>[src]:</b><font color = green> Nice man...Here's the item..."
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=40)break
							new /obj/summons/Hammer_Man_Crystal (usr)
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> What the fuck, you asshole.  I want my tokens before you get my shit."
					if("Healer Summoning Crystal - 50 Tokens")
						if(token >= 50)
							usr << "<b><font color = olive>[src]:</b><font color = green> Nice man...Here's the item..."
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=50)break
							new /obj/summons/Healer_Crystal (usr)
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> What the fuck, you asshole.  I want my tokens before you get my shit."
					if("Yellow Slime Summoning Crystal - 100 Tokens")
						if(token >= 100)
							usr << "<b><font color = olive>[src]:</b><font color = green> Nice man...Here's the item..."
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=100)break
							new /obj/summons/Yellow_Slime_Crystal (usr)
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> What the fuck, you asshole.  I want my tokens before you get my shit."
					if("Slime Knight Summoning Crystal - 125 Tokens")
						if(token >= 125)
							usr << "<b><font color = olive>[src]:</b><font color = green> Nice man...Here's the item..."
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=125)break
							new /obj/summons/Slime_Knight_Crystal (usr)
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> What the fuck, you asshole.  I want my tokens before you get my shit."
					if("Metal Slime Summoning Crstal - 1500 Tokens")
						if(token >= 1500)
							usr << "<b><font color = olive>[src]:</b><font color = green> Nice man...Here's the item..."
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=250)break
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=500)break
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=750)break
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=1000)break
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=1250)break
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=1500)break
							new /obj/summons/Metal_Slime_Crystal (usr)
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> What the fuck, you asshole.  I want my tokens before you get my shit."
					if("Gold Slime Summoning Crstal - 2000 Tokens")
						if(token >= 2000)
							usr << "<b><font color = olive>[src]:</b><font color = green> Nice man...Here's the item..."
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=250)break
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=500)break
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=750)break
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=1000)break
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=1250)break
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=1500)break
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=1750)break
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=2000)break
							new /obj/summons/Gold_Slime_Crystal (usr)
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> What the fuck, you asshole.  I want my tokens before you get my shit."
					if("King Slime Summoning Crstal - 2750 Tokens")
						if(token >= 2750)
							usr << "<b><font color = olive>[src]:</b><font color = green> Nice man...Here's the item..."
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=250)break
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=500)break
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=750)break
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=1000)break
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=1250)break
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=1500)break
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=1750)break
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=2000)break
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=2250)break
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=2500)break
							for(var/obj/NormalItems/Token/O in usr.contents)
								del(O)
								index+=1
								if(index>=2750)break
							new /obj/summons/King_Slime_Crystal (usr)
						else
							usr << "<b><font color = olive>[src]:</b><font color = green> What the fuck, you asshole.  I want my tokens before you get my shit."