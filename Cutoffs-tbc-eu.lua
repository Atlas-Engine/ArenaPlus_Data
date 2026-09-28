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
-- Region tbc-eu, season 3, cutoffs last changed 2026-09-27 09:13 PM, last checked 2026-09-28 09:59 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-09-27 09:13 PM",
	checked = "2026-09-28 09:59 AM",
	checkedEpoch = 1790603943,

	[1] = { r1=2383, gladiator=2214, duelist=1970, rival=1703, challenger=1484 }, -- 2v2
	[2] = { r1=2305, gladiator=2133, duelist=1907, rival=1703, challenger=1500 }, -- 3v3
	[3] = { r1=2288, gladiator=2141, duelist=1892, rival=1697, challenger=1481 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=40, gladiator=243, duelist=1594 }, -- 2v2
	[2] = { r1=26, gladiator=168, duelist=1024, rival=3989 }, -- 3v3
	[3] = { r1=69, gladiator=477, duelist=3116 }, -- 5v5
}
