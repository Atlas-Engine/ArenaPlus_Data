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
-- Region tbc-us, season 3, cutoffs last changed 2026-10-24 12:18 PM, last checked 2026-10-24 11:58 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-10-24 12:18 PM",
	checked = "2026-10-24 11:58 PM",
	checkedEpoch = 1792900694,

	[1] = { r1=2412, gladiator=2214, duelist=1946, rival=1676, challenger=1487 }, -- 2v2
	[2] = { r1=2287, gladiator=2157, duelist=1923, rival=1697, challenger=1498 }, -- 3v3
	[3] = { r1=2358, gladiator=2149, duelist=1877, rival=1690, challenger=1486 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=32, gladiator=225, duelist=1351 }, -- 2v2
	[2] = { r1=25, gladiator=155, duelist=1006, rival=3857 }, -- 3v3
	[3] = { r1=70, gladiator=444, duelist=2880 }, -- 5v5
}
