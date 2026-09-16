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
-- Region tbc-us, season 3, cutoffs last changed 2026-09-14 10:28 AM, last checked 2026-09-15 09:58 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-09-14 10:28 AM",
	checked = "2026-09-15 09:58 PM",
	checkedEpoch = 1789523895,

	[1] = { r1=2261, gladiator=2104, duelist=1889, rival=1692, challenger=1495 }, -- 2v2
	[2] = { r1=2223, gladiator=2078, duelist=1872, rival=1701, challenger=1500 }, -- 3v3
	[3] = { r1=2283, gladiator=2111, duelist=1857, rival=1666, challenger=1490 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=26, gladiator=185, duelist=1009, rival=3798 }, -- 2v2
	[2] = { r1=28, gladiator=149, duelist=753, rival=2780 }, -- 3v3
	[3] = { r1=64, gladiator=401, duelist=2536 }, -- 5v5
}
