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
-- Region tbc-eu, season 3, cutoffs last changed 2026-09-23 09:13 PM, last checked 2026-09-24 01:58 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-09-23 09:13 PM",
	checked = "2026-09-24 01:58 PM",
	checkedEpoch = 1790272736,

	[1] = { r1=2357, gladiator=2185, duelist=1957, rival=1703, challenger=1486 }, -- 2v2
	[2] = { r1=2262, gladiator=2119, duelist=1897, rival=1702, challenger=1500 }, -- 3v3
	[3] = { r1=2291, gladiator=2128, duelist=1886, rival=1693, challenger=1482 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=39, gladiator=251, duelist=1527 }, -- 2v2
	[2] = { r1=23, gladiator=152, duelist=976, rival=3788 }, -- 3v3
	[3] = { r1=69, gladiator=469, duelist=3069 }, -- 5v5
}
