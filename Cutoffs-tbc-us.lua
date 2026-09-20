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
-- Region tbc-us, season 3, cutoffs last changed 2026-09-19 10:13 AM, last checked 2026-09-20 07:58 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-09-19 10:13 AM",
	checked = "2026-09-20 07:58 AM",
	checkedEpoch = 1789905497,

	[1] = { r1=2306, gladiator=2134, duelist=1903, rival=1687, challenger=1493 }, -- 2v2
	[2] = { r1=2261, gladiator=2105, duelist=1887, rival=1701, challenger=1500 }, -- 3v3
	[3] = { r1=2304, gladiator=2120, duelist=1863, rival=1678, challenger=1488 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=28, gladiator=187, duelist=1091, rival=4144 }, -- 2v2
	[2] = { r1=25, gladiator=141, duelist=796, rival=3027 }, -- 3v3
	[3] = { r1=63, gladiator=412, duelist=2598 }, -- 5v5
}
