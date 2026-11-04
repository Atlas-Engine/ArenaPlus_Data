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
-- Region tbc-eu, season 3, cutoffs last changed 2026-11-02 09:32 PM, last checked 2026-11-04 07:59 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-11-02 09:32 PM",
	checked = "2026-11-04 07:59 AM",
	checkedEpoch = 1793797141,

	[1] = { r1=2580, gladiator=2367, duelist=2005, rival=1700, challenger=1475 }, -- 2v2
	[2] = { r1=2373, gladiator=2202, duelist=1929, rival=1702, challenger=1495 }, -- 3v3
	[3] = { r1=2385, gladiator=2188, duelist=1903, rival=1700, challenger=1479 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=47, gladiator=313, duelist=1997 }, -- 2v2
	[2] = { r1=31, gladiator=211, duelist=1323 }, -- 3v3
	[3] = { r1=84, gladiator=530, duelist=3515 }, -- 5v5
}
