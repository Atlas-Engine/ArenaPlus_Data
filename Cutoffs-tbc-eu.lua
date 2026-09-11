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
-- Region tbc-eu, season 3, cutoffs last changed 2026-09-10 09:36 PM, last checked 2026-09-11 04:36 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-09-10 09:36 PM",
	checked = "2026-09-11 04:36 PM",
	checkedEpoch = 1789158979,

	[1] = { r1=2210, gladiator=2081, duelist=1888, rival=1701, challenger=1497 }, -- 2v2
	[2] = { r1=2145, gladiator=2005, duelist=1832, rival=1695, challenger=1502 }, -- 3v3
	[3] = { r1=2177, gladiator=2052, duelist=1841, rival=1647, challenger=1490 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=29, gladiator=183, duelist=1072, rival=4100 }, -- 2v2
	[2] = { r1=27, gladiator=154, duelist=661, rival=2361 }, -- 3v3
	[3] = { r1=65, gladiator=383, duelist=2518 }, -- 5v5
}
