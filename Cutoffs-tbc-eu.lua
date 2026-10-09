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
-- Region tbc-eu, season 3, cutoffs last changed 2026-10-08 09:33 PM, last checked 2026-10-09 06:58 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-10-08 09:33 PM",
	checked = "2026-10-09 06:58 AM",
	checkedEpoch = 1791543538,

	[1] = { r1=2450, gladiator=2258, duelist=1990, rival=1702, challenger=1480 }, -- 2v2
	[2] = { r1=2338, gladiator=2168, duelist=1917, rival=1702, challenger=1498 }, -- 3v3
	[3] = { r1=2340, gladiator=2159, duelist=1899, rival=1700, challenger=1480 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=41, gladiator=288, duelist=1756 }, -- 2v2
	[2] = { r1=27, gladiator=178, duelist=1148, rival=4519 }, -- 3v3
	[3] = { r1=72, gladiator=498, duelist=3311 }, -- 5v5
}
