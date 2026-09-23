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
-- Region tbc-eu, season 3, cutoffs last changed 2026-09-21 09:14 PM, last checked 2026-09-23 02:59 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-09-21 09:14 PM",
	checked = "2026-09-23 02:59 PM",
	checkedEpoch = 1790189942,

	[1] = { r1=2357, gladiator=2182, duelist=1953, rival=1703, challenger=1487 }, -- 2v2
	[2] = { r1=2262, gladiator=2109, duelist=1899, rival=1703, challenger=1500 }, -- 3v3
	[3] = { r1=2277, gladiator=2121, duelist=1885, rival=1691, challenger=1483 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=39, gladiator=240, duelist=1507 }, -- 2v2
	[2] = { r1=21, gladiator=170, duelist=936, rival=3652 }, -- 3v3
	[3] = { r1=78, gladiator=497, duelist=3079 }, -- 5v5
}
