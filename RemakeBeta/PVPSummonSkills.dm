mob
	proc
		PVPBlaze(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 4)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var
					spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(10,30)
				view() << "[A.monsterinparty] casts Blaze on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weakfire == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 5
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 5

		PVPPoison(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 14)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var
					spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(20,100)
				view() << "[A.monsterinparty] creates a Wave of Poison and directs it at [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(spelldmg >= 1)
					view() << "The Wave does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 15
					sleep(10)
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
					else
						var/chance = rand(0,4)
						if(chance == 1)
							view() << "The [enemy] is poisoned!"
							enemy.poisoned = 1
						if(chance == 3)
							view() << "The [enemy] is poisoned!"
							enemy.poisoned = 1
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 15

		PVPSplatter(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 7)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var
					spelldmg = A.monsterinparty.attack - enemy.defense + rand(40,100)
				view() << "[A.monsterinparty] Splatters on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(spelldmg >= 1)
					view() << "The Splatter does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 8
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 8

		PVPSummonBash(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 12)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var
					spelldmg = A.monsterinparty.attack - enemy.defense + rand(40,100)
					knockout = A.monsterinparty.agility - enemy.defense + rand(-10000,10000)
				view() << "[A.monsterinparty] Bashes the crap out of [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(spelldmg >= 1)
					view() << "[A.monsterinparty]'s Hammer does [num2text(spelldmg,20)] damage and leaves loads of bruises on [enemy]'s head!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 13
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
					else if(knockout >= 1)
						view() << "[A.monsterinparty.name] knocked out [enemy]!"
						sleep(10)
						PVPSummonBattle(A,B)
				if(spelldmg <= 0)
					view() << "The [enemy] does not feel a thing!"
					sleep(10)
					A.monsterinparty.mp -= 13

		PVPInfernos(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 19)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var
					spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(100,300)
				view() << "[A.monsterinparty] casts Infernos on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weakwind == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 20
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 20

		PVPBolt(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 24)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var
					spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(150,450)
				view() << "[A.monsterinparty] casts Bolt on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weaklit == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 25
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 25

		PVPInfermore(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 49)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var
					spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(750,2000)
				view() << "[A.monsterinparty] casts Infermore on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weakwind == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 50
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 50

		PVPInfermost(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 499)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(14000,22000)
				view() << "[A.monsterinparty] casts Infermost on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weakwind == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 500
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 500

		PVPBlazemore(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 49)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(800,2500)
				view() << "[A.monsterinparty] casts Blazemore on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weakfire == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 50
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 50

		PVPBlazemost(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 249)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(6000,10000)
				view() << "[A.monsterinparty] casts Blazemost on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weakfire == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 250
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 250

		PVPBang(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 29)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(50,200)
				view() << "[A.monsterinparty] casts Bang on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weakfire == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 30
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 30

		PVPBoom(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 199)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(4500,7000)
				view() << "[A.monsterinparty] casts Boom on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weakfire == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 200
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 200

		PVPExplodet(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 599)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(20000,35000)
				view() << "[A.monsterinparty] casts Explodet on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weakfire == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 600
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 600

		PVPZap(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 149)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(2500,5000)
				view() << "[A.monsterinparty] casts Zap on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weaklit == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 150
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 150

		PVPThordain(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 499)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(12500,21000)
				view() << "[A.monsterinparty] casts Thordain on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weaklit == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 500
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 500

		PVPIcebolt(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 9)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(50,175)
				view() << "[A.monsterinparty] casts Icebolt on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weakice == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 10
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 10

		PVPSnowstorm(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 89)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(700,1000)
				view() << "[A.monsterinparty] casts Snowstorm on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weakice == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 90
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 90

		PVPBlizzard(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 349)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(7000,13000)
				view() << "[A.monsterinparty] casts Blizzard on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weakice == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 350
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 350

		PVPGale(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 39)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(300,550)
				view() << "[A.monsterinparty] casts Gale on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weakwind == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 40
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 40

		PVPTornado(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 209)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(4000,7500)
				view() << "[A.monsterinparty] casts Tornado on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weakwind == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 210
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 210

		PVPHurricane(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 549)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(15000,21000)
				view() << "[A.monsterinparty] casts Hurricane on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weakwind == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(enemy.weakice == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 550
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 550

		PVPEarthSpike(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 29)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(500,700)
				view() << "[A.monsterinparty] casts Earth Spike on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weakearth == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 30
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 30

		PVPQuake(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 289)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(5000,7500)
				view() << "[A.monsterinparty] casts Quake on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weakearth == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 290
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 290

		PVPEarthquake(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 499)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(11000,17000)
				view() << "[A.monsterinparty] casts Earthquake on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weakearth == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 500
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 500

		PVPHeal(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 7)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list();enemys += A
				if(A.monsterinparty)
					enemys += A.monsterinparty
				var/mob/chose = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - chose.intelligence + rand(5,20)
				view() << "[A.monsterinparty] casts Heal on [chose]!"
				view() << 'spell.wav'
				sleep(10)
				if(spelldmg >= 1)
					view() << "[chose] heals [num2text(spelldmg,20)] HP!"
					sleep(10)
					chose.hp += spelldmg
					A.monsterinparty.mp -= 8
					if(chose.hp >= chose.maxhp)
						chose.hp = chose.maxhp
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 8

		PVPHealmore(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 24)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list();enemys += A
				if(A.monsterinparty)
					enemys += A.monsterinparty
				var/mob/chose = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - chose.intelligence + rand(550,1100)
				view() << "[A.monsterinparty] casts Healmore on [chose]!"
				view() << 'spell.wav'
				sleep(10)
				if(spelldmg >= 1)
					view() << "[chose] heals [num2text(spelldmg,20)] HP!"
					sleep(10)
					chose.hp += spelldmg
					A.monsterinparty.mp -= 25
					if(chose.hp >= chose.maxhp)
						chose.hp = chose.maxhp
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 25

		PVPHealus(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 79)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list();enemys += A
				if(A.monsterinparty)
					enemys += A.monsterinparty
				var/mob/chose = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - chose.intelligence + rand(5000,10000)
				view() << "[A.monsterinparty] casts Healus!"
				view() << 'spell.wav'
				sleep(10)
				if(spelldmg >= 1)
					view() << "The party gains [num2text(spelldmg,20)] HP!"
					sleep(10)
					A.hp += spelldmg
					A.monsterinparty.hp += spelldmg
					A.monsterinparty.mp -= 80
					if(A.hp >= A.maxhp)
						A.hp = A.maxhp
					if(A.monsterinparty.hp >= A.monsterinparty.maxhp)
						A.monsterinparty.hp = A.monsterinparty.maxhp
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 80

		PVPHealusmore(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 749)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list();enemys += A
				if(A.monsterinparty)
					enemys += A.monsterinparty
				var/mob/chose = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - chose.intelligence + rand(50000,100000)
				view() << "[A.monsterinparty] casts Healusmore!"
				view() << 'spell.wav'
				sleep(10)
				if(spelldmg >= 1)
					view() << "The party gains [num2text(spelldmg,20)] HP!"
					sleep(10)
					A.hp += spelldmg
					A.monsterinparty.hp += spelldmg
					A.monsterinparty.mp -= 750
					if(A.hp >= A.maxhp)
						A.hp = A.maxhp
					if(A.monsterinparty.hp >= A.monsterinparty.maxhp)
						A.monsterinparty.hp = A.monsterinparty.maxhp
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 750

		PVPKingBlaze(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 999)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(50000,75000)
				view() << "[A.monsterinparty] casts King Blaze on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weakfire == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 1000
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 1000

		PVPKingIcebolt(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 999)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(50000,75000)
				view() << "[A.monsterinparty] casts King Icebolt on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weakice == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 1000
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 1000

		PVPKingBolt(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 999)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(50000,75000)
				view() << "[A.monsterinparty] casts King Bolt on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weaklit == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 1000
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 1000

		PVPKingGale(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 999)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(50000,75000)
				view() << "[A.monsterinparty] casts King Gale on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weakwind == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 1000
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 1000

		PVPKingHolyBolt(mob/Newchar/A,mob/Newchar/B)
			if(A.monsterinparty.mp <= 999)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = pick(enemys)
				var/spelldmg = A.monsterinparty.intelligence - enemy.intelligence + rand(50000,75000)
				view() << "[A.monsterinparty] casts King Holy Bolt on [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				if(enemy.weakholy == 1)
					spelldmg = spelldmg*2.5
					spelldmg = round(spelldmg)
				if(spelldmg >= 1)
					view() << "The spell does [num2text(spelldmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= spelldmg
					A.monsterinparty.mp -= 1000
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				if(spelldmg <= 0)
					view() << "The spell fails!"
					sleep(10)
					A.monsterinparty.mp -= 1000

		PVPAntidote(mob/Newchar/A,mob/Newchar/B)
			var
				mob/chose = pick(A,A.monsterinparty)
			if(A.monsterinparty.mp <= 9)
				view() << "[A.monsterinparty]: But Master, I don't have enough MP!"
				PVPSummonBattle(A,B)
			if(chose.poisoned == 0)
				view() << "[A.monsterinparty]: My target was not poisoned, if you want me to choose another target, make me cast the spell again!"
				PVPSummonBattle(A,B)
			else
				view() << "[A.monsterinparty] casts Antidote on [chose]!"
				view() << 'spell.wav'
				sleep(10)
				view() << "[chose] is Unposioned!"
				chose.poisoned = 0
				A.monsterinparty.mp -= 10
				sleep(10)
