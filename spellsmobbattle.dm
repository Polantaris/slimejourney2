mob
	monsters
		proc
			Blaze(mob/player/P,mob/picked,mob/monsters/M)
				var/dmg = rand(4,10)
				var/hit = rand(0,4)
				if(picked.weakness == "Fire")
					dmg *= 1.5
				else if(picked.strength == "Fire")
					dmg *= 0.5
				dmg = round(dmg)
				if(hit == 2)
					P.DamageAddInfo(P,"[M] casts Blaze!","No effect to [picked]!",'spell.ogg','dodge.ogg')
					sleep(12)
				else
					P.DamageAddInfo(P,"[M] casts Blaze!","[dmg] Damage to [picked]!",'spell.ogg','hit.ogg')
					picked.hp -= dmg
					sleep(12)
					M.Deathcheck(P,M,monstergroup)

			Icebolt(mob/player/P,mob/picked,mob/monsters/M)
				var/dmg = rand(8,20)
				var/hit = rand(0,4)
				if(picked.weakness == "Ice")
					dmg *= 1.5
				else if(picked.strength == "Fire")
					dmg *= 0.5
				dmg = round(dmg)
				if(hit == 2)
					P.DamageAddInfo(P,"[M] casts Icebolt!","No effect to [picked]!",'spell.ogg','dodge.ogg')
					sleep(12)
				else
					P.DamageAddInfo(P,"[M] casts Icebolt!","[dmg] Damage to [picked]!",'spell.ogg','dodge.ogg')
					picked.hp -= dmg
					sleep(12)
					M.Deathcheck(P,M,monstergroup)

			Maul(mob/player/P,mob/picked,mob/monsters/M)
				var/damage = (M.tempstr + M.tempdex + rand(-M.mrand,M.mrand)) - (P.tempstr + P.tempdex + rand(-10,10)) + rand(30,90)
				var/hit = ((M.tempagl + (rand(7,14))/10) + rand(-100,100)) - ((P.tempagl + (rand(7,14))/10) + rand(-100,100))
				if(picked.defending)
					damage /=2
					damage = round(damage)
				if(hit <= 0)
					DamageAddInfo(P,"[M] mauls [picked]!","[M] missed.",'enemyattack.ogg','dodge.ogg')
					sleep(12)
				else
					if(damage >= 1)
						DamageAddInfo(P,"[M] mauls [picked]!","[damage] damage!",'enemyattack.ogg','hit.ogg')
						P.hp -= damage
						sleep(12)
						if(P.hp <= 0)
							M.Deathcheck(P,M)
					else
						DamageAddInfo(P,"[M] mauls [picked]!","[M] missed.",'enemyattack.ogg','dodge.ogg')
						sleep(12)
				sleep(3)
				P.CheckColorChange(P,M)