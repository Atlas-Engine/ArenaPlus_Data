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
-- Region tbc-us, season 3, cutoffs last changed 2026-09-28 10:18 AM, last checked 2026-09-29 02:58 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-09-28 10:18 AM",
	checked = "2026-09-29 02:58 AM",
	checkedEpoch = 1790665095,

	[1] = { r1=2330, gladiator=2166, duelist=1922, rival=1688, challenger=1491 }, -- 2v2
	[2] = { r1=2281, gladiator=2135, duelist=1908, rival=1700, challenger=1500 }, -- 3v3
	[3] = { r1=2338, gladiator=2140, duelist=1874, rival=1688, challenger=1487 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=37, gladiator=194, duelist=1185, rival=4488 }, -- 2v2
	[2] = { r1=25, gladiator=140, duelist=866, rival=3377 }, -- 3v3
	[3] = { r1=73, gladiator=410, duelist=2735 }, -- 5v5
}
