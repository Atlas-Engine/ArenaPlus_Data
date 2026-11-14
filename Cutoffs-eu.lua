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
-- Region eu, season 14, cutoffs last changed 2026-11-13 09:14 PM, last checked 2026-11-13 11:00 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["eu"] = {
	region  = "eu",
	updated = "2026-11-13 09:14 PM",
	checked = "2026-11-13 11:00 PM",
	checkedEpoch = 1794628812,

	[1] = { r1=2724, gladiator=2487, duelist=2269, rival=1947, challenger=1049 }, -- 2v2
	[2] = { r1=2601, gladiator=2049, duelist=1945, rival=1688, challenger=768 }, -- 3v3
	[3] = { r1=576, gladiator=96, duelist=96, rival=96, challenger=96 }, -- 5v5
	[4] = { r1=2377, duelist=2170, rival=1872, challenger=1525 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["eu"] = {
	[1] = { r1=29, gladiator=217, duelist=618, rival=2176 }, -- 2v2
	[2] = { r1=33, gladiator=205, duelist=232, rival=326, challenger=683 }, -- 3v3
	[3] = { r1=19, gladiator=114, duelist=123, rival=123, challenger=123 }, -- 5v5
	[4] = { r1=9, duelist=25, rival=106, challenger=432 }, -- rbg
}
