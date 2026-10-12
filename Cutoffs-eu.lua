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
-- Region eu, season 14, cutoffs last changed 2026-10-11 09:29 PM, last checked 2026-10-12 09:00 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["eu"] = {
	region  = "eu",
	updated = "2026-10-11 09:29 PM",
	checked = "2026-10-12 09:00 AM",
	checkedEpoch = 1791810004,

	[1] = { r1=2618, gladiator=2392, duelist=2217, rival=1896, challenger=1047 }, -- 2v2
	[2] = { r1=2512, gladiator=1825, duelist=1771, rival=1615, challenger=768 }, -- 3v3
	[3] = { r1=480, gladiator=1, duelist=1, rival=1, challenger=1 }, -- 5v5
	[4] = { r1=2377, duelist=2142, rival=1872, challenger=1523 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["eu"] = {
	[1] = { r1=31, gladiator=206, duelist=563, rival=2033 }, -- 2v2
	[2] = { r1=29, gladiator=218, duelist=237, rival=306, challenger=609 }, -- 3v3
	[3] = { r1=21 }, -- 5v5
	[4] = { r1=8, duelist=25, rival=103, challenger=435 }, -- rbg
}
