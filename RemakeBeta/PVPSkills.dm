mob
	proc

//WARRIOR!//
//WARRIOR!//
//WARRIOR!//
//WARRIOR!//
//WARRIOR!//

		PVPBash(mob/Newchar/A,mob/Newchar/B)
			if(A.bash == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 24)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.attack * 2 - enemy.defense + rand(-100,100)
				view() << "[A] charge up to Bash the enemy!"
				view() << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "[A] Bashes [enemy] for [num2text(dmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 25
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "[A] miss and end up Bashing the ground!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=25

		PVPSuperBash(mob/Newchar/A,mob/Newchar/B)
			if(A.superbash == 0)
				A << "You don't know this skill!  To learn this skill you must first master Bash!"
				PVPBattle(A,B)
			else if(A.mp <= 99)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.attack * 4 - enemy.defense + rand(-100,100)
				view() << "[A] charge up to Super Bash the enemy!"
				view() << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "[A] Super Bashes [enemy] for [num2text(dmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 100
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "[A] miss and end up Bashing the ground!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=100

		PVPMultiSwing(mob/Newchar/A,mob/Newchar/B)
			if(A.multiswing == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 99)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.attack * A.multiswing - enemy.defense + rand(-100,100)
				view() << "[A] get ready to attack [enemy] Multiple Times!"
				view() << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "[A] hit [enemy] [multiswing] times and do [num2text(dmg,20)]!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 100
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "[enemy] dodges [A]'s attacks!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=100

		PVPMegaMultiSwing(mob/Newchar/A,mob/Newchar/B)
			if(A.megamultiswing == 0)
				A << "You don't know this skill!  To learn this skill you must first master Mutli Swing!"
				PVPBattle(A,B)
			else if(A.mp <= 299)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.attack * 3 * A.megamultiswing - enemy.defense + rand(-100,100)
				view() << "[A] get ready to attack [enemy] Multiple Times!"
				view() << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "[A] hit [enemy] [megamultiswing] times and do [num2text(dmg,20)]!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 300
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "[enemy] dodges [A]'s attacks!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=300

		PVPEnflamedAttack(mob/Newchar/A,mob/Newchar/B)
			if(A.enflameattack == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 74)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.attack * A.enflameattack - enemy.defense + rand(-100,100)
				if(enemy.weakfire == 1)
					dmg *= 2.5
					dmg = round(dmg)
				view() << "[A]'s rage engulphs [A]'s attack in Flames!"
				view() << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "[A] attacks [enemy] in these Flames and hit him for [num2text(dmg,20)]!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 75
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "[enemy] is not hurt by the flames!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=75

		PVPSuperEnflamedAttack(mob/Newchar/A,mob/Newchar/B)
			if(A.superenflameattack == 0)
				A << "You don't know this skill!  To get this skill, You must first master Enflamed Attack!"
				PVPBattle(A,B)
			else if(A.mp <= 199)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.attack * 3 * A.superenflameattack - enemy.defense + rand(-100,100)
				if(enemy.weakfire == 1)
					dmg *= 2.5
					dmg = round(dmg)
				view() << "[A]'s rage engulphs [A]'s attack in Flames!"
				view() << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "[A] attacks [enemy] in these Flames and hit him for [num2text(dmg,20)]!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 200
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "[enemy] is not hurt by the flames!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=200

		PVPIcedAttack(mob/Newchar/A,mob/Newchar/B)
			if(A.iceattack == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 74)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.attack*A.iceattack - enemy.defense + rand(-100,100)
				if(enemy.weakice == 1)
					dmg *= 2.5
					dmg = round(dmg)
				view() << "[A]'s rage engulphs [A]'s attack in Iced Shards!"
				view() << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "[A] attacks [enemy] with these Shards flying out and hit him for [num2text(dmg,20)]!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 75
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "[enemy] is not hurt by the Shards and [A] misses!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=75

		PVPSuperIcedAttack(mob/Newchar/A,mob/Newchar/B)
			if(A.supericeattack == 0)
				A << "You don't know this skill!  To get this skill, You must first master Iced Attack!"
				PVPBattle(A,B)
			else if(A.mp <= 199)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.attack *3 *supericeattack- enemy.defense + rand(-100,100)
				if(enemy.weakice == 1)
					dmg *= 2.5
					dmg = round(dmg)
				view() << "[A]'s rage engulphs [A]'s attack in Iced Shards!"
				view() << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "[A] attacks [enemy] with these Shards flying out and hit him for [num2text(dmg,20)]!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 200
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "[enemy] is not hurt by the Shards and [A] misses!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=200

		PVPTornAttack(mob/Newchar/A,mob/Newchar/B)
			if(A.tornattack == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 74)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.attack*A.tornattack - enemy.defense + rand(-100,100)
				if(enemy.weakwind == 1)
					dmg *= 2.5
					dmg = round(dmg)
				view() << "[A]'s rage engulphs [A]'s attack in a tornado!"
				view() << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "[A] attacks [enemy] with the tornado and do [num2text(dmg,20)]!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 75
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "The tornado does not effect [enemy] and [A] misses!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=75

		PVPSuperTornAttack(mob/Newchar/A,mob/Newchar/B)
			if(A.supertornattack == 0)
				A << "You don't know this skill!  To get this skill, you must first master Tornado Attack!"
				PVPBattle(A,B)
			else if(A.mp <= 199)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.attack*3*A.supertornattack - enemy.defense + rand(-100,100)
				if(enemy.weakwind == 1)
					dmg *= 2.5
					dmg = round(dmg)
				view() << "[A]'s rage engulphs [A]'s attack in a tornado!"
				view() << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "[A] attacks [enemy] with the tornado and does [num2text(dmg,20)]!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 200
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "The tornado does not effect [enemy] and [A] misseses!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=200

		PVPConsentratedAttack(mob/Newchar/A,mob/Newchar/B)
			if(A.consenattack == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 49)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.attack*5 - enemy.defense + rand(-100,100)
				view() << "[A] begins to Consentrate for [A]'s attack!"
				view() << 'attack.wav'
				sleep(10)
				for(var/mob/M in monstergroup)
					if(M)
						PVPBattle(B,A)
				sleep(10)
				if(dmg >= 101)
					view() << "[A] unleashes every bit of energy [A] owns into [A]'s attack!"
					view() << 'hit.wav'
					sleep(10)
					view() << "[A] hit [enemy] for [num2text(dmg,20)] damage!"
					enemy.hp -= dmg
					A.mp -= 50
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "[enemy] is not hurt by the attack!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=50

		PVPSuperConsentratedAttack(mob/Newchar/A,mob/Newchar/B)
			if(A.superconsenattack == 0)
				A << "You don't know this skill!  To learn this skill you must first master Consentrated Attack!"
				PVPBattle(A,B)
			else if(A.mp <= 149)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.attack*5*A.superconsenattack - enemy.defense + rand(-100,100)
				view() << "[A] begins to Consentrate for [A]'s attack!"
				view() << 'attack.wav'
				sleep(10)
				if(A.superconsenattack == 1)
					PVPBattle(B,A)
				else if(A.superconsenattack == 2)
					PVPBattle(B,A)
					PVPBattle(B,A)
				else if(A.superconsenattack == 3)
					PVPBattle(B,A)
					PVPBattle(B,A)
					PVPBattle(B,A)
				else if(A.superconsenattack == 4)
					PVPBattle(B,A)
					PVPBattle(B,A)
					PVPBattle(B,A)
					PVPBattle(B,A)
				else if(A.superconsenattack == 5)
					PVPBattle(B,A)
					PVPBattle(B,A)
					PVPBattle(B,A)
					PVPBattle(B,A)
					PVPBattle(B,A)
				sleep(10)
				if(dmg >= 101)
					if(enemy)
						view() << "[A] unleashes every bit of energy [A] owns into [A]'s attack!"
						sleep(10)
						view() << "[A] hit [enemy] for [num2text(dmg,20)] damage!"
						view() << 'hit.wav'
						enemy.hp -= dmg
						A.mp -= 150
						if(enemy.hp <= 0)
							PVPDeathCheck(A,B)
				else
					view() << "[A] unleashes every bit of energy [A] owns into [A]'s attack!"
					sleep(10)
					view() << "[enemy] is not hurt by the attack!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=150

