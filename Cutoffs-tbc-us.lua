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
-- Region tbc-us, season 3, cutoffs last changed 2026-09-24 10:18 AM, last checked 2026-09-25 06:58 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-09-24 10:18 AM",
	checked = "2026-09-25 06:58 AM",
	checkedEpoch = 1790333895,

	[1] = { r1=2321, gladiator=2153, duelist=1913, rival=1689, challenger=1491 }, -- 2v2
	[2] = { r1=2278, gladiator=2119, duelist=1896, rival=1700, challenger=1500 }, -- 3v3
	[3] = { r1=2316, gladiator=2136, duelist=1871, rival=1684, challenger=1487 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=32, gladiator=195, duelist=1135, rival=4331 }, -- 2v2
	[2] = { r1=23, gladiator=144, duelist=834, rival=3242 }, -- 3v3
	[3] = { r1=75, gladiator=408, duelist=2669 }, -- 5v5
}
