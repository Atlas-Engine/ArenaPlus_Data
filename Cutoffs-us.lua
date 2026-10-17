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
-- Region us, season 14, cutoffs last changed 2026-10-16 10:19 AM, last checked 2026-10-17 07:59 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-10-16 10:19 AM",
	checked = "2026-10-17 07:59 AM",
	checkedEpoch = 1792238367,

	[1] = { r1=2645, gladiator=2353, duelist=2156, rival=1860, challenger=1056 }, -- 2v2
	[2] = { r1=2498, gladiator=2045, duelist=1970, rival=1652, challenger=864 }, -- 3v3
	[3] = { r1=2199, gladiator=1716, duelist=1663, rival=1431, challenger=576 }, -- 5v5
	[4] = { r1=2043, duelist=1887, rival=1764, challenger=1467 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=33, gladiator=219, duelist=592, rival=1894 }, -- 2v2
	[2] = { r1=27, gladiator=205, duelist=229, rival=356, challenger=747 }, -- 3v3
	[3] = { r1=15, gladiator=107, duelist=112, rival=132, challenger=229 }, -- 5v5
	[4] = { r1=3, duelist=7, rival=26, challenger=123 }, -- rbg
}
