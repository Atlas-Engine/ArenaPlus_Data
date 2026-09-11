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
-- Region tbc-eu, season 3, cutoffs last changed 2026-09-10 09:36 PM, last checked 2026-09-11 12:36 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-09-10 09:36 PM",
	checked = "2026-09-11 12:36 PM",
	checkedEpoch = 1789144589,

	[1] = { r1=2210, gladiator=2081, duelist=1888, rival=1701, challenger=1497 }, -- 2v2
	[2] = { r1=2145, gladiator=2005, duelist=1832, rival=1695, challenger=1502 }, -- 3v3
	[3] = { r1=2177, gladiator=2052, duelist=1841, rival=1647, challenger=1490 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=27, gladiator=178, duelist=1041, rival=4012 }, -- 2v2
	[2] = { r1=24, gladiator=144, duelist=639, rival=2294 }, -- 3v3
	[3] = { r1=62, gladiator=379, duelist=2491 }, -- 5v5
}
