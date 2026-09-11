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
-- Region tbc-us, season 3, cutoffs last changed 2026-09-10 11:13 AM, last checked 2026-09-11 01:43 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-09-10 11:13 AM",
	checked = "2026-09-11 01:43 AM",
	checkedEpoch = 1789105391,

	[1] = { r1=2199, gladiator=2058, duelist=1863, rival=1676, challenger=1498 }, -- 2v2
	[2] = { r1=2177, gladiator=2006, duelist=1844, rival=1690, challenger=1500 }, -- 3v3
	[3] = { r1=2255, gladiator=2078, duelist=1837, rival=1644, challenger=1493 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=22, gladiator=145, duelist=832, rival=3185 }, -- 2v2
	[2] = { r1=28, gladiator=153, duelist=630, rival=2169 }, -- 3v3
	[3] = { r1=53, gladiator=363, duelist=2253 }, -- 5v5
}
