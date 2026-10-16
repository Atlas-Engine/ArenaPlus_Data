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
-- Region tbc-us, season 3, cutoffs last changed 2026-10-15 10:23 AM, last checked 2026-10-16 02:58 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-10-15 10:23 AM",
	checked = "2026-10-16 02:58 AM",
	checkedEpoch = 1792133895,

	[1] = { r1=2406, gladiator=2205, duelist=1941, rival=1679, challenger=1488 }, -- 2v2
	[2] = { r1=2289, gladiator=2148, duelist=1920, rival=1700, challenger=1499 }, -- 3v3
	[3] = { r1=2356, gladiator=2153, duelist=1876, rival=1690, challenger=1486 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=31, gladiator=217, duelist=1301, rival=4994 }, -- 2v2
	[2] = { r1=27, gladiator=153, duelist=961, rival=3734 }, -- 3v3
	[3] = { r1=67, gladiator=440, duelist=2846 }, -- 5v5
}
