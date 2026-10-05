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
-- Region tbc-eu, season 3, cutoffs last changed 2026-10-04 09:15 PM, last checked 2026-10-05 12:59 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-10-04 09:15 PM",
	checked = "2026-10-05 12:59 AM",
	checkedEpoch = 1791176351,

	[1] = { r1=2425, gladiator=2243, duelist=1986, rival=1703, challenger=1481 }, -- 2v2
	[2] = { r1=2326, gladiator=2166, duelist=1912, rival=1703, challenger=1498 }, -- 3v3
	[3] = { r1=2329, gladiator=2155, duelist=1897, rival=1700, challenger=1481 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=40, gladiator=274, duelist=1711 }, -- 2v2
	[2] = { r1=26, gladiator=172, duelist=1113, rival=4268 }, -- 3v3
	[3] = { r1=72, gladiator=494, duelist=3233 }, -- 5v5
}
