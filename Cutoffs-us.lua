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
-- Region us, season 14, cutoffs last changed 2026-10-12 10:34 AM, last checked 2026-10-14 03:59 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-10-12 10:34 AM",
	checked = "2026-10-14 03:59 AM",
	checkedEpoch = 1791964768,

	[1] = { r1=2632, gladiator=2321, duelist=2153, rival=1852, challenger=1056 }, -- 2v2
	[2] = { r1=2454, gladiator=2047, duelist=1930, rival=1649, challenger=864 }, -- 3v3
	[3] = { r1=2197, gladiator=1701, duelist=1644, rival=1431, challenger=576 }, -- 5v5
	[4] = { r1=2043, duelist=1887, rival=1764, challenger=1467 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=32, gladiator=232, duelist=583, rival=1900 }, -- 2v2
	[2] = { r1=32, gladiator=194, duelist=238, rival=348, challenger=739 }, -- 3v3
	[3] = { r1=15, gladiator=108, duelist=113, rival=131, challenger=224 }, -- 5v5
	[4] = { r1=3, duelist=7, rival=26, challenger=123 }, -- rbg
}
