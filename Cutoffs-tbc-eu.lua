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
-- Region tbc-eu, season 3, cutoffs last changed 2026-09-18 09:14 PM, last checked 2026-09-19 12:59 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-09-18 09:14 PM",
	checked = "2026-09-19 12:59 PM",
	checkedEpoch = 1789837140,

	[1] = { r1=2334, gladiator=2158, duelist=1940, rival=1703, challenger=1489 }, -- 2v2
	[2] = { r1=2221, gladiator=2096, duelist=1891, rival=1702, challenger=1500 }, -- 3v3
	[3] = { r1=2254, gladiator=2111, duelist=1878, rival=1686, challenger=1483 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=35, gladiator=230, duelist=1403 }, -- 2v2
	[2] = { r1=23, gladiator=144, duelist=855, rival=3405 }, -- 3v3
	[3] = { r1=62, gladiator=440, duelist=2918 }, -- 5v5
}
