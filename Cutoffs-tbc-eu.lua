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
-- Region tbc-eu, season 3, cutoffs last changed 2026-09-14 09:21 PM, last checked 2026-09-14 09:51 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-09-14 09:21 PM",
	checked = "2026-09-14 09:51 PM",
	checkedEpoch = 1789437062,

	[1] = { r1=2299, gladiator=2132, duelist=1917, rival=1704, challenger=1491 }, -- 2v2
	[2] = { r1=2210, gladiator=2057, duelist=1860, rival=1702, challenger=1500 }, -- 3v3
	[3] = { r1=2228, gladiator=2085, duelist=1867, rival=1671, challenger=1486 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=32, gladiator=193, duelist=1237, rival=4799 }, -- 2v2
	[2] = { r1=22, gladiator=139, duelist=772, rival=2943 }, -- 3v3
	[3] = { r1=63, gladiator=414, duelist=2688 }, -- 5v5
}
