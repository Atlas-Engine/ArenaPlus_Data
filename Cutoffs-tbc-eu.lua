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
-- Region tbc-eu, season 3, cutoffs last changed 2026-09-05 09:23 PM, last checked 2026-09-06 02:53 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-eu"] = {
	region  = "tbc-eu",
	updated = "2026-09-05 09:23 PM",
	checked = "2026-09-06 02:53 AM",

	[1] = { r1=2135, gladiator=2003, duelist=1845, rival=1698, challenger=1500 }, -- 2v2
	[2] = { r1=2029, gladiator=1880, duelist=1771, rival=1671, challenger=1504 }, -- 3v3
	[3] = { r1=2166, gladiator=2025, duelist=1849, rival=1688, challenger=1500 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-eu"] = {
	[1] = { r1=20, gladiator=136 }, -- 2v2
	[2] = { r1=24, gladiator=134 }, -- 3v3
	[3] = { r1=23, gladiator=137 }, -- 5v5
}
