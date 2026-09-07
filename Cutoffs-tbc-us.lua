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
-- Region tbc-us, season 3, cutoffs last changed 2026-09-06 10:29 AM, last checked 2026-09-07 06:14 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-09-06 10:29 AM",
	checked = "2026-09-07 06:14 AM",
	checkedEpoch = 1788776079,

	[1] = { r1=2124, gladiator=1997, duelist=1838, rival=1680, challenger=1500 }, -- 2v2
	[2] = { r1=2067, gladiator=1921, duelist=1797, rival=1676, challenger=1505 }, -- 3v3
	[3] = { r1=2238, gladiator=2080, duelist=1864, rival=1681, challenger=1501 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=31, gladiator=174, duelist=612, rival=2187 }, -- 2v2
	[2] = { r1=31, gladiator=186, duelist=475, rival=1479, challenger=4985 }, -- 3v3
	[3] = { r1=37, gladiator=179, duelist=1114, rival=4528 }, -- 5v5
}
