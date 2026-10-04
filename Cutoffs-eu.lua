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
-- Region eu, season 14, cutoffs last changed 2026-10-03 09:16 PM, last checked 2026-10-04 04:00 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["eu"] = {
	region  = "eu",
	updated = "2026-10-03 09:16 PM",
	checked = "2026-10-04 04:00 PM",
	checkedEpoch = 1791144006,

	[1] = { r1=2614, gladiator=2373, duelist=2209, rival=1885, challenger=1047 }, -- 2v2
	[2] = { r1=2483, gladiator=1748, duelist=1699, rival=1577, challenger=768 }, -- 3v3
	[3] = { r1=480, gladiator=1, duelist=1, rival=1, challenger=1 }, -- 5v5
	[4] = { r1=2377, duelist=2103, rival=1864, challenger=1516 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["eu"] = {
	[1] = { r1=28, gladiator=198, duelist=539, rival=1963 }, -- 2v2
	[2] = { r1=34, gladiator=219, duelist=237, rival=295, challenger=575 }, -- 3v3
	[3] = { r1=21 }, -- 5v5
	[4] = { r1=7, duelist=24, rival=104, challenger=436 }, -- rbg
}
