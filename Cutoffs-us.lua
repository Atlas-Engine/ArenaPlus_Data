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
-- Region us, season 14, cutoffs last changed 2026-10-19 10:19 AM, last checked 2026-10-19 04:59 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-10-19 10:19 AM",
	checked = "2026-10-19 04:59 PM",
	checkedEpoch = 1792443568,

	[1] = { r1=2665, gladiator=2369, duelist=2182, rival=1864, challenger=1056 }, -- 2v2
	[2] = { r1=2526, gladiator=2069, duelist=1970, rival=1665, challenger=864 }, -- 3v3
	[3] = { r1=2199, gladiator=1725, duelist=1663, rival=1437, challenger=672 }, -- 5v5
	[4] = { r1=2043, duelist=1887, rival=1764, challenger=1467 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=29, gladiator=208, duelist=577, rival=1912 }, -- 2v2
	[2] = { r1=26, gladiator=199, duelist=230, rival=355, challenger=766 }, -- 3v3
	[3] = { r1=15, gladiator=106, duelist=112, rival=133, challenger=214 }, -- 5v5
	[4] = { r1=3, duelist=7, rival=26, challenger=123 }, -- rbg
}
