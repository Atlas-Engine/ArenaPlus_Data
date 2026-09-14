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
-- Region tbc-eu, season 3, cutoffs last changed 2026-09-13 09:20 PM, last checked 2026-09-14 03:50 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-09-13 09:20 PM",
	checked = "2026-09-14 03:50 PM",
	checkedEpoch = 1789415454,

	[1] = { r1=2261, gladiator=2123, duelist=1910, rival=1703, challenger=1492 }, -- 2v2
	[2] = { r1=2210, gladiator=2047, duelist=1860, rival=1702, challenger=1500 }, -- 3v3
	[3] = { r1=2225, gladiator=2072, duelist=1862, rival=1664, challenger=1487 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=38, gladiator=198, duelist=1228, rival=4763 }, -- 2v2
	[2] = { r1=22, gladiator=146, duelist=741, rival=2854 }, -- 3v3
	[3] = { r1=67, gladiator=427, duelist=2694 }, -- 5v5
}
