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
-- Region us, season 14, cutoffs last changed 2026-10-02 10:30 AM, last checked 2026-10-02 01:59 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-10-02 10:30 AM",
	checked = "2026-10-02 01:59 PM",
	checkedEpoch = 1790963968,

	[1] = { r1=2602, gladiator=2299, duelist=2124, rival=1836, challenger=1091 }, -- 2v2
	[2] = { r1=2453, gladiator=2030, duelist=1908, rival=1649, challenger=864 }, -- 3v3
	[3] = { r1=2192, gladiator=1653, duelist=1619, rival=1151, challenger=576 }, -- 5v5
	[4] = { r1=2039, duelist=1887, rival=1757, challenger=1453 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=28, gladiator=220, duelist=549, rival=1802 }, -- 2v2
	[2] = { r1=26, gladiator=188, duelist=221, rival=332, challenger=707 }, -- 3v3
	[3] = { r1=15, gladiator=107, duelist=113, rival=141, challenger=219 }, -- 5v5
	[4] = { r1=3, duelist=7, rival=26, challenger=123 }, -- rbg
}
