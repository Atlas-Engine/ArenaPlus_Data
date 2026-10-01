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
-- Region tbc-eu, season 3, cutoffs last changed 2026-09-30 09:14 PM, last checked 2026-10-01 06:58 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-09-30 09:14 PM",
	checked = "2026-10-01 06:58 AM",
	checkedEpoch = 1790852335,

	[1] = { r1=2410, gladiator=2224, duelist=1976, rival=1703, challenger=1483 }, -- 2v2
	[2] = { r1=2311, gladiator=2150, duelist=1910, rival=1703, challenger=1499 }, -- 3v3
	[3] = { r1=2320, gladiator=2155, duelist=1895, rival=1698, challenger=1480 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=39, gladiator=262, duelist=1649 }, -- 2v2
	[2] = { r1=25, gladiator=168, duelist=1073, rival=4142 }, -- 3v3
	[3] = { r1=73, gladiator=483, duelist=3202 }, -- 5v5
}
