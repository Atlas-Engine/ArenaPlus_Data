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
-- Region tbc-eu, season 3, cutoffs last changed 2026-09-20 09:14 PM, last checked 2026-09-21 06:59 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-09-20 09:14 PM",
	checked = "2026-09-21 06:59 AM",
	checkedEpoch = 1789988344,

	[1] = { r1=2350, gladiator=2174, duelist=1948, rival=1703, challenger=1487 }, -- 2v2
	[2] = { r1=2232, gladiator=2107, duelist=1898, rival=1703, challenger=1500 }, -- 3v3
	[3] = { r1=2262, gladiator=2120, duelist=1883, rival=1689, challenger=1483 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=36, gladiator=230, duelist=1431 }, -- 2v2
	[2] = { r1=24, gladiator=147, duelist=890, rival=3467 }, -- 3v3
	[3] = { r1=63, gladiator=441, duelist=2930 }, -- 5v5
}
