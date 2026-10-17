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
-- Region us, season 14, cutoffs last changed 2026-10-17 10:19 AM, last checked 2026-10-17 04:59 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-10-17 10:19 AM",
	checked = "2026-10-17 04:59 PM",
	checkedEpoch = 1792270768,

	[1] = { r1=2656, gladiator=2359, duelist=2163, rival=1862, challenger=1056 }, -- 2v2
	[2] = { r1=2498, gladiator=2069, duelist=1970, rival=1661, challenger=864 }, -- 3v3
	[3] = { r1=2199, gladiator=1725, duelist=1663, rival=1437, challenger=672 }, -- 5v5
	[4] = { r1=2043, duelist=1887, rival=1764, challenger=1467 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=28, gladiator=212, duelist=586, rival=1882 }, -- 2v2
	[2] = { r1=27, gladiator=197, duelist=229, rival=348, challenger=746 }, -- 3v3
	[3] = { r1=15, gladiator=106, duelist=112, rival=132, challenger=214 }, -- 5v5
	[4] = { r1=3, duelist=7, rival=26, challenger=123 }, -- rbg
}
