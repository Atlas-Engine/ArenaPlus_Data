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
-- Region tbc-eu, season 3, cutoffs last changed 2026-10-26 10:27 PM, last checked 2026-10-28 08:58 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-10-26 10:27 PM",
	checked = "2026-10-28 08:58 PM",
	checkedEpoch = 1793235538,

	[1] = { r1=2554, gladiator=2334, duelist=2004, rival=1701, challenger=1475 }, -- 2v2
	[2] = { r1=2368, gladiator=2203, duelist=1928, rival=1703, challenger=1496 }, -- 3v3
	[3] = { r1=2373, gladiator=2178, duelist=1904, rival=1700, challenger=1479 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=44, gladiator=314, duelist=1942 }, -- 2v2
	[2] = { r1=29, gladiator=198, duelist=1295, rival=5006 }, -- 3v3
	[3] = { r1=82, gladiator=528, duelist=3460 }, -- 5v5
}
