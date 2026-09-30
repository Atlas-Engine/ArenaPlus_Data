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
-- Region tbc-eu, season 3, cutoffs last changed 2026-09-28 09:13 PM, last checked 2026-09-30 01:58 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-09-28 09:13 PM",
	checked = "2026-09-30 01:58 AM",
	checkedEpoch = 1790747939,

	[1] = { r1=2407, gladiator=2217, duelist=1972, rival=1703, challenger=1483 }, -- 2v2
	[2] = { r1=2306, gladiator=2147, duelist=1908, rival=1703, challenger=1499 }, -- 3v3
	[3] = { r1=2302, gladiator=2149, duelist=1893, rival=1698, challenger=1481 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=38, gladiator=271, duelist=1640 }, -- 2v2
	[2] = { r1=26, gladiator=165, duelist=1071, rival=4086 }, -- 3v3
	[3] = { r1=89, gladiator=495, duelist=3235 }, -- 5v5
}
