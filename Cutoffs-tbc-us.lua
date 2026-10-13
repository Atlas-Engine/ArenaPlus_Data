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
-- Region tbc-us, season 3, cutoffs last changed 2026-10-12 10:18 AM, last checked 2026-10-13 02:58 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-10-12 10:18 AM",
	checked = "2026-10-13 02:58 AM",
	checkedEpoch = 1791874695,

	[1] = { r1=2398, gladiator=2205, duelist=1939, rival=1680, challenger=1488 }, -- 2v2
	[2] = { r1=2293, gladiator=2149, duelist=1919, rival=1700, challenger=1499 }, -- 3v3
	[3] = { r1=2359, gladiator=2147, duelist=1877, rival=1691, challenger=1486 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=32, gladiator=209, duelist=1287, rival=4918 }, -- 2v2
	[2] = { r1=24, gladiator=152, duelist=955, rival=3697 }, -- 3v3
	[3] = { r1=62, gladiator=454, duelist=2816 }, -- 5v5
}
