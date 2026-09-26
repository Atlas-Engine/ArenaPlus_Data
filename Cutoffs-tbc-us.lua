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
-- Region tbc-us, season 3, cutoffs last changed 2026-09-25 10:18 AM, last checked 2026-09-26 05:58 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-09-25 10:18 AM",
	checked = "2026-09-26 05:58 AM",
	checkedEpoch = 1790416695,

	[1] = { r1=2323, gladiator=2157, duelist=1914, rival=1689, challenger=1491 }, -- 2v2
	[2] = { r1=2284, gladiator=2120, duelist=1898, rival=1700, challenger=1500 }, -- 3v3
	[3] = { r1=2323, gladiator=2134, duelist=1871, rival=1684, challenger=1487 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=36, gladiator=195, duelist=1160, rival=4364 }, -- 2v2
	[2] = { r1=24, gladiator=146, duelist=849, rival=3271 }, -- 3v3
	[3] = { r1=68, gladiator=412, duelist=2682 }, -- 5v5
}
