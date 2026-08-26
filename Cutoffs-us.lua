-- Shipped as its own addon so the ladder can be republished without reshipping
-- the code: half of every ArenaPlus release used to be these files.
--
-- Two addons cannot see each other's namespace, so the tables go on a global
-- and ArenaPlus copies them across as it loads. Same reason ArenaPlusAPI is a
-- global -- see the note above it in ArenaPlus\Core.lua.
--
-- `ns` is kept as the local name so the generated bodies below are unchanged.
ArenaPlusData = ArenaPlusData or {}
local ns = ArenaPlusData

-- Arena title cutoffs, written by tools\UpdateFromBlizzard.ps1 from Blizzard's
-- own API. Do not edit by hand: rerun the script to refresh.
--
-- Region us, season 14, cutoffs last changed 2026-08-24 03:38 PM, last checked 2026-08-25 04:45 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-08-24 03:38 PM",
	checked = "2026-08-25 04:45 PM",

	[1] = { r1=2495, gladiator=2203, duelist=2040, rival=1795, challenger=1108 }, -- 2v2
	[2] = { r1=2353, gladiator=1848, duelist=1751, rival=1595, challenger=864 }, -- 3v3
	[3] = { r1=1951, gladiator=672, duelist=576, rival=576, challenger=384 }, -- 5v5
	[4] = { r1=1977, duelist=1826, rival=1697, challenger=1450 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=33, gladiator=206 }, -- 2v2
	[2] = { r1=24, gladiator=188 }, -- 3v3
	[3] = { r1=17, gladiator=115 }, -- 5v5
	[4] = { r1=3 }, -- rbg
}
