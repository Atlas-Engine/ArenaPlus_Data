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
-- Region tbc-us, season 3, cutoffs last changed 2026-09-30 10:18 AM, last checked 2026-10-01 01:58 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-09-30 10:18 AM",
	checked = "2026-10-01 01:58 AM",
	checkedEpoch = 1790834295,

	[1] = { r1=2348, gladiator=2174, duelist=1928, rival=1685, challenger=1490 }, -- 2v2
	[2] = { r1=2287, gladiator=2137, duelist=1909, rival=1700, challenger=1500 }, -- 3v3
	[3] = { r1=2338, gladiator=2136, duelist=1876, rival=1689, challenger=1487 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=31, gladiator=208, duelist=1198, rival=4589 }, -- 2v2
	[2] = { r1=23, gladiator=141, duelist=885, rival=3441 }, -- 3v3
	[3] = { r1=71, gladiator=425, duelist=2733 }, -- 5v5
}
