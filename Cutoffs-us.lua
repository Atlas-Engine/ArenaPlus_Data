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
-- Region us, season 14, cutoffs last changed 2026-10-23 01:41 AM, last checked 2026-10-23 01:59 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-10-23 01:41 AM",
	checked = "2026-10-23 01:59 AM",
	checkedEpoch = 1792735168,

	[1] = { r1=2669, gladiator=2374, duelist=2200, rival=1871, challenger=1056 }, -- 2v2
	[2] = { r1=2526, gladiator=2070, duelist=1967, rival=1665, challenger=864 }, -- 3v3
	[3] = { r1=2197, gladiator=1704, duelist=1663, rival=1437, challenger=672 }, -- 5v5
	[4] = { r1=2043, duelist=1887, rival=1757, challenger=1453 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=29, gladiator=214, duelist=576, rival=1938 }, -- 2v2
	[2] = { r1=27, gladiator=197, duelist=230, rival=361, challenger=765 }, -- 3v3
	[3] = { r1=15, gladiator=105, duelist=109, rival=129, challenger=210 }, -- 5v5
	[4] = { r1=3, duelist=7, rival=26, challenger=123 }, -- rbg
}
