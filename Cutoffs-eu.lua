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
-- Region eu, season 14, cutoffs last changed 2026-09-10 09:25 PM, last checked 2026-09-11 01:55 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["eu"] = {
	region  = "eu",
	updated = "2026-09-10 09:25 PM",
	checked = "2026-09-11 01:55 PM",
	checkedEpoch = 1789149322,

	[1] = { r1=2560, gladiator=2307, duelist=2154, rival=1857, challenger=1044 }, -- 2v2
	[2] = { r1=2393, gladiator=1696, duelist=1637, rival=1531, challenger=768 }, -- 3v3
	[3] = { r1=288, gladiator=1, duelist=1, rival=1, challenger=1 }, -- 5v5
	[4] = { r1=2377, duelist=2064, rival=1846, challenger=1513 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["eu"] = {
	[1] = { r1=27, gladiator=191, duelist=507, rival=1776 }, -- 2v2
	[2] = { r1=28, gladiator=199, duelist=215, rival=269, challenger=509 }, -- 3v3
	[3] = { r1=17 }, -- 5v5
	[4] = { r1=4, duelist=23, rival=105, challenger=433 }, -- rbg
}
