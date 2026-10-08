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
-- Region us, season 14, cutoffs last changed 2026-10-07 10:32 AM, last checked 2026-10-08 09:59 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-10-07 10:32 AM",
	checked = "2026-10-08 09:59 AM",
	checkedEpoch = 1791467967,

	[1] = { r1=2613, gladiator=2302, duelist=2131, rival=1843, challenger=1056 }, -- 2v2
	[2] = { r1=2453, gladiator=2045, duelist=1943, rival=1652, challenger=864 }, -- 3v3
	[3] = { r1=2192, gladiator=1653, duelist=1619, rival=1245, challenger=576 }, -- 5v5
	[4] = { r1=2039, duelist=1887, rival=1757, challenger=1453 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=28, gladiator=229, duelist=577, rival=1853 }, -- 2v2
	[2] = { r1=25, gladiator=190, duelist=219, rival=345, challenger=727 }, -- 3v3
	[3] = { r1=15, gladiator=107, duelist=113, rival=137, challenger=218 }, -- 5v5
	[4] = { r1=3, duelist=7, rival=26, challenger=123 }, -- rbg
}
