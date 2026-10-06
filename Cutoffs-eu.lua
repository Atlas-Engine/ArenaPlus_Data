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
-- Region eu, season 14, cutoffs last changed 2026-10-05 09:16 PM, last checked 2026-10-06 10:00 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["eu"] = {
	region  = "eu",
	updated = "2026-10-05 09:16 PM",
	checked = "2026-10-06 10:00 AM",
	checkedEpoch = 1791295214,

	[1] = { r1=2616, gladiator=2379, duelist=2209, rival=1886, challenger=1047 }, -- 2v2
	[2] = { r1=2501, gladiator=1754, duelist=1724, rival=1584, challenger=768 }, -- 3v3
	[3] = { r1=480, gladiator=1, duelist=1, rival=1, challenger=1 }, -- 5v5
	[4] = { r1=2377, duelist=2113, rival=1864, challenger=1513 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["eu"] = {
	[1] = { r1=28, gladiator=199, duelist=544, rival=1981 }, -- 2v2
	[2] = { r1=31, gladiator=220, duelist=234, rival=294, challenger=577 }, -- 3v3
	[3] = { r1=21 }, -- 5v5
	[4] = { r1=7, duelist=24, rival=104, challenger=440 }, -- rbg
}
