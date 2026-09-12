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
-- Region tbc-us, season 3, cutoffs last changed 2026-09-11 10:43 AM, last checked 2026-09-11 08:43 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-09-11 10:43 AM",
	checked = "2026-09-11 08:43 PM",
	checkedEpoch = 1789173791,

	[1] = { r1=2213, gladiator=2072, duelist=1866, rival=1679, challenger=1497 }, -- 2v2
	[2] = { r1=2208, gladiator=2014, duelist=1852, rival=1693, challenger=1500 }, -- 3v3
	[3] = { r1=2257, gladiator=2094, duelist=1842, rival=1648, challenger=1493 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=25, gladiator=149, duelist=856, rival=3251 }, -- 2v2
	[2] = { r1=22, gladiator=148, duelist=605, rival=2229 }, -- 3v3
	[3] = { r1=54, gladiator=337, duelist=2243 }, -- 5v5
}
