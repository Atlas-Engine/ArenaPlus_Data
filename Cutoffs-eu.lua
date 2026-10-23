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
-- Region eu, season 14, cutoffs last changed 2026-10-22 10:28 PM, last checked 2026-10-23 12:00 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["eu"] = {
	region  = "eu",
	updated = "2026-10-22 10:28 PM",
	checked = "2026-10-23 12:00 PM",
	checkedEpoch = 1792771202,

	[1] = { r1=2662, gladiator=2419, duelist=2234, rival=1915, challenger=1047 }, -- 2v2
	[2] = { r1=2555, gladiator=1930, duelist=1826, rival=1634, challenger=768 }, -- 3v3
	[3] = { r1=576, gladiator=96, duelist=96, rival=96, challenger=96 }, -- 5v5
	[4] = { r1=2377, duelist=2159, rival=1872, challenger=1523 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["eu"] = {
	[1] = { r1=29, gladiator=209, duelist=600, rival=2110 }, -- 2v2
	[2] = { r1=31, gladiator=209, duelist=239, rival=311, challenger=622 }, -- 3v3
	[3] = { r1=19, gladiator=114, duelist=113, rival=113, challenger=113 }, -- 5v5
	[4] = { r1=9, duelist=25, rival=106, challenger=436 }, -- rbg
}
