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
-- Region us, season 14, cutoffs last changed 2026-09-12 10:30 AM, last checked 2026-09-13 06:00 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-09-12 10:30 AM",
	checked = "2026-09-13 06:00 AM",
	checkedEpoch = 1789293612,

	[1] = { r1=2569, gladiator=2243, duelist=2087, rival=1812, challenger=1056 }, -- 2v2
	[2] = { r1=2406, gladiator=1922, duelist=1849, rival=1627, challenger=864 }, -- 3v3
	[3] = { r1=2087, gladiator=1152, duelist=1150, rival=960, challenger=480 }, -- 5v5
	[4] = { r1=2017, duelist=1875, rival=1752, challenger=1451 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=30, gladiator=203, duelist=514, rival=1703 }, -- 2v2
	[2] = { r1=25, gladiator=192, duelist=219, rival=314, challenger=656 }, -- 3v3
	[3] = { r1=15, gladiator=115, duelist=118, rival=138, challenger=205 }, -- 5v5
	[4] = { r1=3, duelist=7, rival=23, challenger=120 }, -- rbg
}
