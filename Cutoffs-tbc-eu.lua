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
-- Region tbc-eu, season 3, cutoffs last changed 2026-09-24 09:13 PM, last checked 2026-09-25 03:58 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-09-24 09:13 PM",
	checked = "2026-09-25 03:58 AM",
	checkedEpoch = 1790323138,

	[1] = { r1=2366, gladiator=2196, duelist=1959, rival=1703, challenger=1486 }, -- 2v2
	[2] = { r1=2262, gladiator=2120, duelist=1900, rival=1703, challenger=1500 }, -- 3v3
	[3] = { r1=2291, gladiator=2131, duelist=1888, rival=1694, challenger=1482 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=39, gladiator=246, duelist=1542 }, -- 2v2
	[2] = { r1=24, gladiator=158, duelist=974, rival=3774 }, -- 3v3
	[3] = { r1=67, gladiator=465, duelist=3064 }, -- 5v5
}
