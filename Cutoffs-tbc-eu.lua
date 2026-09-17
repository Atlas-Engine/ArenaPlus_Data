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
-- Region tbc-eu, season 3, cutoffs last changed 2026-09-16 09:14 PM, last checked 2026-09-17 01:59 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-09-16 09:14 PM",
	checked = "2026-09-17 01:59 AM",
	checkedEpoch = 1789624771,

	[1] = { r1=2313, gladiator=2144, duelist=1925, rival=1703, challenger=1490 }, -- 2v2
	[2] = { r1=2212, gladiator=2076, duelist=1875, rival=1703, challenger=1500 }, -- 3v3
	[3] = { r1=2240, gladiator=2105, duelist=1873, rival=1681, challenger=1483 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=34, gladiator=217, duelist=1341 }, -- 2v2
	[2] = { r1=24, gladiator=138, duelist=828, rival=3166 }, -- 3v3
	[3] = { r1=66, gladiator=435, duelist=2881 }, -- 5v5
}
