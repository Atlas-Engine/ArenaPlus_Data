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
-- Region tbc-eu, season 3, cutoffs last changed 2026-09-11 09:36 PM, last checked 2026-09-12 04:36 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-09-11 09:36 PM",
	checked = "2026-09-12 04:36 PM",
	checkedEpoch = 1789245390,

	[1] = { r1=2232, gladiator=2101, duelist=1900, rival=1702, challenger=1495 }, -- 2v2
	[2] = { r1=2180, gladiator=2020, duelist=1847, rival=1701, challenger=1500 }, -- 3v3
	[3] = { r1=2186, gladiator=2060, duelist=1848, rival=1653, challenger=1489 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=31, gladiator=192, duelist=1132, rival=4389 }, -- 2v2
	[2] = { r1=23, gladiator=157, duelist=692, rival=2563 }, -- 3v3
	[3] = { r1=67, gladiator=398, duelist=2619 }, -- 5v5
}
