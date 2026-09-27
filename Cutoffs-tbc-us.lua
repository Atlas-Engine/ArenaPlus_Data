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
-- Region tbc-us, season 3, cutoffs last changed 2026-09-27 10:18 AM, last checked 2026-09-27 04:58 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-09-27 10:18 AM",
	checked = "2026-09-27 04:58 PM",
	checkedEpoch = 1790542695,

	[1] = { r1=2330, gladiator=2162, duelist=1919, rival=1688, challenger=1491 }, -- 2v2
	[2] = { r1=2285, gladiator=2131, duelist=1902, rival=1700, challenger=1500 }, -- 3v3
	[3] = { r1=2332, gladiator=2136, duelist=1873, rival=1687, challenger=1487 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=32, gladiator=194, duelist=1154, rival=4429 }, -- 2v2
	[2] = { r1=24, gladiator=140, duelist=856, rival=3309 }, -- 3v3
	[3] = { r1=66, gladiator=418, duelist=2675 }, -- 5v5
}
