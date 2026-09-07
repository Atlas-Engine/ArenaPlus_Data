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
-- Region eu, season 14, cutoffs last changed 2026-09-06 09:25 PM, last checked 2026-09-07 05:55 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["eu"] = {
	region  = "eu",
	updated = "2026-09-06 09:25 PM",
	checked = "2026-09-07 05:55 PM",
	checkedEpoch = 1788818133,

	[1] = { r1=2549, gladiator=2302, duelist=2155, rival=1851, challenger=1046 }, -- 2v2
	[2] = { r1=2374, gladiator=1698, duelist=1637, rival=1531, challenger=768 }, -- 3v3
	[3] = { r1=288, gladiator=1, duelist=1, rival=1, challenger=1 }, -- 5v5
	[4] = { r1=2367, duelist=2048, rival=1845, challenger=1510 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["eu"] = {
	[1] = { r1=28, gladiator=187, duelist=481, rival=1760 }, -- 2v2
	[2] = { r1=30, gladiator=190, duelist=208, rival=260, challenger=500 }, -- 3v3
	[3] = { r1=17 }, -- 5v5
	[4] = { r1=3, duelist=23, rival=104, challenger=432 }, -- rbg
}
