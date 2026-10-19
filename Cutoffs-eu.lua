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
-- Region eu, season 14, cutoffs last changed 2026-10-18 09:16 PM, last checked 2026-10-19 12:00 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["eu"] = {
	region  = "eu",
	updated = "2026-10-18 09:16 PM",
	checked = "2026-10-19 12:00 AM",
	checkedEpoch = 1792382409,

	[1] = { r1=2656, gladiator=2418, duelist=2230, rival=1909, challenger=1048 }, -- 2v2
	[2] = { r1=2545, gladiator=1885, duelist=1815, rival=1626, challenger=768 }, -- 3v3
	[3] = { r1=576, gladiator=96, duelist=96, rival=96, challenger=96 }, -- 5v5
	[4] = { r1=2377, duelist=2159, rival=1872, challenger=1523 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["eu"] = {
	[1] = { r1=25, gladiator=203, duelist=587, rival=2090 }, -- 2v2
	[2] = { r1=30, gladiator=211, duelist=238, rival=310, challenger=616 }, -- 3v3
	[3] = { r1=19, gladiator=114, duelist=114, rival=114, challenger=114 }, -- 5v5
	[4] = { r1=9, duelist=25, rival=105, challenger=438 }, -- rbg
}
