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
-- Region us, season 14, cutoffs last changed 2026-09-14 10:15 AM, last checked 2026-09-15 08:57 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-09-14 10:15 AM",
	checked = "2026-09-15 08:57 PM",
	checkedEpoch = 1789520231,

	[1] = { r1=2571, gladiator=2250, duelist=2095, rival=1815, challenger=1055 }, -- 2v2
	[2] = { r1=2414, gladiator=1930, duelist=1852, rival=1631, challenger=864 }, -- 3v3
	[3] = { r1=2087, gladiator=1152, duelist=1150, rival=960, challenger=480 }, -- 5v5
	[4] = { r1=2017, duelist=1875, rival=1751, challenger=1423 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=25, gladiator=208, duelist=510, rival=1717 }, -- 2v2
	[2] = { r1=24, gladiator=190, duelist=219, rival=313, challenger=658 }, -- 3v3
	[3] = { r1=14, gladiator=115, duelist=118, rival=140, challenger=207 }, -- 5v5
	[4] = { r1=3, duelist=7, rival=26, challenger=123 }, -- rbg
}
