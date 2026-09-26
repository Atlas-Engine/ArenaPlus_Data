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
-- Region us, season 14, cutoffs last changed 2026-09-26 10:18 AM, last checked 2026-09-26 12:59 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-09-26 10:18 AM",
	checked = "2026-09-26 12:59 PM",
	checkedEpoch = 1790441969,

	[1] = { r1=2575, gladiator=2282, duelist=2113, rival=1827, challenger=1072 }, -- 2v2
	[2] = { r1=2449, gladiator=2002, duelist=1888, rival=1644, challenger=864 }, -- 3v3
	[3] = { r1=2192, gladiator=1582, duelist=1561, rival=1150, challenger=576 }, -- 5v5
	[4] = { r1=2039, duelist=1887, rival=1752, challenger=1449 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=30, gladiator=204, duelist=542, rival=1789 }, -- 2v2
	[2] = { r1=26, gladiator=186, duelist=221, rival=324, challenger=693 }, -- 3v3
	[3] = { r1=15, gladiator=110, duelist=115, rival=139, challenger=210 }, -- 5v5
	[4] = { r1=3, duelist=7, rival=26, challenger=123 }, -- rbg
}
