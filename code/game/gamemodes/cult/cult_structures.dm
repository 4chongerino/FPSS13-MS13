/obj/structure/cult
	density = 1
	anchored = 1
	icon = 'icons/obj/cult.dmi'

/obj/structure/cult/talisman
	name = "Altar"
	desc = "A bloodstained altar dedicated to Nar-Sie"
	icon_state = "talismanaltar"


/obj/structure/cult/forge
	name = "Daemon forge"
	desc = "A forge used in crafting the unholy weapons used by the armies of Nar-Sie"
	icon_state = "forge"

/obj/structure/cult/pylon
	name = "Pylon"
	desc = "A floating crystal that hums with an unearthly energy"
	icon_state = "pylon"
	luminosity = 5

/obj/structure/cult/tome
	name = "Desk"
	desc = "A desk covered in arcane manuscripts and tomes in unknown languages. Looking at the text makes your skin crawl"
	icon_state = "tomealtar"


/obj/effect/gateway
	name = "gateway"
	desc = "You're pretty sure that abyss is staring back"
	icon = 'icons/obj/cult.dmi'
	icon_state = "hole"
	density = 1
	unacidable = 1
	anchored = 1.0

/obj/effect/gateway/Bumped(mob/M as mob|obj)
	spawn(0)
		return
	return

/obj/effect/gateway/HasEntered(AM as mob|obj)
	spawn(0)
		return
	return





/obj/structure/cult/gumbo/pylon
	name = "Pylon"
	desc = "A floating crystal that hums with an unearthly energy"
	icon_state = "pylon"
	luminosity = 5

	New()
		processing_objects.Add(src)

	Del()
		processing_objects.Remove(src)
		..()

	process()
		cultteam1 += rand(1,5)
		cultteam2 += rand(1,4)
