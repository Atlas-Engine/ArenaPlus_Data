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
-- Region eu, season 14, cutoffs last changed 2026-09-16 09:15 PM, last checked 2026-09-17 04:00 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["eu"] = {
	region  = "eu",
	updated = "2026-09-16 09:15 PM",
	checked = "2026-09-17 04:00 PM",
	checkedEpoch = 1789675210,

	[1] = { r1=2560, gladiator=2321, duelist=2176, rival=1863, challenger=1044 }, -- 2v2
	[2] = { r1=2439, gladiator=1703, duelist=1655, rival=1555, challenger=768 }, -- 3v3
	[3] = { r1=480, gladiator=1, duelist=1, rival=1, challenger=1 }, -- 5v5
	[4] = { r1=2377, duelist=2090, rival=1855, challenger=1513 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["eu"] = {
	[1] = { r1=28, gladiator=197, duelist=512, rival=1858 }, -- 2v2
	[2] = { r1=28, gladiator=202, duelist=223, rival=278, challenger=536 }, -- 3v3
	[3] = { r1=20 }, -- 5v5
	[4] = { r1=5, duelist=23, rival=103, challenger=435 }, -- rbg
}
