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
-- Region us, season 14, cutoffs last changed 2026-10-10 10:32 AM, last checked 2026-10-10 11:59 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-10-10 10:32 AM",
	checked = "2026-10-10 11:59 AM",
	checkedEpoch = 1791647967,

	[1] = { r1=2613, gladiator=2312, duelist=2137, rival=1849, challenger=1056 }, -- 2v2
	[2] = { r1=2454, gladiator=2045, duelist=1943, rival=1657, challenger=864 }, -- 3v3
	[3] = { r1=2197, gladiator=1691, duelist=1644, rival=1431, challenger=576 }, -- 5v5
	[4] = { r1=2039, duelist=1887, rival=1757, challenger=1453 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=28, gladiator=221, duelist=586, rival=1847 }, -- 2v2
	[2] = { r1=28, gladiator=193, duelist=222, rival=340, challenger=726 }, -- 3v3
	[3] = { r1=15, gladiator=106, duelist=111, rival=131, challenger=219 }, -- 5v5
	[4] = { r1=3, duelist=7, rival=26, challenger=123 }, -- rbg
}
