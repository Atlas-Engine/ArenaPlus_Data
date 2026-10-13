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
-- Region tbc-us, season 3, cutoffs last changed 2026-10-12 10:18 AM, last checked 2026-10-13 08:58 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-10-12 10:18 AM",
	checked = "2026-10-13 08:58 AM",
	checkedEpoch = 1791896295,

	[1] = { r1=2398, gladiator=2205, duelist=1939, rival=1680, challenger=1488 }, -- 2v2
	[2] = { r1=2293, gladiator=2149, duelist=1919, rival=1700, challenger=1499 }, -- 3v3
	[3] = { r1=2359, gladiator=2147, duelist=1877, rival=1691, challenger=1486 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=33, gladiator=212, duelist=1286, rival=4925 }, -- 2v2
	[2] = { r1=23, gladiator=152, duelist=955, rival=3702 }, -- 3v3
	[3] = { r1=64, gladiator=459, duelist=2821 }, -- 5v5
}
