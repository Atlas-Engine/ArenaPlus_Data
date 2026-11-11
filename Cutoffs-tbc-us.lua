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
-- Region tbc-us, season 3, cutoffs last changed 2026-11-09 10:18 AM, last checked 2026-11-11 02:58 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-11-09 10:18 AM",
	checked = "2026-11-11 02:58 AM",
	checkedEpoch = 1794383895,

	[1] = { r1=2451, gladiator=2250, duelist=1950, rival=1673, challenger=1486 }, -- 2v2
	[2] = { r1=2290, gladiator=2163, duelist=1922, rival=1691, challenger=1498 }, -- 3v3
	[3] = { r1=2362, gladiator=2154, duelist=1875, rival=1689, challenger=1486 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=35, gladiator=228, duelist=1410 }, -- 2v2
	[2] = { r1=25, gladiator=159, duelist=1029, rival=4041 }, -- 3v3
	[3] = { r1=70, gladiator=451, duelist=2937 }, -- 5v5
}
