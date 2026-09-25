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
-- Region us, season 14, cutoffs last changed 2026-09-25 10:18 AM, last checked 2026-09-25 01:59 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-09-25 10:18 AM",
	checked = "2026-09-25 01:59 PM",
	checkedEpoch = 1790359170,

	[1] = { r1=2571, gladiator=2282, duelist=2109, rival=1826, challenger=1091 }, -- 2v2
	[2] = { r1=2449, gladiator=1993, duelist=1888, rival=1642, challenger=864 }, -- 3v3
	[3] = { r1=2192, gladiator=1558, duelist=1431, rival=1056, challenger=576 }, -- 5v5
	[4] = { r1=2039, duelist=1887, rival=1752, challenger=1450 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=29, gladiator=203, duelist=547, rival=1787 }, -- 2v2
	[2] = { r1=26, gladiator=185, duelist=219, rival=320, challenger=682 }, -- 3v3
	[3] = { r1=15, gladiator=110, duelist=116, rival=144, challenger=209 }, -- 5v5
	[4] = { r1=3, duelist=7, rival=26, challenger=123 }, -- rbg
}
