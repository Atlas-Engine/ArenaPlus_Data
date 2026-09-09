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
-- Region tbc-us, season 3, cutoffs last changed 2026-09-09 11:14 AM, last checked 2026-09-09 01:14 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-09-09 11:14 AM",
	checked = "2026-09-09 01:14 PM",
	checkedEpoch = 1788974067,

	[1] = { r1=2182, gladiator=2044, duelist=1854, rival=1673, challenger=1499 }, -- 2v2
	[2] = { r1=2150, gladiator=1993, duelist=1835, rival=1685, challenger=1501 }, -- 3v3
	[3] = { r1=2252, gladiator=2064, duelist=1829, rival=1640, challenger=1493 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=22, gladiator=136, duelist=752, rival=2889 }, -- 2v2
	[2] = { r1=22, gladiator=134, duelist=526, rival=1909 }, -- 3v3
	[3] = { r1=50, gladiator=327, duelist=2131 }, -- 5v5
}
