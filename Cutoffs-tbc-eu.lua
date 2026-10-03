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
-- Region tbc-eu, season 3, cutoffs last changed 2026-10-02 09:15 PM, last checked 2026-10-03 05:59 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-10-02 09:15 PM",
	checked = "2026-10-03 05:59 PM",
	checkedEpoch = 1791064743,

	[1] = { r1=2417, gladiator=2232, duelist=1979, rival=1703, challenger=1482 }, -- 2v2
	[2] = { r1=2311, gladiator=2154, duelist=1911, rival=1703, challenger=1499 }, -- 3v3
	[3] = { r1=2320, gladiator=2157, duelist=1897, rival=1699, challenger=1481 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=41, gladiator=276, duelist=1701 }, -- 2v2
	[2] = { r1=26, gladiator=182, duelist=1101, rival=4242 }, -- 3v3
	[3] = { r1=71, gladiator=484, duelist=3211 }, -- 5v5
}