//MAGE!//
//MAGE!//
//MAGE!//
//MAGE!//
//MAGE!//

		PVPCosmicBlast(mob/Newchar/A,mob/Newchar/B)
			if(A.cblast == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 34)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.intelligence*(A.cblast/2) - enemy.intelligence + rand(-100,100)
				dmg = round(dmg)
				view() << "[A] focuses [A]'s Magical Energies to summon a Cosmic Ball!"
				view() << 'spell.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "[A] erupt the Cosmic Ball in a Cosmic Blast and hit [enemy] for [num2text(dmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 35
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "[enemy] easily dodges [A]'s attack!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=35

		PVPMastersCosmicBlast(mob/Newchar/A,mob/Newchar/B)
			if(A.masterscblast == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 149)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.intelligence*(A.masterscblast*2) - enemy.intelligence + rand(-100,100)
				dmg = round(dmg)
				view() << "[A] focuses [A]'s Magical Energies to summon a Cosmic Ball!"
				view() << 'spell.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "[A] erupt the Cosmic Ball in a Cosmic Blast and hit [enemy] for [num2text(dmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 150
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "[enemy] easily dodges [A]'s attack!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=150

		PVPFireBurst(mob/Newchar/A,mob/Newchar/B)
			if(A.fireburst == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 24)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.intelligence - enemy.intelligence + rand(-100,100)
				if(enemy.weakfire == 1)
					dmg = dmg*2.5
				dmg = round(dmg)
				view() << "[A] focuses [A]'s Magical Energies to summon flaming ball!"
				view() << 'spell.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "[A] hurls the flaming ball at [enemy] and it bursts before impact doing [num2text(dmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 25
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "[enemy] easily dodges [A]'s attack!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=25

		PVPIceBurst(mob/Newchar/A,mob/Newchar/B)
			if(A.iceburst == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 24)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.intelligence - enemy.intelligence + rand(-100,100)
				if(enemy.weakice == 1)
					dmg = dmg*2.5
				dmg = round(dmg)
				view() << "[A] focuses [A]'s Magical Energies to summon frozen ball!"
				view() << 'spell.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "[A] hurls the frozen ball at [enemy] and it bursts before impact doing [num2text(dmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 25
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "[enemy] easily dodges [A]'s attack!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=25

		PVPWindBurst(mob/Newchar/A,mob/Newchar/B)
			if(A.windburst == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 24)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.intelligence - enemy.intelligence + rand(-100,100)
				if(enemy.weakwind == 1)
					dmg = dmg*2.5
				dmg = round(dmg)
				view() << "[A] focuses [A]'s Magical Energies to summon wind droven ball!"
				view() << 'spell.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "[A] hurls the wind droven ball at [enemy] and it bursts before impact doing [num2text(dmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 25
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "[enemy] easily dodges [A]'s attack!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=25

		PVPLightningBurst(mob/Newchar/A,mob/Newchar/B)
			if(A.lightningburst == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 24)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.intelligence - enemy.intelligence + rand(-100,100)
				if(enemy.weaklit == 1)
					dmg = dmg*2.5
				dmg = round(dmg)
				view() << "[A] focuses [A]'s Magical Energies to summon lightning ball!"
				view() << 'spell.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "[A] hurls the lightning ball at [enemy] and it bursts before impact doing [num2text(dmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 25
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "[enemy] easily dodges [A]'s attack!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=25

		PVPEarthBurst(mob/Newchar/A,mob/Newchar/B)
			if(A.earthburst == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 24)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.intelligence - enemy.intelligence + rand(-100,100)
				if(enemy.weakearth == 1)
					dmg = dmg*2.5
				dmg = round(dmg)
				view() << "[A] focuses [A]'s Magical Energies to summon earth shaped ball!"
				view() << 'spell.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "[A] hurls the earth shaped ball at [enemy] and it bursts before impact doing [num2text(dmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 25
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "[enemy] easily dodges [A]'s attack!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=25

		PVPSuperFireBurst(mob/Newchar/A,mob/Newchar/B)
			if(A.superfireburst == 0)
				A << "You don't know this skill!  To learn this skill you must first master Fire Burst!"
				PVPBattle(A,B)
			else if(A.mp <= 124)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.intelligence*A.superfireburst - enemy.intelligence + rand(-100,100)
				if(enemy.weakfire == 1)
					dmg = dmg*2.5
				dmg = round(dmg)
				view() << "[A] focuses [A]'s Magical Energies to summon flaming ball!"
				view() << 'spell.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "[A] hurls the flaming ball at [enemy] and it bursts before impact doing [num2text(dmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 125
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "[enemy] easily dodges [A]'s attack!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=125

		PVPSuperIceBurst(mob/Newchar/A,mob/Newchar/B)
			if(A.supericeburst == 0)
				A << "You don't know this skill!  To learn this skill you must first master Ice Burst!"
				PVPBattle(A,B)
			else if(A.mp <= 124)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.intelligence*A.supericeburst - enemy.intelligence + rand(-100,100)
				if(enemy.weakice == 1)
					dmg = dmg*2.5
				dmg = round(dmg)
				view() << "[A] focuses [A]'s Magical Energies to summon frozen ball!"
				view() << 'spell.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "[A] hurls the frozen ball at [enemy] and it bursts before impact doing [num2text(dmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 125
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "[enemy] easily dodges [A]'s attack!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=125

		PVPSuperWindBurst(mob/Newchar/A,mob/Newchar/B)
			if(A.superwindburst == 0)
				A << "You don't know this skill!  To learn this skill you must first master Wind Burst!"
				PVPBattle(A,B)
			else if(A.mp <= 124)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.intelligence*A.superwindburst - enemy.intelligence + rand(-100,100)
				if(enemy.weakwind == 1)
					dmg = dmg*2.5
				dmg = round(dmg)
				view() << "[A] focuses [A]'s Magical Energies to summon wind droven ball!"
				view() << 'spell.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "[A] hurls the wind droven ball at [enemy] and it bursts before impact doing [num2text(dmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 125
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "[enemy] easily dodges [A]'s attack!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=125

		PVPSuperLightningBurst(mob/Newchar/A,mob/Newchar/B)
			if(A.superlightningburst == 0)
				A << "You don't know this skill!  To learn this skill you must first master Lightning Burst!"
				PVPBattle(A,B)
			else if(A.mp <= 124)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.intelligence*A.superlightningburst - enemy.intelligence + rand(-100,100)
				if(enemy.weaklit == 1)
					dmg = dmg*2.5
				dmg = round(dmg)
				view() << "[A] focuses [A]'s Magical Energies to summon lightning ball!"
				view() << 'spell.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "[A] hurls the lightning ball at [enemy] and it bursts before impact doing [num2text(dmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 125
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "[enemy] easily dodges [A]'s attack!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=125

		PVPSuperEarthBurst(mob/Newchar/A,mob/Newchar/B)
			if(A.superearthburst == 0)
				A << "You don't know this skill!  To learn this skill you must first master Earth Burst!"
				PVPBattle(A,B)
			else if(A.mp <= 124)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.intelligence*A.superearthburst - enemy.intelligence + rand(-100,100)
				if(enemy.weakearth == 1)
					dmg = dmg*2.5
				dmg = round(dmg)
				view() << "[A] focuses [A]'s Magical Energies to summon earth shaped ball!"
				view() << 'spell.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "[A] hurls the earth shaped ball at [enemy] and it bursts before impact doing [num2text(dmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 125
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "[enemy] easily dodges [A]'s attack!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=125

		PVPBeat(mob/Newchar/A,mob/Newchar/B)
			if(A.beat == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 499)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				view() << "[A] desperatly focus [A]'s Magical Energies to strike instantly kill [enemy]!"
				view() << 'spell.wav'
				sleep(10)
				view() << "[A]'s body gets stressed out and does nothing.  [A] has lost a turn!"
				view() << 'dodge.wav'
				sleep(10)
				A.mp-=500

