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
-- Region us, season 14, cutoffs last changed 2026-09-11 10:15 AM, last checked 2026-09-11 09:00 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-09-11 10:15 AM",
	checked = "2026-09-11 09:00 PM",
	checkedEpoch = 1789174813,

	[1] = { r1=2561, gladiator=2240, duelist=2083, rival=1812, challenger=1054 }, -- 2v2
	[2] = { r1=2401, gladiator=1922, duelist=1849, rival=1619, challenger=864 }, -- 3v3
	[3] = { r1=2059, gladiator=1151, duelist=1149, rival=960, challenger=480 }, -- 5v5
	[4] = { r1=2019, duelist=1851, rival=1750, challenger=1450 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=29, gladiator=203, duelist=504, rival=1670 }, -- 2v2
	[2] = { r1=23, gladiator=188, duelist=215, rival=314, challenger=649 }, -- 3v3
	[3] = { r1=15, gladiator=112, duelist=115, rival=135, challenger=200 }, -- 5v5
	[4] = { r1=3, duelist=8, rival=24, challenger=119 }, -- rbg
}
