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
-- Region tbc-eu, season 3, cutoffs last changed 2026-09-06 09:23 PM, last checked 2026-09-07 10:08 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-09-06 09:23 PM",
	checked = "2026-09-07 10:08 AM",
	checkedEpoch = 1788790082,

	[1] = { r1=2200, gladiator=2012, duelist=1853, rival=1700, challenger=1500 }, -- 2v2
	[2] = { r1=2061, gladiator=1901, duelist=1791, rival=1680, challenger=1504 }, -- 3v3
	[3] = { r1=2156, gladiator=2028, duelist=1850, rival=1677, challenger=1499 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=20, gladiator=135, duelist=714, rival=2667 }, -- 2v2
	[2] = { r1=24, gladiator=139, duelist=429, rival=1397, challenger=5002 }, -- 3v3
	[3] = { r1=27, gladiator=181, duelist=1180, rival=4842 }, -- 5v5
}
