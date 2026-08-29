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
-- Region us, season 14, cutoffs last changed 2026-08-29 10:30 AM, last checked 2026-08-29 11:00 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-08-29 10:30 AM",
	checked = "2026-08-29 11:00 AM",

	[1] = { r1=2500, gladiator=2212, duelist=2043, rival=1802, challenger=1056 }, -- 2v2
	[2] = { r1=2375, gladiator=1868, duelist=1760, rival=1607, challenger=864 }, -- 3v3
	[3] = { r1=1989, gladiator=960, duelist=864, rival=672, challenger=480 }, -- 5v5
	[4] = { r1=1997, duelist=1831, rival=1728, challenger=1451 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=33, gladiator=207 }, -- 2v2
	[2] = { r1=25, gladiator=192 }, -- 3v3
	[3] = { r1=15, gladiator=110 }, -- 5v5
	[4] = { r1=3 }, -- rbg
}
