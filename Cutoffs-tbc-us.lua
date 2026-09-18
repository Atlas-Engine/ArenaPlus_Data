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
-- Region tbc-us, season 3, cutoffs last changed 2026-09-17 10:13 AM, last checked 2026-09-18 09:58 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-09-17 10:13 AM",
	checked = "2026-09-18 09:58 AM",
	checkedEpoch = 1789739896,

	[1] = { r1=2278, gladiator=2125, duelist=1900, rival=1688, challenger=1493 }, -- 2v2
	[2] = { r1=2254, gladiator=2090, duelist=1885, rival=1701, challenger=1500 }, -- 3v3
	[3] = { r1=2297, gladiator=2117, duelist=1861, rival=1677, challenger=1488 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=32, gladiator=178, duelist=1049, rival=4035 }, -- 2v2
	[2] = { r1=26, gladiator=144, duelist=768, rival=2931 }, -- 3v3
	[3] = { r1=64, gladiator=400, duelist=2555 }, -- 5v5
}
