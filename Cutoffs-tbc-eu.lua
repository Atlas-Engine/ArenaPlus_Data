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
-- Region tbc-eu, season 3, cutoffs last changed 2026-10-12 09:33 PM, last checked 2026-10-13 09:58 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-10-12 09:33 PM",
	checked = "2026-10-13 09:58 PM",
	checkedEpoch = 1791943136,

	[1] = { r1=2471, gladiator=2293, duelist=2000, rival=1702, challenger=1479 }, -- 2v2
	[2] = { r1=2343, gladiator=2179, duelist=1924, rival=1703, challenger=1497 }, -- 3v3
	[3] = { r1=2342, gladiator=2164, duelist=1901, rival=1700, challenger=1479 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=40, gladiator=300, duelist=1819 }, -- 2v2
	[2] = { r1=27, gladiator=189, duelist=1187, rival=4693 }, -- 3v3
	[3] = { r1=82, gladiator=529, duelist=3368 }, -- 5v5
}
