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
-- Region tbc-us, season 3, cutoffs last changed 2026-09-23 10:18 AM, last checked 2026-09-23 01:58 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-09-23 10:18 AM",
	checked = "2026-09-23 01:58 PM",
	checkedEpoch = 1790186295,

	[1] = { r1=2306, gladiator=2148, duelist=1911, rival=1690, challenger=1491 }, -- 2v2
	[2] = { r1=2284, gladiator=2115, duelist=1895, rival=1700, challenger=1500 }, -- 3v3
	[3] = { r1=2316, gladiator=2132, duelist=1871, rival=1683, challenger=1487 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=28, gladiator=183, duelist=1108, rival=4264 }, -- 2v2
	[2] = { r1=23, gladiator=138, duelist=812, rival=3190 }, -- 3v3
	[3] = { r1=69, gladiator=413, duelist=2646 }, -- 5v5
}
