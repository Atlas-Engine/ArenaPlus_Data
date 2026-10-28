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
-- Region us, season 14, cutoffs last changed 2026-10-27 01:41 AM, last checked 2026-10-27 07:59 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-10-27 01:41 AM",
	checked = "2026-10-27 07:59 PM",
	checkedEpoch = 1793145569,

	[1] = { r1=2674, gladiator=2399, duelist=2203, rival=1880, challenger=1104 }, -- 2v2
	[2] = { r1=2552, gladiator=2086, duelist=1993, rival=1668, challenger=864 }, -- 3v3
	[3] = { r1=2197, gladiator=1718, duelist=1668, rival=1437, challenger=672 }, -- 5v5
	[4] = { r1=2043, duelist=1887, rival=1764, challenger=1484 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=32, gladiator=208, duelist=594, rival=1988 }, -- 2v2
	[2] = { r1=27, gladiator=200, duelist=234, rival=365, challenger=779 }, -- 3v3
	[3] = { r1=15, gladiator=104, duelist=109, rival=129, challenger=213 }, -- 5v5
	[4] = { r1=3, duelist=7, rival=25, challenger=117 }, -- rbg
}
