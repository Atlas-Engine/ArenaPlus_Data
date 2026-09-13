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
-- Region tbc-us, season 3, cutoffs last changed 2026-09-12 10:43 AM, last checked 2026-09-12 11:43 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-09-12 10:43 AM",
	checked = "2026-09-12 11:43 PM",
	checkedEpoch = 1789270990,

	[1] = { r1=2227, gladiator=2087, duelist=1877, rival=1688, challenger=1497 }, -- 2v2
	[2] = { r1=2208, gladiator=2042, duelist=1860, rival=1700, challenger=1500 }, -- 3v3
	[3] = { r1=2263, gladiator=2099, duelist=1848, rival=1655, challenger=1492 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=22, gladiator=161, duelist=910, rival=3431 }, -- 2v2
	[2] = { r1=20, gladiator=153, duelist=662, rival=2432 }, -- 3v3
	[3] = { r1=54, gladiator=366, duelist=2336 }, -- 5v5
}
