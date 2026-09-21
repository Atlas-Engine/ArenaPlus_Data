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
-- Region tbc-us, season 3, cutoffs last changed 2026-09-21 10:13 AM, last checked 2026-09-21 04:58 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-09-21 10:13 AM",
	checked = "2026-09-21 04:58 PM",
	checkedEpoch = 1790024296,

	[1] = { r1=2306, gladiator=2142, duelist=1908, rival=1688, challenger=1492 }, -- 2v2
	[2] = { r1=2261, gladiator=2112, duelist=1893, rival=1701, challenger=1500 }, -- 3v3
	[3] = { r1=2303, gladiator=2126, duelist=1867, rival=1679, challenger=1487 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=29, gladiator=181, duelist=1083, rival=4191 }, -- 2v2
	[2] = { r1=24, gladiator=136, duelist=794, rival=3089 }, -- 3v3
	[3] = { r1=68, gladiator=400, duelist=2594 }, -- 5v5
}
