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
-- Region tbc-us, season 3, cutoffs last changed 2026-09-10 11:13 AM, last checked 2026-09-10 06:43 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-09-10 11:13 AM",
	checked = "2026-09-10 06:43 PM",
	checkedEpoch = 1789080185,

	[1] = { r1=2199, gladiator=2058, duelist=1863, rival=1676, challenger=1498 }, -- 2v2
	[2] = { r1=2177, gladiator=2006, duelist=1844, rival=1690, challenger=1500 }, -- 3v3
	[3] = { r1=2255, gladiator=2078, duelist=1837, rival=1644, challenger=1493 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=21, gladiator=137, duelist=805, rival=3083 }, -- 2v2
	[2] = { r1=23, gladiator=135, duelist=577, rival=2059 }, -- 3v3
	[3] = { r1=52, gladiator=337, duelist=2172 }, -- 5v5
}
