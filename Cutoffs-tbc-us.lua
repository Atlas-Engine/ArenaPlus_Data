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
-- Region tbc-us, season 3, cutoffs last changed 2026-10-07 10:18 AM, last checked 2026-10-07 08:58 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-10-07 10:18 AM",
	checked = "2026-10-07 08:58 PM",
	checkedEpoch = 1791421094,

	[1] = { r1=2358, gladiator=2191, duelist=1934, rival=1682, challenger=1489 }, -- 2v2
	[2] = { r1=2297, gladiator=2145, duelist=1918, rival=1700, challenger=1499 }, -- 3v3
	[3] = { r1=2360, gladiator=2145, duelist=1876, rival=1690, challenger=1486 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=32, gladiator=205, duelist=1249, rival=4772 }, -- 2v2
	[2] = { r1=23, gladiator=145, duelist=918, rival=3591 }, -- 3v3
	[3] = { r1=63, gladiator=429, duelist=2794 }, -- 5v5
}
