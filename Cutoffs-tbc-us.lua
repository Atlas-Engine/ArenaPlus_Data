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
-- Region tbc-us, season 3, cutoffs last changed 2026-10-14 10:23 AM, last checked 2026-10-14 05:58 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-10-14 10:23 AM",
	checked = "2026-10-14 05:58 PM",
	checkedEpoch = 1792015095,

	[1] = { r1=2400, gladiator=2207, duelist=1938, rival=1679, challenger=1488 }, -- 2v2
	[2] = { r1=2289, gladiator=2149, duelist=1919, rival=1700, challenger=1499 }, -- 3v3
	[3] = { r1=2356, gladiator=2153, duelist=1877, rival=1689, challenger=1486 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=34, gladiator=207, duelist=1293, rival=4969 }, -- 2v2
	[2] = { r1=25, gladiator=152, duelist=954, rival=3720 }, -- 3v3
	[3] = { r1=67, gladiator=435, duelist=2828 }, -- 5v5
}
