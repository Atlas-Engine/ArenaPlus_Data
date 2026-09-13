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
-- Region tbc-us, season 3, cutoffs last changed 2026-09-13 10:43 AM, last checked 2026-09-13 02:43 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-09-13 10:43 AM",
	checked = "2026-09-13 02:43 PM",
	checkedEpoch = 1789324989,

	[1] = { r1=2232, gladiator=2101, duelist=1883, rival=1691, challenger=1496 }, -- 2v2
	[2] = { r1=2220, gladiator=2068, duelist=1867, rival=1701, challenger=1500 }, -- 3v3
	[3] = { r1=2269, gladiator=2107, duelist=1853, rival=1660, challenger=1491 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=25, gladiator=152, duelist=902, rival=3498 }, -- 2v2
	[2] = { r1=25, gladiator=134, duelist=666, rival=2477 }, -- 3v3
	[3] = { r1=56, gladiator=351, duelist=2333 }, -- 5v5
}
