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
-- Region tbc-us, season 3, cutoffs last changed 2026-10-31 10:18 AM, last checked 2026-10-31 04:58 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-10-31 10:18 AM",
	checked = "2026-10-31 04:58 PM",
	checkedEpoch = 1793480296,

	[1] = { r1=2446, gladiator=2238, duelist=1948, rival=1675, challenger=1486 }, -- 2v2
	[2] = { r1=2290, gladiator=2163, duelist=1926, rival=1693, challenger=1498 }, -- 3v3
	[3] = { r1=2368, gladiator=2151, duelist=1876, rival=1690, challenger=1486 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=33, gladiator=223, duelist=1385 }, -- 2v2
	[2] = { r1=24, gladiator=157, duelist=1007, rival=3980 }, -- 3v3
	[3] = { r1=66, gladiator=448, duelist=2903 }, -- 5v5
}
