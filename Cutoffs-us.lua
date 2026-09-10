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
-- Region us, season 14, cutoffs last changed 2026-09-09 10:15 AM, last checked 2026-09-09 10:00 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-09-09 10:15 AM",
	checked = "2026-09-09 10:00 PM",
	checkedEpoch = 1789005614,

	[1] = { r1=2535, gladiator=2240, duelist=2075, rival=1810, challenger=1055 }, -- 2v2
	[2] = { r1=2400, gladiator=1922, duelist=1849, rival=1618, challenger=864 }, -- 3v3
	[3] = { r1=2030, gladiator=1150, duelist=1056, rival=864, challenger=480 }, -- 5v5
	[4] = { r1=2019, duelist=1851, rival=1738, challenger=1449 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=30, gladiator=200, duelist=510, rival=1657 }, -- 2v2
	[2] = { r1=23, gladiator=187, duelist=215, rival=312, challenger=647 }, -- 3v3
	[3] = { r1=15, gladiator=113, duelist=119, rival=137, challenger=198 }, -- 5v5
	[4] = { r1=3, duelist=8, rival=25, challenger=119 }, -- rbg
}
