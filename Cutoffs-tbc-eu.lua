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
-- Region tbc-eu, season 3, cutoffs last changed 2026-10-15 09:13 PM, last checked 2026-10-16 08:58 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-10-15 09:13 PM",
	checked = "2026-10-16 08:58 PM",
	checkedEpoch = 1792198734,

	[1] = { r1=2498, gladiator=2303, duelist=2000, rival=1702, challenger=1478 }, -- 2v2
	[2] = { r1=2360, gladiator=2188, duelist=1926, rival=1703, challenger=1496 }, -- 3v3
	[3] = { r1=2351, gladiator=2166, duelist=1902, rival=1700, challenger=1479 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=48, gladiator=301, duelist=1873 }, -- 2v2
	[2] = { r1=28, gladiator=191, duelist=1206, rival=4755 }, -- 3v3
	[3] = { r1=74, gladiator=521, duelist=3380 }, -- 5v5
}
