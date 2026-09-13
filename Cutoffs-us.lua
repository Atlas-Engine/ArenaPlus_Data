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
-- Region us, season 14, cutoffs last changed 2026-09-12 10:30 AM, last checked 2026-09-12 08:00 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-09-12 10:30 AM",
	checked = "2026-09-12 08:00 PM",
	checkedEpoch = 1789257613,

	[1] = { r1=2569, gladiator=2243, duelist=2087, rival=1812, challenger=1056 }, -- 2v2
	[2] = { r1=2406, gladiator=1922, duelist=1849, rival=1627, challenger=864 }, -- 3v3
	[3] = { r1=2087, gladiator=1152, duelist=1150, rival=960, challenger=480 }, -- 5v5
	[4] = { r1=2017, duelist=1875, rival=1752, challenger=1451 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=28, gladiator=202, duelist=509, rival=1695 }, -- 2v2
	[2] = { r1=23, gladiator=189, duelist=217, rival=310, challenger=649 }, -- 3v3
	[3] = { r1=15, gladiator=115, duelist=118, rival=137, challenger=202 }, -- 5v5
	[4] = { r1=3, duelist=7, rival=24, challenger=120 }, -- rbg
}
