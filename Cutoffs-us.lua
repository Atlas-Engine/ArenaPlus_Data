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
-- Region us, season 14, cutoffs last changed 2026-09-16 10:17 AM, last checked 2026-09-16 10:57 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-09-16 10:17 AM",
	checked = "2026-09-16 10:57 PM",
	checkedEpoch = 1789613845,

	[1] = { r1=2566, gladiator=2252, duelist=2096, rival=1817, challenger=1055 }, -- 2v2
	[2] = { r1=2421, gladiator=1939, duelist=1852, rival=1639, challenger=864 }, -- 3v3
	[3] = { r1=2081, gladiator=1245, duelist=1150, rival=960, challenger=480 }, -- 5v5
	[4] = { r1=2017, duelist=1875, rival=1751, challenger=1423 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=28, gladiator=208, duelist=511, rival=1718 }, -- 2v2
	[2] = { r1=24, gladiator=186, duelist=219, rival=311, challenger=658 }, -- 3v3
	[3] = { r1=15, gladiator=114, duelist=120, rival=142, challenger=208 }, -- 5v5
	[4] = { r1=3, duelist=7, rival=28, challenger=124 }, -- rbg
}
