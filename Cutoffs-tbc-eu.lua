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
-- Region tbc-eu, season 3, cutoffs last changed 2026-09-09 10:07 PM, last checked 2026-09-10 07:07 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-09-09 10:07 PM",
	checked = "2026-09-10 07:07 AM",
	checkedEpoch = 1789038459,

	[1] = { r1=2203, gladiator=2062, duelist=1872, rival=1700, challenger=1498 }, -- 2v2
	[2] = { r1=2137, gladiator=1999, duelist=1823, rival=1689, challenger=1503 }, -- 3v3
	[3] = { r1=2174, gladiator=2035, duelist=1834, rival=1644, challenger=1490 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=26, gladiator=157, duelist=982, rival=3795 }, -- 2v2
	[2] = { r1=24, gladiator=132, duelist=581, rival=2116 }, -- 3v3
	[3] = { r1=59, gladiator=367, duelist=2415 }, -- 5v5
}
