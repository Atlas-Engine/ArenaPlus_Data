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
-- Region tbc-us, season 3, cutoffs last changed 2026-09-20 10:13 AM, last checked 2026-09-21 06:58 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-09-20 10:13 AM",
	checked = "2026-09-21 06:58 AM",
	checkedEpoch = 1789988297,

	[1] = { r1=2306, gladiator=2141, duelist=1907, rival=1688, challenger=1492 }, -- 2v2
	[2] = { r1=2262, gladiator=2106, duelist=1890, rival=1701, challenger=1500 }, -- 3v3
	[3] = { r1=2304, gladiator=2125, duelist=1866, rival=1678, challenger=1488 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=28, gladiator=176, duelist=1088, rival=4169 }, -- 2v2
	[2] = { r1=22, gladiator=144, duelist=806, rival=3080 }, -- 3v3
	[3] = { r1=65, gladiator=406, duelist=2609 }, -- 5v5
}
