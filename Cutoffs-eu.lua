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
-- Region eu, season 14, cutoffs last changed 2026-10-08 09:29 PM, last checked 2026-10-09 07:00 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["eu"] = {
	region  = "eu",
	updated = "2026-10-08 09:29 PM",
	checked = "2026-10-09 07:00 PM",
	checkedEpoch = 1791586807,

	[1] = { r1=2615, gladiator=2388, duelist=2210, rival=1893, challenger=1047 }, -- 2v2
	[2] = { r1=2507, gladiator=1815, duelist=1770, rival=1620, challenger=768 }, -- 3v3
	[3] = { r1=480, gladiator=1, duelist=1, rival=1, challenger=1 }, -- 5v5
	[4] = { r1=2377, duelist=2113, rival=1865, challenger=1520 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["eu"] = {
	[1] = { r1=32, gladiator=201, duelist=561, rival=2020 }, -- 2v2
	[2] = { r1=34, gladiator=216, duelist=236, rival=303, challenger=598 }, -- 3v3
	[3] = { r1=21 }, -- 5v5
	[4] = { r1=8, duelist=27, rival=105, challenger=437 }, -- rbg
}
