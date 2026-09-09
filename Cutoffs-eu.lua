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
-- Region eu, season 14, cutoffs last changed 2026-09-07 09:25 PM, last checked 2026-09-09 04:55 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["eu"] = {
	region  = "eu",
	updated = "2026-09-07 09:25 PM",
	checked = "2026-09-09 04:55 AM",
	checkedEpoch = 1788944147,

	[1] = { r1=2549, gladiator=2304, duelist=2155, rival=1851, challenger=1045 }, -- 2v2
	[2] = { r1=2376, gladiator=1698, duelist=1637, rival=1531, challenger=768 }, -- 3v3
	[3] = { r1=288, gladiator=1, duelist=1, rival=1, challenger=1 }, -- 5v5
	[4] = { r1=2377, duelist=2050, rival=1845, challenger=1510 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["eu"] = {
	[1] = { r1=28, gladiator=190, duelist=494, rival=1780 }, -- 2v2
	[2] = { r1=28, gladiator=193, duelist=211, rival=267, challenger=506 }, -- 3v3
	[3] = { r1=17 }, -- 5v5
	[4] = { r1=4, duelist=23, rival=104, challenger=435 }, -- rbg
}
