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
-- Region us, season 14, cutoffs last changed 2026-10-24 01:41 AM, last checked 2026-10-24 04:59 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-10-24 01:41 AM",
	checked = "2026-10-24 04:59 PM",
	checkedEpoch = 1792875567,

	[1] = { r1=2672, gladiator=2374, duelist=2200, rival=1872, challenger=1056 }, -- 2v2
	[2] = { r1=2526, gladiator=2070, duelist=1970, rival=1665, challenger=864 }, -- 3v3
	[3] = { r1=2197, gladiator=1704, duelist=1663, rival=1437, challenger=672 }, -- 5v5
	[4] = { r1=2043, duelist=1887, rival=1764, challenger=1484 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=29, gladiator=214, duelist=592, rival=1967 }, -- 2v2
	[2] = { r1=27, gladiator=197, duelist=235, rival=365, challenger=767 }, -- 3v3
	[3] = { r1=15, gladiator=105, duelist=110, rival=129, challenger=213 }, -- 5v5
	[4] = { r1=3, duelist=7, rival=25, challenger=117 }, -- rbg
}
