mob
	monsters
		proc
			Blaze(mob/player/P,mob/picked,mob/monsters/M,list/monstergroup)
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

			Icebolt(mob/player/P,mob/picked,mob/monsters/M,list/monstergroup)
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