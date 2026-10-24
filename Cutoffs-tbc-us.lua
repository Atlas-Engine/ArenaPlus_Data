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
-- Region tbc-us, season 3, cutoffs last changed 2026-10-23 12:18 PM, last checked 2026-10-24 05:58 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-10-23 12:18 PM",
	checked = "2026-10-24 05:58 AM",
	checkedEpoch = 1792835894,

	[1] = { r1=2406, gladiator=2215, duelist=1946, rival=1676, challenger=1487 }, -- 2v2
	[2] = { r1=2287, gladiator=2156, duelist=1923, rival=1697, challenger=1498 }, -- 3v3
	[3] = { r1=2359, gladiator=2150, duelist=1878, rival=1691, challenger=1486 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=31, gladiator=226, duelist=1344 }, -- 2v2
	[2] = { r1=25, gladiator=151, duelist=1002, rival=3854 }, -- 3v3
	[3] = { r1=69, gladiator=442, duelist=2856 }, -- 5v5
}
