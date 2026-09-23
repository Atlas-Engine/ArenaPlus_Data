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
-- Region us, season 14, cutoffs last changed 2026-09-21 10:14 AM, last checked 2026-09-23 07:59 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-09-21 10:14 AM",
	checked = "2026-09-23 07:59 AM",
	checkedEpoch = 1790164767,

	[1] = { r1=2564, gladiator=2261, duelist=2101, rival=1822, challenger=1056 }, -- 2v2
	[2] = { r1=2449, gladiator=1991, duelist=1884, rival=1630, challenger=864 }, -- 3v3
	[3] = { r1=2093, gladiator=1245, duelist=1151, rival=960, challenger=480 }, -- 5v5
	[4] = { r1=2039, duelist=1887, rival=1752, challenger=1450 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=30, gladiator=211, duelist=548, rival=1787 }, -- 2v2
	[2] = { r1=25, gladiator=185, duelist=223, rival=321, challenger=675 }, -- 3v3
	[3] = { r1=17, gladiator=116, duelist=121, rival=150, challenger=222 }, -- 5v5
	[4] = { r1=3, duelist=7, rival=26, challenger=123 }, -- rbg
}
