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
-- Region eu, season 14, cutoffs last changed 2026-10-14 09:16 PM, last checked 2026-10-15 03:00 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["eu"] = {
	region  = "eu",
	updated = "2026-10-14 09:16 PM",
	checked = "2026-10-15 03:00 AM",
	checkedEpoch = 1792047602,

	[1] = { r1=2631, gladiator=2407, duelist=2224, rival=1900, challenger=1047 }, -- 2v2
	[2] = { r1=2539, gladiator=1867, duelist=1797, rival=1621, challenger=768 }, -- 3v3
	[3] = { r1=480, gladiator=1, duelist=1, rival=1, challenger=1 }, -- 5v5
	[4] = { r1=2377, duelist=2159, rival=1872, challenger=1523 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["eu"] = {
	[1] = { r1=29, gladiator=198, duelist=560, rival=2058 }, -- 2v2
	[2] = { r1=29, gladiator=212, duelist=237, rival=309, challenger=611 }, -- 3v3
	[3] = { r1=25 }, -- 5v5
	[4] = { r1=9, duelist=25, rival=103, challenger=437 }, -- rbg
}
