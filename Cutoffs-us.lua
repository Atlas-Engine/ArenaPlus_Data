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
-- Region us, season 14, cutoffs last changed 2026-09-03 10:15 AM, last checked 2026-09-04 04:00 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-09-03 10:15 AM",
	checked = "2026-09-04 04:00 AM",

	[1] = { r1=2523, gladiator=2212, duelist=2061, rival=1807, challenger=1091 }, -- 2v2
	[2] = { r1=2368, gladiator=1896, duelist=1818, rival=1617, challenger=864 }, -- 3v3
	[3] = { r1=2051, gladiator=1056, duelist=1056, rival=864, challenger=480 }, -- 5v5
	[4] = { r1=1997, duelist=1851, rival=1733, challenger=1450 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=33, gladiator=218 }, -- 2v2
	[2] = { r1=26, gladiator=189 }, -- 3v3
	[3] = { r1=14, gladiator=113 }, -- 5v5
	[4] = { r1=3 }, -- rbg
}