//PRIEST!//
//PRIEST!//
//PRIEST!//
//PRIEST!//
//PRIEST!//

		PVPPriestHeal(mob/Newchar/A,mob/Newchar/B)
			if(A.priestheal)
				var
					mob/enemy = pick(monstergroup)
					spelldmg = A.intelligence * A.priestheal - enemy.intelligence
				if(A.mp <= 24)
					A << "You don't have enough MP!"
					PVPBattle(A,B)
				else
					var/list/list = new/list()
					list += A
					if(A.monsterinparty)
						list += A.monsterinparty
					var/mob/beinghealed = input("Who will you heal?","Heal Spell!") in list
					view() << "[A] casts Heal on [beinghealed]!"
					view() << 'spell.wav'
					sleep(10)
					if(spelldmg >= 1)
						view() << "[beinghealed] heals [num2text(spelldmg,20)] HP!"
						sleep(10)
						beinghealed.hp += spelldmg
						A.mp -= 25
						if(beinghealed.hp >= beinghealed.maxhp)
							beinghealed.hp = beinghealed.maxhp
					if(spelldmg <= 0)
						view() << "The spell fails!"
						sleep(10)
						A.mp -= 25
			else
				A << "You need to learn this skill before using it!"
				PVPBattle(A,B)

		PVPSuperHeal(mob/Newchar/A,mob/Newchar/B)
			if(A.superheal)
				var
					mob/enemy = pick(monstergroup)
					spelldmg = A.intelligence * A.superheal * 3 - enemy.intelligence
				if(A.mp <= 199)
					A << "You don't have enough MP!"
					PVPBattle(A,B)
				else
					var/list/list = new/list()
					list += A
					if(A.monsterinparty)
						list += A.monsterinparty
					var/mob/beinghealed = input("Who will you heal?","Heal Spell!") in list
					view() << "[A] casts Super Heal on [beinghealed]!"
					view() << 'spell.wav'
					sleep(10)
					if(spelldmg >= 1)
						view() << "[beinghealed] heals [num2text(spelldmg,20)] HP!"
						sleep(10)
						beinghealed.hp += spelldmg
						A.mp -= 200
						if(beinghealed.hp >= beinghealed.maxhp)
							beinghealed.hp = beinghealed.maxhp
					if(spelldmg <= 0)
						view() << "The spell fails!"
						sleep(10)
						A.mp -= 200
			else
				A << "You need to learn this skill before using it!  To learn it, first learn Heal!"
				PVPBattle(A,B)

		PVPHolyBolt(mob/Newchar/A,mob/Newchar/B)
			if(A.holybolt == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 49)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.intelligence*A.holybolt - enemy.intelligence + rand(-100,100)
				if(enemy.weakholy == 1)
					dmg *= 2.5
					dmg = round(dmg)
				view() << "[A]'s rage creates a Holy Bolt!"
				view() << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "[A] send the Holy Bolt after the [enemy]!  It hits and does [num2text(dmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 50
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "The Holy Bolt hits [enemy] but does nothing."
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=50

		PVPHolyLightning(mob/Newchar/A,mob/Newchar/B)
			if(A.holylit == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 149)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.intelligence*A.holylit*2 - enemy.intelligence + rand(-100,100)
				if(enemy.weakholy == 1)
					dmg *= 2.5
					dmg = round(dmg)
				if(enemy.weaklit == 1)
					dmg *= 2.5
					dmg = round(dmg)
				view() << "[A]'s cast Holy Lightning to strike apon [enemy]!"
				view() << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "The [enemy] gets shocked to living hell, also recieveing [num2text(dmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 150
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "The Holy Bolt hits [enemy] but does nothing."
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=150

		PVPHolyCross(mob/Newchar/A,mob/Newchar/B)
			var/list/enemys = new/list()
			if(B.pvpplayer)enemys += B
			if(B.monsterinparty && B.pvpsummon)
				enemys += B.monsterinparty
			var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
			if(A.holycross == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 999)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else if(enemy.weakholy == 1)
				var/dmg
				if(A.holycross == 1)
					dmg = A.intelligence*10 - enemy.intelligence + rand(-100,100)
				if(A.holycross == 2)
					dmg = A.intelligence*15 - enemy.intelligence + rand(-100,100)
				if(A.holycross == 3)
					dmg = A.intelligence*20 - enemy.intelligence + rand(-100,100)
				view() << "A large Holy Cross appears above [enemy]!"
				view() << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "It falls and lands STRAIGHT on [enemy] doing [num2text(dmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 1000
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "The Cross dissapates."
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=150
			else
				view() << "A large Holy Cross appears above [enemy]!"
				sleep(10)
				view() << "The Cross dissapates."
				view() << 'dodge.wav'
				sleep(10)
				A.mp-=1000

		PVPHolyHammer(mob/Newchar/A,mob/Newchar/B) //create hammer of holy, max lvl 1; does normal attack dmg, 2.5x if enemy weak vs holy. - 15 MP
			if(A.holyham == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 14)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.intelligence - enemy.intelligence + rand(-100,100)
				if(enemy.weakholy == 1)
					dmg *= 2.5
					dmg = round(dmg)
				view() << "A Hammer of Holy starts hovering over [A]'s head!"
				view() << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "The Hammer bashes on [enemy]'s head causing [num2text(dmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 15
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "Nothing happens."
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=15

		PVPHolyHammers(mob/Newchar/A,mob/Newchar/B) //create several hammers of holy, max level 4, does quad dmg *lvl, 2,5x is enemy weak holy. - 400 MP=
			if(A.holyhams == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 399)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.intelligence * A.holyhams * 4 - enemy.intelligence + rand(-100,100)
				if(enemy.weakholy == 1)
					dmg *= 2.5
					dmg = round(dmg)
				view() << "Hammers of Holy start hovering over [A]'s head!"
				view() << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "The Hammers bash on [enemy]'s head causing [num2text(dmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 400
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "Nothing happens."
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=400

