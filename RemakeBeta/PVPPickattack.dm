mob
	proc
		PVPPickSpell(mob/Newchar/A,mob/Newchar/B)
			switch(input(A,"What skill do you wish to use?")in A.spell)
				if("Bash")
					PVPBash(A,B)
				if("Super Bash")
					PVPSuperBash(A,B)
				if("Multi Swing")
					PVPMultiSwing(A,B)
				if("Mega Multi Swing")
					PVPMegaMultiSwing(A,B)
				if("Enflamed Attack")
					PVPEnflamedAttack(A,B)
				if("Super Enflamed Attack")
					PVPSuperEnflamedAttack(A,B)
				if("Iced Attack")
					PVPIcedAttack(A,B)
				if("Super Iced Attack")
					PVPSuperIcedAttack(A,B)
				if("Tornado Attack")
					PVPTornAttack(A,B)
				if("Super Tornado Attack")
					PVPSuperTornAttack(A,B)
				if("Consentrated Attack")
					PVPConsentratedAttack(A,B)
				if("Super Consentrated Attack")
					PVPSuperConsentratedAttack(A,B)
				if("Speed Strike")
					PVPSpeedStrike(A,B)
				if("Assassinate")
					PVPAssassinate(A,B)
				if("Glare")
					PVPGlare(A,B)
				if("Poison Bottle")
					PVPPoisonBottle(A,B)
				if("MP Drain")
					PVPMPDrain(A,B)
				if("Silent Death")
					PVPSilentDeath(A,B)
				if("Masterful Death")
					PVPMasterfulDeath(A,B)
				if("Heal")
					PVPPriestHeal(A,B)
				if("Super Heal")
					PVPSuperHeal(A,B)
				if("Holy Bolt")
					PVPHolyBolt(A,B)
				if("Holy Lightning")
					PVPHolyLightning(A,B)
				if("Holy Cross")
					PVPHolyCross(A,B)
				if("Holy Hammer")
					PVPHolyHammer(A,B)
				if("Holy Hammers")
					PVPHolyHammers(A,B)
				if("Beat")
					PVPBeat(A,B)
				if("Cosmic Blast")
					PVPCosmicBlast(A,B)
				if("Master's Cosmic Blast")
					PVPMastersCosmicBlast(A,B)
				if("Fire Burst")
					PVPFireBurst(A,B)
				if("Super Fire Burst")
					PVPSuperFireBurst(A,B)
				if("Ice Burst")
					PVPIceBurst(A,B)
				if("Super Ice Burst")
					PVPSuperIceBurst(A,B)
				if("Wind Burst")
					PVPWindBurst(A,B)
				if("Super Wind Burst")
					PVPSuperWindBurst(A,B)
				if("Lightning Burst")
					PVPLightningBurst(A,B)
				if("Super Lightning Burst")
					PVPSuperLightningBurst(A,B)
				if("Earth Burst")
					PVPEarthBurst(A,B)
				if("Super Earth Burst")
					PVPSuperEarthBurst(A,B)
				if("Beat")
					PVPBeat(A,B)
				if("-=Cancel=-")
					PVPBattle(A,B)
					return