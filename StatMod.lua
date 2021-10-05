local StatsToChange = {
    aux_usage = 2e9, -- High number = more aux usage - Resets each night!
    baseammoscav = 10000, -- High number = more ammo pickups
    basedamage = 10000, -- High number = more damage dealt
    basedefense = 2e15, -- High number = less damage taken - Super high number = godmode from enemies
    baseheavyattackspeed = 50, -- High number = faster heavy hit
    basehipaccuracy = 10000, -- High number = higher "no ADS" accuracy
    baselightattackspeed = 20, -- High number = faster jab
    baserecoilcontrol = 10000, -- High number = less recoil
    basereloadmod = 10000, -- High number = fast reload
    baseshovespeed = 10000, -- High number = fast shove
    basetrapspeed = 10000, -- High number = faster trap laying
    sprint_stam = 10000, --High number = no lung cancer

    bleed_immunity = true,
    no_morale = true,
	burn_immunity = true,
	cripple_immunity = true,
	fist_speed_boost = true,
	frac_immunity = true,
	can_be_grappled = false,
}

for i,v in pairs(StatsToChange) do
    getsenv(game:GetService("Players").LocalPlayer.Backpack.mainHandler)[i] = v
end