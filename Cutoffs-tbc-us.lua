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
-- Region tbc-us, season 3, cutoffs last changed 2026-10-16 10:23 AM, last checked 2026-10-17 02:58 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["tbc-us"] = {
	region  = "tbc-us",
	updated = "2026-10-16 10:23 AM",
	checked = "2026-10-17 02:58 AM",
	checkedEpoch = 1792220294,

	[1] = { r1=2406, gladiator=2207, duelist=1942, rival=1679, challenger=1488 }, -- 2v2
	[2] = { r1=2293, gladiator=2148, duelist=1920, rival=1700, challenger=1499 }, -- 3v3
	[3] = { r1=2356, gladiator=2155, duelist=1876, rival=1689, challenger=1486 }, -- 5v5
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["tbc-us"] = {
	[1] = { r1=28, gladiator=216, duelist=1308, rival=4995 }, -- 2v2
	[2] = { r1=28, gladiator=156, duelist=967, rival=3748 }, -- 3v3
	[3] = { r1=64, gladiator=433, duelist=2852 }, -- 5v5
}
