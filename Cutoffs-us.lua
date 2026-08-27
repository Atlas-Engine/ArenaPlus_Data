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
-- Region us, season 14, cutoffs last changed 2026-08-27 10:30 AM, last checked 2026-08-27 02:45 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-08-27 10:30 AM",
	checked = "2026-08-27 02:45 PM",

	[1] = { r1=2495, gladiator=2206, duelist=2044, rival=1800, challenger=1091 }, -- 2v2
	[2] = { r1=2351, gladiator=1855, duelist=1754, rival=1603, challenger=864 }, -- 3v3
	[3] = { r1=1985, gladiator=672, duelist=672, rival=576, challenger=384 }, -- 5v5
	[4] = { r1=1994, duelist=1826, rival=1697, challenger=1461 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=31, gladiator=205 }, -- 2v2
	[2] = { r1=25, gladiator=189 }, -- 3v3
	[3] = { r1=15, gladiator=120 }, -- 5v5
	[4] = { r1=3 }, -- rbg
}
