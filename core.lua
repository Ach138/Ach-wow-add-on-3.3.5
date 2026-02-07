-- core.lua

local function DisplayHunterStats()
    local agility = UnitStat("player", 2) -- Agility
    local ap = UnitAttackPower("player") -- Attack Power
    local crit = GetCritChance() -- Crit Chance
    local haste = GetHaste() -- Haste
    local arp = GetArmorPenetration() -- Armor Penetration

    print("Hunter Stats:")
    print("Agility: " .. agility)
    print("Attack Power: " .. ap)
    print("Critical Strike Chance: " .. crit .. "%")
    print("Haste: " .. haste .. "%")
    print("Armor Penetration: " .. arp .. "%")
end

-- Run the function to display stats
DisplayHunterStats()