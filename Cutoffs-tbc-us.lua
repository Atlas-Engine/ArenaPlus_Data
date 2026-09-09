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
-- Region tbc-us, season 3, cutoffs last changed 2026-09-07 11:14 AM, last checked 2026-09-09 06:14 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-09-07 11:14 AM",
	checked = "2026-09-09 06:14 AM",
	checkedEpoch = 1788948870,

	[1] = { r1=2165, gladiator=2007, duelist=1843, rival=1680, challenger=1500 }, -- 2v2
	[2] = { r1=2084, gladiator=1957, duelist=1808, rival=1683, challenger=1503 }, -- 3v3
	[3] = { r1=2267, gladiator=2081, duelist=1851, rival=1666, challenger=1499 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=27, gladiator=201, duelist=810, rival=2779 }, -- 2v2
	[2] = { r1=39, gladiator=190, duelist=627, rival=1916 }, -- 3v3
	[3] = { r1=42, gladiator=281, duelist=1824 }, -- 5v5
}
