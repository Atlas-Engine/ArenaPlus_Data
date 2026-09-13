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
-- Region eu, season 14, cutoffs last changed 2026-09-11 09:40 PM, last checked 2026-09-12 07:40 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["eu"] = {
	region  = "eu",
	updated = "2026-09-11 09:40 PM",
	checked = "2026-09-12 07:40 PM",
	checkedEpoch = 1789256418,

	[1] = { r1=2560, gladiator=2308, duelist=2163, rival=1858, challenger=1044 }, -- 2v2
	[2] = { r1=2401, gladiator=1696, duelist=1637, rival=1531, challenger=768 }, -- 3v3
	[3] = { r1=288, gladiator=1, duelist=1, rival=1, challenger=1 }, -- 5v5
	[4] = { r1=2377, duelist=2077, rival=1848, challenger=1513 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["eu"] = {
	[1] = { r1=28, gladiator=191, duelist=500, rival=1803 }, -- 2v2
	[2] = { r1=31, gladiator=200, duelist=216, rival=273, challenger=515 }, -- 3v3
	[3] = { r1=17 }, -- 5v5
	[4] = { r1=4, duelist=23, rival=106, challenger=435 }, -- rbg
}
