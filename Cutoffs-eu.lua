-- Shipped as its own addon so the ladder can be republished without reshipping
-- the code: this file was half of every ArenaPlus release.
--
-- Two addons cannot see each other's namespace, so the tables go on a global
-- and ArenaPlus copies them across as it loads. Same reason ArenaPlusAPI is a
-- global -- see the note above it in ArenaPlus\Core.lua.
--
-- The local keeps its name so the generated body below needs no changes.
ArenaPlusData = ArenaPlusData or {}
local ns = ArenaPlusData

-- Arena title cutoffs, written by tools\UpdateFromBlizzard.ps1 from Blizzard's
-- own API. Do not edit by hand: rerun the script to refresh.
--
-- Region eu, season 14, cutoffs last changed 2026-09-25 09:18 PM, last checked 2026-09-25 11:00 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["eu"] = {
	region  = "eu",
	updated = "2026-09-25 09:18 PM",
	checked = "2026-09-25 11:00 PM",
	checkedEpoch = 1790391611,

	[1] = { r1=2587, gladiator=2343, duelist=2201, rival=1874, challenger=1043 }, -- 2v2
	[2] = { r1=2445, gladiator=1731, duelist=1688, rival=1558, challenger=768 }, -- 3v3
	[3] = { r1=480, gladiator=1, duelist=1, rival=1, challenger=1 }, -- 5v5
	[4] = { r1=2377, duelist=2091, rival=1860, challenger=1520 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["eu"] = {
	[1] = { r1=30, gladiator=194, duelist=528, rival=1911 }, -- 2v2
	[2] = { r1=33, gladiator=208, duelist=228, rival=286, challenger=564 }, -- 3v3
	[3] = { r1=22 }, -- 5v5
	[4] = { r1=5, duelist=23, rival=102, challenger=433 }, -- rbg
}
