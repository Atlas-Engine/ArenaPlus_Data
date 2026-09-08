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
-- Region tbc-eu, season 3, cutoffs last changed 2026-09-07 10:08 PM, last checked 2026-09-08 10:07 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-09-07 10:08 PM",
	checked = "2026-09-08 10:07 AM",
	checkedEpoch = 1788876476,

	[1] = { r1=2202, gladiator=2029, duelist=1861, rival=1701, challenger=1500 }, -- 2v2
	[2] = { r1=2094, gladiator=1937, duelist=1806, rival=1685, challenger=1503 }, -- 3v3
	[3] = { r1=2169, gladiator=2028, duelist=1842, rival=1663, challenger=1496 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=20, gladiator=140, duelist=796, rival=3036 }, -- 2v2
	[2] = { r1=22, gladiator=140, duelist=480, rival=1631 }, -- 3v3
	[3] = { r1=36, gladiator=240, duelist=1589 }, -- 5v5
}
