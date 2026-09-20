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
-- Region tbc-us, season 3, cutoffs last changed 2026-09-20 10:13 AM, last checked 2026-09-20 01:58 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-09-20 10:13 AM",
	checked = "2026-09-20 01:58 PM",
	checkedEpoch = 1789927096,

	[1] = { r1=2306, gladiator=2141, duelist=1907, rival=1688, challenger=1492 }, -- 2v2
	[2] = { r1=2262, gladiator=2106, duelist=1890, rival=1701, challenger=1500 }, -- 3v3
	[3] = { r1=2304, gladiator=2125, duelist=1866, rival=1678, challenger=1488 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=27, gladiator=172, duelist=1071, rival=4136 }, -- 2v2
	[2] = { r1=23, gladiator=138, duelist=782, rival=3032 }, -- 3v3
	[3] = { r1=63, gladiator=392, duelist=2556 }, -- 5v5
}
