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
-- Region us, season 14, cutoffs last changed 2026-09-28 10:18 AM, last checked 2026-09-29 09:59 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-09-28 10:18 AM",
	checked = "2026-09-29 09:59 PM",
	checkedEpoch = 1790733569,

	[1] = { r1=2582, gladiator=2292, duelist=2116, rival=1831, challenger=1104 }, -- 2v2
	[2] = { r1=2449, gladiator=2002, duelist=1888, rival=1645, challenger=864 }, -- 3v3
	[3] = { r1=2192, gladiator=1591, duelist=1567, rival=1151, challenger=576 }, -- 5v5
	[4] = { r1=2039, duelist=1887, rival=1757, challenger=1453 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=29, gladiator=212, duelist=558, rival=1794 }, -- 2v2
	[2] = { r1=27, gladiator=189, duelist=222, rival=325, challenger=700 }, -- 3v3
	[3] = { r1=15, gladiator=116, duelist=118, rival=140, challenger=214 }, -- 5v5
	[4] = { r1=3, duelist=7, rival=26, challenger=123 }, -- rbg
}
