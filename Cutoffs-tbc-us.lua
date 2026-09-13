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
-- Region tbc-us, season 3, cutoffs last changed 2026-09-12 10:43 AM, last checked 2026-09-13 05:43 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-09-12 10:43 AM",
	checked = "2026-09-13 05:43 AM",
	checkedEpoch = 1789292590,

	[1] = { r1=2227, gladiator=2087, duelist=1877, rival=1688, challenger=1497 }, -- 2v2
	[2] = { r1=2208, gladiator=2042, duelist=1860, rival=1700, challenger=1500 }, -- 3v3
	[3] = { r1=2263, gladiator=2099, duelist=1848, rival=1655, challenger=1492 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=28, gladiator=172, duelist=929, rival=3501 }, -- 2v2
	[2] = { r1=27, gladiator=160, duelist=699, rival=2505 }, -- 3v3
	[3] = { r1=61, gladiator=390, duelist=2396 }, -- 5v5
}
