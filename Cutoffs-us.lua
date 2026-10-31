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
-- Region us, season 14, cutoffs last changed 2026-10-30 10:34 AM, last checked 2026-10-31 12:59 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-10-30 10:34 AM",
	checked = "2026-10-31 12:59 AM",
	checkedEpoch = 1793422769,

	[1] = { r1=2675, gladiator=2407, duelist=2205, rival=1891, challenger=1113 }, -- 2v2
	[2] = { r1=2569, gladiator=2092, duelist=2022, rival=1676, challenger=864 }, -- 3v3
	[3] = { r1=2197, gladiator=1718, duelist=1668, rival=1438, challenger=672 }, -- 5v5
	[4] = { r1=2043, duelist=1887, rival=1765, challenger=1489 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=36, gladiator=203, duelist=612, rival=1996 }, -- 2v2
	[2] = { r1=28, gladiator=199, duelist=232, rival=362, challenger=789 }, -- 3v3
	[3] = { r1=15, gladiator=104, duelist=109, rival=131, challenger=215 }, -- 5v5
	[4] = { r1=3, duelist=7, rival=28, challenger=121 }, -- rbg
}