//ASSASSIN!//
//ASSASSIN!//
//ASSASSIN!//
//ASSASSIN!//
//ASSASSIN!//

		PVPSpeedStrike(mob/Newchar/A,mob/Newchar/B)
			if(A.speedstrike == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 99)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.attack * (2 + A.speedstrike) - enemy.defense + rand(-100,100)
				view() << "Using [A]'s awesome speed, [A] dash after [enemy]!"
				view() << 'attack.wav'
				sleep(10)
				if(dmg >= 101)
					view() << "[A] Strike [enemy] with awesome speed for [num2text(dmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 100
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "[A] lose control of [A]'s speed and miss!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=100

		PVPAssassinate(mob/Newchar/A,mob/Newchar/B)
			if(A.assassinate == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 399)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					dmg = A.attack - enemy.defense + rand(-10000,10000)
					failed = enemy.attack - A.defense + rand(-10,10)
					sneak = A.agility - enemy.agility + rand(-10000,10000)
				view() << "Using [A]'s sneaky tactics, [A] try to sneak and assassinate [enemy]!"
				view() << 'attack.wav'
				if(failed <= 0)
					failed = 0
				sleep(10)
				if(dmg >= 1001 && sneak >= 5001)
					view() << "[A] gets behind [enemy] and attack for [num2text(dmg,20)] damage!"
					view() << 'hit.wav'
					sleep(10)
					enemy.hp -= dmg
					A.mp -= 400
					if(enemy.hp <= 0)
						PVPDeathCheck(A,B)
				else
					view() << "[A] was caught and [B] got to attack [A] while [A]'s guard was down!  [A] lost [failed] HP!"
					view() << 'dodge.wav'
					sleep(10)
					view() << 'hit.wav'
					A.hp -= failed
					A.mp-=400

		PVPGlare(mob/Newchar/A,mob/Newchar/B)
			if(A.glare == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 199)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					chance = A.intelligence - enemy.intelligence + rand(-500,500) * (A.glare * 0.5)
				view() << "Using [A]'s Assassin Techniques, [A] try to glare [enemy] to a confused state!"
				view() << 'attack.wav'
				sleep(10)
				if(chance >= 101)
					view() << "[A] succeeded!"
					sleep(10)
					PVPContinueGlare(A,B)
					A.mp -= 200
				else
					view() << "[enemy] was not persuaded."
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=200

		PVPSilentDeath(mob/Newchar/A,mob/Newchar/B)
			if(A.sd == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 499)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					chance = (A.intelligence - enemy.intelligence) + (A.attack - enemy.defense) + rand(-1000,100) * (A.sd * 2)
				view() << "[A] suddenly become quite and a blade comes out of [A]'s hand..."
				view() << 'attack.wav'
				sleep(10)
				if(chance >= 10000)
					view() << "[A] slice right through [enemy] taking 1/5th of his health!"
					sleep(10)
					enemy.hp*=0.2
					enemy.hp = round(enemy.hp)
					A.mp -= 500
				else
					view() << "[A] slice right through [enemy] but nothing happens!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=500

		PVPMasterfulDeath(mob/Newchar/A,mob/Newchar/B)
			if(A.msd == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 1999)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					chance = (A.intelligence - enemy.intelligence) + (A.attack - enemy.defense) + rand(-1000,100) * (A.msd * 2.5)
				view() << "[A] suddenly become quite and a great blade comes out of [A]'s hand..."
				view() << 'attack.wav'
				sleep(10)
				if(chance >= 50000)
					view() << "[A] slice right through [enemy] taking 1/3rd of his health!"
					sleep(10)
					enemy.hp*=0.33
					enemy.hp = round(enemy.hp)
					A.mp -= 2000
				else
					view() << "[A] slice right through [enemy] but nothing happens!"
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=2000

		PVPPoisonBottle(mob/Newchar/A,mob/Newchar/B)
			if(A.pois == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 49)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					chance = (A.intelligence - enemy.intelligence) + (A.attack - enemy.defense) + rand(-50000,25000) * (A.pois * 0.5)
				view() << "[A] throw a bottle at [enemy]!"
				view() << 'attack.wav'
				sleep(10)
				if(chance >= 2499)
					view() << "The bottle explodes and poisonous gases are released!  [enemy] is poisoned!"
					sleep(10)
					enemy.poisoned = 1
					A.mp -= 50
				else
					view() << "The bottle explodes but nothing comes out."
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=50

		PVPMPDrain(mob/Newchar/A,mob/Newchar/B)
			if(A.mpd == 0)
				A << "You don't know this skill!"
				PVPBattle(A,B)
			else if(A.mp <= 149)
				A << "You don't have enough MP for this skill!"
				PVPBattle(A,B)
			else
				var/list/enemys = new/list()
				if(B.pvpplayer)enemys += B
				if(B.monsterinparty && B.pvpsummon)
					enemys += B.monsterinparty
				var/mob/enemy = input(A,"Who are you attacking?","Skill Attack!") in enemys
				var
					chance = A.intelligence - enemy.intelligence + rand(-2500,1000) * A.mpd
				view() << "[A] start chanting [enemy]!"
				view() << 'attack.wav'
				sleep(10)
				if(chance >= 1)
					view() << "Suddenly, Magical essence is sucked out of [enemy]'s body!  It comes to [A]!  [A] MP recovers [chance]!"
					sleep(10)
					A.mp -= 150
					A.mp += chance
					B.mp -= chance
					if(B.mp <= 0)
						B.mp = 0
					if(A.mp >= A.maxmp)
						A.mp = A.maxmp
				else
					view() << "Nothing happenes."
					view() << 'dodge.wav'
					sleep(10)
					A.mp-=150

		PVPContinueGlare(mob/Newchar/A,mob/Newchar/B)
			var
				glare = rand(0,3)
			PVPBattle(A,B)
			if(B.hp <= 0)return
			else if(glare == 2)
				view() << "[B] is still glared in confusion!"
				ContinueGlare(A,B)
			else
				view() << "[B] got a hold of himself!"