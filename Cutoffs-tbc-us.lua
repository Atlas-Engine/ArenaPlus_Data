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
-- Region tbc-us, season 3, cutoffs last changed 2026-09-05 10:29 AM, last checked 2026-09-05 11:59 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-09-05 10:29 AM",
	checked = "2026-09-05 11:59 AM",

	[1] = { r1=2093, gladiator=1958, duelist=1826, rival=1676, challenger=1501 }, -- 2v2
	[2] = { r1=2025, gladiator=1874, duelist=1772, rival=1661, challenger=1505 }, -- 3v3
	[3] = { r1=2230, gladiator=2059, duelist=1866, rival=1682, challenger=1504 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=21, gladiator=130 }, -- 2v2
	[2] = { r1=21, gladiator=129 }, -- 3v3
	[3] = { r1=18, gladiator=110 }, -- 5v5
}
