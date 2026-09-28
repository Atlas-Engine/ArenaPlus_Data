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
-- Region eu, season 14, cutoffs last changed 2026-09-27 09:18 PM, last checked 2026-09-28 07:00 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["eu"] = {
	region  = "eu",
	updated = "2026-09-27 09:18 PM",
	checked = "2026-09-28 07:00 AM",
	checkedEpoch = 1790593202,

	[1] = { r1=2601, gladiator=2352, duelist=2203, rival=1879, challenger=1046 }, -- 2v2
	[2] = { r1=2463, gladiator=1737, duelist=1695, rival=1560, challenger=768 }, -- 3v3
	[3] = { r1=480, gladiator=1, duelist=1, rival=1, challenger=1 }, -- 5v5
	[4] = { r1=2377, duelist=2091, rival=1860, challenger=1520 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["eu"] = {
	[1] = { r1=28, gladiator=199, duelist=524, rival=1918 }, -- 2v2
	[2] = { r1=34, gladiator=212, duelist=230, rival=290, challenger=564 }, -- 3v3
	[3] = { r1=22 }, -- 5v5
	[4] = { r1=5, duelist=23, rival=103, challenger=433 }, -- rbg
}
