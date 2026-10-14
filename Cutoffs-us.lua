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
-- Region us, season 14, cutoffs last changed 2026-10-14 10:19 AM, last checked 2026-10-14 04:59 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-10-14 10:19 AM",
	checked = "2026-10-14 04:59 PM",
	checkedEpoch = 1792011568,

	[1] = { r1=2639, gladiator=2336, duelist=2153, rival=1857, challenger=1056 }, -- 2v2
	[2] = { r1=2480, gladiator=2045, duelist=1930, rival=1648, challenger=864 }, -- 3v3
	[3] = { r1=2197, gladiator=1704, duelist=1657, rival=1431, challenger=576 }, -- 5v5
	[4] = { r1=2043, duelist=1887, rival=1764, challenger=1467 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=29, gladiator=211, duelist=582, rival=1868 }, -- 2v2
	[2] = { r1=25, gladiator=199, duelist=238, rival=349, challenger=741 }, -- 3v3
	[3] = { r1=15, gladiator=107, duelist=112, rival=131, challenger=224 }, -- 5v5
	[4] = { r1=3, duelist=7, rival=26, challenger=123 }, -- rbg
}
