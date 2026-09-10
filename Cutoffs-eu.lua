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
-- Region eu, season 14, cutoffs last changed 2026-09-09 09:25 PM, last checked 2026-09-10 03:55 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["eu"] = {
	region  = "eu",
	updated = "2026-09-09 09:25 PM",
	checked = "2026-09-10 03:55 PM",
	checkedEpoch = 1789070133,

	[1] = { r1=2555, gladiator=2306, duelist=2153, rival=1853, challenger=1044 }, -- 2v2
	[2] = { r1=2376, gladiator=1696, duelist=1634, rival=1531, challenger=768 }, -- 3v3
	[3] = { r1=288, gladiator=1, duelist=1, rival=1, challenger=1 }, -- 5v5
	[4] = { r1=2377, duelist=2063, rival=1846, challenger=1513 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["eu"] = {
	[1] = { r1=27, gladiator=192, duelist=504, rival=1793 }, -- 2v2
	[2] = { r1=29, gladiator=198, duelist=215, rival=269, challenger=504 }, -- 3v3
	[3] = { r1=17 }, -- 5v5
	[4] = { r1=4, duelist=23, rival=105, challenger=431 }, -- rbg
}
