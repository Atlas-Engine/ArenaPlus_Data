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
-- Region eu, season 14, cutoffs last changed 2026-09-02 09:25 PM, last checked 2026-09-03 05:55 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["eu"] = {
	region  = "eu",
	updated = "2026-09-02 09:25 PM",
	checked = "2026-09-03 05:55 AM",

	[1] = { r1=2525, gladiator=2290, duelist=2141, rival=1849, challenger=1049 }, -- 2v2
	[2] = { r1=2325, gladiator=1679, duelist=1634, rival=1530, challenger=860 }, -- 3v3
	[3] = { r1=288, gladiator=1, duelist=1, rival=1, challenger=1 }, -- 5v5
	[4] = { r1=2359, duelist=2048, rival=1841, challenger=1510 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["eu"] = {
	[1] = { r1=30, gladiator=190 }, -- 2v2
	[2] = { r1=32, gladiator=188 }, -- 3v3
	[3] = { r1=17, gladiator=26 }, -- 5v5
	[4] = { r1=3 }, -- rbg
}
