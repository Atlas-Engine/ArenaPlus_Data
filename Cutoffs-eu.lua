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
-- Region eu, season 14, cutoffs last changed 2026-10-04 09:17 PM, last checked 2026-10-05 07:00 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["eu"] = {
	region  = "eu",
	updated = "2026-10-04 09:17 PM",
	checked = "2026-10-05 07:00 AM",
	checkedEpoch = 1791198008,

	[1] = { r1=2615, gladiator=2379, duelist=2209, rival=1886, challenger=1047 }, -- 2v2
	[2] = { r1=2491, gladiator=1754, duelist=1703, rival=1571, challenger=768 }, -- 3v3
	[3] = { r1=480, gladiator=1, duelist=1, rival=1, challenger=1 }, -- 5v5
	[4] = { r1=2377, duelist=2113, rival=1864, challenger=1516 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["eu"] = {
	[1] = { r1=27, gladiator=197, duelist=537, rival=1967 }, -- 2v2
	[2] = { r1=33, gladiator=218, duelist=234, rival=298, challenger=577 }, -- 3v3
	[3] = { r1=21 }, -- 5v5
	[4] = { r1=7, duelist=24, rival=104, challenger=437 }, -- rbg
}
