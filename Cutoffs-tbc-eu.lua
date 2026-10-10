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
-- Region tbc-eu, season 3, cutoffs last changed 2026-10-09 09:33 PM, last checked 2026-10-10 12:59 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-10-09 09:33 PM",
	checked = "2026-10-10 12:59 PM",
	checkedEpoch = 1791651542,

	[1] = { r1=2451, gladiator=2262, duelist=1993, rival=1702, challenger=1479 }, -- 2v2
	[2] = { r1=2339, gladiator=2168, duelist=1919, rival=1702, challenger=1497 }, -- 3v3
	[3] = { r1=2340, gladiator=2159, duelist=1900, rival=1700, challenger=1480 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=42, gladiator=296, duelist=1765 }, -- 2v2
	[2] = { r1=27, gladiator=181, duelist=1152, rival=4572 }, -- 3v3
	[3] = { r1=74, gladiator=502, duelist=3302 }, -- 5v5
}
