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
-- Region tbc-eu, season 3, cutoffs last changed 2026-09-26 09:13 PM, last checked 2026-09-26 10:59 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-09-26 09:13 PM",
	checked = "2026-09-26 10:59 PM",
	checkedEpoch = 1790477941,

	[1] = { r1=2383, gladiator=2210, duelist=1968, rival=1703, challenger=1485 }, -- 2v2
	[2] = { r1=2299, gladiator=2125, duelist=1906, rival=1703, challenger=1500 }, -- 3v3
	[3] = { r1=2288, gladiator=2133, duelist=1891, rival=1696, challenger=1482 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=39, gladiator=243, duelist=1572 }, -- 2v2
	[2] = { r1=24, gladiator=167, duelist=999, rival=3929 }, -- 3v3
	[3] = { r1=70, gladiator=473, duelist=3097 }, -- 5v5
}
