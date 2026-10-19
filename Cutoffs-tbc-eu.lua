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
-- Region tbc-eu, season 3, cutoffs last changed 2026-10-18 09:13 PM, last checked 2026-10-19 03:59 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-10-18 09:13 PM",
	checked = "2026-10-19 03:59 PM",
	checkedEpoch = 1792439940,

	[1] = { r1=2506, gladiator=2312, duelist=2003, rival=1702, challenger=1478 }, -- 2v2
	[2] = { r1=2365, gladiator=2192, duelist=1927, rival=1703, challenger=1496 }, -- 3v3
	[3] = { r1=2361, gladiator=2167, duelist=1903, rival=1700, challenger=1479 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=48, gladiator=299, duelist=1864 }, -- 2v2
	[2] = { r1=29, gladiator=190, duelist=1225, rival=4803 }, -- 3v3
	[3] = { r1=74, gladiator=532, duelist=3391 }, -- 5v5
}
