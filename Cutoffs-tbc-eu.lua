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
-- Region tbc-eu, season 3, cutoffs last changed 2026-09-12 09:36 PM, last checked 2026-09-13 01:36 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-09-12 09:36 PM",
	checked = "2026-09-13 01:36 AM",
	checkedEpoch = 1789277794,

	[1] = { r1=2240, gladiator=2109, duelist=1905, rival=1703, challenger=1493 }, -- 2v2
	[2] = { r1=2197, gladiator=2038, duelist=1856, rival=1702, challenger=1500 }, -- 3v3
	[3] = { r1=2203, gladiator=2064, duelist=1857, rival=1659, challenger=1488 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=28, gladiator=183, duelist=1124, rival=4405 }, -- 2v2
	[2] = { r1=21, gladiator=142, duelist=700, rival=2618 }, -- 3v3
	[3] = { r1=60, gladiator=398, duelist=2553 }, -- 5v5
}
