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
-- Region tbc-us, season 3, cutoffs last changed 2026-09-04 09:29 PM, last checked 2026-09-05 03:59 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-09-04 09:29 PM",
	checked = "2026-09-05 03:59 AM",

	[1] = { r1=2041, gladiator=1908, duelist=1807, rival=1668, challenger=1502 }, -- 2v2
	[2] = { r1=1993, gladiator=1814, duelist=1747, rival=1652, challenger=1507 }, -- 3v3
	[3] = { r1=2207, gladiator=2022, duelist=1854, rival=1684, challenger=1507 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=32, gladiator=197 }, -- 2v2
	[2] = { r1=29, gladiator=199 }, -- 3v3
	[3] = { r1=22, gladiator=158 }, -- 5v5
}
