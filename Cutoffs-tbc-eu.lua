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
-- Region tbc-eu, season 3, cutoffs last changed 2026-09-19 09:14 PM, last checked 2026-09-20 12:59 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-09-19 09:14 PM",
	checked = "2026-09-20 12:59 PM",
	checkedEpoch = 1789923542,

	[1] = { r1=2342, gladiator=2172, duelist=1944, rival=1703, challenger=1488 }, -- 2v2
	[2] = { r1=2223, gladiator=2101, duelist=1895, rival=1703, challenger=1500 }, -- 3v3
	[3] = { r1=2250, gladiator=2114, duelist=1881, rival=1687, challenger=1483 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=36, gladiator=229, duelist=1429 }, -- 2v2
	[2] = { r1=23, gladiator=146, duelist=874, rival=3425 }, -- 3v3
	[3] = { r1=68, gladiator=446, duelist=2929 }, -- 5v5
}
