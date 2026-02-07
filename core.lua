--[[
-- AddOn Name: MyHunterStats
-- Version: 1.0
-- Author: Ach138
-- Description: A simple addon to display Hunter statistics in WoW 3.3.5
--]]

local f = CreateFrame("Frame", "MyHunterStatsFrame", UIParent)
f:SetSize(200, 100)
f:SetPoint("CENTER")
f:Hide()

-- Create a title
local title = f:CreateFontString(nil, "OVERLAY", "GameFontNormal")
title:SetPoint("TOP", 0, -10)
title:SetText("Hunter Stats")

-- Create display for stats
local statsText = f:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
statsText:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -5)

local function UpdateStats()
    local attackPower = UnitAttackPower("player")
    local critRating = GetCombatRating(CR_CRIT_MELEE)
    statsText:SetText(string.format("AP: %d, Crit: %d", attackPower, critRating))
end

-- Event handlers
f:RegisterEvent("PLAYER_LOGIN")
f:RegisterEvent("UNIT_STATS")
f:RegisterEvent("COMBAT_RATING_UPDATE")
f:SetScript("OnEvent", function(self, event, ...) 
    UpdateStats()
    if event == "PLAYER_LOGIN" then
        f:Show()
    end
end)

-- Initialize the add-on
UpdateStats()