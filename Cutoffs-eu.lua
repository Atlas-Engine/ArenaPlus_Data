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
-- Region eu, season 14, cutoffs last changed 2026-09-30 09:16 PM, last checked 2026-10-01 08:00 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["eu"] = {
	region  = "eu",
	updated = "2026-09-30 09:16 PM",
	checked = "2026-10-01 08:00 AM",
	checkedEpoch = 1790856003,

	[1] = { r1=2601, gladiator=2357, duelist=2205, rival=1882, challenger=1046 }, -- 2v2
	[2] = { r1=2470, gladiator=1746, duelist=1698, rival=1567, challenger=768 }, -- 3v3
	[3] = { r1=480, gladiator=1, duelist=1, rival=1, challenger=1 }, -- 5v5
	[4] = { r1=2377, duelist=2094, rival=1860, challenger=1516 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["eu"] = {
	[1] = { r1=30, gladiator=194, duelist=526, rival=1938 }, -- 2v2
	[2] = { r1=34, gladiator=218, duelist=236, rival=296, challenger=575 }, -- 3v3
	[3] = { r1=22 }, -- 5v5
	[4] = { r1=6, duelist=24, rival=105, challenger=437 }, -- rbg
}
