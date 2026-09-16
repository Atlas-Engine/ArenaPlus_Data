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
-- Region eu, season 14, cutoffs last changed 2026-09-14 09:25 PM, last checked 2026-09-16 12:00 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["eu"] = {
	region  = "eu",
	updated = "2026-09-14 09:25 PM",
	checked = "2026-09-16 12:00 PM",
	checkedEpoch = 1789574412,

	[1] = { r1=2564, gladiator=2311, duelist=2168, rival=1860, challenger=1043 }, -- 2v2
	[2] = { r1=2404, gladiator=1699, duelist=1650, rival=1536, challenger=768 }, -- 3v3
	[3] = { r1=480, gladiator=1, duelist=1, rival=1, challenger=1 }, -- 5v5
	[4] = { r1=2377, duelist=2084, rival=1854, challenger=1516 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["eu"] = {
	[1] = { r1=25, gladiator=207, duelist=524, rival=1855 }, -- 2v2
	[2] = { r1=34, gladiator=204, duelist=223, rival=284, challenger=533 }, -- 3v3
	[3] = { r1=20 }, -- 5v5
	[4] = { r1=5, duelist=23, rival=103, challenger=432 }, -- rbg
}
