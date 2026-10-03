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
-- Region tbc-us, season 3, cutoffs last changed 2026-10-03 10:18 AM, last checked 2026-10-03 05:58 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-10-03 10:18 AM",
	checked = "2026-10-03 05:58 PM",
	checkedEpoch = 1791064695,

	[1] = { r1=2343, gladiator=2185, duelist=1933, rival=1683, challenger=1490 }, -- 2v2
	[2] = { r1=2293, gladiator=2142, duelist=1912, rival=1700, challenger=1500 }, -- 3v3
	[3] = { r1=2347, gladiator=2136, duelist=1876, rival=1689, challenger=1487 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=31, gladiator=196, duelist=1214, rival=4662 }, -- 2v2
	[2] = { r1=24, gladiator=137, duelist=897, rival=3491 }, -- 3v3
	[3] = { r1=67, gladiator=432, duelist=2749 }, -- 5v5
}
