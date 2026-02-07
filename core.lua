-- Hunter Stats Display Code

-- Create a main frame
local hunterFrame = CreateFrame("Frame", "HunterStatsFrame", UIParent)
hunterFrame:SetSize(300, 200) -- Set size
hunterFrame:SetPoint("CENTER") -- Center on screen

-- Create a title for the frame
local title = hunterFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
title:SetPoint("TOP", 0, -10)
title:SetText("Hunter Stats")

-- Function to update stats
local function UpdateHunterStats()
    local stats = GetHunterStats() -- Placeholder for actual stats retrieval
    -- Update the frame with stats
end

-- Slash command to toggle the stats display
SLASH_HUNTERSTATS1 = "/hunterstats"
SlashCmdList["HUNTERSTATS"] = function() 
    if hunterFrame:IsShown() then
        hunterFrame:Hide()
    else
        hunterFrame:Show()
    end
end

-- Event Listener for stat tracking
hunterFrame:RegisterEvent("UNIT_STATS")
hunterFrame:SetScript("OnEvent", UpdateHunterStats)

-- Initialize stats display
UpdateHunterStats()