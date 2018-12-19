---
title: Mod Tracking
date: December 19, 2018
---

<!--toc-->

- [MasterList Plugin Edit](#masterlist-plugin-edit)
  - [manualPatch](#manualpatch)
      - [SoS-Cell_Compatibility_Patch.esp[^aa638db9]](#sos-cellcompatibilitypatchespaa638db9)
  - [bashedPatch (tags)](#bashedpatch-tags)
    <!--tocstop-->

# MasterList Plugin Edit

1. Hunterborn[^1]
2. Bathing in Skyrim[^2]
3. All Geared Up[^3]

[^1]: Removed perk `_DS_Perk_Botany` for compatibility with Ordinator's Experimenter perk
[^2]: Added no absorb/reflect `SPIT` flags on 13 ability spells for Weapons and Armor Attributes compatibility
[^3]: Added CACO `MGEF` to potions `FLST` for compatibility with CACO

## manualPatch

- CACO-Ordinator[^814044bb]
- ISC-CACO-IJ[^fb29b626]
- CACO-FriendlierTaverns-CACORUPP[^795c4e4c]
- IJ CACO-ISC Patch[^589eb7cf]
- BookofUUNP-CCOR[^8cbbbb32]
- BoundArmoryExtravaganza[^ae31ceb6]
- IJ-CoinsofTamriel[^76726f0a]
- BijinAIO-BYS[^46fd5011]
- MortalEnemies-BYS[^b253d6d4]
- ImmersiveMerchandising-CACO-Bijin[^736fd0ab]
- CCOR-SMIM[^0e4a332d]

#### SoS-Cell_Compatibility_Patch.esp[^aa638db9]

[^0e4a332d]: edited container to fit SMIM `MODL` and CCOR `CONT`
[^736fd0ab]: Forwarded CACO changes to IM ingestibles. Also modifies NPC appearance (by Bijin) and factions (by IM) for Camilla, Ysolda, Temba, Gerdur, Ria, Ingun, Senna, Valerica, Carcette.
[^b253d6d4]: Combined MortalEnemies enemy stats and BYS `RACE` changes for dlc enemy
[^46fd5011]: Forward BYS `COCT` and `PRKR` to BijinAIO NPC styles
[^76726f0a]: Forward CoinsofTamriel copper septim FULL. Also added weight DATA to silver and gold septims based on IJ's ratio
[^aa638db9]: Forward SoS sounds to modified `XCAS` and `XCCM` cell blocks. SoS-TheDungeon (CoinsOfTamriel,3DNPC,CCOR,Hunterborn - USLEEP based) & SoS-TheWilds (RWT) & SoS-Civilization. Also modified `FLGS` `MUSC` and weather data based on ImmersiveCollegeofWinterhold (ETaC,ImmersiveOrcStronghold,FriendlierTaverns,BYS,CCOR,CACO,ExchangeCurrency,CoinsOfTamriel,3DNPC,Mysticism,Thunderchild) also added FriendlierTaverns `DATA` and ETaC (USLEEP based) new `XILL` `XCLL` `XOWN`
[^ae31ceb6]: Forward BAE new weapons `WNAM` & `NAM8` (daggers - bashed patch conflict) to bashed patch. Added SCI `TNAM` and BYI `KWDA` (battleaxe, bow, sword - vanilla formID weapons)
[^8cbbbb32]: Added CCOR smelter breakdown for the new armors
[^fb29b626]: Tweak settings for Wuthrad Unique to follow IJ `DATA` value and ISC `TNAM` sound
[^814044bb]: Merge names and `MGEF` from COT. Also fix leveled list from ordinator and CACO to bashed patch. Reviewing on TES5Edit after a bashed patch rebuild shows that this is no longer needed. Just put it here if ever encounter this again.
[^795c4e4c]: Forward CACO `ENIT` value and effects, also added RUPP `EDID` `MODL` for compatibility with Friendlier Taverns and therefore bashedPatch
[^589eb7cf]: Resolving leftover conflicts from bashed patch merging

## bashedPatch (tags)

ImmersiveJewelry

> names stats delev relev sound

IJWintermyst

> names

Coins of Tamriel V2 Legendary

> delev relev

Book of UUNP

> delev relev

ImmersiveHorses + HearthFire patch

> names

SpellResearch

> delev relev

BringYourSilver

> delev relev stats

DwarvenAutomatonWeapons

> delev relev stats

ImprovedArtifactsCollection

> names stats

ImmersiveSoundCompendium

> sound

BookCoverSkyrim

> names

IA

> relev delev
