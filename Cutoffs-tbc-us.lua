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
-- Region tbc-us, season 3, cutoffs last changed 2026-10-17 10:23 AM, last checked 2026-10-17 07:58 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-10-17 10:23 AM",
	checked = "2026-10-17 07:58 PM",
	checkedEpoch = 1792281495,

	[1] = { r1=2400, gladiator=2209, duelist=1943, rival=1678, challenger=1488 }, -- 2v2
	[2] = { r1=2302, gladiator=2152, duelist=1921, rival=1700, challenger=1499 }, -- 3v3
	[3] = { r1=2355, gladiator=2154, duelist=1877, rival=1690, challenger=1486 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=33, gladiator=209, duelist=1312, rival=5015 }, -- 2v2
	[2] = { r1=25, gladiator=149, duelist=967, rival=3752 }, -- 3v3
	[3] = { r1=66, gladiator=435, duelist=2836 }, -- 5v5
}
