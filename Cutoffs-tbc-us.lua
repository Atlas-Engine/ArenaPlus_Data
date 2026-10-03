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
-- Region tbc-us, season 3, cutoffs last changed 2026-10-02 10:18 AM, last checked 2026-10-03 03:58 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-10-02 10:18 AM",
	checked = "2026-10-03 03:58 AM",
	checkedEpoch = 1791014295,

	[1] = { r1=2348, gladiator=2180, duelist=1930, rival=1684, challenger=1490 }, -- 2v2
	[2] = { r1=2287, gladiator=2143, duelist=1910, rival=1700, challenger=1500 }, -- 3v3
	[3] = { r1=2347, gladiator=2136, duelist=1876, rival=1689, challenger=1487 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=29, gladiator=204, duelist=1217, rival=4635 }, -- 2v2
	[2] = { r1=26, gladiator=134, duelist=899, rival=3482 }, -- 3v3
	[3] = { r1=67, gladiator=428, duelist=2749 }, -- 5v5
}
