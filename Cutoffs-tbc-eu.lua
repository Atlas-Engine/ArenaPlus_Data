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
-- Region tbc-eu, season 3, cutoffs last changed 2026-09-17 09:13 PM, last checked 2026-09-18 05:59 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-09-17 09:13 PM",
	checked = "2026-09-18 05:59 PM",
	checkedEpoch = 1789768745,

	[1] = { r1=2332, gladiator=2154, duelist=1932, rival=1703, challenger=1489 }, -- 2v2
	[2] = { r1=2221, gladiator=2088, duelist=1879, rival=1702, challenger=1500 }, -- 3v3
	[3] = { r1=2250, gladiator=2105, duelist=1875, rival=1683, challenger=1483 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=38, gladiator=237, duelist=1421 }, -- 2v2
	[2] = { r1=23, gladiator=155, duelist=892, rival=3362 }, -- 3v3
	[3] = { r1=67, gladiator=457, duelist=2940 }, -- 5v5
}
