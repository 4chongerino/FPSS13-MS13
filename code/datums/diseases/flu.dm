/datum/disease/flu
	name = "The Flu"
	max_stages = 3
	spread = "Airborne"
	cure = "Spaceacillin"
	cure_id = "spaceacillin"
	cure_chance = 10
	agent = "H13N1 flu virion"
	affected_species = list("Human", "Monkey")
	permeability_mod = 0.75
	desc = "If left untreated the subject will feel quite unwell."
	severity = "Medium"

/datum/disease/flu/stage_act()
	..()
	if(stage == 1)
		return
	switch(stage)
		if(2)
			if(affected_mob.sleeping && prob(20))
				affected_mob << "\blue You feel better."
				stage--
				return

		if(3)
			if(affected_mob.sleeping && prob(15))
				affected_mob << "\blue You feel better."
				stage--
				return

	if(prob(1))
		affected_mob.emote("sneeze")
	if(prob(1))
		affected_mob.emote("cough")
	if(prob(1))
		affected_mob << "\red Your muscles ache."
		if(prob(20))
			affected_mob.deal_damage(1, BRUTE)
	if(prob(1))
		affected_mob << "\red Your stomach hurts."
		if(prob(20))
			affected_mob.deal_damage(1, TOX)
	return
