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
-- Region us, season 14, cutoffs last changed 2026-09-02 10:15 AM, last checked 2026-09-03 06:00 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-09-02 10:15 AM",
	checked = "2026-09-03 06:00 AM",

	[1] = { r1=2523, gladiator=2212, duelist=2056, rival=1806, challenger=1100 }, -- 2v2
	[2] = { r1=2368, gladiator=1896, duelist=1818, rival=1615, challenger=864 }, -- 3v3
	[3] = { r1=2051, gladiator=1056, duelist=1055, rival=768, challenger=480 }, -- 5v5
	[4] = { r1=1997, duelist=1851, rival=1728, challenger=1450 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=32, gladiator=208 }, -- 2v2
	[2] = { r1=25, gladiator=188 }, -- 3v3
	[3] = { r1=15, gladiator=113 }, -- 5v5
	[4] = { r1=3 }, -- rbg
}
