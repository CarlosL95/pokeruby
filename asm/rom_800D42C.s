	.include "constants/gba_constants.inc"
	.include "constants/species_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start unref_sub_800D42C
unref_sub_800D42C: @ 800D42C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x24
	mov r9, r0
	str r1, [sp]
	str r2, [sp, 0x4]
	adds r5, r3, 0
	movs r0, 0x1
	mov r1, r9
	ands r0, r1
	cmp r0, 0
	bne _0800D44C
	b _0800D5E4
_0800D44C:
	asrs r0, r1, 1
	adds r0, 0x4
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x8]
	movs r0, 0
	ldr r2, [sp]
	cmp r0, r2
	blt _0800D460
	b _0800D674
_0800D460:
	movs r4, 0x8
	subs r1, r4, r1
	str r1, [sp, 0x10]
_0800D466:
	movs r7, 0
	adds r0, 0x1
	str r0, [sp, 0x14]
	ldr r0, [sp, 0x10]
	cmp r7, r0
	bge _0800D4E2
	ldr r1, [sp, 0x8]
	lsls r1, 8
	str r1, [sp, 0x18]
	movs r2, 0
	mov r10, r2
	mov r0, r9
	movs r4, 0x8
	subs r0, r4, r0
	str r0, [sp, 0xC]
_0800D484:
	movs r3, 0
	asrs r0, r7, 1
	adds r1, r7, 0
	movs r2, 0x1
	ands r1, r2
	str r1, [sp, 0x20]
	lsls r0, 8
	mov r8, r0
	mov r12, r5
_0800D496:
	lsls r1, r3, 5
	ldr r4, [sp, 0x18]
	adds r0, r5, r4
	adds r0, r1
	mov r1, r8
	adds r2, r0, r1
	mov r1, r12
	add r1, r8
	movs r6, 0xF
_0800D4A8:
	ldr r4, [sp, 0x20]
	cmp r4, 0
	bne _0800D4B8
	strb r4, [r1]
	add r4, sp, 0x20
	ldrb r4, [r4]
	strb r4, [r2, 0x10]
	b _0800D4C6
_0800D4B8:
	mov r0, r10
	strb r0, [r1, 0x10]
	movs r4, 0x80
	lsls r4, 1
	adds r4, r2, r4
	str r4, [sp, 0x1C]
	strb r0, [r4]
_0800D4C6:
	adds r2, 0x1
	adds r1, 0x1
	subs r6, 0x1
	cmp r6, 0
	bge _0800D4A8
	movs r0, 0x20
	add r12, r0
	adds r3, 0x1
	cmp r3, 0x7
	ble _0800D496
	adds r7, 0x1
	ldr r1, [sp, 0xC]
	cmp r7, r1
	blt _0800D484
_0800D4E2:
	movs r7, 0
	movs r2, 0
_0800D4E6:
	movs r6, 0
	adds r4, r7, 0x1
	mov r8, r4
	lsls r4, r7, 5
_0800D4EE:
	adds r0, r6, 0x1
	mov r10, r0
	lsls r1, r6, 8
	adds r0, r1, 0
	adds r0, 0xC0
	adds r0, r5, r0
	adds r0, r4
	adds r1, r5, r1
	adds r1, r4
	movs r3, 0x1F
_0800D502:
	strb r2, [r1]
	strb r2, [r0]
	adds r0, 0x1
	adds r1, 0x1
	subs r3, 0x1
	cmp r3, 0
	bge _0800D502
	mov r6, r10
	cmp r6, 0x7
	ble _0800D4EE
	mov r7, r8
	cmp r7, 0x1
	ble _0800D4E6
	mov r1, r9
	cmp r1, 0x5
	bne _0800D528
	movs r2, 0x90
	lsls r2, 1
	adds r5, r2
_0800D528:
	movs r7, 0
	cmp r7, r9
	bge _0800D5BE
_0800D52E:
	movs r3, 0
	adds r7, 0x1
	mov r8, r7
	cmp r3, r9
	bge _0800D59E
_0800D538:
	adds r3, 0x1
	mov r10, r3
	ldr r4, [sp, 0x4]
	adds r4, 0x20
	adds r7, r5, 0
	adds r7, 0x20
	movs r0, 0x12
	adds r0, r5
	mov r12, r0
	ldr r2, [sp, 0x4]
	adds r3, r5, 0
	movs r6, 0x3
_0800D550:
	ldrb r0, [r2]
	mov r1, r12
	strb r0, [r1]
	ldrb r0, [r2, 0x1]
	strb r0, [r1, 0x1]
	ldrb r0, [r2, 0x2]
	strb r0, [r1, 0x1E]
	ldrb r0, [r2, 0x3]
	strb r0, [r1, 0x1F]
	movs r0, 0x81
	lsls r0, 1
	adds r1, r3, r0
	ldrb r0, [r2, 0x10]
	strb r0, [r1]
	ldr r0, _0800D5A8 @ =0x00000103
	adds r1, r3, r0
	ldrb r0, [r2, 0x11]
	strb r0, [r1]
	movs r0, 0x90
	lsls r0, 1
	adds r1, r3, r0
	ldrb r0, [r2, 0x12]
	strb r0, [r1]
	ldr r0, _0800D5AC @ =0x00000121
	adds r1, r3, r0
	ldrb r0, [r2, 0x13]
	strb r0, [r1]
	movs r1, 0x4
	add r12, r1
	adds r2, 0x4
	adds r3, 0x4
	subs r6, 0x1
	cmp r6, 0
	bge _0800D550
	str r4, [sp, 0x4]
	adds r5, r7, 0
	mov r3, r10
	cmp r3, r9
	blt _0800D538
_0800D59E:
	mov r2, r9
	cmp r2, 0x7
	bne _0800D5B0
	adds r5, 0x20
	b _0800D5B8
	.align 2, 0
_0800D5A8: .4byte 0x00000103
_0800D5AC: .4byte 0x00000121
_0800D5B0:
	mov r4, r9
	cmp r4, 0x5
	bne _0800D5B8
	adds r5, 0x60
_0800D5B8:
	mov r7, r8
	cmp r7, r9
	blt _0800D52E
_0800D5BE:
	mov r0, r9
	cmp r0, 0x7
	bne _0800D5CC
	movs r1, 0x80
	lsls r1, 1
	adds r5, r1
	b _0800D5D8
_0800D5CC:
	mov r2, r9
	cmp r2, 0x5
	bne _0800D5D8
	movs r4, 0xF0
	lsls r4, 1
	adds r5, r4
_0800D5D8:
	ldr r0, [sp, 0x14]
	ldr r1, [sp]
	cmp r0, r1
	bge _0800D5E2
	b _0800D466
_0800D5E2:
	b _0800D674
_0800D5E4:
	movs r6, 0
	ldr r2, [sp]
	cmp r6, r2
	bge _0800D674
_0800D5EC:
	adds r6, 0x1
	mov r10, r6
	mov r4, r9
	cmp r4, 0x6
	bne _0800D604
	movs r0, 0
	movs r3, 0xFF
_0800D5FA:
	strb r0, [r5]
	adds r5, 0x1
	subs r3, 0x1
	cmp r3, 0
	bge _0800D5FA
_0800D604:
	movs r7, 0
	cmp r7, r9
	bge _0800D658
_0800D60A:
	adds r7, 0x1
	mov r8, r7
	mov r1, r9
	lsls r0, r1, 5
	cmp r1, 0x6
	bne _0800D624
	movs r1, 0
	movs r3, 0x1F
_0800D61A:
	strb r1, [r5]
	adds r5, 0x1
	subs r3, 0x1
	cmp r3, 0
	bge _0800D61A
_0800D624:
	adds r1, r0, 0
	cmp r1, 0
	ble _0800D63E
	adds r3, r1, 0
_0800D62C:
	ldr r2, [sp, 0x4]
	ldrb r0, [r2]
	strb r0, [r5]
	adds r2, 0x1
	str r2, [sp, 0x4]
	adds r5, 0x1
	subs r3, 0x1
	cmp r3, 0
	bne _0800D62C
_0800D63E:
	mov r4, r9
	cmp r4, 0x6
	bne _0800D652
	movs r0, 0
	movs r3, 0x1F
_0800D648:
	strb r0, [r5]
	adds r5, 0x1
	subs r3, 0x1
	cmp r3, 0
	bge _0800D648
_0800D652:
	mov r7, r8
	cmp r7, r9
	blt _0800D60A
_0800D658:
	mov r0, r9
	cmp r0, 0x6
	bne _0800D66C
	movs r0, 0
	movs r3, 0xFF
_0800D662:
	strb r0, [r5]
	adds r5, 0x1
	subs r3, 0x1
	cmp r3, 0
	bge _0800D662
_0800D66C:
	mov r6, r10
	ldr r1, [sp]
	cmp r6, r1
	blt _0800D5EC
_0800D674:
	add sp, 0x24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end unref_sub_800D42C

	thumb_func_start unref_sub_800D684
unref_sub_800D684: @ 800D684
	push {lr}
	bl ResetSpriteData
	ldr r0, _0800D6B8 @ =gSpriteTemplate_81F96D0
	movs r1, 0
	movs r2, 0
	movs r3, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _0800D6BC @ =gSprites
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	adds r1, 0x3E
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _0800D6C0 @ =sub_800D6C4
	bl SetMainCallback2
	pop {r0}
	bx r0
	.align 2, 0
_0800D6B8: .4byte gSpriteTemplate_81F96D0
_0800D6BC: .4byte gSprites
_0800D6C0: .4byte sub_800D6C4
	thumb_func_end unref_sub_800D684

	thumb_func_start sub_800D6C4
sub_800D6C4: @ 800D6C4
	push {lr}
	bl AnimateSprites
	bl BuildOamBuffer
	pop {r0}
	bx r0
	thumb_func_end sub_800D6C4

	thumb_func_start sub_800D6D4
sub_800D6D4: @ 800D6D4
	push {r4,r5,lr}
	ldr r3, _0800D72C @ =0x04000208
	ldrh r2, [r3]
	movs r5, 0
	strh r5, [r3]
	ldr r4, _0800D730 @ =0x04000200
	ldrh r0, [r4]
	movs r1, 0x1
	orrs r0, r1
	strh r0, [r4]
	strh r2, [r3]
	ldr r1, _0800D734 @ =REG_DISPSTAT
	movs r0, 0x8
	strh r0, [r1]
	adds r1, 0x4
	movs r2, 0x98
	lsls r2, 8
	adds r0, r2, 0
	strh r0, [r1]
	adds r1, 0x2
	ldr r2, _0800D738 @ =0x00009c04
	adds r0, r2, 0
	strh r0, [r1]
	adds r1, 0x2
	ldr r2, _0800D73C @ =0x00005e05
	adds r0, r2, 0
	strh r0, [r1]
	adds r1, 0x2
	ldr r2, _0800D740 @ =0x00005a0b
	adds r0, r2, 0
	strh r0, [r1]
	ldr r0, _0800D744 @ =REG_BLDCNT
	strh r5, [r0]
	adds r0, 0x2
	strh r5, [r0]
	adds r0, 0x2
	strh r5, [r0]
	subs r1, 0xE
	ldr r2, _0800D748 @ =0x0000bf40
	adds r0, r2, 0
	strh r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D72C: .4byte 0x04000208
_0800D730: .4byte 0x04000200
_0800D734: .4byte REG_DISPSTAT
_0800D738: .4byte 0x00009c04
_0800D73C: .4byte 0x00005e05
_0800D740: .4byte 0x00005a0b
_0800D744: .4byte REG_BLDCNT
_0800D748: .4byte 0x0000bf40
	thumb_func_end sub_800D6D4

	thumb_func_start sub_800D74C
sub_800D74C: @ 800D74C
	push {r4,lr}
	movs r0, 0x12
	bl SetTextWindowBaseTileNum
	ldr r4, _0800D79C @ =gUnknown_03004210
	adds r0, r4, 0
	movs r1, 0x1
	bl LoadTextWindowGraphics_OverridePalSlot
	movs r0, 0x22
	bl SetTextWindowBaseTileNum
	adds r0, r4, 0
	movs r1, 0x1
	bl LoadTextWindowGraphics_OverridePalSlot
	ldr r3, _0800D7A0 @ =gPlttBufferUnfaded
	adds r0, r3, 0
	adds r0, 0xB8
	ldr r1, _0800D7A4 @ =0x00007fe0
	strh r1, [r0]
	adds r2, r3, 0
	adds r2, 0xBA
	ldr r1, _0800D7A8 @ =0x00002529
	strh r1, [r2]
	adds r2, 0x2
	ldr r1, _0800D7AC @ =0x00007fff
	strh r1, [r2]
	adds r2, 0x2
	ldr r1, _0800D7B0 @ =0x0000675a
	strh r1, [r2]
	ldr r1, _0800D7B4 @ =gPlttBufferFaded + 0xB8
	movs r2, 0x4
	bl CpuSet
	bl sub_8032A38
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D79C: .4byte gUnknown_03004210
_0800D7A0: .4byte gPlttBufferUnfaded
_0800D7A4: .4byte 0x00007fe0
_0800D7A8: .4byte 0x00002529
_0800D7AC: .4byte 0x00007fff
_0800D7B0: .4byte 0x0000675a
_0800D7B4: .4byte gPlttBufferFaded + 0xB8
	thumb_func_end sub_800D74C

	thumb_func_start sub_800D7B8
sub_800D7B8: @ 800D7B8
	push {r4,r5,lr}
	ldr r0, _0800D7DC @ =gUnknown_020239F8
	ldrh r1, [r0]
	ldr r0, _0800D7E0 @ =0x00000902
	ands r0, r1
	cmp r0, 0
	beq _0800D7F8
	ldr r0, _0800D7E4 @ =gBattleTerrainTiles_Building
	ldr r1, _0800D7E8 @ =0x06008000
	bl LZDecompressVram
	ldr r0, _0800D7EC @ =gBattleTerrainTilemap_Building
	ldr r1, _0800D7F0 @ =0x0600d000
	bl LZDecompressVram
	ldr r0, _0800D7F4 @ =gBattleTerrainPalette_BattleTower
	b _0800DA66
	.align 2, 0
_0800D7DC: .4byte gUnknown_020239F8
_0800D7E0: .4byte 0x00000902
_0800D7E4: .4byte gBattleTerrainTiles_Building
_0800D7E8: .4byte 0x06008000
_0800D7EC: .4byte gBattleTerrainTilemap_Building
_0800D7F0: .4byte 0x0600d000
_0800D7F4: .4byte gBattleTerrainPalette_BattleTower
_0800D7F8:
	movs r0, 0x80
	lsls r0, 5
	ands r0, r1
	cmp r0, 0
	beq _0800D860
	ldr r0, _0800D820 @ =gGameVersion
	ldrb r0, [r0]
	cmp r0, 0x2
	bne _0800D838
	ldr r0, _0800D824 @ =gBattleTerrainTiles_Cave
	ldr r1, _0800D828 @ =0x06008000
	bl LZDecompressVram
	ldr r0, _0800D82C @ =gBattleTerrainTilemap_Cave
	ldr r1, _0800D830 @ =0x0600d000
	bl LZDecompressVram
	ldr r0, _0800D834 @ =gBattleTerrainPalette_Groudon
	b _0800DA66
	.align 2, 0
_0800D820: .4byte gGameVersion
_0800D824: .4byte gBattleTerrainTiles_Cave
_0800D828: .4byte 0x06008000
_0800D82C: .4byte gBattleTerrainTilemap_Cave
_0800D830: .4byte 0x0600d000
_0800D834: .4byte gBattleTerrainPalette_Groudon
_0800D838:
	ldr r0, _0800D84C @ =gBattleTerrainTiles_Water
	ldr r1, _0800D850 @ =0x06008000
	bl LZDecompressVram
	ldr r0, _0800D854 @ =gBattleTerrainTilemap_Water
	ldr r1, _0800D858 @ =0x0600d000
	bl LZDecompressVram
	ldr r0, _0800D85C @ =gBattleTerrainPalette_Kyogre
	b _0800DA66
	.align 2, 0
_0800D84C: .4byte gBattleTerrainTiles_Water
_0800D850: .4byte 0x06008000
_0800D854: .4byte gBattleTerrainTilemap_Water
_0800D858: .4byte 0x0600d000
_0800D85C: .4byte gBattleTerrainPalette_Kyogre
_0800D860:
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _0800D8D8
	ldr r2, _0800D890 @ =gTrainers
	ldr r0, _0800D894 @ =gTrainerBattleOpponent
	ldrh r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0x19
	bne _0800D8AC
	ldr r0, _0800D898 @ =gBattleTerrainTiles_Building
	ldr r1, _0800D89C @ =0x06008000
	bl LZDecompressVram
	ldr r0, _0800D8A0 @ =gBattleTerrainTilemap_Building
	ldr r1, _0800D8A4 @ =0x0600d000
	bl LZDecompressVram
	ldr r0, _0800D8A8 @ =gBattleTerrainPalette_BuildingLeader
	b _0800DA66
	.align 2, 0
_0800D890: .4byte gTrainers
_0800D894: .4byte gTrainerBattleOpponent
_0800D898: .4byte gBattleTerrainTiles_Building
_0800D89C: .4byte 0x06008000
_0800D8A0: .4byte gBattleTerrainTilemap_Building
_0800D8A4: .4byte 0x0600d000
_0800D8A8: .4byte gBattleTerrainPalette_BuildingLeader
_0800D8AC:
	cmp r0, 0x20
	bne _0800D8D8
	ldr r0, _0800D8C4 @ =gBattleTerrainTiles_Stadium
	ldr r1, _0800D8C8 @ =0x06008000
	bl LZDecompressVram
	ldr r0, _0800D8CC @ =gBattleTerrainTilemap_Stadium
	ldr r1, _0800D8D0 @ =0x0600d000
	bl LZDecompressVram
	ldr r0, _0800D8D4 @ =gBattleTerrainPalette_StadiumSteven
	b _0800DA66
	.align 2, 0
_0800D8C4: .4byte gBattleTerrainTiles_Stadium
_0800D8C8: .4byte 0x06008000
_0800D8CC: .4byte gBattleTerrainTilemap_Stadium
_0800D8D0: .4byte 0x0600d000
_0800D8D4: .4byte gBattleTerrainPalette_StadiumSteven
_0800D8D8:
	bl sav1_map_get_battletype
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x8
	bls _0800D8E6
	b _0800DA9E
_0800D8E6:
	lsls r0, 2
	ldr r1, _0800D8F0 @ =_0800D8F4
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D8F0: .4byte _0800D8F4
	.align 2, 0
_0800D8F4:
	.4byte _0800D918
	.4byte _0800D964
	.4byte _0800D98C
	.4byte _0800D9B4
	.4byte _0800D9DC
	.4byte _0800DA04
	.4byte _0800DA2C
	.4byte _0800DA54
	.4byte _0800DA84
_0800D918:
	ldr r4, _0800D954 @ =gBattleTerrainTable
	ldr r5, _0800D958 @ =gUnknown_0300428C
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r0, [r0]
	ldr r1, _0800D95C @ =0x06008000
	bl LZDecompressVram
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r1, r4, 0x4
	adds r0, r1
	ldr r0, [r0]
	ldr r1, _0800D960 @ =0x0600d000
	bl LZDecompressVram
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r4, 0x10
	adds r0, r4
	ldr r0, [r0]
	b _0800DA66
	.align 2, 0
_0800D954: .4byte gBattleTerrainTable
_0800D958: .4byte gUnknown_0300428C
_0800D95C: .4byte 0x06008000
_0800D960: .4byte 0x0600d000
_0800D964:
	ldr r0, _0800D978 @ =gBattleTerrainTiles_Building
	ldr r1, _0800D97C @ =0x06008000
	bl LZDecompressVram
	ldr r0, _0800D980 @ =gBattleTerrainTilemap_Building
	ldr r1, _0800D984 @ =0x0600d000
	bl LZDecompressVram
	ldr r0, _0800D988 @ =gBattleTerrainPalette_BuildingGym
	b _0800DA66
	.align 2, 0
_0800D978: .4byte gBattleTerrainTiles_Building
_0800D97C: .4byte 0x06008000
_0800D980: .4byte gBattleTerrainTilemap_Building
_0800D984: .4byte 0x0600d000
_0800D988: .4byte gBattleTerrainPalette_BuildingGym
_0800D98C:
	ldr r0, _0800D9A0 @ =gBattleTerrainTiles_Stadium
	ldr r1, _0800D9A4 @ =0x06008000
	bl LZDecompressVram
	ldr r0, _0800D9A8 @ =gBattleTerrainTilemap_Stadium
	ldr r1, _0800D9AC @ =0x0600d000
	bl LZDecompressVram
	ldr r0, _0800D9B0 @ =gBattleTerrainPalette_StadiumMagma
	b _0800DA66
	.align 2, 0
_0800D9A0: .4byte gBattleTerrainTiles_Stadium
_0800D9A4: .4byte 0x06008000
_0800D9A8: .4byte gBattleTerrainTilemap_Stadium
_0800D9AC: .4byte 0x0600d000
_0800D9B0: .4byte gBattleTerrainPalette_StadiumMagma
_0800D9B4:
	ldr r0, _0800D9C8 @ =gBattleTerrainTiles_Stadium
	ldr r1, _0800D9CC @ =0x06008000
	bl LZDecompressVram
	ldr r0, _0800D9D0 @ =gBattleTerrainTilemap_Stadium
	ldr r1, _0800D9D4 @ =0x0600d000
	bl LZDecompressVram
	ldr r0, _0800D9D8 @ =gBattleTerrainPalette_StadiumAqua
	b _0800DA66
	.align 2, 0
_0800D9C8: .4byte gBattleTerrainTiles_Stadium
_0800D9CC: .4byte 0x06008000
_0800D9D0: .4byte gBattleTerrainTilemap_Stadium
_0800D9D4: .4byte 0x0600d000
_0800D9D8: .4byte gBattleTerrainPalette_StadiumAqua
_0800D9DC:
	ldr r0, _0800D9F0 @ =gBattleTerrainTiles_Stadium
	ldr r1, _0800D9F4 @ =0x06008000
	bl LZDecompressVram
	ldr r0, _0800D9F8 @ =gBattleTerrainTilemap_Stadium
	ldr r1, _0800D9FC @ =0x0600d000
	bl LZDecompressVram
	ldr r0, _0800DA00 @ =gBattleTerrainPalette_StadiumSidney
	b _0800DA66
	.align 2, 0
_0800D9F0: .4byte gBattleTerrainTiles_Stadium
_0800D9F4: .4byte 0x06008000
_0800D9F8: .4byte gBattleTerrainTilemap_Stadium
_0800D9FC: .4byte 0x0600d000
_0800DA00: .4byte gBattleTerrainPalette_StadiumSidney
_0800DA04:
	ldr r0, _0800DA18 @ =gBattleTerrainTiles_Stadium
	ldr r1, _0800DA1C @ =0x06008000
	bl LZDecompressVram
	ldr r0, _0800DA20 @ =gBattleTerrainTilemap_Stadium
	ldr r1, _0800DA24 @ =0x0600d000
	bl LZDecompressVram
	ldr r0, _0800DA28 @ =gBattleTerrainPalette_StadiumPhoebe
	b _0800DA66
	.align 2, 0
_0800DA18: .4byte gBattleTerrainTiles_Stadium
_0800DA1C: .4byte 0x06008000
_0800DA20: .4byte gBattleTerrainTilemap_Stadium
_0800DA24: .4byte 0x0600d000
_0800DA28: .4byte gBattleTerrainPalette_StadiumPhoebe
_0800DA2C:
	ldr r0, _0800DA40 @ =gBattleTerrainTiles_Stadium
	ldr r1, _0800DA44 @ =0x06008000
	bl LZDecompressVram
	ldr r0, _0800DA48 @ =gBattleTerrainTilemap_Stadium
	ldr r1, _0800DA4C @ =0x0600d000
	bl LZDecompressVram
	ldr r0, _0800DA50 @ =gBattleTerrainPalette_StadiumGlacia
	b _0800DA66
	.align 2, 0
_0800DA40: .4byte gBattleTerrainTiles_Stadium
_0800DA44: .4byte 0x06008000
_0800DA48: .4byte gBattleTerrainTilemap_Stadium
_0800DA4C: .4byte 0x0600d000
_0800DA50: .4byte gBattleTerrainPalette_StadiumGlacia
_0800DA54:
	ldr r0, _0800DA70 @ =gBattleTerrainTiles_Stadium
	ldr r1, _0800DA74 @ =0x06008000
	bl LZDecompressVram
	ldr r0, _0800DA78 @ =gBattleTerrainTilemap_Stadium
	ldr r1, _0800DA7C @ =0x0600d000
	bl LZDecompressVram
	ldr r0, _0800DA80 @ =gBattleTerrainPalette_StadiumDrake
_0800DA66:
	movs r1, 0x20
	movs r2, 0x60
	bl LoadCompressedPalette
	b _0800DA9E
	.align 2, 0
_0800DA70: .4byte gBattleTerrainTiles_Stadium
_0800DA74: .4byte 0x06008000
_0800DA78: .4byte gBattleTerrainTilemap_Stadium
_0800DA7C: .4byte 0x0600d000
_0800DA80: .4byte gBattleTerrainPalette_StadiumDrake
_0800DA84:
	ldr r0, _0800DAA4 @ =gBattleTerrainTiles_Building
	ldr r1, _0800DAA8 @ =0x06008000
	bl LZDecompressVram
	ldr r0, _0800DAAC @ =gBattleTerrainTilemap_Building
	ldr r1, _0800DAB0 @ =0x0600d000
	bl LZDecompressVram
	ldr r0, _0800DAB4 @ =gBattleTerrainPalette_BattleTower
	movs r1, 0x20
	movs r2, 0x60
	bl LoadCompressedPalette
_0800DA9E:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800DAA4: .4byte gBattleTerrainTiles_Building
_0800DAA8: .4byte 0x06008000
_0800DAAC: .4byte gBattleTerrainTilemap_Building
_0800DAB0: .4byte 0x0600d000
_0800DAB4: .4byte gBattleTerrainPalette_BattleTower
	thumb_func_end sub_800D7B8

	thumb_func_start sub_800DAB8
sub_800DAB8: @ 800DAB8
	push {lr}
	ldr r0, _0800DAE8 @ =gUnknown_08D00000
	movs r1, 0xC0
	lsls r1, 19
	bl LZDecompressVram
	ldr r0, _0800DAEC @ =gUnknown_08D00524
	ldr r1, _0800DAF0 @ =0x0600c000
	movs r2, 0x80
	lsls r2, 4
	bl CpuSet
	ldr r0, _0800DAF4 @ =gUnknown_08D004E0
	movs r1, 0
	movs r2, 0x40
	bl LoadCompressedPalette
	bl sub_800D74C
	bl sub_800D7B8
	pop {r0}
	bx r0
	.align 2, 0
_0800DAE8: .4byte gUnknown_08D00000
_0800DAEC: .4byte gUnknown_08D00524
_0800DAF0: .4byte 0x0600c000
_0800DAF4: .4byte gUnknown_08D004E0
	thumb_func_end sub_800DAB8

	thumb_func_start sub_800DAF8
sub_800DAF8: @ 800DAF8
	push {r4-r7,lr}
	sub sp, 0xC
	adds r7, r2, 0
	lsls r0, 24
	lsrs r2, r0, 24
	adds r5, r2, 0
	lsls r1, 24
	lsrs r3, r1, 24
	movs r4, 0
	ldr r0, _0800DB38 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0800DBB4
	ldr r0, _0800DB3C @ =gTasks
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 3
	adds r1, r0
	movs r2, 0x12
	ldrsh r0, [r1, r2]
	cmp r0, 0
	beq _0800DB52
	cmp r3, 0x1
	beq _0800DB7A
	cmp r3, 0x1
	bgt _0800DB40
	cmp r3, 0
	beq _0800DB4A
	b _0800DB84
	.align 2, 0
_0800DB38: .4byte gUnknown_020239F8
_0800DB3C: .4byte gTasks
_0800DB40:
	cmp r3, 0x2
	beq _0800DB4E
	cmp r3, 0x3
	beq _0800DB6E
	b _0800DB84
_0800DB4A:
	ldrh r0, [r1, 0xE]
	b _0800DB70
_0800DB4E:
	ldrh r1, [r1, 0xE]
	b _0800DB7C
_0800DB52:
	cmp r3, 0x1
	beq _0800DB6E
	cmp r3, 0x1
	bgt _0800DB60
	cmp r3, 0
	beq _0800DB6A
	b _0800DB84
_0800DB60:
	cmp r3, 0x2
	beq _0800DB76
	cmp r3, 0x3
	beq _0800DB7A
	b _0800DB84
_0800DB6A:
	ldrh r0, [r1, 0xE]
	b _0800DB70
_0800DB6E:
	ldrh r0, [r1, 0x10]
_0800DB70:
	movs r4, 0x3F
	ands r4, r0
	b _0800DB84
_0800DB76:
	ldrh r1, [r1, 0xE]
	b _0800DB7C
_0800DB7A:
	ldrh r1, [r1, 0x10]
_0800DB7C:
	movs r0, 0xFC
	lsls r0, 4
	ands r0, r1
	lsrs r4, r0, 6
_0800DB84:
	movs r3, 0
	movs r6, 0x3
	ldr r0, _0800DBB0 @ =0x00006001
	adds r5, r0, 0
	mov r2, sp
_0800DB8E:
	lsls r1, r3, 1
	adds r0, r6, 0
	lsls r0, r1
	ands r0, r4
	asrs r0, r1
	adds r0, r5
	strh r0, [r2]
	adds r2, 0x2
	adds r3, 0x1
	cmp r3, 0x2
	ble _0800DB8E
	mov r0, sp
	adds r1, r7, 0
	movs r2, 0x3
	bl CpuSet
	b _0800DC12
	.align 2, 0
_0800DBB0: .4byte 0x00006001
_0800DBB4:
	ldr r0, _0800DBD0 @ =0x02000000
	ldr r1, _0800DBD4 @ =0x000160cb
	adds r0, r1
	ldrb r0, [r0]
	cmp r3, r0
	bne _0800DBDC
	ldr r1, _0800DBD8 @ =gTasks
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r0, r1
	ldrh r4, [r0, 0xE]
	b _0800DBE8
	.align 2, 0
_0800DBD0: .4byte 0x02000000
_0800DBD4: .4byte 0x000160cb
_0800DBD8: .4byte gTasks
_0800DBDC:
	ldr r1, _0800DC1C @ =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	ldrh r4, [r0, 0x10]
_0800DBE8:
	movs r3, 0
	movs r6, 0x3
	ldr r2, _0800DC20 @ =0x00006001
	adds r5, r2, 0
	mov r2, sp
_0800DBF2:
	lsls r1, r3, 1
	adds r0, r6, 0
	lsls r0, r1
	ands r0, r4
	asrs r0, r1
	adds r0, r5
	strh r0, [r2]
	adds r2, 0x2
	adds r3, 0x1
	cmp r3, 0x5
	ble _0800DBF2
	mov r0, sp
	adds r1, r7, 0
	movs r2, 0x6
	bl CpuSet
_0800DC12:
	add sp, 0xC
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DC1C: .4byte gTasks
_0800DC20: .4byte 0x00006001
	thumb_func_end sub_800DAF8

	thumb_func_start sub_800DC24
sub_800DC24: @ 800DC24
	push {r4,r5,lr}
	sub sp, 0x4
	ldr r0, _0800DC40 @ =gUnknown_02024D26
	ldrb r2, [r0]
	cmp r2, 0x3
	bne _0800DC4C
	ldr r4, _0800DC44 @ =gUnknown_03004210
	ldr r1, _0800DC48 @ =gUnknown_08400E57
	movs r0, 0x2
	str r0, [sp]
	adds r0, r4, 0
	movs r2, 0xA0
	movs r3, 0xD
	b _0800DDCA
	.align 2, 0
_0800DC40: .4byte gUnknown_02024D26
_0800DC44: .4byte gUnknown_03004210
_0800DC48: .4byte gUnknown_08400E57
_0800DC4C:
	ldr r0, _0800DC80 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0800DD38
	cmp r2, 0x1
	bne _0800DCCC
	ldr r2, _0800DC84 @ =gLinkPlayers
	ldr r0, _0800DC88 @ =0x02000000
	ldr r1, _0800DC8C @ =0x000160cb
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldrh r0, [r0, 0x18]
	cmp r0, 0x1
	beq _0800DC9C
	cmp r0, 0x1
	bgt _0800DC90
	cmp r0, 0
	bne _0800DC7E
	b _0800DDA8
_0800DC7E:
	b _0800DE1C
	.align 2, 0
_0800DC80: .4byte gUnknown_020239F8
_0800DC84: .4byte gLinkPlayers
_0800DC88: .4byte 0x02000000
_0800DC8C: .4byte 0x000160cb
_0800DC90:
	cmp r0, 0x2
	bne _0800DC96
	b _0800DDA8
_0800DC96:
	cmp r0, 0x3
	beq _0800DC9C
	b _0800DE1C
_0800DC9C:
	ldr r4, _0800DCC0 @ =gUnknown_03004210
	ldr r1, _0800DCC4 @ =gUnknown_08400E48
	movs r5, 0x2
	str r5, [sp]
	adds r0, r4, 0
	movs r2, 0xA0
	movs r3, 0x15
	bl InitWindow
	adds r0, r4, 0
	bl sub_8002F44
	ldr r1, _0800DCC8 @ =gUnknown_08400E4F
	str r5, [sp]
	adds r0, r4, 0
	movs r2, 0xA8
	movs r3, 0x6
	b _0800DDCA
	.align 2, 0
_0800DCC0: .4byte gUnknown_03004210
_0800DCC4: .4byte gUnknown_08400E48
_0800DCC8: .4byte gUnknown_08400E4F
_0800DCCC:
	ldr r2, _0800DCF0 @ =gLinkPlayers
	ldr r0, _0800DCF4 @ =0x02000000
	ldr r1, _0800DCF8 @ =0x000160cb
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldrh r0, [r0, 0x18]
	cmp r0, 0x1
	beq _0800DDA8
	cmp r0, 0x1
	bgt _0800DCFC
	cmp r0, 0
	beq _0800DD08
	b _0800DE1C
	.align 2, 0
_0800DCF0: .4byte gLinkPlayers
_0800DCF4: .4byte 0x02000000
_0800DCF8: .4byte 0x000160cb
_0800DCFC:
	cmp r0, 0x2
	beq _0800DD08
	cmp r0, 0x3
	beq _0800DD06
	b _0800DE1C
_0800DD06:
	b _0800DDA8
_0800DD08:
	ldr r4, _0800DD2C @ =gUnknown_03004210
	ldr r1, _0800DD30 @ =gUnknown_08400E48
	movs r5, 0x2
	str r5, [sp]
	adds r0, r4, 0
	movs r2, 0xA0
	movs r3, 0x15
	bl InitWindow
	adds r0, r4, 0
	bl sub_8002F44
	ldr r1, _0800DD34 @ =gUnknown_08400E4F
	str r5, [sp]
	adds r0, r4, 0
	movs r2, 0xA8
	movs r3, 0x6
	b _0800DDCA
	.align 2, 0
_0800DD2C: .4byte gUnknown_03004210
_0800DD30: .4byte gUnknown_08400E48
_0800DD34: .4byte gUnknown_08400E4F
_0800DD38:
	cmp r2, 0x1
	bne _0800DD90
	ldr r2, _0800DD78 @ =gLinkPlayers
	ldr r0, _0800DD7C @ =0x02000000
	ldr r1, _0800DD80 @ =0x000160cb
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldrh r0, [r0, 0x18]
	cmp r0, 0
	beq _0800DDA8
	ldr r4, _0800DD84 @ =gUnknown_03004210
	ldr r1, _0800DD88 @ =gUnknown_08400E48
	movs r5, 0x2
	str r5, [sp]
	adds r0, r4, 0
	movs r2, 0xA0
	movs r3, 0x15
	bl InitWindow
	adds r0, r4, 0
	bl sub_8002F44
	ldr r1, _0800DD8C @ =gUnknown_08400E4F
	str r5, [sp]
	adds r0, r4, 0
	movs r2, 0xA8
	movs r3, 0x6
	b _0800DDCA
	.align 2, 0
_0800DD78: .4byte gLinkPlayers
_0800DD7C: .4byte 0x02000000
_0800DD80: .4byte 0x000160cb
_0800DD84: .4byte gUnknown_03004210
_0800DD88: .4byte gUnknown_08400E48
_0800DD8C: .4byte gUnknown_08400E4F
_0800DD90:
	ldr r2, _0800DDD8 @ =gLinkPlayers
	ldr r0, _0800DDDC @ =0x02000000
	ldr r1, _0800DDE0 @ =0x000160cb
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldrh r0, [r0, 0x18]
	cmp r0, 0
	beq _0800DDF0
_0800DDA8:
	ldr r4, _0800DDE4 @ =gUnknown_03004210
	ldr r1, _0800DDE8 @ =gUnknown_08400E48
	movs r5, 0x2
	str r5, [sp]
	adds r0, r4, 0
	movs r2, 0xA0
	movs r3, 0x6
	bl InitWindow
	adds r0, r4, 0
	bl sub_8002F44
	ldr r1, _0800DDEC @ =gUnknown_08400E4F
	str r5, [sp]
	adds r0, r4, 0
	movs r2, 0xA8
	movs r3, 0x15
_0800DDCA:
	bl InitWindow
	adds r0, r4, 0
	bl sub_8002F44
	b _0800DE1C
	.align 2, 0
_0800DDD8: .4byte gLinkPlayers
_0800DDDC: .4byte 0x02000000
_0800DDE0: .4byte 0x000160cb
_0800DDE4: .4byte gUnknown_03004210
_0800DDE8: .4byte gUnknown_08400E48
_0800DDEC: .4byte gUnknown_08400E4F
_0800DDF0:
	ldr r4, _0800DE24 @ =gUnknown_03004210
	ldr r1, _0800DE28 @ =gUnknown_08400E48
	movs r5, 0x2
	str r5, [sp]
	adds r0, r4, 0
	movs r2, 0xA0
	movs r3, 0x15
	bl InitWindow
	adds r0, r4, 0
	bl sub_8002F44
	ldr r1, _0800DE2C @ =gUnknown_08400E4F
	str r5, [sp]
	adds r0, r4, 0
	movs r2, 0xA8
	movs r3, 0x6
	bl InitWindow
	adds r0, r4, 0
	bl sub_8002F44
_0800DE1C:
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800DE24: .4byte gUnknown_03004210
_0800DE28: .4byte gUnknown_08400E48
_0800DE2C: .4byte gUnknown_08400E4F
	thumb_func_end sub_800DC24

	thumb_func_start sub_800DE30
sub_800DE30: @ 800DE30
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	ldr r1, _0800DE64 @ =gTasks
	lsls r0, 2
	mov r10, r0
	add r0, r9
	lsls r0, 3
	adds r6, r0, r1
	movs r1, 0x8
	ldrsh r0, [r6, r1]
	cmp r0, 0x1
	bne _0800DE58
	b _0800DF9C
_0800DE58:
	cmp r0, 0x1
	bgt _0800DE68
	cmp r0, 0
	beq _0800DE70
	b _0800E212
	.align 2, 0
_0800DE64: .4byte gTasks
_0800DE68:
	cmp r0, 0x2
	bne _0800DE6E
	b _0800E03C
_0800DE6E:
	b _0800E212
_0800DE70:
	ldr r0, _0800DED0 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0800DEE0
	ldr r0, _0800DED4 @ =gLinkPlayers
	ldr r2, _0800DED8 @ =gUnknown_081F9680
	mov r8, r2
	adds r7, r0, 0
	adds r7, 0x8
	movs r5, 0x3
_0800DE88:
	ldrb r0, [r7, 0x10]
	movs r1, 0x3
	ands r1, r0
	str r1, [sp, 0x8]
	lsls r4, r1, 1
	adds r4, r1
	lsls r4, 2
	mov r2, r8
	adds r0, r4, r2
	ldr r1, [r0]
	str r1, [sp, 0xC]
	ldrh r2, [r0, 0x4]
	ldrb r3, [r0, 0x6]
	ldrb r0, [r0, 0x7]
	str r0, [sp]
	movs r0, 0x1
	str r0, [sp, 0x4]
	adds r0, r1, 0
	adds r1, r7, 0
	bl sub_8002E4C
	ldr r0, [sp, 0xC]
	bl sub_8002F44
	ldr r2, _0800DEDC @ =gUnknown_081F9680 + 0x8
	adds r4, r2
	ldr r2, [r4]
	mov r0, r9
	ldr r1, [sp, 0x8]
	bl sub_800DAF8
	adds r7, 0x1C
	subs r5, 0x1
	cmp r5, 0
	bge _0800DE88
	b _0800DF70
	.align 2, 0
_0800DED0: .4byte gUnknown_020239F8
_0800DED4: .4byte gLinkPlayers
_0800DED8: .4byte gUnknown_081F9680
_0800DEDC: .4byte gUnknown_081F9680 + 0x8
_0800DEE0:
	ldr r0, _0800DF84 @ =0x02000000
	ldr r5, _0800DF88 @ =0x000160cb
	adds r0, r5
	ldrb r7, [r0]
	movs r0, 0x1
	adds r6, r7, 0
	eors r6, r0
	adds r1, r6, 0
	ldr r2, _0800DF8C @ =gLinkPlayers
	lsls r0, r7, 3
	subs r0, r7
	lsls r0, 2
	adds r0, r2
	ldrh r0, [r0, 0x18]
	cmp r0, 0
	beq _0800DF04
	adds r6, r7, 0
	adds r7, r1, 0
_0800DF04:
	ldr r0, _0800DF90 @ =gUnknown_081F9680
	mov r8, r0
	adds r0, 0x30
	mov r1, r8
	ldr r4, [r1, 0x30]
	lsls r1, r7, 3
	subs r1, r7
	lsls r1, 2
	ldr r2, _0800DF94 @ =gLinkPlayers + 0x8
	adds r1, r2
	ldrh r2, [r0, 0x4]
	ldrb r3, [r0, 0x6]
	ldrb r0, [r0, 0x7]
	str r0, [sp]
	movs r5, 0x1
	str r5, [sp, 0x4]
	adds r0, r4, 0
	bl sub_8002E4C
	adds r0, r4, 0
	bl sub_8002F44
	mov r0, r8
	ldr r2, [r0, 0x38]
	mov r0, r9
	adds r1, r7, 0
	bl sub_800DAF8
	mov r0, r8
	adds r0, 0x3C
	mov r1, r8
	ldr r4, [r1, 0x3C]
	lsls r1, r6, 3
	subs r1, r6
	lsls r1, 2
	ldr r2, _0800DF94 @ =gLinkPlayers + 0x8
	adds r1, r2
	ldrh r2, [r0, 0x4]
	ldrb r3, [r0, 0x6]
	ldrb r0, [r0, 0x7]
	str r0, [sp]
	str r5, [sp, 0x4]
	adds r0, r4, 0
	bl sub_8002E4C
	adds r0, r4, 0
	bl sub_8002F44
	mov r5, r8
	ldr r2, [r5, 0x44]
	mov r0, r9
	adds r1, r6, 0
	bl sub_800DAF8
_0800DF70:
	ldr r0, _0800DF98 @ =gTasks
	mov r1, r10
	add r1, r9
	lsls r1, 3
	adds r1, r0
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
	b _0800E212
	.align 2, 0
_0800DF84: .4byte 0x02000000
_0800DF88: .4byte 0x000160cb
_0800DF8C: .4byte gLinkPlayers
_0800DF90: .4byte gUnknown_081F9680
_0800DF94: .4byte gLinkPlayers + 0x8
_0800DF98: .4byte gTasks
_0800DF9C:
	ldr r0, _0800E010 @ =0x00002710
	bl AllocSpritePalette
	lsls r0, 24
	ldr r2, _0800E014 @ =gPlttBufferUnfaded
	lsrs r0, 19
	ldr r1, _0800E018 @ =0x0000021e
	adds r0, r1
	adds r2, r0, r2
	ldr r1, _0800E01C @ =gPlttBufferFaded
	adds r0, r1
	ldr r1, _0800E020 @ =0x00007fff
	strh r1, [r0]
	strh r1, [r2]
	ldr r0, _0800E024 @ =gSpriteTemplate_81F9574
	movs r1, 0x6C
	movs r2, 0x50
	movs r3, 0
	bl CreateSprite
	ldr r4, _0800E028 @ =0x02000000
	ldr r2, _0800E02C @ =0x0001608a
	adds r7, r4, r2
	strb r0, [r7]
	ldr r0, _0800E030 @ =gSpriteTemplate_81F958C
	movs r1, 0x84
	movs r2, 0x50
	movs r3, 0
	bl CreateSprite
	ldr r5, _0800E034 @ =0x0001608b
	adds r4, r5
	strb r0, [r4]
	ldr r3, _0800E038 @ =gSprites
	ldrb r1, [r7]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	ldrh r0, [r6, 0x8]
	adds r0, 0x1
	strh r0, [r6, 0x8]
	b _0800E212
	.align 2, 0
_0800E010: .4byte 0x00002710
_0800E014: .4byte gPlttBufferUnfaded
_0800E018: .4byte 0x0000021e
_0800E01C: .4byte gPlttBufferFaded
_0800E020: .4byte 0x00007fff
_0800E024: .4byte gSpriteTemplate_81F9574
_0800E028: .4byte 0x02000000
_0800E02C: .4byte 0x0001608a
_0800E030: .4byte gSpriteTemplate_81F958C
_0800E034: .4byte 0x0001608b
_0800E038: .4byte gSprites
_0800E03C:
	movs r1, 0x12
	ldrsh r0, [r6, r1]
	cmp r0, 0
	beq _0800E0A4
	ldr r4, _0800E090 @ =gUnknown_030042C0
	ldrh r0, [r6, 0xA]
	bl Sin2
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0
	bge _0800E056
	adds r0, 0x1F
_0800E056:
	asrs r1, r0, 5
	movs r2, 0x14
	negs r2, r2
	adds r0, r2, 0
	subs r0, r1
	strh r0, [r4]
	ldr r4, _0800E094 @ =gUnknown_03004288
	ldrh r0, [r6, 0xC]
	bl Sin2
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0
	bge _0800E074
	adds r0, 0x1F
_0800E074:
	asrs r1, r0, 5
	movs r5, 0x8C
	negs r5, r5
	adds r0, r5, 0
	subs r0, r1
	strh r0, [r4]
	ldr r0, _0800E098 @ =gUnknown_030041B4
	ldr r2, _0800E09C @ =0x0000ffdc
	adds r1, r2, 0
	strh r1, [r0]
	ldr r0, _0800E0A0 @ =gUnknown_03004280
	strh r1, [r0]
	b _0800E110
	.align 2, 0
_0800E090: .4byte gUnknown_030042C0
_0800E094: .4byte gUnknown_03004288
_0800E098: .4byte gUnknown_030041B4
_0800E09C: .4byte 0x0000ffdc
_0800E0A0: .4byte gUnknown_03004280
_0800E0A4:
	ldr r4, _0800E134 @ =gUnknown_030042C0
	ldrh r0, [r6, 0xA]
	bl Sin2
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0
	bge _0800E0B6
	adds r0, 0x1F
_0800E0B6:
	asrs r1, r0, 5
	movs r5, 0x14
	negs r5, r5
	adds r0, r5, 0
	subs r0, r1
	strh r0, [r4]
	ldr r4, _0800E138 @ =gUnknown_030041B4
	ldrh r0, [r6, 0xA]
	bl Cos2
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0
	bge _0800E0D4
	adds r0, 0x1F
_0800E0D4:
	asrs r0, 5
	subs r0, 0xA4
	strh r0, [r4]
	ldr r4, _0800E13C @ =gUnknown_03004288
	ldrh r0, [r6, 0xC]
	bl Sin2
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0
	bge _0800E0EC
	adds r0, 0x1F
_0800E0EC:
	asrs r1, r0, 5
	movs r2, 0x8C
	negs r2, r2
	adds r0, r2, 0
	subs r0, r1
	strh r0, [r4]
	ldr r4, _0800E140 @ =gUnknown_03004280
	ldrh r0, [r6, 0xC]
	bl Cos2
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0
	bge _0800E10A
	adds r0, 0x1F
_0800E10A:
	asrs r0, 5
	subs r0, 0xA4
	strh r0, [r4]
_0800E110:
	ldr r1, _0800E144 @ =gTasks
	mov r5, r9
	lsls r0, r5, 2
	add r0, r9
	lsls r0, 3
	adds r1, r0, r1
	ldrh r0, [r1, 0xC]
	movs r2, 0xC
	ldrsh r7, [r1, r2]
	cmp r7, 0
	beq _0800E148
	subs r0, 0x2
	strh r0, [r1, 0xC]
	ldrh r0, [r1, 0xA]
	adds r0, 0x2
	strh r0, [r1, 0xA]
	b _0800E212
	.align 2, 0
_0800E134: .4byte gUnknown_030042C0
_0800E138: .4byte gUnknown_030041B4
_0800E13C: .4byte gUnknown_03004288
_0800E140: .4byte gUnknown_03004280
_0800E144: .4byte gTasks
_0800E148:
	movs r5, 0x12
	ldrsh r0, [r1, r5]
	cmp r0, 0
	beq _0800E154
	bl sub_800DC24
_0800E154:
	movs r0, 0x78
	bl PlaySE
	mov r0, r9
	bl DestroyTask
	ldr r4, _0800E224 @ =gSprites
	ldr r0, _0800E228 @ =0x02000000
	mov r8, r0
	ldr r1, _0800E22C @ =0x0001608a
	add r1, r8
	mov r9, r1
	ldrb r0, [r1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	adds r1, 0x3E
	ldrb r3, [r1]
	movs r2, 0x5
	negs r2, r2
	adds r0, r2, 0
	ands r0, r3
	strb r0, [r1]
	ldr r5, _0800E230 @ =0x0001608b
	add r8, r5
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x3E
	ldrb r1, [r0]
	ands r2, r1
	strb r2, [r0]
	mov r1, r8
	ldrb r0, [r1]
	lsls r2, r0, 4
	adds r2, r0
	lsls r2, 2
	adds r2, r4
	ldrh r3, [r2, 0x4]
	lsls r1, r3, 22
	lsrs r1, 22
	adds r1, 0x40
	ldr r5, _0800E234 @ =0x000003ff
	adds r0, r5, 0
	ands r1, r0
	ldr r0, _0800E238 @ =0xfffffc00
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, 0x4]
	mov r0, r9
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	strh r7, [r0, 0x2E]
	mov r2, r8
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0x1
	strh r1, [r0, 0x2E]
	mov r5, r9
	ldrb r1, [r5]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrh r1, [r0, 0x20]
	strh r1, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrh r1, [r0, 0x20]
	strh r1, [r0, 0x30]
	ldrb r1, [r5]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	strh r7, [r0, 0x32]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	strh r7, [r0, 0x32]
_0800E212:
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E224: .4byte gSprites
_0800E228: .4byte 0x02000000
_0800E22C: .4byte 0x0001608a
_0800E230: .4byte 0x0001608b
_0800E234: .4byte 0x000003ff
_0800E238: .4byte 0xfffffc00
	thumb_func_end sub_800DE30

	thumb_func_start sub_800E23C
sub_800E23C: @ 800E23C
	push {r4,r5,lr}
	ldr r0, _0800E29C @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0800E2DC
	ldr r0, _0800E2A0 @ =gVersusFrameGfx
	ldr r1, _0800E2A4 @ =0x06004000
	bl LZDecompressVram
	ldr r4, _0800E2A8 @ =gVersusFrameTilemap
	ldr r1, _0800E2AC @ =0x0600e000
	adds r0, r4, 0
	bl LZDecompressVram
	ldr r1, _0800E2B0 @ =0x0600f000
	adds r0, r4, 0
	bl LZDecompressVram
	ldr r0, _0800E2B4 @ =gUnknown_08E5DC2C
	ldr r1, _0800E2B8 @ =0x06010000
	bl LZDecompressVram
	ldr r0, _0800E2BC @ =gVersusFramePal
	movs r1, 0x60
	movs r2, 0x20
	bl LoadCompressedPalette
	ldr r1, _0800E2C0 @ =REG_BG1CNT
	ldr r2, _0800E2C4 @ =0x00005c04
	adds r0, r2, 0
	strh r0, [r1]
	ldr r0, _0800E2C8 @ =REG_WININ
	movs r1, 0x36
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	ldr r0, _0800E2CC @ =gUnknown_030041B4
	ldr r2, _0800E2D0 @ =0x0000ff5c
	adds r1, r2, 0
	strh r1, [r0]
	ldr r0, _0800E2D4 @ =gUnknown_03004280
	strh r1, [r0]
	ldr r0, _0800E2D8 @ =gUnknown_081F95A4
	bl LoadCompressedObjectPic
	b _0800E3FC
	.align 2, 0
_0800E29C: .4byte gUnknown_020239F8
_0800E2A0: .4byte gVersusFrameGfx
_0800E2A4: .4byte 0x06004000
_0800E2A8: .4byte gVersusFrameTilemap
_0800E2AC: .4byte 0x0600e000
_0800E2B0: .4byte 0x0600f000
_0800E2B4: .4byte gUnknown_08E5DC2C
_0800E2B8: .4byte 0x06010000
_0800E2BC: .4byte gVersusFramePal
_0800E2C0: .4byte REG_BG1CNT
_0800E2C4: .4byte 0x00005c04
_0800E2C8: .4byte REG_WININ
_0800E2CC: .4byte gUnknown_030041B4
_0800E2D0: .4byte 0x0000ff5c
_0800E2D4: .4byte gUnknown_03004280
_0800E2D8: .4byte gUnknown_081F95A4
_0800E2DC:
	ldr r0, _0800E2F0 @ =0x00000902
	ands r0, r1
	cmp r0, 0
	beq _0800E300
	ldr r0, _0800E2F4 @ =gBattleTerrainAnimTiles_Building
	ldr r1, _0800E2F8 @ =0x06004000
	bl LZDecompressVram
	ldr r0, _0800E2FC @ =gBattleTerrainAnimTilemap_Building
	b _0800E3D2
	.align 2, 0
_0800E2F0: .4byte 0x00000902
_0800E2F4: .4byte gBattleTerrainAnimTiles_Building
_0800E2F8: .4byte 0x06004000
_0800E2FC: .4byte gBattleTerrainAnimTilemap_Building
_0800E300:
	movs r0, 0x80
	lsls r0, 5
	ands r0, r1
	cmp r0, 0
	beq _0800E348
	ldr r0, _0800E320 @ =gGameVersion
	ldrb r0, [r0]
	cmp r0, 0x2
	bne _0800E330
	ldr r0, _0800E324 @ =gBattleTerrainAnimTiles_Cave
	ldr r1, _0800E328 @ =0x06004000
	bl LZDecompressVram
	ldr r0, _0800E32C @ =gBattleTerrainAnimTilemap_Cave
	b _0800E3D2
	.align 2, 0
_0800E320: .4byte gGameVersion
_0800E324: .4byte gBattleTerrainAnimTiles_Cave
_0800E328: .4byte 0x06004000
_0800E32C: .4byte gBattleTerrainAnimTilemap_Cave
_0800E330:
	ldr r0, _0800E33C @ =gBattleTerrainAnimTiles_Underwater
	ldr r1, _0800E340 @ =0x06004000
	bl LZDecompressVram
	ldr r0, _0800E344 @ =gBattleTerrainAnimTilemap_Underwater
	b _0800E3D2
	.align 2, 0
_0800E33C: .4byte gBattleTerrainAnimTiles_Underwater
_0800E340: .4byte 0x06004000
_0800E344: .4byte gBattleTerrainAnimTilemap_Underwater
_0800E348:
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _0800E3A0
	ldr r2, _0800E370 @ =gTrainers
	ldr r0, _0800E374 @ =gTrainerBattleOpponent
	ldrh r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0x19
	bne _0800E384
	ldr r0, _0800E378 @ =gBattleTerrainAnimTiles_Building
	ldr r1, _0800E37C @ =0x06004000
	bl LZDecompressVram
	ldr r0, _0800E380 @ =gBattleTerrainAnimTilemap_Building
	b _0800E3D2
	.align 2, 0
_0800E370: .4byte gTrainers
_0800E374: .4byte gTrainerBattleOpponent
_0800E378: .4byte gBattleTerrainAnimTiles_Building
_0800E37C: .4byte 0x06004000
_0800E380: .4byte gBattleTerrainAnimTilemap_Building
_0800E384:
	cmp r0, 0x20
	bne _0800E3A0
	ldr r0, _0800E394 @ =gBattleTerrainAnimTiles_Building
	ldr r1, _0800E398 @ =0x06004000
	bl LZDecompressVram
	ldr r0, _0800E39C @ =gBattleTerrainAnimTilemap_Building
	b _0800E3D2
	.align 2, 0
_0800E394: .4byte gBattleTerrainAnimTiles_Building
_0800E398: .4byte 0x06004000
_0800E39C: .4byte gBattleTerrainAnimTilemap_Building
_0800E3A0:
	bl sav1_map_get_battletype
	lsls r0, 24
	cmp r0, 0
	bne _0800E3EC
	ldr r4, _0800E3DC @ =gBattleTerrainTable
	ldr r5, _0800E3E0 @ =gUnknown_0300428C
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r1, r4, 0
	adds r1, 0x8
	adds r0, r1
	ldr r0, [r0]
	ldr r1, _0800E3E4 @ =0x06004000
	bl LZDecompressVram
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r4, 0xC
	adds r0, r4
	ldr r0, [r0]
_0800E3D2:
	ldr r1, _0800E3E8 @ =0x0600e000
	bl LZDecompressVram
	b _0800E3FC
	.align 2, 0
_0800E3DC: .4byte gBattleTerrainTable
_0800E3E0: .4byte gUnknown_0300428C
_0800E3E4: .4byte 0x06004000
_0800E3E8: .4byte 0x0600e000
_0800E3EC:
	ldr r0, _0800E404 @ =gBattleTerrainAnimTiles_Building
	ldr r1, _0800E408 @ =0x06004000
	bl LZDecompressVram
	ldr r0, _0800E40C @ =gBattleTerrainAnimTilemap_Building
	ldr r1, _0800E410 @ =0x0600e000
	bl LZDecompressVram
_0800E3FC:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E404: .4byte gBattleTerrainAnimTiles_Building
_0800E408: .4byte 0x06004000
_0800E40C: .4byte gBattleTerrainAnimTilemap_Building
_0800E410: .4byte 0x0600e000
	thumb_func_end sub_800E23C

	thumb_func_start sub_800E414
sub_800E414: @ 800E414
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	movs r4, 0
	cmp r0, 0x6
	bls _0800E422
	b _0800E7BA
_0800E422:
	lsls r0, 2
	ldr r1, _0800E42C @ =_0800E430
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E42C: .4byte _0800E430
	.align 2, 0
_0800E430:
	.4byte _0800E44C
	.4byte _0800E45C
	.4byte _0800E474
	.4byte _0800E484
	.4byte _0800E590
	.4byte _0800E69C
	.4byte _0800E7B4
_0800E44C:
	ldr r0, _0800E458 @ =gUnknown_08D00000
	movs r1, 0xC0
	lsls r1, 19
	bl LZDecompressVram
	b _0800E7BC
	.align 2, 0
_0800E458: .4byte gUnknown_08D00000
_0800E45C:
	ldr r0, _0800E46C @ =gUnknown_08D00524
	ldr r1, _0800E470 @ =0x0600c000
	movs r2, 0x80
	lsls r2, 4
	bl CpuSet
	b _0800E7BC
	.align 2, 0
_0800E46C: .4byte gUnknown_08D00524
_0800E470: .4byte 0x0600c000
_0800E474:
	ldr r0, _0800E480 @ =gUnknown_08D004E0
	movs r1, 0
	movs r2, 0x40
	bl LoadCompressedPalette
	b _0800E7BC
	.align 2, 0
_0800E480: .4byte gUnknown_08D004E0
_0800E484:
	ldr r0, _0800E4A8 @ =gUnknown_020239F8
	ldrh r1, [r0]
	ldr r0, _0800E4AC @ =0x00000902
	ands r0, r1
	cmp r0, 0
	beq _0800E492
	b _0800E57C
_0800E492:
	movs r0, 0x80
	lsls r0, 5
	ands r0, r1
	cmp r0, 0
	beq _0800E4C0
	ldr r0, _0800E4B0 @ =gGameVersion
	ldrb r0, [r0]
	cmp r0, 0x2
	bne _0800E4B8
	ldr r0, _0800E4B4 @ =gBattleTerrainTiles_Cave
	b _0800E57E
	.align 2, 0
_0800E4A8: .4byte gUnknown_020239F8
_0800E4AC: .4byte 0x00000902
_0800E4B0: .4byte gGameVersion
_0800E4B4: .4byte gBattleTerrainTiles_Cave
_0800E4B8:
	ldr r0, _0800E4BC @ =gBattleTerrainTiles_Water
	b _0800E57E
	.align 2, 0
_0800E4BC: .4byte gBattleTerrainTiles_Water
_0800E4C0:
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _0800E4F0
	ldr r2, _0800E4E4 @ =gTrainers
	ldr r0, _0800E4E8 @ =gTrainerBattleOpponent
	ldrh r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0x19
	beq _0800E57C
	cmp r0, 0x20
	bne _0800E4F0
	ldr r0, _0800E4EC @ =gBattleTerrainTiles_Stadium
	b _0800E57E
	.align 2, 0
_0800E4E4: .4byte gTrainers
_0800E4E8: .4byte gTrainerBattleOpponent
_0800E4EC: .4byte gBattleTerrainTiles_Stadium
_0800E4F0:
	bl sav1_map_get_battletype
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x8
	bls _0800E4FE
	b _0800E7BC
_0800E4FE:
	lsls r0, 2
	ldr r1, _0800E508 @ =_0800E50C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E508: .4byte _0800E50C
	.align 2, 0
_0800E50C:
	.4byte _0800E530
	.4byte _0800E57C
	.4byte _0800E54C
	.4byte _0800E554
	.4byte _0800E55C
	.4byte _0800E564
	.4byte _0800E56C
	.4byte _0800E574
	.4byte _0800E57C
_0800E530:
	ldr r2, _0800E544 @ =gBattleTerrainTable
	ldr r0, _0800E548 @ =gUnknown_0300428C
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	b _0800E57E
	.align 2, 0
_0800E544: .4byte gBattleTerrainTable
_0800E548: .4byte gUnknown_0300428C
_0800E54C:
	ldr r0, _0800E550 @ =gBattleTerrainTiles_Stadium
	b _0800E57E
	.align 2, 0
_0800E550: .4byte gBattleTerrainTiles_Stadium
_0800E554:
	ldr r0, _0800E558 @ =gBattleTerrainTiles_Stadium
	b _0800E57E
	.align 2, 0
_0800E558: .4byte gBattleTerrainTiles_Stadium
_0800E55C:
	ldr r0, _0800E560 @ =gBattleTerrainTiles_Stadium
	b _0800E57E
	.align 2, 0
_0800E560: .4byte gBattleTerrainTiles_Stadium
_0800E564:
	ldr r0, _0800E568 @ =gBattleTerrainTiles_Stadium
	b _0800E57E
	.align 2, 0
_0800E568: .4byte gBattleTerrainTiles_Stadium
_0800E56C:
	ldr r0, _0800E570 @ =gBattleTerrainTiles_Stadium
	b _0800E57E
	.align 2, 0
_0800E570: .4byte gBattleTerrainTiles_Stadium
_0800E574:
	ldr r0, _0800E578 @ =gBattleTerrainTiles_Stadium
	b _0800E57E
	.align 2, 0
_0800E578: .4byte gBattleTerrainTiles_Stadium
_0800E57C:
	ldr r0, _0800E588 @ =gBattleTerrainTiles_Building
_0800E57E:
	ldr r1, _0800E58C @ =0x06008000
	bl LZDecompressVram
	b _0800E7BC
	.align 2, 0
_0800E588: .4byte gBattleTerrainTiles_Building
_0800E58C: .4byte 0x06008000
_0800E590:
	ldr r0, _0800E5B4 @ =gUnknown_020239F8
	ldrh r1, [r0]
	ldr r0, _0800E5B8 @ =0x00000902
	ands r0, r1
	cmp r0, 0
	beq _0800E59E
	b _0800E688
_0800E59E:
	movs r0, 0x80
	lsls r0, 5
	ands r0, r1
	cmp r0, 0
	beq _0800E5CC
	ldr r0, _0800E5BC @ =gGameVersion
	ldrb r0, [r0]
	cmp r0, 0x2
	bne _0800E5C4
	ldr r0, _0800E5C0 @ =gBattleTerrainTilemap_Cave
	b _0800E68A
	.align 2, 0
_0800E5B4: .4byte gUnknown_020239F8
_0800E5B8: .4byte 0x00000902
_0800E5BC: .4byte gGameVersion
_0800E5C0: .4byte gBattleTerrainTilemap_Cave
_0800E5C4:
	ldr r0, _0800E5C8 @ =gBattleTerrainTilemap_Water
	b _0800E68A
	.align 2, 0
_0800E5C8: .4byte gBattleTerrainTilemap_Water
_0800E5CC:
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _0800E5FC
	ldr r2, _0800E5F0 @ =gTrainers
	ldr r0, _0800E5F4 @ =gTrainerBattleOpponent
	ldrh r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0x19
	beq _0800E688
	cmp r0, 0x20
	bne _0800E5FC
	ldr r0, _0800E5F8 @ =gBattleTerrainTilemap_Stadium
	b _0800E68A
	.align 2, 0
_0800E5F0: .4byte gTrainers
_0800E5F4: .4byte gTrainerBattleOpponent
_0800E5F8: .4byte gBattleTerrainTilemap_Stadium
_0800E5FC:
	bl sav1_map_get_battletype
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x8
	bls _0800E60A
	b _0800E7BC
_0800E60A:
	lsls r0, 2
	ldr r1, _0800E614 @ =_0800E618
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E614: .4byte _0800E618
	.align 2, 0
_0800E618:
	.4byte _0800E63C
	.4byte _0800E688
	.4byte _0800E658
	.4byte _0800E660
	.4byte _0800E668
	.4byte _0800E670
	.4byte _0800E678
	.4byte _0800E680
	.4byte _0800E688
_0800E63C:
	ldr r2, _0800E650 @ =gBattleTerrainTable
	ldr r0, _0800E654 @ =gUnknown_0300428C
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r2, 0x4
	adds r0, r2
	ldr r0, [r0]
	b _0800E68A
	.align 2, 0
_0800E650: .4byte gBattleTerrainTable
_0800E654: .4byte gUnknown_0300428C
_0800E658:
	ldr r0, _0800E65C @ =gBattleTerrainTilemap_Stadium
	b _0800E68A
	.align 2, 0
_0800E65C: .4byte gBattleTerrainTilemap_Stadium
_0800E660:
	ldr r0, _0800E664 @ =gBattleTerrainTilemap_Stadium
	b _0800E68A
	.align 2, 0
_0800E664: .4byte gBattleTerrainTilemap_Stadium
_0800E668:
	ldr r0, _0800E66C @ =gBattleTerrainTilemap_Stadium
	b _0800E68A
	.align 2, 0
_0800E66C: .4byte gBattleTerrainTilemap_Stadium
_0800E670:
	ldr r0, _0800E674 @ =gBattleTerrainTilemap_Stadium
	b _0800E68A
	.align 2, 0
_0800E674: .4byte gBattleTerrainTilemap_Stadium
_0800E678:
	ldr r0, _0800E67C @ =gBattleTerrainTilemap_Stadium
	b _0800E68A
	.align 2, 0
_0800E67C: .4byte gBattleTerrainTilemap_Stadium
_0800E680:
	ldr r0, _0800E684 @ =gBattleTerrainTilemap_Stadium
	b _0800E68A
	.align 2, 0
_0800E684: .4byte gBattleTerrainTilemap_Stadium
_0800E688:
	ldr r0, _0800E694 @ =gBattleTerrainTilemap_Building
_0800E68A:
	ldr r1, _0800E698 @ =0x0600d000
	bl LZDecompressVram
	b _0800E7BC
	.align 2, 0
_0800E694: .4byte gBattleTerrainTilemap_Building
_0800E698: .4byte 0x0600d000
_0800E69C:
	ldr r0, _0800E6C0 @ =gUnknown_020239F8
	ldrh r1, [r0]
	ldr r0, _0800E6C4 @ =0x00000902
	ands r0, r1
	cmp r0, 0
	beq _0800E6AA
	b _0800E7A4
_0800E6AA:
	movs r0, 0x80
	lsls r0, 5
	ands r0, r1
	cmp r0, 0
	beq _0800E6D8
	ldr r0, _0800E6C8 @ =gGameVersion
	ldrb r0, [r0]
	cmp r0, 0x2
	bne _0800E6D0
	ldr r0, _0800E6CC @ =gBattleTerrainPalette_Groudon
	b _0800E7A6
	.align 2, 0
_0800E6C0: .4byte gUnknown_020239F8
_0800E6C4: .4byte 0x00000902
_0800E6C8: .4byte gGameVersion
_0800E6CC: .4byte gBattleTerrainPalette_Groudon
_0800E6D0:
	ldr r0, _0800E6D4 @ =gBattleTerrainPalette_Kyogre
	b _0800E7A6
	.align 2, 0
_0800E6D4: .4byte gBattleTerrainPalette_Kyogre
_0800E6D8:
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _0800E710
	ldr r2, _0800E6F8 @ =gTrainers
	ldr r0, _0800E6FC @ =gTrainerBattleOpponent
	ldrh r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0x19
	bne _0800E704
	ldr r0, _0800E700 @ =gBattleTerrainPalette_BuildingLeader
	b _0800E7A6
	.align 2, 0
_0800E6F8: .4byte gTrainers
_0800E6FC: .4byte gTrainerBattleOpponent
_0800E700: .4byte gBattleTerrainPalette_BuildingLeader
_0800E704:
	cmp r0, 0x20
	bne _0800E710
	ldr r0, _0800E70C @ =gBattleTerrainPalette_StadiumSteven
	b _0800E7A6
	.align 2, 0
_0800E70C: .4byte gBattleTerrainPalette_StadiumSteven
_0800E710:
	bl sav1_map_get_battletype
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x8
	bhi _0800E7BC
	lsls r0, 2
	ldr r1, _0800E728 @ =_0800E72C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E728: .4byte _0800E72C
	.align 2, 0
_0800E72C:
	.4byte _0800E750
	.4byte _0800E76C
	.4byte _0800E774
	.4byte _0800E77C
	.4byte _0800E784
	.4byte _0800E78C
	.4byte _0800E794
	.4byte _0800E79C
	.4byte _0800E7A4
_0800E750:
	ldr r2, _0800E764 @ =gBattleTerrainTable
	ldr r0, _0800E768 @ =gUnknown_0300428C
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r2, 0x10
	adds r0, r2
	ldr r0, [r0]
	b _0800E7A6
	.align 2, 0
_0800E764: .4byte gBattleTerrainTable
_0800E768: .4byte gUnknown_0300428C
_0800E76C:
	ldr r0, _0800E770 @ =gBattleTerrainPalette_BuildingGym
	b _0800E7A6
	.align 2, 0
_0800E770: .4byte gBattleTerrainPalette_BuildingGym
_0800E774:
	ldr r0, _0800E778 @ =gBattleTerrainPalette_StadiumMagma
	b _0800E7A6
	.align 2, 0
_0800E778: .4byte gBattleTerrainPalette_StadiumMagma
_0800E77C:
	ldr r0, _0800E780 @ =gBattleTerrainPalette_StadiumAqua
	b _0800E7A6
	.align 2, 0
_0800E780: .4byte gBattleTerrainPalette_StadiumAqua
_0800E784:
	ldr r0, _0800E788 @ =gBattleTerrainPalette_StadiumSidney
	b _0800E7A6
	.align 2, 0
_0800E788: .4byte gBattleTerrainPalette_StadiumSidney
_0800E78C:
	ldr r0, _0800E790 @ =gBattleTerrainPalette_StadiumPhoebe
	b _0800E7A6
	.align 2, 0
_0800E790: .4byte gBattleTerrainPalette_StadiumPhoebe
_0800E794:
	ldr r0, _0800E798 @ =gBattleTerrainPalette_StadiumGlacia
	b _0800E7A6
	.align 2, 0
_0800E798: .4byte gBattleTerrainPalette_StadiumGlacia
_0800E79C:
	ldr r0, _0800E7A0 @ =gBattleTerrainPalette_StadiumDrake
	b _0800E7A6
	.align 2, 0
_0800E7A0: .4byte gBattleTerrainPalette_StadiumDrake
_0800E7A4:
	ldr r0, _0800E7B0 @ =gBattleTerrainPalette_BattleTower
_0800E7A6:
	movs r1, 0x20
	movs r2, 0x60
	bl LoadCompressedPalette
	b _0800E7BC
	.align 2, 0
_0800E7B0: .4byte gBattleTerrainPalette_BattleTower
_0800E7B4:
	bl sub_800D74C
	b _0800E7BC
_0800E7BA:
	movs r4, 0x1
_0800E7BC:
	adds r0, r4, 0
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_800E414

	thumb_func_start sub_800E7C4
sub_800E7C4: @ 800E7C4
	push {lr}
	ldr r0, _0800E7E4 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0800E7F0
	bl sub_800B858
	ldr r0, _0800E7E8 @ =sub_800F104
	bl SetMainCallback2
	ldr r1, _0800E7EC @ =gUnknown_02024D1E
	movs r0, 0
	strb r0, [r1]
	b _0800E7F4
	.align 2, 0
_0800E7E4: .4byte gUnknown_020239F8
_0800E7E8: .4byte sub_800F104
_0800E7EC: .4byte gUnknown_02024D1E
_0800E7F0:
	bl sub_800E7F8
_0800E7F4:
	pop {r0}
	bx r0
	thumb_func_end sub_800E7C4

	thumb_func_start sub_800E7F8
sub_800E7F8: @ 800E7F8
	push {r4,r5,lr}
	sub sp, 0x4
	movs r0, 0
	bl SetHBlankCallback
	movs r0, 0
	bl SetVBlankCallback
	movs r4, 0
	str r4, [sp]
	movs r1, 0xC0
	lsls r1, 19
	ldr r2, _0800E90C @ =0x05006000
	mov r0, sp
	bl CpuSet
	ldr r0, _0800E910 @ =REG_MOSAIC
	strh r4, [r0]
	subs r0, 0xC
	movs r2, 0xF0
	strh r2, [r0]
	adds r0, 0x4
	ldr r3, _0800E914 @ =0x00005051
	adds r1, r3, 0
	strh r1, [r0]
	adds r0, 0x4
	strh r4, [r0]
	adds r0, 0x2
	strh r4, [r0]
	ldr r0, _0800E918 @ =gUnknown_030042C4
	strh r2, [r0]
	ldr r0, _0800E91C @ =gUnknown_03004240
	strh r1, [r0]
	bl dp12_8087EA4
	ldr r0, _0800E920 @ =gUnknown_03004DE0
	movs r3, 0xF0
	movs r5, 0xF0
	lsls r5, 3
	adds r2, r0, r5
	movs r1, 0x4F
_0800E84A:
	strh r3, [r0]
	strh r3, [r2]
	adds r2, 0x2
	adds r0, 0x2
	subs r1, 0x1
	cmp r1, 0
	bge _0800E84A
	movs r1, 0x50
	ldr r4, _0800E924 @ =gUnknown_081F9674
	ldr r0, _0800E920 @ =gUnknown_03004DE0
	ldr r3, _0800E928 @ =0x0000ff10
	movs r5, 0x82
	lsls r5, 4
	adds r2, r0, r5
	adds r0, 0xA0
_0800E868:
	strh r3, [r0]
	strh r3, [r2]
	adds r2, 0x2
	adds r0, 0x2
	adds r1, 0x1
	cmp r1, 0x9F
	ble _0800E868
	ldr r0, [r4]
	ldr r1, [r4, 0x4]
	ldr r2, [r4, 0x8]
	bl sub_80895F8
	ldr r4, _0800E92C @ =gWindowConfig_81E6C58
	adds r0, r4, 0
	bl SetUpWindowConfig
	bl ResetPaletteFade
	ldr r0, _0800E930 @ =gUnknown_030042A4
	movs r1, 0
	strh r1, [r0]
	ldr r0, _0800E934 @ =gUnknown_030042A0
	strh r1, [r0]
	ldr r0, _0800E938 @ =gUnknown_030042C0
	strh r1, [r0]
	ldr r0, _0800E93C @ =gUnknown_030041B4
	strh r1, [r0]
	ldr r0, _0800E940 @ =gUnknown_03004288
	strh r1, [r0]
	ldr r0, _0800E944 @ =gUnknown_03004280
	strh r1, [r0]
	ldr r0, _0800E948 @ =gUnknown_030041B0
	strh r1, [r0]
	ldr r0, _0800E94C @ =gUnknown_030041B8
	strh r1, [r0]
	bl sub_8081D3C
	ldr r1, _0800E950 @ =gUnknown_0300428C
	strb r0, [r1]
	ldr r0, _0800E954 @ =gUnknown_03004210
	adds r1, r4, 0
	bl InitWindowFromConfig
	ldr r0, _0800E958 @ =gUnknown_030041D0
	ldr r1, _0800E95C @ =gWindowConfig_81E71D0
	bl InitWindowFromConfig
	ldr r0, _0800E960 @ =gUnknown_03004250
	ldr r1, _0800E964 @ =gWindowConfig_81E71EC
	bl InitWindowFromConfig
	bl sub_800D6D4
	bl sub_800DAB8
	bl ResetSpriteData
	bl ResetTasks
	bl sub_800E23C
	bl FreeAllSpritePalettes
	ldr r1, _0800E968 @ =gReservedSpritePaletteCount
	movs r0, 0x4
	strb r0, [r1]
	ldr r0, _0800E96C @ =sub_800FCFC
	bl SetVBlankCallback
	bl sub_800B884
	ldr r0, _0800E970 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0800E978
	ldr r0, _0800E974 @ =sub_800F298
	bl SetMainCallback2
	b _0800E97E
	.align 2, 0
_0800E90C: .4byte 0x05006000
_0800E910: .4byte REG_MOSAIC
_0800E914: .4byte 0x00005051
_0800E918: .4byte gUnknown_030042C4
_0800E91C: .4byte gUnknown_03004240
_0800E920: .4byte gUnknown_03004DE0
_0800E924: .4byte gUnknown_081F9674
_0800E928: .4byte 0x0000ff10
_0800E92C: .4byte gWindowConfig_81E6C58
_0800E930: .4byte gUnknown_030042A4
_0800E934: .4byte gUnknown_030042A0
_0800E938: .4byte gUnknown_030042C0
_0800E93C: .4byte gUnknown_030041B4
_0800E940: .4byte gUnknown_03004288
_0800E944: .4byte gUnknown_03004280
_0800E948: .4byte gUnknown_030041B0
_0800E94C: .4byte gUnknown_030041B8
_0800E950: .4byte gUnknown_0300428C
_0800E954: .4byte gUnknown_03004210
_0800E958: .4byte gUnknown_030041D0
_0800E95C: .4byte gWindowConfig_81E71D0
_0800E960: .4byte gUnknown_03004250
_0800E964: .4byte gWindowConfig_81E71EC
_0800E968: .4byte gReservedSpritePaletteCount
_0800E96C: .4byte sub_800FCFC
_0800E970: .4byte gUnknown_020239F8
_0800E974: .4byte sub_800F298
_0800E978:
	ldr r0, _0800E9CC @ =sub_800EC9C
	bl SetMainCallback2
_0800E97E:
	ldr r0, _0800E9D0 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _0800E998
	ldr r0, _0800E9D4 @ =gEnemyParty
	ldr r1, _0800E9D8 @ =gTrainerBattleOpponent
	ldrh r1, [r1]
	bl sub_800F8E8
	bl sub_8040C38
_0800E998:
	ldr r0, _0800E9DC @ =gMain
	ldr r1, _0800E9E0 @ =0x0000043d
	adds r0, r1
	ldrb r1, [r0]
	movs r2, 0x2
	orrs r1, r2
	strb r1, [r0]
	ldr r4, _0800E9E4 @ =gPlayerParty
	movs r3, 0xFA
	lsls r3, 1
	adds r5, r4, r3
_0800E9AE:
	adds r0, r4, 0
	movs r1, 0x3
	bl AdjustFriendship
	adds r4, 0x64
	cmp r4, r5
	ble _0800E9AE
	movs r1, 0
	ldr r0, _0800E9E8 @ =gUnknown_02024D1E
	strb r1, [r0]
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E9CC: .4byte sub_800EC9C
_0800E9D0: .4byte gUnknown_020239F8
_0800E9D4: .4byte gEnemyParty
_0800E9D8: .4byte gTrainerBattleOpponent
_0800E9DC: .4byte gMain
_0800E9E0: .4byte 0x0000043d
_0800E9E4: .4byte gPlayerParty
_0800E9E8: .4byte gUnknown_02024D1E
	thumb_func_end sub_800E7F8

	thumb_func_start sub_800E9EC
sub_800E9EC: @ 800E9EC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	movs r6, 0
	mov r9, r6
	movs r0, 0xCE
	lsls r0, 1
	mov r10, r0
	mov r8, r6
_0800EA02:
	movs r0, 0x64
	mov r4, r9
	muls r4, r0
	ldr r0, _0800EAA4 @ =gPlayerParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	lsls r0, 16
	lsrs r5, r0, 16
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	lsls r0, 16
	lsrs r7, r0, 16
	adds r0, r4, 0
	movs r1, 0x37
	bl GetMonData
	adds r1, r0, 0
	cmp r5, 0
	beq _0800EA7E
	cmp r5, r10
	beq _0800EA4A
	cmp r7, 0
	beq _0800EA4A
	cmp r1, 0
	bne _0800EA4A
	movs r0, 0x1
	mov r2, r8
	lsls r0, r2
	orrs r6, r0
	lsls r0, r6, 16
	lsrs r6, r0, 16
_0800EA4A:
	cmp r5, 0
	beq _0800EA7E
	cmp r7, 0
	beq _0800EA66
	cmp r5, r10
	beq _0800EA5A
	cmp r1, 0
	beq _0800EA66
_0800EA5A:
	movs r0, 0x2
	mov r1, r8
	lsls r0, r1
	orrs r6, r0
	lsls r0, r6, 16
	lsrs r6, r0, 16
_0800EA66:
	cmp r5, 0
	beq _0800EA7E
	cmp r5, r10
	beq _0800EA7E
	cmp r7, 0
	bne _0800EA7E
	movs r0, 0x3
	mov r2, r8
	lsls r0, r2
	orrs r6, r0
	lsls r0, r6, 16
	lsrs r6, r0, 16
_0800EA7E:
	movs r0, 0x2
	add r8, r0
	movs r1, 0x1
	add r9, r1
	mov r2, r9
	cmp r2, 0x5
	ble _0800EA02
	ldr r1, _0800EAA8 @ =0x02000000
	strb r6, [r1, 0x2]
	lsrs r0, r6, 8
	strb r0, [r1, 0x3]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EAA4: .4byte gPlayerParty
_0800EAA8: .4byte 0x02000000
	thumb_func_end sub_800E9EC

	thumb_func_start sub_800EAAC
sub_800EAAC: @ 800EAAC
	push {r4-r6,lr}
	ldr r4, _0800EAF4 @ =0x02000004
	movs r2, 0
	ldr r6, _0800EAF8 @ =gSaveBlock1
	ldr r0, _0800EAFC @ =0x00003160
	adds r3, r6, r0
_0800EAB8:
	adds r0, r4, r2
	adds r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, 0x6
	ble _0800EAB8
	movs r2, 0
	adds r3, r4, 0
	adds r3, 0x8
	ldr r5, _0800EB00 @ =gSaveBlock1 + 0x3676
_0800EACE:
	adds r0, r3, r2
	adds r1, r2, r5
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, 0x11
	ble _0800EACE
	ldr r1, _0800EB04 @ =0x00003688
	adds r0, r6, r1
	ldrb r0, [r0]
	strb r0, [r4, 0x7]
	adds r1, 0x1
	adds r0, r6, r1
	ldrb r0, [r0]
	strb r0, [r4, 0x1A]
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EAF4: .4byte 0x02000004
_0800EAF8: .4byte gSaveBlock1
_0800EAFC: .4byte 0x00003160
_0800EB00: .4byte gSaveBlock1 + 0x3676
_0800EB04: .4byte 0x00003688
	thumb_func_end sub_800EAAC

	thumb_func_start sub_800EB08
sub_800EB08: @ 800EB08
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r0, _0800EB84 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _0800EBA4
	movs r3, 0
	ldr r5, _0800EB88 @ =gEnigmaBerries
	ldr r0, _0800EB8C @ =gSaveBlock1
	mov r12, r0
	adds r7, r5, 0
	ldr r6, _0800EB90 @ =0x00003160
	add r6, r12
	adds r4, r5, 0
	adds r4, 0x38
_0800EB30:
	adds r1, r3, r7
	adds r2, r3, r6
	ldrb r0, [r2]
	strb r0, [r1]
	adds r1, r3, r4
	ldrb r0, [r2]
	strb r0, [r1]
	adds r3, 0x1
	cmp r3, 0x6
	ble _0800EB30
	movs r3, 0
	ldr r4, _0800EB94 @ =gUnknown_02024DF8
	ldr r7, _0800EB98 @ =gSaveBlock1 + 0x3676
	adds r6, r4, 0
	adds r6, 0x38
_0800EB4E:
	adds r1, r3, r4
	adds r2, r3, r7
	ldrb r0, [r2]
	strb r0, [r1]
	adds r1, r3, r6
	ldrb r0, [r2]
	strb r0, [r1]
	adds r3, 0x1
	cmp r3, 0x11
	ble _0800EB4E
	ldr r1, _0800EB9C @ =0x00003688
	add r1, r12
	ldrb r0, [r1]
	strb r0, [r5, 0x7]
	ldrb r0, [r1]
	adds r1, r5, 0
	adds r1, 0x3F
	strb r0, [r1]
	ldr r1, _0800EBA0 @ =0x00003689
	add r1, r12
	ldrb r0, [r1]
	strb r0, [r5, 0x1A]
	ldrb r1, [r1]
	adds r0, r5, 0
	adds r0, 0x52
	strb r1, [r0]
	b _0800EC28
	.align 2, 0
_0800EB84: .4byte gUnknown_020239F8
_0800EB88: .4byte gEnigmaBerries
_0800EB8C: .4byte gSaveBlock1
_0800EB90: .4byte 0x00003160
_0800EB94: .4byte gUnknown_02024DF8
_0800EB98: .4byte gSaveBlock1 + 0x3676
_0800EB9C: .4byte 0x00003688
_0800EBA0: .4byte 0x00003689
_0800EBA4:
	movs r0, 0x40
	ands r0, r1
	movs r1, 0x2
	mov r8, r1
	cmp r0, 0
	beq _0800EBB4
	movs r0, 0x4
	mov r8, r0
_0800EBB4:
	movs r3, 0
	cmp r3, r8
	bge _0800EC28
	ldr r1, _0800EC38 @ =gEnigmaBerries
	mov r12, r1
	ldr r0, _0800EC3C @ =gBlockRecvBuffer + 0x4
	mov r10, r0
	movs r1, 0x8
	add r1, r12
	mov r9, r1
_0800EBC8:
	lsls r0, r3, 8
	mov r1, r10
	adds r5, r0, r1
	lsls r0, r3, 3
	subs r0, r3
	lsls r0, 2
	ldr r1, _0800EC40 @ =gLinkPlayers
	adds r0, r1
	ldrb r4, [r0, 0x18]
	movs r2, 0
	adds r7, r3, 0x1
	lsls r1, r4, 3
	subs r0, r1, r4
	adds r6, r1, 0
	lsls r0, 2
	mov r1, r12
	adds r3, r0, r1
_0800EBEA:
	adds r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r3]
	adds r3, 0x1
	adds r2, 0x1
	cmp r2, 0x6
	ble _0800EBEA
	movs r2, 0
	subs r0, r6, r4
	lsls r0, 2
	mov r1, r9
	adds r3, r0, r1
	adds r1, r5, 0
	adds r1, 0x8
_0800EC06:
	adds r0, r1, r2
	ldrb r0, [r0]
	strb r0, [r3]
	adds r3, 0x1
	adds r2, 0x1
	cmp r2, 0x11
	ble _0800EC06
	subs r0, r6, r4
	lsls r0, 2
	add r0, r12
	ldrb r1, [r5, 0x7]
	strb r1, [r0, 0x7]
	ldrb r1, [r5, 0x1A]
	strb r1, [r0, 0x1A]
	adds r3, r7, 0
	cmp r3, r8
	blt _0800EBC8
_0800EC28:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EC38: .4byte gEnigmaBerries
_0800EC3C: .4byte gBlockRecvBuffer + 0x4
_0800EC40: .4byte gLinkPlayers
	thumb_func_end sub_800EB08

	thumb_func_start shedinja_something
shedinja_something: @ 800EC44
	push {r4,r5,lr}
	sub sp, 0x10
	adds r4, r0, 0
	add r5, sp, 0xC
	movs r0, 0x1
	strb r0, [r5]
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	ldr r1, _0800EC94 @ =0x0000012f
	cmp r0, r1
	bne _0800EC8C
	adds r0, r4, 0
	movs r1, 0x3
	bl GetMonData
	ldrb r1, [r5]
	cmp r0, r1
	beq _0800EC8C
	adds r0, r4, 0
	movs r1, 0x2
	mov r2, sp
	bl GetMonData
	ldr r1, _0800EC98 @ =gUnknown_081F96C8
	mov r0, sp
	bl StringCompareWithoutExtCtrlCodes
	cmp r0, 0
	bne _0800EC8C
	adds r0, r4, 0
	movs r1, 0x3
	adds r2, r5, 0
	bl SetMonData
_0800EC8C:
	add sp, 0x10
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800EC94: .4byte 0x0000012f
_0800EC98: .4byte gUnknown_081F96C8
	thumb_func_end shedinja_something

	thumb_func_start sub_800EC9C
sub_800EC9C: @ 800EC9C
	push {r4-r7,lr}
	bl RunTasks
	bl AnimateSprites
	bl BuildOamBuffer
	bl GetMultiplayerId
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, _0800ECD4 @ =0x02000000
	ldr r1, _0800ECD8 @ =0x000160cb
	adds r0, r1
	strb r4, [r0]
	movs r0, 0x1
	adds r5, r4, 0
	eors r5, r0
	ldr r0, _0800ECDC @ =gUnknown_02024D1E
	ldrb r0, [r0]
	cmp r0, 0x9
	bls _0800ECCA
	b _0800F008
_0800ECCA:
	lsls r0, 2
	ldr r1, _0800ECE0 @ =_0800ECE4
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800ECD4: .4byte 0x02000000
_0800ECD8: .4byte 0x000160cb
_0800ECDC: .4byte gUnknown_02024D1E
_0800ECE0: .4byte _0800ECE4
	.align 2, 0
_0800ECE4:
	.4byte _0800ED0C
	.4byte _0800ED7C
	.4byte _0800EE88
	.4byte _0800EEAC
	.4byte _0800EED8
	.4byte _0800EEFC
	.4byte _0800EF28
	.4byte _0800EF48
	.4byte _0800EFB4
	.4byte _0800EFCC
_0800ED0C:
	ldr r2, _0800ED54 @ =gUnknown_020239F8
	ldrh r1, [r2]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0800ED64
	ldr r0, _0800ED58 @ =gReceivedRemoteLinkPlayers
	ldrb r0, [r0]
	cmp r0, 0
	bne _0800ED22
	b _0800F008
_0800ED22:
	bl sub_8007ECC
	lsls r0, 24
	cmp r0, 0
	bne _0800ED2E
	b _0800F008
_0800ED2E:
	ldr r4, _0800ED5C @ =0x02000000
	movs r5, 0x1
	strb r5, [r4]
	strb r5, [r4, 0x1]
	bl sub_800E9EC
	bl sub_800EAAC
	bl bitmask_all_link_players_but_self
	lsls r0, 24
	lsrs r0, 24
	adds r1, r4, 0
	movs r2, 0x20
	bl SendBlock
	ldr r0, _0800ED60 @ =gUnknown_02024D1E
	strb r5, [r0]
	b _0800F008
	.align 2, 0
_0800ED54: .4byte gUnknown_020239F8
_0800ED58: .4byte gReceivedRemoteLinkPlayers
_0800ED5C: .4byte 0x02000000
_0800ED60: .4byte gUnknown_02024D1E
_0800ED64:
	movs r0, 0x4
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0800ED78 @ =gUnknown_02024D1E
	movs r0, 0x8
	strb r0, [r1]
	bl sub_800EB08
	b _0800F008
	.align 2, 0
_0800ED78: .4byte gUnknown_02024D1E
_0800ED7C:
	bl GetBlockReceivedStatus
	movs r1, 0x3
	ands r1, r0
	cmp r1, 0x3
	beq _0800ED8A
	b _0800F008
_0800ED8A:
	bl ResetBlockReceivedFlags
	movs r3, 0
	ldr r0, _0800EDA8 @ =gBlockRecvBuffer
	ldrh r1, [r0]
	movs r0, 0x80
	lsls r0, 1
	cmp r1, r0
	bne _0800EDBC
	cmp r4, 0
	bne _0800EDB0
	ldr r0, _0800EDAC @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r2, 0xC
	b _0800EDB6
	.align 2, 0
_0800EDA8: .4byte gBlockRecvBuffer
_0800EDAC: .4byte gUnknown_020239F8
_0800EDB0:
	ldr r0, _0800EDE0 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r2, 0x8
_0800EDB6:
	orrs r1, r2
	strh r1, [r0]
	adds r3, 0x1
_0800EDBC:
	lsls r7, r5, 8
	cmp r3, 0
	bne _0800EE38
	ldr r0, _0800EDE4 @ =gBlockRecvBuffer
	movs r1, 0x80
	lsls r1, 1
	adds r2, r0, r1
	ldrh r1, [r0]
	adds r6, r0, 0
	ldrh r2, [r2]
	cmp r1, r2
	bne _0800EDF4
	cmp r4, 0
	bne _0800EDE8
	ldr r0, _0800EDE0 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r2, 0xC
	b _0800EDEE
	.align 2, 0
_0800EDE0: .4byte gUnknown_020239F8
_0800EDE4: .4byte gBlockRecvBuffer
_0800EDE8:
	ldr r0, _0800EE04 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r2, 0x8
_0800EDEE:
	orrs r1, r2
	strh r1, [r0]
	adds r3, 0x1
_0800EDF4:
	lsls r7, r5, 8
	cmp r3, 0
	bne _0800EE38
	ldrh r1, [r6]
	ldr r0, _0800EE08 @ =0x00000101
	ldr r2, _0800EE04 @ =gUnknown_020239F8
	b _0800EE1A
	.align 2, 0
_0800EE04: .4byte gUnknown_020239F8
_0800EE08: .4byte 0x00000101
_0800EE0C:
	adds r3, 0x1
	cmp r3, 0x1
	bgt _0800EE22
	lsls r0, r3, 8
	adds r0, r6
	ldrh r1, [r0]
	ldr r0, _0800EE2C @ =0x00000101
_0800EE1A:
	cmp r1, r0
	bls _0800EE0C
	cmp r3, r4
	beq _0800EE0C
_0800EE22:
	cmp r3, 0x2
	bne _0800EE30
	ldrh r0, [r2]
	movs r1, 0xC
	b _0800EE34
	.align 2, 0
_0800EE2C: .4byte 0x00000101
_0800EE30:
	ldrh r0, [r2]
	movs r1, 0x8
_0800EE34:
	orrs r0, r1
	strh r0, [r2]
_0800EE38:
	bl sub_800EB08
	ldr r0, _0800EE78 @ =sub_800DE30
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _0800EE7C @ =gTasks
	lsls r2, r0, 2
	adds r2, r0
	lsls r2, 3
	adds r2, r1
	movs r1, 0
	movs r0, 0x87
	lsls r0, 1
	strh r0, [r2, 0xA]
	movs r0, 0x5A
	strh r0, [r2, 0xC]
	strh r1, [r2, 0x12]
	ldr r0, _0800EE80 @ =0x02000000
	ldrb r1, [r0, 0x2]
	ldrb r0, [r0, 0x3]
	lsls r0, 8
	orrs r1, r0
	strh r1, [r2, 0xE]
	ldr r0, _0800EE84 @ =gBlockRecvBuffer
	adds r0, 0x2
	adds r0, r7, r0
	ldrh r0, [r0]
	strh r0, [r2, 0x10]
	b _0800EF96
	.align 2, 0
_0800EE78: .4byte sub_800DE30
_0800EE7C: .4byte gTasks
_0800EE80: .4byte 0x02000000
_0800EE84: .4byte gBlockRecvBuffer
_0800EE88:
	bl sub_8007ECC
	lsls r0, 24
	cmp r0, 0
	bne _0800EE94
	b _0800F008
_0800EE94:
	bl bitmask_all_link_players_but_self
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _0800EEA8 @ =gPlayerParty
	movs r2, 0xC8
	bl SendBlock
	b _0800EF96
	.align 2, 0
_0800EEA8: .4byte gPlayerParty
_0800EEAC:
	bl GetBlockReceivedStatus
	movs r1, 0x3
	ands r1, r0
	cmp r1, 0x3
	beq _0800EEBA
	b _0800F008
_0800EEBA:
	bl ResetBlockReceivedFlags
	ldr r0, _0800EED0 @ =gEnemyParty
	lsls r1, r5, 8
	ldr r2, _0800EED4 @ =gBlockRecvBuffer
	adds r1, r2
	movs r2, 0xC8
	bl memcpy
	b _0800EF96
	.align 2, 0
_0800EED0: .4byte gEnemyParty
_0800EED4: .4byte gBlockRecvBuffer
_0800EED8:
	bl sub_8007ECC
	lsls r0, 24
	cmp r0, 0
	bne _0800EEE4
	b _0800F008
_0800EEE4:
	bl bitmask_all_link_players_but_self
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _0800EEF8 @ =gPlayerParty + 2 * 0x64
	movs r2, 0xC8
	bl SendBlock
	b _0800EF96
	.align 2, 0
_0800EEF8: .4byte gPlayerParty + 2 * 0x64
_0800EEFC:
	bl GetBlockReceivedStatus
	movs r1, 0x3
	ands r1, r0
	cmp r1, 0x3
	beq _0800EF0A
	b _0800F008
_0800EF0A:
	bl ResetBlockReceivedFlags
	ldr r0, _0800EF20 @ =gEnemyParty + 2 * 0x64
	lsls r1, r5, 8
	ldr r2, _0800EF24 @ =gBlockRecvBuffer
	adds r1, r2
	movs r2, 0xC8
	bl memcpy
	b _0800EF96
	.align 2, 0
_0800EF20: .4byte gEnemyParty + 2 * 0x64
_0800EF24: .4byte gBlockRecvBuffer
_0800EF28:
	bl sub_8007ECC
	lsls r0, 24
	cmp r0, 0
	beq _0800F008
	bl bitmask_all_link_players_but_self
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _0800EF44 @ =gPlayerParty + 4 * 0x64
	movs r2, 0xC8
	bl SendBlock
	b _0800EF96
	.align 2, 0
_0800EF44: .4byte gPlayerParty + 4 * 0x64
_0800EF48:
	bl GetBlockReceivedStatus
	movs r1, 0x3
	ands r1, r0
	cmp r1, 0x3
	bne _0800F008
	bl ResetBlockReceivedFlags
	ldr r4, _0800EFA0 @ =gEnemyParty + 4 * 0x64
	lsls r1, r5, 8
	ldr r0, _0800EFA4 @ =gBlockRecvBuffer
	adds r1, r0
	adds r0, r4, 0
	movs r2, 0xC8
	bl memcpy
	ldr r1, _0800EFA8 @ =0xfffffe70
	adds r0, r4, r1
	bl shedinja_something
	ldr r1, _0800EFAC @ =0xfffffed4
	adds r0, r4, r1
	bl shedinja_something
	adds r0, r4, 0
	subs r0, 0xC8
	bl shedinja_something
	adds r0, r4, 0
	subs r0, 0x64
	bl shedinja_something
	adds r0, r4, 0
	bl shedinja_something
	adds r0, r4, 0
	adds r0, 0x64
	bl shedinja_something
_0800EF96:
	ldr r1, _0800EFB0 @ =gUnknown_02024D1E
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _0800F008
	.align 2, 0
_0800EFA0: .4byte gEnemyParty + 4 * 0x64
_0800EFA4: .4byte gBlockRecvBuffer
_0800EFA8: .4byte 0xfffffe70
_0800EFAC: .4byte 0xfffffed4
_0800EFB0: .4byte gUnknown_02024D1E
_0800EFB4:
	bl sub_800B950
	ldr r0, _0800EFC8 @ =gUnknown_02024D1E
	ldrb r1, [r0]
	adds r1, 0x1
	movs r2, 0
	strb r1, [r0]
	strb r2, [r0, 0x1]
	strb r2, [r0, 0x2]
	b _0800F008
	.align 2, 0
_0800EFC8: .4byte gUnknown_02024D1E
_0800EFCC:
	ldr r0, _0800F010 @ =gUnknown_02024D1F
	adds r1, r0, 0x1
	bl battle_load_something
	lsls r0, 24
	cmp r0, 0
	beq _0800F008
	ldr r2, _0800F014 @ =gUnknown_030042D0
	ldr r1, _0800F018 @ =gMain
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, _0800F01C @ =sub_8010824
	str r0, [r1]
	ldr r0, _0800F020 @ =sub_800F808
	bl SetMainCallback2
	ldr r3, _0800F024 @ =gUnknown_020239F8
	ldrh r2, [r3]
	movs r0, 0x2
	ands r0, r2
	cmp r0, 0
	beq _0800F008
	ldr r1, _0800F028 @ =gTrainerBattleOpponent
	movs r4, 0x80
	lsls r4, 4
	adds r0, r4, 0
	strh r0, [r1]
	movs r0, 0x20
	orrs r0, r2
	strh r0, [r3]
_0800F008:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F010: .4byte gUnknown_02024D1F
_0800F014: .4byte gUnknown_030042D0
_0800F018: .4byte gMain
_0800F01C: .4byte sub_8010824
_0800F020: .4byte sub_800F808
_0800F024: .4byte gUnknown_020239F8
_0800F028: .4byte gTrainerBattleOpponent
	thumb_func_end sub_800EC9C

	thumb_func_start sub_800F02C
sub_800F02C: @ 800F02C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	movs r0, 0
	mov r8, r0
	ldr r7, _0800F0F8 @ =gUnknown_02023A04
	mov r10, r7
_0800F03E:
	mov r1, r8
	lsls r6, r1, 5
	movs r0, 0x64
	mov r4, r8
	muls r4, r0
	ldr r0, _0800F0FC @ =gPlayerParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	movs r1, 0x4
	negs r1, r1
	add r1, r10
	mov r9, r1
	adds r5, r6, r1
	strh r0, [r5]
	adds r0, r4, 0
	movs r1, 0xC
	bl GetMonData
	strh r0, [r5, 0x2]
	adds r0, r4, 0
	movs r1, 0x2
	adds r2, r7, 0
	bl GetMonData
	adds r0, r4, 0
	movs r1, 0x38
	bl GetMonData
	strb r0, [r5, 0xF]
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	strh r0, [r5, 0x10]
	adds r0, r4, 0
	movs r1, 0x3A
	bl GetMonData
	strh r0, [r5, 0x12]
	adds r0, r4, 0
	movs r1, 0x37
	bl GetMonData
	mov r1, r10
	adds r1, 0x10
	adds r6, r1
	str r0, [r6]
	adds r0, r4, 0
	movs r1, 0
	bl GetMonData
	str r0, [r7, 0x14]
	adds r0, r4, 0
	bl GetMonGender
	strb r0, [r5, 0x1C]
	adds r0, r7, 0
	bl StripExtCtrlCodes
	adds r0, r4, 0
	movs r1, 0x3
	bl GetMonData
	strb r0, [r5, 0x1D]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _0800F0D4
	adds r0, r7, 0
	movs r1, 0
	bl sub_814A518
_0800F0D4:
	adds r7, 0x20
	movs r0, 0x1
	add r8, r0
	mov r1, r8
	cmp r1, 0x2
	ble _0800F03E
	ldr r0, _0800F100 @ =0x02000000
	mov r1, r9
	movs r2, 0x60
	bl memcpy
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F0F8: .4byte gUnknown_02023A04
_0800F0FC: .4byte gPlayerParty
_0800F100: .4byte 0x02000000
	thumb_func_end sub_800F02C

	thumb_func_start sub_800F104
sub_800F104: @ 800F104
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	bl GetMultiplayerId
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r4, _0800F148 @ =0x02000000
	ldr r1, _0800F14C @ =0x000160cb
	adds r0, r4, r1
	strb r6, [r0]
	ldr r2, _0800F150 @ =0x000160c4
	adds r2, r4
	mov r9, r2
	ldr r0, _0800F154 @ =0x000160c2
	adds r0, r4
	mov r8, r0
	bl RunTasks
	bl AnimateSprites
	bl BuildOamBuffer
	ldr r5, _0800F158 @ =gUnknown_02024D1E
	ldrb r0, [r5]
	cmp r0, 0x1
	beq _0800F1A0
	cmp r0, 0x1
	bgt _0800F15C
	cmp r0, 0
	beq _0800F168
	b _0800F27A
	.align 2, 0
_0800F148: .4byte 0x02000000
_0800F14C: .4byte 0x000160cb
_0800F150: .4byte 0x000160c4
_0800F154: .4byte 0x000160c2
_0800F158: .4byte gUnknown_02024D1E
_0800F15C:
	cmp r0, 0x2
	beq _0800F240
	cmp r0, 0x3
	bne _0800F166
	b _0800F25C
_0800F166:
	b _0800F27A
_0800F168:
	ldr r0, _0800F19C @ =gReceivedRemoteLinkPlayers
	ldrb r0, [r0]
	cmp r0, 0
	bne _0800F172
	b _0800F27A
_0800F172:
	bl sub_8007ECC
	lsls r0, 24
	cmp r0, 0
	bne _0800F17E
	b _0800F27A
_0800F17E:
	bl sub_800F02C
	bl bitmask_all_link_players_but_self
	lsls r0, 24
	lsrs r0, 24
	adds r1, r4, 0
	movs r2, 0x60
	bl SendBlock
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	b _0800F27A
	.align 2, 0
_0800F19C: .4byte gReceivedRemoteLinkPlayers
_0800F1A0:
	bl GetBlockReceivedStatus
	movs r1, 0xF
	ands r1, r0
	cmp r1, 0xF
	bne _0800F27A
	bl ResetBlockReceivedFlags
	movs r4, 0
	lsls r0, r6, 3
	subs r0, r6
	lsls r5, r0, 2
	movs r7, 0
_0800F1BA:
	cmp r4, r6
	beq _0800F1FA
	ldr r2, _0800F1DC @ =gLinkPlayers
	adds r0, r7, r2
	ldrh r1, [r0, 0x18]
	movs r3, 0x1
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	bne _0800F1E0
	adds r0, r5, r2
	ldrh r1, [r0, 0x18]
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	beq _0800F1EC
	b _0800F1FA
	.align 2, 0
_0800F1DC: .4byte gLinkPlayers
_0800F1E0:
	adds r0, r5, r2
	ldrh r1, [r0, 0x18]
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	beq _0800F1FA
_0800F1EC:
	lsls r1, r4, 8
	ldr r0, _0800F228 @ =gBlockRecvBuffer
	adds r1, r0
	ldr r0, _0800F22C @ =gUnknown_02023A00
	movs r2, 0x60
	bl memcpy
_0800F1FA:
	adds r7, 0x1C
	adds r4, 0x1
	cmp r4, 0x3
	ble _0800F1BA
	ldr r1, _0800F230 @ =gUnknown_02024D1E
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r1, _0800F234 @ =gMain
	ldr r0, [r1, 0x8]
	mov r2, r9
	str r0, [r2]
	ldr r0, _0800F238 @ =gUnknown_020239F8
	ldrh r0, [r0]
	mov r2, r8
	strh r0, [r2]
	ldr r0, _0800F23C @ =sub_800F104
	str r0, [r1, 0x8]
	movs r0, 0x5
	movs r1, 0
	bl OpenPartyMenu
	b _0800F27A
	.align 2, 0
_0800F228: .4byte gBlockRecvBuffer
_0800F22C: .4byte gUnknown_02023A00
_0800F230: .4byte gUnknown_02024D1E
_0800F234: .4byte gMain
_0800F238: .4byte gUnknown_020239F8
_0800F23C: .4byte sub_800F104
_0800F240:
	ldr r0, _0800F258 @ =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0800F27A
	movs r0, 0x3
	strb r0, [r5]
	bl sub_800832C
	b _0800F27A
	.align 2, 0
_0800F258: .4byte gPaletteFade
_0800F25C:
	ldr r0, _0800F288 @ =gReceivedRemoteLinkPlayers
	ldrb r0, [r0]
	cmp r0, 0
	bne _0800F27A
	ldr r1, _0800F28C @ =gUnknown_020239F8
	mov r2, r8
	ldrh r0, [r2]
	strh r0, [r1]
	ldr r1, _0800F290 @ =gMain
	mov r2, r9
	ldr r0, [r2]
	str r0, [r1, 0x8]
	ldr r0, _0800F294 @ =sub_800E7F8
	bl SetMainCallback2
_0800F27A:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F288: .4byte gReceivedRemoteLinkPlayers
_0800F28C: .4byte gUnknown_020239F8
_0800F290: .4byte gMain
_0800F294: .4byte sub_800E7F8
	thumb_func_end sub_800F104

	thumb_func_start sub_800F298
sub_800F298: @ 800F298
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	bl GetMultiplayerId
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r0, _0800F2D0 @ =0x02000000
	ldr r1, _0800F2D4 @ =0x000160cb
	adds r0, r1
	strb r6, [r0]
	bl RunTasks
	bl AnimateSprites
	bl BuildOamBuffer
	ldr r0, _0800F2D8 @ =gUnknown_02024D1E
	ldrb r0, [r0]
	cmp r0, 0x7
	bls _0800F2C4
	b _0800F7E0
_0800F2C4:
	lsls r0, 2
	ldr r1, _0800F2DC @ =_0800F2E0
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800F2D0: .4byte 0x02000000
_0800F2D4: .4byte 0x000160cb
_0800F2D8: .4byte gUnknown_02024D1E
_0800F2DC: .4byte _0800F2E0
	.align 2, 0
_0800F2E0:
	.4byte _0800F300
	.4byte _0800F340
	.4byte _0800F4DE
	.4byte _0800F504
	.4byte _0800F5F8
	.4byte _0800F61C
	.4byte _0800F78C
	.4byte _0800F7A4
_0800F300:
	ldr r0, _0800F338 @ =gReceivedRemoteLinkPlayers
	ldrb r0, [r0]
	cmp r0, 0
	bne _0800F30A
	b _0800F7E0
_0800F30A:
	bl sub_8007ECC
	lsls r0, 24
	cmp r0, 0
	bne _0800F316
	b _0800F7E0
_0800F316:
	ldr r4, _0800F33C @ =0x02000000
	movs r0, 0x1
	strb r0, [r4]
	strb r0, [r4, 0x1]
	bl sub_800E9EC
	bl sub_800EAAC
	bl bitmask_all_link_players_but_self
	lsls r0, 24
	lsrs r0, 24
	adds r1, r4, 0
	movs r2, 0x20
	bl SendBlock
	b _0800F770
	.align 2, 0
_0800F338: .4byte gReceivedRemoteLinkPlayers
_0800F33C: .4byte 0x02000000
_0800F340:
	bl GetBlockReceivedStatus
	movs r1, 0xF
	ands r1, r0
	cmp r1, 0xF
	beq _0800F34E
	b _0800F7E0
_0800F34E:
	bl ResetBlockReceivedFlags
	movs r4, 0
	ldr r0, _0800F36C @ =gBlockRecvBuffer
	ldrh r1, [r0]
	movs r0, 0x80
	lsls r0, 1
	cmp r1, r0
	bne _0800F380
	cmp r6, 0
	bne _0800F374
	ldr r0, _0800F370 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r2, 0xC
	b _0800F37A
	.align 2, 0
_0800F36C: .4byte gBlockRecvBuffer
_0800F370: .4byte gUnknown_020239F8
_0800F374:
	ldr r0, _0800F3B0 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r2, 0x8
_0800F37A:
	orrs r1, r2
	strh r1, [r0]
	adds r4, 0x1
_0800F380:
	cmp r4, 0
	bne _0800F41C
	movs r2, 0
	ldr r1, _0800F3B4 @ =gBlockRecvBuffer
	adds r5, r1, 0
	movs r3, 0x80
	lsls r3, 1
_0800F38E:
	adds r1, r3
	adds r2, 0x1
	cmp r2, 0x3
	bgt _0800F39E
	ldrh r0, [r5]
	ldrh r7, [r1]
	cmp r0, r7
	beq _0800F38E
_0800F39E:
	cmp r2, 0x4
	bne _0800F3C4
	cmp r6, 0
	bne _0800F3B8
	ldr r0, _0800F3B0 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r2, 0xC
	b _0800F3BE
	.align 2, 0
_0800F3B0: .4byte gUnknown_020239F8
_0800F3B4: .4byte gBlockRecvBuffer
_0800F3B8:
	ldr r0, _0800F408 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r2, 0x8
_0800F3BE:
	orrs r1, r2
	strh r1, [r0]
	adds r4, 0x1
_0800F3C4:
	cmp r4, 0
	bne _0800F41C
	ldr r0, _0800F40C @ =gBlockRecvBuffer
	ldrh r2, [r0]
	ldr r1, _0800F410 @ =0x00000101
	adds r3, r0, 0
	ldr r5, _0800F408 @ =gUnknown_020239F8
	cmp r2, r1
	beq _0800F3F6
_0800F3D6:
	lsls r0, r4, 8
	adds r0, r3
	ldrh r0, [r0]
	ldr r1, _0800F410 @ =0x00000101
	cmp r0, r1
	bls _0800F3E6
	cmp r4, r6
	bne _0800F3FE
_0800F3E6:
	adds r4, 0x1
	cmp r4, 0x3
	bgt _0800F3FE
	lsls r0, r4, 8
	adds r0, r3
	ldrh r0, [r0]
	cmp r0, r1
	bne _0800F3D6
_0800F3F6:
	cmp r4, r6
	beq _0800F3D6
	cmp r4, r6
	bge _0800F3D6
_0800F3FE:
	cmp r4, 0x4
	bne _0800F414
	ldrh r0, [r5]
	movs r1, 0xC
	b _0800F418
	.align 2, 0
_0800F408: .4byte gUnknown_020239F8
_0800F40C: .4byte gBlockRecvBuffer
_0800F410: .4byte 0x00000101
_0800F414:
	ldrh r0, [r5]
	movs r1, 0x8
_0800F418:
	orrs r0, r1
	strh r0, [r5]
_0800F41C:
	bl sub_800EB08
	ldr r0, _0800F474 @ =0x0201d000
	ldr r1, _0800F478 @ =gPlayerParty
	movs r2, 0x96
	lsls r2, 1
	bl memcpy
	ldr r0, _0800F47C @ =sub_800DE30
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _0800F480 @ =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	movs r2, 0
	movs r0, 0x87
	lsls r0, 1
	strh r0, [r1, 0xA]
	movs r0, 0x5A
	strh r0, [r1, 0xC]
	strh r2, [r1, 0x12]
	strh r2, [r1, 0xE]
	strh r2, [r1, 0x10]
	adds r2, r1, 0
	ldr r0, _0800F484 @ =gBlockRecvBuffer
	adds r3, r0, 0x2
	ldr r6, _0800F488 @ =gLinkPlayers
	movs r5, 0x3F
	movs r7, 0x80
	lsls r7, 1
	movs r4, 0x3
_0800F464:
	ldrh r0, [r6, 0x18]
	cmp r0, 0x1
	beq _0800F49E
	cmp r0, 0x1
	bgt _0800F48C
	cmp r0, 0
	beq _0800F496
	b _0800F4C4
	.align 2, 0
_0800F474: .4byte 0x0201d000
_0800F478: .4byte gPlayerParty
_0800F47C: .4byte sub_800DE30
_0800F480: .4byte gTasks
_0800F484: .4byte gBlockRecvBuffer
_0800F488: .4byte gLinkPlayers
_0800F48C:
	cmp r0, 0x2
	beq _0800F4A6
	cmp r0, 0x3
	beq _0800F4B6
	b _0800F4C4
_0800F496:
	ldrh r0, [r3]
	adds r1, r5, 0
	ands r1, r0
	b _0800F4AE
_0800F49E:
	ldrh r0, [r3]
	adds r1, r5, 0
	ands r1, r0
	b _0800F4BE
_0800F4A6:
	ldrh r0, [r3]
	adds r1, r5, 0
	ands r1, r0
	lsls r1, 6
_0800F4AE:
	ldrh r0, [r2, 0xE]
	orrs r1, r0
	strh r1, [r2, 0xE]
	b _0800F4C4
_0800F4B6:
	ldrh r0, [r3]
	adds r1, r5, 0
	ands r1, r0
	lsls r1, 6
_0800F4BE:
	ldrh r0, [r2, 0x10]
	orrs r1, r0
	strh r1, [r2, 0x10]
_0800F4C4:
	adds r3, r7
	adds r6, 0x1C
	subs r4, 0x1
	cmp r4, 0
	bge _0800F464
	bl ZeroPlayerPartyMons
	bl ZeroEnemyPartyMons
	ldr r1, _0800F4FC @ =gUnknown_02024D1E
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_0800F4DE:
	bl sub_8007ECC
	lsls r0, 24
	cmp r0, 0
	bne _0800F4EA
	b _0800F7E0
_0800F4EA:
	bl bitmask_all_link_players_but_self
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _0800F500 @ =0x0201d000
	movs r2, 0xC8
	bl SendBlock
	b _0800F770
	.align 2, 0
_0800F4FC: .4byte gUnknown_02024D1E
_0800F500: .4byte 0x0201d000
_0800F504:
	bl GetBlockReceivedStatus
	movs r1, 0xF
	ands r1, r0
	cmp r1, 0xF
	beq _0800F512
	b _0800F7E0
_0800F512:
	bl ResetBlockReceivedFlags
	movs r4, 0
	lsls r0, r6, 3
	subs r0, r6
	lsls r0, 2
	mov r8, r0
	ldr r5, _0800F53C @ =gBlockRecvBuffer
	movs r7, 0
_0800F524:
	cmp r4, r6
	bne _0800F558
	ldr r0, _0800F540 @ =gLinkPlayers
	adds r0, r7, r0
	ldrh r0, [r0, 0x18]
	cmp r0, 0x2
	bgt _0800F544
	cmp r0, 0x1
	bge _0800F550
	cmp r0, 0
	beq _0800F548
	b _0800F5E2
	.align 2, 0
_0800F53C: .4byte gBlockRecvBuffer
_0800F540: .4byte gLinkPlayers
_0800F544:
	cmp r0, 0x3
	bne _0800F5E2
_0800F548:
	ldr r0, _0800F54C @ =gPlayerParty
	b _0800F5C8
	.align 2, 0
_0800F54C: .4byte gPlayerParty
_0800F550:
	ldr r0, _0800F554 @ =gPlayerParty + 3 * 0x64
	b _0800F5C8
	.align 2, 0
_0800F554: .4byte gPlayerParty + 3 * 0x64
_0800F558:
	ldr r2, _0800F578 @ =gLinkPlayers
	adds r0, r7, r2
	ldrh r1, [r0, 0x18]
	movs r3, 0x1
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	bne _0800F57C
	mov r1, r8
	adds r0, r1, r2
	ldrh r1, [r0, 0x18]
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	beq _0800F58A
	b _0800F5B0
	.align 2, 0
_0800F578: .4byte gLinkPlayers
_0800F57C:
	mov r1, r8
	adds r0, r1, r2
	ldrh r1, [r0, 0x18]
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	beq _0800F5B0
_0800F58A:
	adds r0, r7, r2
	ldrh r2, [r0, 0x18]
	cmp r2, 0x2
	bgt _0800F59C
	cmp r2, 0x1
	bge _0800F5A8
	cmp r2, 0
	beq _0800F5A0
	b _0800F5E2
_0800F59C:
	cmp r2, 0x3
	bne _0800F5E2
_0800F5A0:
	ldr r0, _0800F5A4 @ =gPlayerParty
	b _0800F5C8
	.align 2, 0
_0800F5A4: .4byte gPlayerParty
_0800F5A8:
	ldr r0, _0800F5AC @ =gPlayerParty + 3 * 0x64
	b _0800F5C8
	.align 2, 0
_0800F5AC: .4byte gPlayerParty + 3 * 0x64
_0800F5B0:
	adds r0, r7, r2
	ldrh r2, [r0, 0x18]
	cmp r2, 0x2
	bgt _0800F5C2
	cmp r2, 0x1
	bge _0800F5D8
	cmp r2, 0
	beq _0800F5C6
	b _0800F5E2
_0800F5C2:
	cmp r2, 0x3
	bne _0800F5E2
_0800F5C6:
	ldr r0, _0800F5D4 @ =gEnemyParty
_0800F5C8:
	adds r1, r5, 0
	movs r2, 0xC8
	bl memcpy
	b _0800F5E2
	.align 2, 0
_0800F5D4: .4byte gEnemyParty
_0800F5D8:
	ldr r0, _0800F5F4 @ =gEnemyParty + 3 * 0x64
	adds r1, r5, 0
	movs r2, 0xC8
	bl memcpy
_0800F5E2:
	movs r0, 0x80
	lsls r0, 1
	adds r5, r0
	adds r7, 0x1C
	adds r4, 0x1
	cmp r4, 0x3
	ble _0800F524
	b _0800F770
	.align 2, 0
_0800F5F4: .4byte gEnemyParty + 3 * 0x64
_0800F5F8:
	bl sub_8007ECC
	lsls r0, 24
	cmp r0, 0
	bne _0800F604
	b _0800F7E0
_0800F604:
	bl bitmask_all_link_players_but_self
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _0800F618 @ =0x0201d0c8
	movs r2, 0x64
	bl SendBlock
	b _0800F770
	.align 2, 0
_0800F618: .4byte 0x0201d0c8
_0800F61C:
	bl GetBlockReceivedStatus
	movs r1, 0xF
	ands r1, r0
	cmp r1, 0xF
	beq _0800F62A
	b _0800F7E0
_0800F62A:
	bl ResetBlockReceivedFlags
	movs r4, 0
	lsls r0, r6, 3
	subs r0, r6
	lsls r0, 2
	mov r8, r0
	ldr r5, _0800F654 @ =gBlockRecvBuffer
	movs r7, 0
_0800F63C:
	cmp r4, r6
	bne _0800F670
	ldr r0, _0800F658 @ =gLinkPlayers
	adds r0, r7, r0
	ldrh r0, [r0, 0x18]
	cmp r0, 0x2
	bgt _0800F65C
	cmp r0, 0x1
	bge _0800F668
	cmp r0, 0
	beq _0800F660
	b _0800F6FA
	.align 2, 0
_0800F654: .4byte gBlockRecvBuffer
_0800F658: .4byte gLinkPlayers
_0800F65C:
	cmp r0, 0x3
	bne _0800F6FA
_0800F660:
	ldr r0, _0800F664 @ =gPlayerParty + 2 * 0x64
	b _0800F6E0
	.align 2, 0
_0800F664: .4byte gPlayerParty + 2 * 0x64
_0800F668:
	ldr r0, _0800F66C @ =gPlayerParty + 5 * 0x64
	b _0800F6E0
	.align 2, 0
_0800F66C: .4byte gPlayerParty + 5 * 0x64
_0800F670:
	ldr r2, _0800F690 @ =gLinkPlayers
	adds r0, r7, r2
	ldrh r1, [r0, 0x18]
	movs r3, 0x1
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	bne _0800F694
	mov r1, r8
	adds r0, r1, r2
	ldrh r1, [r0, 0x18]
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	beq _0800F6A2
	b _0800F6C8
	.align 2, 0
_0800F690: .4byte gLinkPlayers
_0800F694:
	mov r1, r8
	adds r0, r1, r2
	ldrh r1, [r0, 0x18]
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	beq _0800F6C8
_0800F6A2:
	adds r0, r7, r2
	ldrh r2, [r0, 0x18]
	cmp r2, 0x2
	bgt _0800F6B4
	cmp r2, 0x1
	bge _0800F6C0
	cmp r2, 0
	beq _0800F6B8
	b _0800F6FA
_0800F6B4:
	cmp r2, 0x3
	bne _0800F6FA
_0800F6B8:
	ldr r0, _0800F6BC @ =gPlayerParty + 2 * 0x64
	b _0800F6E0
	.align 2, 0
_0800F6BC: .4byte gPlayerParty + 2 * 0x64
_0800F6C0:
	ldr r0, _0800F6C4 @ =gPlayerParty + 5 * 0x64
	b _0800F6E0
	.align 2, 0
_0800F6C4: .4byte gPlayerParty + 5 * 0x64
_0800F6C8:
	adds r0, r7, r2
	ldrh r2, [r0, 0x18]
	cmp r2, 0x2
	bgt _0800F6DA
	cmp r2, 0x1
	bge _0800F6F0
	cmp r2, 0
	beq _0800F6DE
	b _0800F6FA
_0800F6DA:
	cmp r2, 0x3
	bne _0800F6FA
_0800F6DE:
	ldr r0, _0800F6EC @ =gEnemyParty + 2 * 0x64
_0800F6E0:
	adds r1, r5, 0
	movs r2, 0x64
	bl memcpy
	b _0800F6FA
	.align 2, 0
_0800F6EC: .4byte gEnemyParty + 2 * 0x64
_0800F6F0:
	ldr r0, _0800F77C @ =gEnemyParty + 5 * 0x64
	adds r1, r5, 0
	movs r2, 0x64
	bl memcpy
_0800F6FA:
	movs r0, 0x80
	lsls r0, 1
	adds r5, r0
	adds r7, 0x1C
	adds r4, 0x1
	cmp r4, 0x3
	ble _0800F63C
	ldr r4, _0800F780 @ =gPlayerParty
	adds r0, r4, 0
	bl shedinja_something
	adds r0, r4, 0
	adds r0, 0x64
	bl shedinja_something
	adds r0, r4, 0
	adds r0, 0xC8
	bl shedinja_something
	movs r1, 0x96
	lsls r1, 1
	adds r0, r4, r1
	bl shedinja_something
	movs r7, 0xC8
	lsls r7, 1
	adds r0, r4, r7
	bl shedinja_something
	movs r1, 0xFA
	lsls r1, 1
	adds r0, r4, r1
	bl shedinja_something
	ldr r4, _0800F784 @ =gEnemyParty
	adds r0, r4, 0
	bl shedinja_something
	adds r0, r4, 0
	adds r0, 0x64
	bl shedinja_something
	adds r0, r4, 0
	adds r0, 0xC8
	bl shedinja_something
	subs r7, 0x64
	adds r0, r4, r7
	bl shedinja_something
	movs r1, 0xC8
	lsls r1, 1
	adds r0, r4, r1
	bl shedinja_something
	adds r7, 0xC8
	adds r0, r4, r7
	bl shedinja_something
_0800F770:
	ldr r1, _0800F788 @ =gUnknown_02024D1E
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _0800F7E0
	.align 2, 0
_0800F77C: .4byte gEnemyParty + 5 * 0x64
_0800F780: .4byte gPlayerParty
_0800F784: .4byte gEnemyParty
_0800F788: .4byte gUnknown_02024D1E
_0800F78C:
	bl sub_800B950
	ldr r0, _0800F7A0 @ =gUnknown_02024D1E
	ldrb r1, [r0]
	adds r1, 0x1
	movs r2, 0
	strb r1, [r0]
	strb r2, [r0, 0x1]
	strb r2, [r0, 0x2]
	b _0800F7E0
	.align 2, 0
_0800F7A0: .4byte gUnknown_02024D1E
_0800F7A4:
	ldr r0, _0800F7EC @ =gUnknown_02024D1F
	adds r1, r0, 0x1
	bl battle_load_something
	lsls r0, 24
	cmp r0, 0
	beq _0800F7E0
	ldr r2, _0800F7F0 @ =gUnknown_030042D0
	ldr r1, _0800F7F4 @ =gMain
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, _0800F7F8 @ =sub_8010824
	str r0, [r1]
	ldr r0, _0800F7FC @ =sub_800F808
	bl SetMainCallback2
	ldr r3, _0800F800 @ =gUnknown_020239F8
	ldrh r2, [r3]
	movs r0, 0x2
	ands r0, r2
	cmp r0, 0
	beq _0800F7E0
	ldr r1, _0800F804 @ =gTrainerBattleOpponent
	movs r4, 0x80
	lsls r4, 4
	adds r0, r4, 0
	strh r0, [r1]
	movs r0, 0x20
	orrs r0, r2
	strh r0, [r3]
_0800F7E0:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F7EC: .4byte gUnknown_02024D1F
_0800F7F0: .4byte gUnknown_030042D0
_0800F7F4: .4byte gMain
_0800F7F8: .4byte sub_8010824
_0800F7FC: .4byte sub_800F808
_0800F800: .4byte gUnknown_020239F8
_0800F804: .4byte gTrainerBattleOpponent
	thumb_func_end sub_800F298

	thumb_func_start sub_800F808
sub_800F808: @ 800F808
	push {lr}
	bl AnimateSprites
	bl BuildOamBuffer
	ldr r0, _0800F824 @ =gUnknown_03004210
	bl sub_800374C
	bl UpdatePaletteFade
	bl RunTasks
	pop {r0}
	bx r0
	.align 2, 0
_0800F824: .4byte gUnknown_03004210
	thumb_func_end sub_800F808

	thumb_func_start sub_800F828
sub_800F828: @ 800F828
	movs r1, 0
	strh r1, [r0, 0x2E]
	ldr r1, _0800F834 @ =sub_800F838
	str r1, [r0, 0x1C]
	bx lr
	.align 2, 0
_0800F834: .4byte sub_800F838
	thumb_func_end sub_800F828

	thumb_func_start sub_800F838
sub_800F838: @ 800F838
	push {r4,r5,lr}
	adds r3, r0, 0
	ldr r5, _0800F850 @ =0x02000000
	movs r0, 0x2E
	ldrsh r1, [r3, r0]
	cmp r1, 0x1
	beq _0800F86C
	cmp r1, 0x1
	bgt _0800F854
	cmp r1, 0
	beq _0800F85A
	b _0800F8DC
	.align 2, 0
_0800F850: .4byte 0x02000000
_0800F854:
	cmp r1, 0x2
	beq _0800F8C8
	b _0800F8DC
_0800F85A:
	ldrh r0, [r3, 0x2E]
	adds r0, 0x1
	strh r0, [r3, 0x2E]
	strh r1, [r3, 0x30]
	ldr r0, _0800F8C4 @ =0x00000281
	strh r0, [r3, 0x32]
	strh r1, [r3, 0x34]
	movs r0, 0x1
	strh r0, [r3, 0x36]
_0800F86C:
	ldrh r0, [r3, 0x36]
	subs r0, 0x1
	strh r0, [r3, 0x36]
	lsls r0, 16
	cmp r0, 0
	bne _0800F8DC
	movs r0, 0x2
	strh r0, [r3, 0x36]
	movs r4, 0x30
	ldrsh r2, [r3, r4]
	movs r0, 0x34
	ldrsh r1, [r3, r0]
	lsls r1, 5
	adds r2, r1
	movs r4, 0x32
	ldrsh r0, [r3, r4]
	subs r0, r1
	movs r4, 0x3D
	lsls r0, 1
	adds r0, r5
	lsls r2, 1
	adds r2, r5
	movs r1, 0x1C
_0800F89A:
	strh r4, [r2]
	strh r4, [r0]
	adds r0, 0x4
	adds r2, 0x4
	subs r1, 0x2
	cmp r1, 0
	bge _0800F89A
	ldrh r0, [r3, 0x34]
	adds r0, 0x1
	strh r0, [r3, 0x34]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x15
	bne _0800F8DC
	ldrh r0, [r3, 0x2E]
	adds r0, 0x1
	strh r0, [r3, 0x2E]
	movs r0, 0x20
	strh r0, [r3, 0x30]
	b _0800F8DC
	.align 2, 0
_0800F8C4: .4byte 0x00000281
_0800F8C8:
	ldrh r0, [r3, 0x30]
	subs r0, 0x1
	strh r0, [r3, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x14
	bne _0800F8DC
	ldr r0, _0800F8E4 @ =sub_800E7C4
	bl SetMainCallback2
_0800F8DC:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F8E4: .4byte sub_800E7C4
	thumb_func_end sub_800F838

	thumb_func_start sub_800F8E8
sub_800F8E8: @ 800F8E8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x24
	str r0, [sp, 0x10]
	lsls r1, 16
	lsrs r1, 16
	str r1, [sp, 0x14]
	movs r0, 0
	mov r9, r0
	movs r0, 0x80
	lsls r0, 3
	cmp r1, r0
	bne _0800F90C
	movs r0, 0
	b _0800FCB4
_0800F90C:
	ldr r0, _0800F93C @ =gUnknown_020239F8
	ldrh r1, [r0]
	ldr r0, _0800F940 @ =0x00000908
	ands r0, r1
	ldr r1, [sp, 0x14]
	lsls r1, 2
	str r1, [sp, 0x20]
	cmp r0, 0x8
	beq _0800F920
	b _0800FCA4
_0800F920:
	bl ZeroEnemyPartyMons
	movs r2, 0
	str r2, [sp, 0x18]
	ldr r2, _0800F944 @ =gTrainers
	ldr r1, [sp, 0x20]
	ldr r3, [sp, 0x14]
	adds r0, r1, r3
	lsls r0, 3
	adds r0, r2
	adds r0, 0x20
	ldr r4, [sp, 0x18]
	b _0800FC86
	.align 2, 0
_0800F93C: .4byte gUnknown_020239F8
_0800F940: .4byte 0x00000908
_0800F944: .4byte gTrainers
_0800F948:
	ldr r3, [sp, 0x14]
	adds r0, r1, r3
	lsls r0, 3
	adds r1, r0, r2
	ldrb r0, [r1, 0x18]
	cmp r0, 0x1
	bne _0800F95C
	movs r4, 0x80
	mov r10, r4
	b _0800F96E
_0800F95C:
	ldrb r1, [r1, 0x2]
	movs r0, 0x80
	ands r0, r1
	movs r1, 0x88
	mov r10, r1
	cmp r0, 0
	beq _0800F96E
	movs r2, 0x78
	mov r10, r2
_0800F96E:
	movs r6, 0
	ldr r0, _0800F9C4 @ =gTrainers
	ldr r2, [sp, 0x20]
	ldr r3, [sp, 0x14]
	adds r1, r2, r3
	lsls r1, 3
	adds r3, r0, 0x4
	adds r1, r3
	ldrb r1, [r1]
	adds r4, r0, 0
	ldr r0, [sp, 0x18]
	adds r0, 0x1
	str r0, [sp, 0x1C]
	cmp r1, 0xFF
	beq _0800F9A6
_0800F98C:
	ldr r0, [sp, 0x14]
	adds r1, r2, r0
	lsls r1, 3
	adds r0, r6, r1
	adds r0, r3
	ldrb r0, [r0]
	add r9, r0
	adds r6, 0x1
	adds r1, r6, r1
	adds r1, r3
	ldrb r0, [r1]
	cmp r0, 0xFF
	bne _0800F98C
_0800F9A6:
	adds r2, r4, 0
	ldr r1, [sp, 0x20]
	ldr r3, [sp, 0x14]
	adds r0, r1, r3
	lsls r1, r0, 3
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0800FA5C
	cmp r0, 0x1
	bgt _0800F9C8
	cmp r0, 0
	beq _0800F9D6
	b _0800FC74
	.align 2, 0
_0800F9C4: .4byte gTrainers
_0800F9C8:
	cmp r0, 0x2
	bne _0800F9CE
	b _0800FB1C
_0800F9CE:
	cmp r0, 0x3
	bne _0800F9D4
	b _0800FBB0
_0800F9D4:
	b _0800FC74
_0800F9D6:
	adds r0, r2, 0
	adds r0, 0x24
	adds r0, r1, r0
	ldr r4, [r0]
	movs r6, 0
	ldr r0, [sp, 0x18]
	lsls r2, r0, 3
	adds r0, r2, r4
	ldrh r1, [r0, 0x4]
	movs r0, 0xB
	muls r0, r1
	ldr r1, _0800FA58 @ =gSpeciesNames
	adds r0, r1
	ldrb r0, [r0]
	adds r5, r2, 0
	cmp r0, 0xFF
	beq _0800FA18
	adds r3, r1, 0
	movs r7, 0xB
_0800F9FC:
	adds r0, r2, r4
	ldrh r0, [r0, 0x4]
	adds r1, r0, 0
	muls r1, r7
	adds r0, r6, r1
	adds r0, r3
	ldrb r0, [r0]
	add r9, r0
	adds r6, 0x1
	adds r1, r6, r1
	adds r1, r3
	ldrb r0, [r1]
	cmp r0, 0xFF
	bne _0800F9FC
_0800FA18:
	mov r2, r9
	lsls r0, r2, 8
	add r10, r0
	adds r4, r5, r4
	ldrh r1, [r4]
	lsls r0, r1, 5
	subs r0, r1
	movs r1, 0xFF
	bl __divsi3
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r3, [sp, 0x18]
	movs r1, 0x64
	adds r0, r3, 0
	muls r0, r1
	ldr r2, [sp, 0x10]
	adds r0, r2, r0
	ldrh r1, [r4, 0x4]
	ldrb r2, [r4, 0x2]
	movs r3, 0x1
	str r3, [sp]
	mov r3, r10
	str r3, [sp, 0x4]
	movs r3, 0x2
	str r3, [sp, 0x8]
	movs r3, 0
	str r3, [sp, 0xC]
	adds r3, r6, 0
	bl CreateMon
	b _0800FC74
	.align 2, 0
_0800FA58: .4byte gSpeciesNames
_0800FA5C:
	adds r0, r2, 0
	adds r0, 0x24
	adds r0, r1, r0
	ldr r7, [r0]
	movs r6, 0
	ldr r4, [sp, 0x18]
	lsls r2, r4, 4
	adds r0, r2, r7
	ldrh r1, [r0, 0x4]
	movs r0, 0xB
	muls r0, r1
	ldr r1, _0800FB14 @ =gSpeciesNames
	adds r0, r1
	ldrb r0, [r0]
	mov r8, r2
	cmp r0, 0xFF
	beq _0800FA9E
	adds r3, r1, 0
	movs r4, 0xB
_0800FA82:
	adds r0, r2, r7
	ldrh r0, [r0, 0x4]
	adds r1, r0, 0
	muls r1, r4
	adds r0, r6, r1
	adds r0, r3
	ldrb r0, [r0]
	add r9, r0
	adds r6, 0x1
	adds r1, r6, r1
	adds r1, r3
	ldrb r0, [r1]
	cmp r0, 0xFF
	bne _0800FA82
_0800FA9E:
	mov r2, r9
	lsls r0, r2, 8
	add r10, r0
	mov r3, r8
	adds r4, r3, r7
	ldrh r1, [r4]
	lsls r0, r1, 5
	subs r0, r1
	movs r1, 0xFF
	bl __divsi3
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r0, [sp, 0x18]
	movs r1, 0x64
	adds r5, r0, 0
	muls r5, r1
	ldr r2, [sp, 0x10]
	adds r5, r2, r5
	ldrh r1, [r4, 0x4]
	ldrb r2, [r4, 0x2]
	movs r0, 0x1
	str r0, [sp]
	mov r3, r10
	str r3, [sp, 0x4]
	movs r0, 0x2
	str r0, [sp, 0x8]
	movs r0, 0
	str r0, [sp, 0xC]
	adds r0, r5, 0
	adds r3, r6, 0
	bl CreateMon
	movs r6, 0
	mov r0, r8
	adds r0, 0x6
	adds r4, r7, r0
_0800FAE8:
	adds r1, r6, 0
	adds r1, 0xD
	adds r0, r5, 0
	adds r2, r4, 0
	bl SetMonData
	adds r1, r6, 0
	adds r1, 0x11
	ldrh r0, [r4]
	lsls r2, r0, 1
	adds r2, r0
	lsls r2, 2
	ldr r0, _0800FB18 @ =gBattleMoves + 0x4 @ PP offset
	adds r2, r0
	adds r0, r5, 0
	bl SetMonData
	adds r4, 0x2
	adds r6, 0x1
	cmp r6, 0x3
	ble _0800FAE8
	b _0800FC74
	.align 2, 0
_0800FB14: .4byte gSpeciesNames
_0800FB18: .4byte gBattleMoves + 0x4 @ PP offset
_0800FB1C:
	adds r0, r2, 0
	adds r0, 0x24
	adds r0, r1, r0
	ldr r4, [r0]
	movs r6, 0
	ldr r0, [sp, 0x18]
	lsls r2, r0, 3
	adds r0, r2, r4
	ldrh r1, [r0, 0x4]
	movs r0, 0xB
	muls r0, r1
	ldr r1, _0800FBAC @ =gSpeciesNames
	adds r0, r1
	ldrb r0, [r0]
	adds r5, r2, 0
	cmp r0, 0xFF
	beq _0800FB5E
	adds r3, r1, 0
	movs r7, 0xB
_0800FB42:
	adds r0, r2, r4
	ldrh r0, [r0, 0x4]
	adds r1, r0, 0
	muls r1, r7
	adds r0, r6, r1
	adds r0, r3
	ldrb r0, [r0]
	add r9, r0
	adds r6, 0x1
	adds r1, r6, r1
	adds r1, r3
	ldrb r0, [r1]
	cmp r0, 0xFF
	bne _0800FB42
_0800FB5E:
	mov r2, r9
	lsls r0, r2, 8
	add r10, r0
	adds r5, r4
	ldrh r1, [r5]
	lsls r0, r1, 5
	subs r0, r1
	movs r1, 0xFF
	bl __divsi3
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r3, [sp, 0x18]
	movs r0, 0x64
	adds r4, r3, 0
	muls r4, r0
	ldr r1, [sp, 0x10]
	adds r4, r1, r4
	ldrh r1, [r5, 0x4]
	ldrb r2, [r5, 0x2]
	movs r0, 0x1
	str r0, [sp]
	mov r3, r10
	str r3, [sp, 0x4]
	movs r0, 0x2
	str r0, [sp, 0x8]
	movs r0, 0
	str r0, [sp, 0xC]
	adds r0, r4, 0
	adds r3, r6, 0
	bl CreateMon
	adds r5, 0x6
	adds r0, r4, 0
	movs r1, 0xC
	adds r2, r5, 0
	bl SetMonData
	b _0800FC74
	.align 2, 0
_0800FBAC: .4byte gSpeciesNames
_0800FBB0:
	adds r0, r4, 0
	adds r0, 0x24
	adds r0, r1, r0
	ldr r7, [r0]
	movs r6, 0
	ldr r4, [sp, 0x18]
	lsls r2, r4, 4
	adds r0, r2, r7
	ldrh r1, [r0, 0x4]
	movs r0, 0xB
	muls r0, r1
	ldr r1, _0800FCC4 @ =gSpeciesNames
	adds r0, r1
	ldrb r0, [r0]
	mov r8, r2
	cmp r0, 0xFF
	beq _0800FBF2
	adds r3, r1, 0
	movs r4, 0xB
_0800FBD6:
	adds r0, r2, r7
	ldrh r0, [r0, 0x4]
	adds r1, r0, 0
	muls r1, r4
	adds r0, r6, r1
	adds r0, r3
	ldrb r0, [r0]
	add r9, r0
	adds r6, 0x1
	adds r1, r6, r1
	adds r1, r3
	ldrb r0, [r1]
	cmp r0, 0xFF
	bne _0800FBD6
_0800FBF2:
	mov r2, r9
	lsls r0, r2, 8
	add r10, r0
	mov r3, r8
	adds r5, r3, r7
	ldrh r1, [r5]
	lsls r0, r1, 5
	subs r0, r1
	movs r1, 0xFF
	bl __divsi3
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r0, [sp, 0x18]
	movs r1, 0x64
	adds r4, r0, 0
	muls r4, r1
	ldr r2, [sp, 0x10]
	adds r4, r2, r4
	ldrh r1, [r5, 0x4]
	ldrb r2, [r5, 0x2]
	movs r0, 0x1
	str r0, [sp]
	mov r3, r10
	str r3, [sp, 0x4]
	movs r0, 0x2
	str r0, [sp, 0x8]
	movs r0, 0
	str r0, [sp, 0xC]
	adds r0, r4, 0
	adds r3, r6, 0
	bl CreateMon
	adds r5, 0x6
	adds r0, r4, 0
	movs r1, 0xC
	adds r2, r5, 0
	bl SetMonData
	movs r6, 0
	adds r5, r4, 0
	mov r0, r8
	adds r0, 0x8
	adds r4, r7, r0
_0800FC4A:
	adds r1, r6, 0
	adds r1, 0xD
	adds r0, r5, 0
	adds r2, r4, 0
	bl SetMonData
	adds r1, r6, 0
	adds r1, 0x11
	ldrh r0, [r4]
	lsls r2, r0, 1
	adds r2, r0
	lsls r2, 2
	ldr r0, _0800FCC8 @ =gBattleMoves + 0x4 @ PP offset
	adds r2, r0
	adds r0, r5, 0
	bl SetMonData
	adds r4, 0x2
	adds r6, 0x1
	cmp r6, 0x3
	ble _0800FC4A
_0800FC74:
	ldr r4, [sp, 0x1C]
	str r4, [sp, 0x18]
	ldr r2, _0800FCCC @ =gTrainers
	ldr r1, [sp, 0x20]
	ldr r3, [sp, 0x14]
	adds r0, r1, r3
	lsls r0, 3
	adds r0, r2
	adds r0, 0x20
_0800FC86:
	ldrb r0, [r0]
	cmp r4, r0
	bge _0800FC8E
	b _0800F948
_0800FC8E:
	ldr r2, _0800FCD0 @ =gUnknown_020239F8
	ldr r1, _0800FCCC @ =gTrainers
	ldr r4, [sp, 0x20]
	ldr r3, [sp, 0x14]
	adds r0, r4, r3
	lsls r0, 3
	adds r0, r1
	ldrb r0, [r0, 0x18]
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
_0800FCA4:
	ldr r0, _0800FCCC @ =gTrainers
	ldr r4, [sp, 0x20]
	ldr r2, [sp, 0x14]
	adds r1, r4, r2
	lsls r1, 3
	adds r1, r0
	adds r1, 0x20
	ldrb r0, [r1]
_0800FCB4:
	add sp, 0x24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800FCC4: .4byte gSpeciesNames
_0800FCC8: .4byte gBattleMoves + 0x4 @ PP offset
_0800FCCC: .4byte gTrainers
_0800FCD0: .4byte gUnknown_020239F8
	thumb_func_end sub_800F8E8

	thumb_func_start sub_800FCD4
sub_800FCD4: @ 800FCD4
	push {lr}
	ldr r0, _0800FCF4 @ =REG_VCOUNT
	ldrh r0, [r0]
	subs r0, 0x6F
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x30
	bhi _0800FCEE
	ldr r1, _0800FCF8 @ =REG_BG0CNT
	movs r2, 0x98
	lsls r2, 8
	adds r0, r2, 0
	strh r0, [r1]
_0800FCEE:
	pop {r0}
	bx r0
	.align 2, 0
_0800FCF4: .4byte REG_VCOUNT
_0800FCF8: .4byte REG_BG0CNT
	thumb_func_end sub_800FCD4

	thumb_func_start sub_800FCFC
sub_800FCFC: @ 800FCFC
	push {lr}
	bl Random
	ldr r1, _0800FD78 @ =REG_BG0HOFS
	ldr r0, _0800FD7C @ =gUnknown_030042A4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, 0x2
	ldr r0, _0800FD80 @ =gUnknown_030042A0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, 0x2
	ldr r0, _0800FD84 @ =gUnknown_030042C0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, 0x2
	ldr r0, _0800FD88 @ =gUnknown_030041B4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, 0x2
	ldr r0, _0800FD8C @ =gUnknown_03004288
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, 0x2
	ldr r0, _0800FD90 @ =gUnknown_03004280
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, 0x2
	ldr r0, _0800FD94 @ =gUnknown_030041B0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, 0x2
	ldr r0, _0800FD98 @ =gUnknown_030041B8
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, 0x22
	ldr r0, _0800FD9C @ =gUnknown_030042C4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, 0x4
	ldr r0, _0800FDA0 @ =gUnknown_03004240
	ldrh r0, [r0]
	strh r0, [r1]
	subs r1, 0x2
	ldr r0, _0800FDA4 @ =gUnknown_03004200
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, 0x4
	ldr r0, _0800FDA8 @ =gUnknown_03004244
	ldrh r0, [r0]
	strh r0, [r1]
	bl LoadOam
	bl ProcessSpriteCopyRequests
	bl TransferPlttBuffer
	bl sub_8089668
	pop {r0}
	bx r0
	.align 2, 0
_0800FD78: .4byte REG_BG0HOFS
_0800FD7C: .4byte gUnknown_030042A4
_0800FD80: .4byte gUnknown_030042A0
_0800FD84: .4byte gUnknown_030042C0
_0800FD88: .4byte gUnknown_030041B4
_0800FD8C: .4byte gUnknown_03004288
_0800FD90: .4byte gUnknown_03004280
_0800FD94: .4byte gUnknown_030041B0
_0800FD98: .4byte gUnknown_030041B8
_0800FD9C: .4byte gUnknown_030042C4
_0800FDA0: .4byte gUnknown_03004240
_0800FDA4: .4byte gUnknown_03004200
_0800FDA8: .4byte gUnknown_03004244
	thumb_func_end sub_800FCFC

	thumb_func_start nullsub_36
nullsub_36: @ 800FDAC
	bx lr
	thumb_func_end nullsub_36

	thumb_func_start sub_800FDB0
sub_800FDB0: @ 800FDB0
	push {r4,r5,lr}
	adds r5, r0, 0
	movs r1, 0x2E
	ldrsh r0, [r5, r1]
	cmp r0, 0
	beq _0800FDD0
	movs r1, 0x32
	ldrsh r0, [r5, r1]
	movs r1, 0xFF
	lsls r1, 8
	ands r0, r1
	lsrs r0, 8
	ldrh r1, [r5, 0x30]
	adds r0, r1
	strh r0, [r5, 0x20]
	b _0800FDE2
_0800FDD0:
	movs r1, 0x32
	ldrsh r0, [r5, r1]
	movs r1, 0xFF
	lsls r1, 8
	ands r0, r1
	asrs r0, 8
	ldrh r1, [r5, 0x30]
	subs r1, r0
	strh r1, [r5, 0x20]
_0800FDE2:
	movs r1, 0xC0
	lsls r1, 1
	adds r0, r1, 0
	ldrh r1, [r5, 0x32]
	adds r0, r1
	strh r0, [r5, 0x32]
	adds r0, r5, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0800FE16
	ldr r4, _0800FE1C @ =0x00002710
	adds r0, r4, 0
	bl FreeSpriteTilesByTag
	adds r0, r4, 0
	bl FreeSpritePaletteByTag
	adds r0, r5, 0
	bl FreeSpriteOamMatrix
	adds r0, r5, 0
	bl DestroySprite
_0800FE16:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800FE1C: .4byte 0x00002710
	thumb_func_end sub_800FDB0

	thumb_func_start sub_800FE20
sub_800FE20: @ 800FE20
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0x1
	bl StartSpriteAffineAnim
	ldr r0, _0800FE3C @ =sub_800FDB0
	str r0, [r4, 0x1C]
	movs r0, 0x68
	bl PlaySE
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800FE3C: .4byte sub_800FDB0
	thumb_func_end sub_800FE20

	thumb_func_start sub_800FE40
sub_800FE40: @ 800FE40
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	movs r1, 0
	str r1, [sp, 0x8]
	ldr r0, _0800FE88 @ =0x02000000
	ldr r2, _0800FE8C @ =0x000160cb
	adds r0, r2
	ldrb r2, [r0]
	ldr r0, _0800FE90 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0800FEB4
	ldr r1, _0800FE94 @ =gLinkPlayers
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrh r0, [r0, 0x18]
	cmp r0, 0x1
	beq _0800FEA0
	cmp r0, 0x1
	bgt _0800FE98
	cmp r0, 0
	beq _0800FEB4
	b _0800FEBC
	.align 2, 0
_0800FE88: .4byte 0x02000000
_0800FE8C: .4byte 0x000160cb
_0800FE90: .4byte gUnknown_020239F8
_0800FE94: .4byte gLinkPlayers
_0800FE98:
	cmp r0, 0x2
	beq _0800FEB4
	cmp r0, 0x3
	bne _0800FEBC
_0800FEA0:
	ldr r1, _0800FEAC @ =gEnemyParty
	str r1, [sp, 0x4]
	ldr r2, _0800FEB0 @ =gPlayerParty
	str r2, [sp, 0x8]
	b _0800FEBC
	.align 2, 0
_0800FEAC: .4byte gEnemyParty
_0800FEB0: .4byte gPlayerParty
_0800FEB4:
	ldr r3, _08010008 @ =gPlayerParty
	str r3, [sp, 0x4]
	ldr r0, _0801000C @ =gEnemyParty
	str r0, [sp, 0x8]
_0800FEBC:
	movs r7, 0
	movs r1, 0
	mov r8, r1
	ldr r2, [sp]
	lsls r2, 2
	str r2, [sp, 0xC]
	movs r3, 0xCE
	lsls r3, 1
	mov r10, r3
	mov r9, r1
_0800FED0:
	movs r0, 0x64
	mov r4, r8
	muls r4, r0
	ldr r0, [sp, 0x4]
	adds r4, r0, r4
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	lsls r0, 16
	lsrs r5, r0, 16
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	lsls r0, 16
	lsrs r6, r0, 16
	adds r0, r4, 0
	movs r1, 0x37
	bl GetMonData
	adds r1, r0, 0
	cmp r5, 0
	beq _0800FF40
	cmp r5, r10
	beq _0800FF14
	cmp r6, 0
	beq _0800FF14
	cmp r1, 0
	bne _0800FF14
	movs r0, 0x1
	mov r2, r9
	lsls r0, r2
	orrs r7, r0
_0800FF14:
	cmp r5, 0
	beq _0800FF40
	cmp r6, 0
	beq _0800FF2C
	cmp r5, r10
	beq _0800FF24
	cmp r1, 0
	beq _0800FF2C
_0800FF24:
	movs r0, 0x2
	mov r3, r9
	lsls r0, r3
	orrs r7, r0
_0800FF2C:
	cmp r5, 0
	beq _0800FF40
	cmp r5, r10
	beq _0800FF40
	cmp r6, 0
	bne _0800FF40
	movs r0, 0x3
	mov r1, r9
	lsls r0, r1
	orrs r7, r0
_0800FF40:
	movs r2, 0x2
	add r9, r2
	movs r3, 0x1
	add r8, r3
	mov r0, r8
	cmp r0, 0x5
	ble _0800FED0
	ldr r1, _08010010 @ =gTasks
	ldr r2, [sp, 0xC]
	ldr r3, [sp]
	adds r0, r2, r3
	lsls r0, 3
	adds r0, r1
	strh r7, [r0, 0xE]
	movs r7, 0
	movs r0, 0
	mov r8, r0
	movs r1, 0xCE
	lsls r1, 1
	mov r10, r1
	mov r9, r0
_0800FF6A:
	movs r0, 0x64
	mov r4, r8
	muls r4, r0
	ldr r2, [sp, 0x8]
	adds r4, r2, r4
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	lsls r0, 16
	lsrs r5, r0, 16
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	lsls r0, 16
	lsrs r6, r0, 16
	adds r0, r4, 0
	movs r1, 0x37
	bl GetMonData
	adds r1, r0, 0
	cmp r5, 0
	beq _0800FFDA
	cmp r5, r10
	beq _0800FFAE
	cmp r6, 0
	beq _0800FFAE
	cmp r1, 0
	bne _0800FFAE
	movs r0, 0x1
	mov r3, r9
	lsls r0, r3
	orrs r7, r0
_0800FFAE:
	cmp r5, 0
	beq _0800FFDA
	cmp r6, 0
	beq _0800FFC6
	cmp r5, r10
	beq _0800FFBE
	cmp r1, 0
	beq _0800FFC6
_0800FFBE:
	movs r0, 0x2
	mov r1, r9
	lsls r0, r1
	orrs r7, r0
_0800FFC6:
	cmp r5, 0
	beq _0800FFDA
	cmp r5, r10
	beq _0800FFDA
	cmp r6, 0
	bne _0800FFDA
	movs r0, 0x3
	mov r2, r9
	lsls r0, r2
	orrs r7, r0
_0800FFDA:
	movs r3, 0x2
	add r9, r3
	movs r0, 0x1
	add r8, r0
	mov r1, r8
	cmp r1, 0x5
	ble _0800FF6A
	ldr r1, _08010010 @ =gTasks
	ldr r2, [sp, 0xC]
	ldr r3, [sp]
	adds r0, r2, r3
	lsls r0, 3
	adds r0, r1
	strh r7, [r0, 0x10]
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010008: .4byte gPlayerParty
_0801000C: .4byte gEnemyParty
_08010010: .4byte gTasks
	thumb_func_end sub_800FE40

	thumb_func_start c2_8011A1C
c2_8011A1C: @ 8010014
	push {r4,r5,lr}
	sub sp, 0x4
	movs r0, 0
	bl SetHBlankCallback
	movs r0, 0
	bl SetVBlankCallback
	movs r4, 0
	str r4, [sp]
	movs r1, 0xC0
	lsls r1, 19
	ldr r2, _08010144 @ =0x05006000
	mov r0, sp
	bl CpuSet
	ldr r0, _08010148 @ =REG_MOSAIC
	strh r4, [r0]
	subs r0, 0xC
	movs r2, 0xF0
	strh r2, [r0]
	adds r0, 0x4
	ldr r3, _0801014C @ =0x00005051
	adds r1, r3, 0
	strh r1, [r0]
	adds r0, 0x4
	strh r4, [r0]
	adds r0, 0x2
	strh r4, [r0]
	ldr r0, _08010150 @ =gUnknown_030042C4
	strh r2, [r0]
	ldr r0, _08010154 @ =gUnknown_03004240
	strh r1, [r0]
	bl dp12_8087EA4
	ldr r0, _08010158 @ =gUnknown_03004DE0
	movs r3, 0xF0
	movs r4, 0xF0
	lsls r4, 3
	adds r2, r0, r4
	movs r1, 0x4F
_08010066:
	strh r3, [r0]
	strh r3, [r2]
	adds r2, 0x2
	adds r0, 0x2
	subs r1, 0x1
	cmp r1, 0
	bge _08010066
	movs r1, 0x50
	ldr r5, _0801015C @ =gWindowConfig_81E6C58
	ldr r0, _08010158 @ =gUnknown_03004DE0
	ldr r3, _08010160 @ =0x0000ff10
	movs r4, 0x82
	lsls r4, 4
	adds r2, r0, r4
	adds r0, 0xA0
_08010084:
	strh r3, [r0]
	strh r3, [r2]
	adds r2, 0x2
	adds r0, 0x2
	adds r1, 0x1
	cmp r1, 0x9F
	ble _08010084
	adds r0, r5, 0
	bl SetUpWindowConfig
	bl ResetPaletteFade
	ldr r0, _08010164 @ =gUnknown_030042A4
	movs r4, 0
	strh r4, [r0]
	ldr r0, _08010168 @ =gUnknown_030042A0
	strh r4, [r0]
	ldr r0, _0801016C @ =gUnknown_030042C0
	strh r4, [r0]
	ldr r0, _08010170 @ =gUnknown_030041B4
	strh r4, [r0]
	ldr r0, _08010174 @ =gUnknown_03004288
	strh r4, [r0]
	ldr r0, _08010178 @ =gUnknown_03004280
	strh r4, [r0]
	ldr r0, _0801017C @ =gUnknown_030041B0
	strh r4, [r0]
	ldr r0, _08010180 @ =gUnknown_030041B8
	strh r4, [r0]
	ldr r0, _08010184 @ =gUnknown_03004210
	adds r1, r5, 0
	bl InitWindowFromConfig
	ldr r0, _08010188 @ =gUnknown_030041D0
	ldr r1, _0801018C @ =gWindowConfig_81E71D0
	bl InitWindowFromConfig
	ldr r0, _08010190 @ =gUnknown_03004250
	ldr r1, _08010194 @ =gWindowConfig_81E71EC
	bl InitWindowFromConfig
	bl sub_800D6D4
	ldr r0, _08010198 @ =gUnknown_08D004E0
	movs r1, 0
	movs r2, 0x40
	bl LoadCompressedPalette
	bl sub_800D74C
	bl ResetSpriteData
	bl ResetTasks
	bl sub_800E23C
	ldr r1, _0801019C @ =REG_WINOUT
	movs r0, 0x37
	strh r0, [r1]
	bl FreeAllSpritePalettes
	ldr r1, _080101A0 @ =gReservedSpritePaletteCount
	movs r0, 0x4
	strb r0, [r1]
	ldr r0, _080101A4 @ =sub_800FCFC
	bl SetVBlankCallback
	ldr r0, _080101A8 @ =sub_800DE30
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080101AC @ =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	movs r2, 0x87
	lsls r2, 1
	strh r2, [r1, 0xA]
	movs r2, 0x5A
	strh r2, [r1, 0xC]
	movs r2, 0x1
	strh r2, [r1, 0x12]
	bl sub_800FE40
	ldr r0, _080101B0 @ =sub_80101B8
	bl SetMainCallback2
	ldr r0, _080101B4 @ =gUnknown_02024D1E
	strb r4, [r0]
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010144: .4byte 0x05006000
_08010148: .4byte REG_MOSAIC
_0801014C: .4byte 0x00005051
_08010150: .4byte gUnknown_030042C4
_08010154: .4byte gUnknown_03004240
_08010158: .4byte gUnknown_03004DE0
_0801015C: .4byte gWindowConfig_81E6C58
_08010160: .4byte 0x0000ff10
_08010164: .4byte gUnknown_030042A4
_08010168: .4byte gUnknown_030042A0
_0801016C: .4byte gUnknown_030042C0
_08010170: .4byte gUnknown_030041B4
_08010174: .4byte gUnknown_03004288
_08010178: .4byte gUnknown_03004280
_0801017C: .4byte gUnknown_030041B0
_08010180: .4byte gUnknown_030041B8
_08010184: .4byte gUnknown_03004210
_08010188: .4byte gUnknown_030041D0
_0801018C: .4byte gWindowConfig_81E71D0
_08010190: .4byte gUnknown_03004250
_08010194: .4byte gWindowConfig_81E71EC
_08010198: .4byte gUnknown_08D004E0
_0801019C: .4byte REG_WINOUT
_080101A0: .4byte gReservedSpritePaletteCount
_080101A4: .4byte sub_800FCFC
_080101A8: .4byte sub_800DE30
_080101AC: .4byte gTasks
_080101B0: .4byte sub_80101B8
_080101B4: .4byte gUnknown_02024D1E
	thumb_func_end c2_8011A1C

	thumb_func_start sub_80101B8
sub_80101B8: @ 80101B8
	push {lr}
	bl c2_081284E0
	bl AnimateSprites
	bl BuildOamBuffer
	bl UpdatePaletteFade
	bl RunTasks
	pop {r0}
	bx r0
	thumb_func_end sub_80101B8

	thumb_func_start c2_081284E0
c2_081284E0: @ 80101D4
	push {r4,lr}
	sub sp, 0x4
	ldr r4, _080101EC @ =gUnknown_02024D1E
	ldrb r0, [r4]
	cmp r0, 0x1
	beq _080101FC
	cmp r0, 0x1
	bgt _080101F0
	cmp r0, 0
	beq _080101F6
	b _08010236
	.align 2, 0
_080101EC: .4byte gUnknown_02024D1E
_080101F0:
	cmp r0, 0x2
	beq _08010222
	b _08010236
_080101F6:
	movs r0, 0xFF
	strb r0, [r4, 0x1]
	b _0801021A
_080101FC:
	ldrb r0, [r4, 0x1]
	subs r0, 0x1
	strb r0, [r4, 0x1]
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	bne _08010236
	movs r0, 0x1
	negs r0, r0
	str r1, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
_0801021A:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	b _08010236
_08010222:
	ldr r0, _08010240 @ =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08010236
	ldr r0, _08010244 @ =gMain
	ldr r0, [r0, 0x8]
	bl SetMainCallback2
_08010236:
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010240: .4byte gPaletteFade
_08010244: .4byte gMain
	thumb_func_end c2_081284E0

	thumb_func_start oac_poke_opponent
oac_poke_opponent: @ 8010248
	push {lr}
	sub sp, 0x4
	ldr r1, _08010270 @ =sub_8010278
	str r1, [r0, 0x1C]
	movs r1, 0
	bl StartSpriteAnimIfDifferent
	movs r0, 0x80
	lsls r0, 10
	ldr r1, _08010274 @ =0x00003def
	str r1, [sp]
	movs r1, 0
	movs r2, 0xA
	movs r3, 0xA
	bl BeginNormalPaletteFade
	add sp, 0x4
	pop {r0}
	bx r0
	.align 2, 0
_08010270: .4byte sub_8010278
_08010274: .4byte 0x00003def
	thumb_func_end oac_poke_opponent

	thumb_func_start sub_8010278
sub_8010278: @ 8010278
	push {lr}
	adds r2, r0, 0
	ldr r0, _080102A4 @ =gUnknown_02024DE8
	ldrh r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _080102A0
	ldrh r0, [r2, 0x24]
	adds r0, 0x2
	strh r0, [r2, 0x24]
	lsls r0, 16
	cmp r0, 0
	bne _080102A0
	ldr r0, _080102A8 @ =sub_80102AC
	str r0, [r2, 0x1C]
	ldrh r0, [r2, 0x32]
	movs r1, 0x19
	bl PlayCry1
_080102A0:
	pop {r0}
	bx r0
	.align 2, 0
_080102A4: .4byte gUnknown_02024DE8
_080102A8: .4byte sub_80102AC
	thumb_func_end sub_8010278

	thumb_func_start sub_80102AC
sub_80102AC: @ 80102AC
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _080102F4
	ldrh r0, [r4, 0x2E]
	lsls r0, 24
	lsrs r0, 24
	bl sub_804777C
	ldr r1, _080102FC @ =gUnknown_03004340
	movs r2, 0x2E
	ldrsh r0, [r4, r2]
	adds r0, r1
	ldrb r0, [r0]
	bl sub_8043DFC
	ldr r0, _08010300 @ =nullsub_37
	str r0, [r4, 0x1C]
	adds r0, r4, 0
	movs r1, 0
	bl StartSpriteAnimIfDifferent
	movs r0, 0x80
	lsls r0, 10
	ldr r1, _08010304 @ =0x00003def
	str r1, [sp]
	movs r1, 0
	movs r2, 0xA
	movs r3, 0
	bl BeginNormalPaletteFade
_080102F4:
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080102FC: .4byte gUnknown_03004340
_08010300: .4byte nullsub_37
_08010304: .4byte 0x00003def
	thumb_func_end sub_80102AC

	thumb_func_start nullsub_37
nullsub_37: @ 8010308
	bx lr
	thumb_func_end nullsub_37

	thumb_func_start unref_sub_801030C
unref_sub_801030C: @ 801030C
	movs r1, 0x6
	strh r1, [r0, 0x34]
	movs r1, 0x1
	strh r1, [r0, 0x36]
	ldr r1, _0801031C @ =sub_8010320
	str r1, [r0, 0x1C]
	bx lr
	.align 2, 0
_0801031C: .4byte sub_8010320
	thumb_func_end unref_sub_801030C

	thumb_func_start sub_8010320
sub_8010320: @ 8010320
	push {r4,lr}
	adds r3, r0, 0
	ldrh r0, [r3, 0x36]
	subs r0, 0x1
	strh r0, [r3, 0x36]
	lsls r0, 16
	cmp r0, 0
	bne _08010374
	movs r0, 0x8
	strh r0, [r3, 0x36]
	movs r0, 0x3E
	adds r0, r3
	mov r12, r0
	ldrb r2, [r0]
	lsls r0, r2, 29
	lsrs r0, 31
	movs r1, 0x1
	eors r1, r0
	lsls r1, 2
	movs r4, 0x5
	negs r4, r4
	adds r0, r4, 0
	ands r0, r2
	orrs r0, r1
	mov r1, r12
	strb r0, [r1]
	ldrh r0, [r3, 0x34]
	subs r0, 0x1
	strh r0, [r3, 0x34]
	lsls r0, 16
	asrs r2, r0, 16
	cmp r2, 0
	bne _08010374
	ldrb r1, [r1]
	adds r0, r4, 0
	ands r0, r1
	mov r1, r12
	strb r0, [r1]
	ldr r0, _0801037C @ =nullsub_37
	str r0, [r3, 0x1C]
	ldr r0, _08010380 @ =gUnknown_03004284
	str r2, [r0]
_08010374:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801037C: .4byte nullsub_37
_08010380: .4byte gUnknown_03004284
	thumb_func_end sub_8010320

	thumb_func_start sub_8010384
sub_8010384: @ 8010384
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r9, r0
	ldrh r0, [r0, 0x2E]
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r1, r6, 2
	ldr r0, _080103A4 @ =0x02017800
	adds r1, r0
	ldrh r0, [r1, 0x2]
	cmp r0, 0
	beq _080103A8
	adds r4, r0, 0
	b _080103AC
	.align 2, 0
_080103A4: .4byte 0x02017800
_080103A8:
	mov r0, r9
	ldrh r4, [r0, 0x32]
_080103AC:
	ldr r1, _08010414 @ =gUnknown_02024A6A
	lsls r0, r6, 1
	adds r5, r0, r1
	ldrh r0, [r5]
	movs r1, 0x64
	mov r8, r1
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	ldr r7, _08010418 @ =gEnemyParty
	adds r0, r7
	movs r1, 0
	bl GetMonData
	cmp r4, SPECIES_UNOWN
	bne _08010430
	ldrh r0, [r5]
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	adds r0, r7
	movs r1, 0
	bl GetMonData
	adds r2, r0, 0
	movs r0, 0xC0
	lsls r0, 18
	ands r0, r2
	lsrs r0, 18
	movs r1, 0xC0
	lsls r1, 10
	ands r1, r2
	lsrs r1, 12
	orrs r0, r1
	movs r1, 0xC0
	lsls r1, 2
	ands r1, r2
	lsrs r1, 6
	orrs r0, r1
	movs r1, 0x3
	ands r1, r2
	orrs r0, r1
	movs r1, 0x1C
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0
	bne _0801041C
	movs r0, SPECIES_UNOWN
	b _08010426
	.align 2, 0
_08010414: .4byte gUnknown_02024A6A
_08010418: .4byte gEnemyParty
_0801041C:
	movs r1, 0xCE
	lsls r1, 1
	adds r0, r1
	lsls r0, 16
	lsrs r0, 16
_08010426:
	ldr r1, _0801042C @ =gMonFrontPicCoords
	lsls r0, 2
	b _08010468
	.align 2, 0
_0801042C: .4byte gMonFrontPicCoords
_08010430:
	ldr r0, _08010448 @ =SPECIES_CASTFORM
	cmp r4, r0  @ Check if pokemon species is Castform
	bne _08010454
	ldr r0, _0801044C @ =gUnknownCastformCoords_0837F598
	ldr r1, _08010450 @ =gUnknown_02024E84
	adds r1, r6, r1
	ldrb r1, [r1]
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x1]
	b _0801046C
	.align 2, 0
_08010448: .4byte SPECIES_CASTFORM
_0801044C: .4byte gUnknownCastformCoords_0837F598
_08010450: .4byte gUnknown_02024E84
_08010454:
	movs r0, 0xCE
	lsls r0, 1
	cmp r4, r0
	bls _08010464
	ldr r0, _08010460 @ =gMonFrontPicCoords
	b _0801046A
	.align 2, 0
_08010460: .4byte gMonFrontPicCoords
_08010464:
	ldr r1, _0801048C @ =gMonFrontPicCoords
	lsls r0, r4, 2
_08010468:
	adds r0, r1
_0801046A:
	ldrb r0, [r0, 0x1]
_0801046C:
	lsrs r1, r0, 3
	movs r0, 0x8
	subs r0, r1
	mov r1, r9
	strh r0, [r1, 0x34]
	movs r0, 0x1
	strh r0, [r1, 0x36]
	ldr r0, _08010490 @ =sub_8010494
	str r0, [r1, 0x1C]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801048C: .4byte gMonFrontPicCoords
_08010490: .4byte sub_8010494
	thumb_func_end sub_8010384

	thumb_func_start sub_8010494
sub_8010494: @ 8010494
	push {r4,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x36]
	subs r0, 0x1
	strh r0, [r4, 0x36]
	lsls r0, 16
	cmp r0, 0
	bne _08010510
	movs r0, 0x2
	strh r0, [r4, 0x36]
	ldrh r0, [r4, 0x26]
	adds r0, 0x8
	strh r0, [r4, 0x26]
	ldrh r0, [r4, 0x34]
	subs r0, 0x1
	strh r0, [r4, 0x34]
	lsls r0, 16
	cmp r0, 0
	bge _080104C8
	adds r0, r4, 0
	bl FreeSpriteOamMatrix
	adds r0, r4, 0
	bl DestroySprite
	b _08010510
_080104C8:
	ldrh r0, [r4, 0x2E]
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_per_side_status
	ldr r1, _08010518 @ =gUnknown_081FAF4C
	lsls r0, 24
	lsrs r0, 22
	adds r0, r1
	ldr r2, _0801051C @ =gUnknown_02024E84
	movs r3, 0x2E
	ldrsh r1, [r4, r3]
	adds r1, r2
	ldrb r1, [r1]
	lsls r1, 11
	ldr r2, [r0]
	adds r2, r1
	movs r1, 0x34
	ldrsh r0, [r4, r1]
	lsls r0, 8
	adds r2, r0
	movs r1, 0
	movs r0, 0xFF
_080104F6:
	strb r1, [r2]
	adds r2, 0x1
	subs r0, 0x1
	cmp r0, 0
	bge _080104F6
	ldr r0, _0801051C @ =gUnknown_02024E84
	movs r2, 0x2E
	ldrsh r1, [r4, r2]
	adds r1, r0
	ldrb r1, [r1]
	adds r0, r4, 0
	bl StartSpriteAnim
_08010510:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010518: .4byte gUnknown_081FAF4C
_0801051C: .4byte gUnknown_02024E84
	thumb_func_end sub_8010494

	thumb_func_start sub_8010520
sub_8010520: @ 8010520
	movs r1, 0x8
	strh r1, [r0, 0x34]
	adds r1, r0, 0
	adds r1, 0x3E
	ldrb r1, [r1]
	lsls r1, 29
	lsrs r1, 31
	strh r1, [r0, 0x36]
	ldr r1, _08010538 @ =sub_801053C
	str r1, [r0, 0x1C]
	bx lr
	.align 2, 0
_08010538: .4byte sub_801053C
	thumb_func_end sub_8010520

	thumb_func_start sub_801053C
sub_801053C: @ 801053C
	push {lr}
	adds r3, r0, 0
	ldrh r0, [r3, 0x34]
	subs r0, 0x1
	strh r0, [r3, 0x34]
	lsls r0, 16
	cmp r0, 0
	bne _0801056E
	movs r0, 0x3E
	adds r0, r3
	mov r12, r0
	ldrb r2, [r0]
	lsls r0, r2, 29
	lsrs r0, 31
	movs r1, 0x1
	eors r1, r0
	lsls r1, 2
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	mov r1, r12
	strb r0, [r1]
	movs r0, 0x8
	strh r0, [r3, 0x34]
_0801056E:
	pop {r0}
	bx r0
	thumb_func_end sub_801053C

	thumb_func_start sub_8010574
sub_8010574: @ 8010574
	movs r1, 0x3E
	adds r1, r0
	mov r12, r1
	movs r1, 0x1
	ldrh r2, [r0, 0x36]
	ands r2, r1
	lsls r2, 2
	mov r1, r12
	ldrb r3, [r1]
	movs r1, 0x5
	negs r1, r1
	ands r1, r3
	orrs r1, r2
	mov r2, r12
	strb r1, [r2]
	movs r1, 0
	strh r1, [r0, 0x36]
	ldr r1, _0801059C @ =nullsub_37
	str r1, [r0, 0x1C]
	bx lr
	.align 2, 0
_0801059C: .4byte nullsub_37
	thumb_func_end sub_8010574

	thumb_func_start sub_80105A0
sub_80105A0: @ 80105A0
	ldr r1, _080105A8 @ =oac_poke_ally_
	str r1, [r0, 0x1C]
	bx lr
	.align 2, 0
_080105A8: .4byte oac_poke_ally_
	thumb_func_end sub_80105A0

	thumb_func_start oac_poke_ally_
oac_poke_ally_: @ 80105AC
	push {lr}
	adds r2, r0, 0
	ldr r0, _080105D4 @ =gUnknown_02024DE8
	ldrh r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _080105D0
	ldrh r0, [r2, 0x24]
	subs r0, 0x2
	strh r0, [r2, 0x24]
	lsls r0, 16
	asrs r1, r0, 16
	cmp r1, 0
	bne _080105D0
	ldr r0, _080105D8 @ =nullsub_86
	str r0, [r2, 0x1C]
	strh r1, [r2, 0x30]
_080105D0:
	pop {r0}
	bx r0
	.align 2, 0
_080105D4: .4byte gUnknown_02024DE8
_080105D8: .4byte nullsub_86
	thumb_func_end oac_poke_ally_

	thumb_func_start sub_80105DC
sub_80105DC: @ 80105DC
	ldr r1, _080105E4 @ =nullsub_86
	str r1, [r0, 0x1C]
	bx lr
	.align 2, 0
_080105E4: .4byte nullsub_86
	thumb_func_end sub_80105DC

	thumb_func_start nullsub_86
nullsub_86: @ 80105E8
	bx lr
	thumb_func_end nullsub_86

	thumb_func_start sub_80105EC
sub_80105EC: @ 80105EC
	push {lr}
	adds r2, r0, 0
	ldr r0, _08010610 @ =gUnknown_02024DE8
	ldrh r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _0801060C
	ldrh r0, [r2, 0x30]
	ldrh r1, [r2, 0x24]
	adds r0, r1
	strh r0, [r2, 0x24]
	ldrh r0, [r2, 0x32]
	ldrh r1, [r2, 0x26]
	adds r0, r1
	strh r0, [r2, 0x26]
_0801060C:
	pop {r0}
	bx r0
	.align 2, 0
_08010610: .4byte gUnknown_02024DE8
	thumb_func_end sub_80105EC

	thumb_func_start dp11b_obj_instanciate
dp11b_obj_instanciate: @ 8010614
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 24
	lsrs r1, 24
	mov r8, r1
	lsls r2, 24
	lsrs r2, 24
	mov r9, r2
	lsls r3, 24
	lsrs r3, 24
	mov r10, r3
	cmp r1, 0
	beq _0801064C
	lsls r2, r4, 1
	adds r0, r2, r4
	lsls r0, 2
	ldr r1, _08010648 @ =0x02017810
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x2
	b _0801065A
	.align 2, 0
_08010648: .4byte 0x02017810
_0801064C:
	lsls r2, r4, 1
	adds r0, r2, r4
	lsls r0, 2
	ldr r1, _08010698 @ =0x02017810
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x4
_0801065A:
	ands r0, r1
	adds r6, r2, 0
	cmp r0, 0
	bne _080106FA
	ldr r0, _0801069C @ =objc_dp11b_pingpong
	bl object_new_hidden_with_callback
	lsls r0, 24
	lsrs r5, r0, 24
	mov r0, r8
	cmp r0, 0x1
	bne _080106A8
	ldr r0, _080106A0 @ =gUnknown_03004340
	adds r0, r4, r0
	ldrb r7, [r0]
	adds r0, r6, r4
	lsls r0, 2
	ldr r1, _08010698 @ =0x02017810
	adds r0, r1
	strb r5, [r0, 0x2]
	ldrb r1, [r0]
	movs r2, 0x2
	orrs r1, r2
	strb r1, [r0]
	ldr r2, _080106A4 @ =gSprites
	lsls r3, r5, 4
	adds r0, r3, r5
	lsls r0, 2
	adds r0, r2
	movs r1, 0x80
	b _080106CC
	.align 2, 0
_08010698: .4byte 0x02017810
_0801069C: .4byte objc_dp11b_pingpong
_080106A0: .4byte gUnknown_03004340
_080106A4: .4byte gSprites
_080106A8:
	ldr r0, _08010708 @ =gUnknown_02024BE0
	adds r0, r4, r0
	ldrb r7, [r0]
	adds r0, r6, r4
	lsls r0, 2
	ldr r1, _0801070C @ =0x02017810
	adds r0, r1
	strb r5, [r0, 0x3]
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	ldr r2, _08010710 @ =gSprites
	lsls r3, r5, 4
	adds r0, r3, r5
	lsls r0, 2
	adds r0, r2
	movs r1, 0xC0
_080106CC:
	strh r1, [r0, 0x2E]
	adds r4, r2, 0
	adds r1, r3, r5
	lsls r1, 2
	adds r1, r4
	mov r2, r9
	lsls r0, r2, 24
	asrs r0, 24
	movs r2, 0
	strh r0, [r1, 0x30]
	mov r3, r10
	lsls r0, r3, 24
	asrs r0, 24
	strh r0, [r1, 0x32]
	strh r7, [r1, 0x34]
	mov r0, r8
	strh r0, [r1, 0x36]
	lsls r0, r7, 4
	adds r0, r7
	lsls r0, 2
	adds r0, r4
	strh r2, [r0, 0x24]
	strh r2, [r0, 0x26]
_080106FA:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010708: .4byte gUnknown_02024BE0
_0801070C: .4byte 0x02017810
_08010710: .4byte gSprites
	thumb_func_end dp11b_obj_instanciate

	thumb_func_start dp11b_obj_free
dp11b_obj_free: @ 8010714
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r2, r0, 24
	lsls r1, 24
	lsrs r1, 24
	cmp r1, 0x1
	bne _0801075C
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	ldr r1, _08010754 @ =0x02017810
	adds r5, r0, r1
	ldrb r1, [r5]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _080107A0
	ldr r2, _08010758 @ =gSprites
	ldrb r1, [r5, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrh r1, [r0, 0x34]
	lsls r1, 24
	lsrs r4, r1, 24
	bl DestroySprite
	ldrb r1, [r5]
	movs r0, 0x3
	negs r0, r0
	b _0801078C
	.align 2, 0
_08010754: .4byte 0x02017810
_08010758: .4byte gSprites
_0801075C:
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	ldr r1, _080107A8 @ =0x02017810
	adds r5, r0, r1
	ldrb r1, [r5]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _080107A0
	ldr r2, _080107AC @ =gSprites
	ldrb r1, [r5, 0x3]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrh r1, [r0, 0x34]
	lsls r1, 24
	lsrs r4, r1, 24
	bl DestroySprite
	ldrb r1, [r5]
	movs r0, 0x5
	negs r0, r0
_0801078C:
	ands r0, r1
	strb r0, [r5]
	ldr r0, _080107AC @ =gSprites
	lsls r1, r4, 4
	adds r1, r4
	lsls r1, 2
	adds r1, r0
	movs r0, 0
	strh r0, [r1, 0x24]
	strh r0, [r1, 0x26]
_080107A0:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080107A8: .4byte 0x02017810
_080107AC: .4byte gSprites
	thumb_func_end dp11b_obj_free

	thumb_func_start objc_dp11b_pingpong
objc_dp11b_pingpong: @ 80107B0
	push {r4,r5,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x34]
	lsls r0, 24
	lsrs r5, r0, 24
	movs r1, 0x36
	ldrsh r0, [r4, r1]
	cmp r0, 0x1
	bne _080107C8
	movs r2, 0x2E
	ldrsh r0, [r4, r2]
	b _080107CC
_080107C8:
	movs r1, 0x2E
	ldrsh r0, [r4, r1]
_080107CC:
	movs r2, 0x32
	ldrsh r1, [r4, r2]
	bl Sin
	ldr r2, _080107F8 @ =gSprites
	lsls r1, r5, 4
	adds r1, r5
	lsls r1, 2
	adds r1, r2
	ldrh r2, [r4, 0x32]
	adds r0, r2
	strh r0, [r1, 0x26]
	ldrh r0, [r4, 0x30]
	ldrh r1, [r4, 0x2E]
	adds r0, r1
	movs r1, 0xFF
	ands r0, r1
	strh r0, [r4, 0x2E]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080107F8: .4byte gSprites
	thumb_func_end objc_dp11b_pingpong

	thumb_func_start nullsub_41
nullsub_41: @ 80107FC
	bx lr
	thumb_func_end nullsub_41

	thumb_func_start sub_8010800
sub_8010800: @ 8010800
	push {lr}
	bl sub_8010874
	ldr r1, _08010818 @ =gUnknown_02024D1E
	movs r0, 0
	strb r0, [r1, 0x1]
	ldr r1, _0801081C @ =gUnknown_030042D4
	ldr r0, _08010820 @ =bc_8012FAC
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08010818: .4byte gUnknown_02024D1E
_0801081C: .4byte gUnknown_030042D4
_08010820: .4byte bc_8012FAC
	thumb_func_end sub_8010800

	thumb_func_start sub_8010824
sub_8010824: @ 8010824
	push {r4,r5,lr}
	ldr r0, _08010864 @ =gUnknown_030042D4
	ldr r0, [r0]
	bl _call_via_r0
	ldr r1, _08010868 @ =gUnknown_02024A60
	movs r0, 0
	strb r0, [r1]
	ldr r0, _0801086C @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r0, 0
	beq _0801085E
	ldr r5, _08010870 @ =gUnknown_03004330
	adds r4, r1, 0
_08010840:
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r5
	ldr r0, [r0]
	bl _call_via_r0
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	ldr r1, _0801086C @ =gUnknown_02024A68
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08010840
_0801085E:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010864: .4byte gUnknown_030042D4
_08010868: .4byte gUnknown_02024A60
_0801086C: .4byte gUnknown_02024A68
_08010870: .4byte gUnknown_03004330
	thumb_func_end sub_8010824

	thumb_func_start sub_8010874
sub_8010874: @ 8010874
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	movs r0, 0
	bl sub_801365C
	bl sub_801377C
	movs r2, 0
	movs r3, 0
	ldr r0, _08010AC8 @ =gUnknown_02024C4C
	mov r10, r0
	ldr r1, _08010ACC @ =gUnknown_02024C44
	mov r9, r1
	ldr r4, _08010AD0 @ =gUnknown_02024C3C
	mov r8, r4
	ldr r0, _08010AD4 @ =gUnknown_02024C34
	mov r12, r0
	ldr r4, _08010AD8 @ =gUnknown_02024CA8
	movs r5, 0
	ldr r7, _08010ADC @ =gUnknown_02024C2C
	ldr r6, _08010AE0 @ =gUnknown_02024C54
_080108A4:
	ldr r0, _08010AE4 @ =gUnknown_02024C98
	adds r0, r5, r0
	str r3, [r0]
	movs r1, 0
_080108AC:
	adds r0, r4, r1
	strb r3, [r0]
	adds r1, 0x1
	cmp r1, 0x1B
	bls _080108AC
	movs r0, 0x2
	strb r0, [r4, 0x16]
	ldr r1, _08010AE8 @ =gUnknown_02024C70
	adds r0, r2, r1
	strb r3, [r0]
	mov r0, r12
	strh r3, [r0]
	mov r1, r8
	strh r3, [r1]
	mov r0, r9
	strh r3, [r0]
	mov r1, r10
	strh r3, [r1]
	ldr r0, _08010AEC @ =gUnknown_02024C5C
	adds r1, r2, r0
	movs r0, 0xFF
	strb r0, [r1]
	strh r3, [r6]
	strh r3, [r7]
	ldr r1, _08010AF0 @ =0x02017100
	adds r0, r5, r1
	str r3, [r0]
	movs r0, 0x2
	add r10, r0
	add r9, r0
	add r8, r0
	add r12, r0
	adds r4, 0x1C
	adds r5, 0x4
	adds r7, 0x2
	adds r6, 0x2
	adds r2, 0x1
	cmp r2, 0x3
	ble _080108A4
	movs r5, 0
	ldr r3, _08010AF4 @ =gUnknown_02024C80
	ldr r4, _08010AF8 @ =gUnknown_02024C7A
	movs r2, 0x1
_08010902:
	strh r5, [r4]
	movs r1, 0
_08010906:
	adds r0, r3, r1
	strb r5, [r0]
	adds r1, 0x1
	cmp r1, 0xB
	bls _08010906
	adds r3, 0xC
	adds r4, 0x2
	subs r2, 0x1
	cmp r2, 0
	bge _08010902
	movs r1, 0
	ldr r2, _08010AFC @ =gUnknown_02024C07
	strb r1, [r2]
	ldr r3, _08010B00 @ =gUnknown_02024C08
	strb r1, [r3]
	ldr r4, _08010B04 @ =word_2024DB8
	strh r1, [r4]
	ldr r1, _08010B08 @ =gUnknown_02024DBC
	movs r2, 0
	movs r3, 0
_0801092E:
	adds r0, r1, r2
	strb r3, [r0]
	adds r2, 0x1
	cmp r2, 0x2B
	bls _0801092E
	movs r0, 0
	ldr r1, _08010B0C @ =gUnknown_02024C6C
	str r0, [r1]
	ldr r2, _08010B10 @ =gUnknown_020239F8
	ldrh r1, [r2]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _0801095C
	ldr r3, _08010B14 @ =gSaveBlock2
	ldrb r1, [r3, 0x15]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _0801095C
	movs r0, 0x80
	ldr r4, _08010B0C @ =gUnknown_02024C6C
	str r0, [r4]
_0801095C:
	ldr r1, _08010B14 @ =gSaveBlock2
	ldrb r0, [r1, 0x15]
	lsls r0, 30
	lsrs r0, 31
	ldr r3, _08010B18 @ =0x02000000
	ldr r4, _08010B1C @ =0x00016084
	adds r2, r3, r4
	movs r1, 0
	strb r0, [r2]
	ldr r0, _08010B20 @ =gUnknown_02024C0E
	strb r1, [r0]
	ldr r2, _08010B24 @ =gUnknown_02024D26
	strb r1, [r2]
	ldr r3, _08010B28 @ =gUnknown_02024A64
	str r1, [r3]
	movs r2, 0
	ldr r4, _08010B2C @ =gUnknown_02024D1A
	strh r1, [r4]
	ldr r1, _08010B18 @ =0x02000000
	ldr r3, _08010B30 @ =0x00017130
	adds r0, r1, r3
	strb r2, [r0]
	ldr r4, _08010B34 @ =0x00017160
	adds r0, r1, r4
	strb r2, [r0]
	ldr r1, _08010B38 @ =gUnknown_02024D1E
	movs r2, 0
	adds r0, r1, 0x7
_08010994:
	strb r2, [r0]
	subs r0, 0x1
	cmp r0, r1
	bge _08010994
	movs r5, 0
	ldr r0, _08010B3C @ =gUnknown_02024D18
	strh r5, [r0]
	movs r0, 0
	ldr r1, _08010B40 @ =gUnknown_02024BEC
	str r0, [r1]
	ldr r2, _08010B44 @ =gUnknown_02024DE8
	strh r0, [r2]
	ldr r4, _08010B18 @ =0x02000000
	ldr r3, _08010B48 @ =0x00016002
	adds r0, r4, r3
	strb r5, [r0]
	ldr r1, _08010B4C @ =0x000160a1
	adds r0, r4, r1
	strb r5, [r0]
	ldr r2, _08010B50 @ =gUnknown_03004324
	strb r5, [r2]
	ldr r3, _08010B54 @ =gUnknown_02024C0C
	strb r5, [r3]
	subs r1, 0x29
	adds r0, r4, r1
	strb r5, [r0]
	ldr r2, _08010B58 @ =0x00016086
	adds r0, r4, r2
	strb r5, [r0]
	ldr r3, _08010B5C @ =0x00016087
	adds r0, r4, r3
	strb r5, [r0]
	ldr r0, _08010B60 @ =gEnemyParty
	movs r1, 0xB
	bl GetMonData
	ldr r2, _08010B64 @ =gBaseStats
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r2
	ldrb r1, [r1, 0x8]
	movs r0, 0x64
	muls r0, r1
	ldr r1, _08010B68 @ =0x000004fb
	bl __divsi3
	ldr r2, _08010B6C @ =0x00016089
	adds r1, r4, r2
	strb r0, [r1]
	ldr r3, _08010B70 @ =0x00016088
	adds r1, r4, r3
	movs r0, 0x3
	strb r0, [r1]
	ldr r1, _08010B74 @ =0x0001601b
	adds r0, r4, r1
	strb r5, [r0]
	subs r2, 0x33
	adds r1, r4, r2
	movs r0, 0x1
	strb r0, [r1]
	movs r2, 0
	movs r1, 0
_08010A12:
	ldr r3, _08010B78 @ =0x000160ac
	adds r0, r2, r3
	adds r0, r4
	strb r1, [r0]
	adds r3, 0x20
	adds r0, r2, r3
	adds r0, r4
	strb r1, [r0]
	adds r3, 0x1C
	adds r0, r2, r3
	adds r0, r4
	strb r1, [r0]
	adds r3, 0x8
	adds r0, r2, r3
	adds r0, r4
	strb r1, [r0]
	adds r3, 0x10
	adds r0, r2, r3
	adds r0, r4
	strb r1, [r0]
	adds r3, 0x8
	adds r0, r2, r3
	adds r0, r4
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, 0x7
	ble _08010A12
	ldr r4, _08010B18 @ =0x02000000
	ldr r1, _08010B7C @ =0x000160c8
	adds r0, r4, r1
	movs r2, 0
	movs r1, 0x6
	strb r1, [r0]
	subs r3, 0x3F
	adds r0, r4, r3
	strb r1, [r0]
	ldr r1, _08010B80 @ =0x00016113
	adds r0, r4, r1
	strb r2, [r0]
	ldr r3, _08010B84 @ =gUnknown_030042E0
	movs r1, 0
	movs r2, 0xA
	adds r0, r3, 0
	adds r0, 0x40
_08010A6A:
	strb r1, [r0]
	subs r0, 0x1
	subs r2, 0x1
	cmp r2, 0
	bge _08010A6A
	movs r1, 0
	strb r1, [r3, 0x13]
	strb r1, [r3]
	strb r1, [r3, 0x1]
	strb r1, [r3, 0x2]
	strb r1, [r3, 0x3]
	strb r1, [r3, 0x4]
	ldrb r2, [r3, 0x5]
	movs r0, 0x2
	negs r0, r0
	ands r0, r2
	movs r2, 0x3
	negs r2, r2
	ands r0, r2
	strb r0, [r3, 0x5]
	strh r1, [r3, 0x20]
	strh r1, [r3, 0x22]
	strh r1, [r3, 0x24]
	strh r1, [r3, 0x6]
	strh r1, [r3, 0x26]
	strh r1, [r3, 0x28]
	movs r2, 0
	adds r5, r3, 0
	adds r5, 0x8
	movs r4, 0
	adds r1, r3, 0
	adds r1, 0x14
_08010AAA:
	adds r0, r2, r5
	strb r4, [r0]
	strb r4, [r1]
	strb r4, [r1, 0x16]
	adds r1, 0x1
	adds r2, 0x1
	cmp r2, 0x9
	ble _08010AAA
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010AC8: .4byte gUnknown_02024C4C
_08010ACC: .4byte gUnknown_02024C44
_08010AD0: .4byte gUnknown_02024C3C
_08010AD4: .4byte gUnknown_02024C34
_08010AD8: .4byte gUnknown_02024CA8
_08010ADC: .4byte gUnknown_02024C2C
_08010AE0: .4byte gUnknown_02024C54
_08010AE4: .4byte gUnknown_02024C98
_08010AE8: .4byte gUnknown_02024C70
_08010AEC: .4byte gUnknown_02024C5C
_08010AF0: .4byte 0x02017100
_08010AF4: .4byte gUnknown_02024C80
_08010AF8: .4byte gUnknown_02024C7A
_08010AFC: .4byte gUnknown_02024C07
_08010B00: .4byte gUnknown_02024C08
_08010B04: .4byte word_2024DB8
_08010B08: .4byte gUnknown_02024DBC
_08010B0C: .4byte gUnknown_02024C6C
_08010B10: .4byte gUnknown_020239F8
_08010B14: .4byte gSaveBlock2
_08010B18: .4byte 0x02000000
_08010B1C: .4byte 0x00016084
_08010B20: .4byte gUnknown_02024C0E
_08010B24: .4byte gUnknown_02024D26
_08010B28: .4byte gUnknown_02024A64
_08010B2C: .4byte gUnknown_02024D1A
_08010B30: .4byte 0x00017130
_08010B34: .4byte 0x00017160
_08010B38: .4byte gUnknown_02024D1E
_08010B3C: .4byte gUnknown_02024D18
_08010B40: .4byte gUnknown_02024BEC
_08010B44: .4byte gUnknown_02024DE8
_08010B48: .4byte 0x00016002
_08010B4C: .4byte 0x000160a1
_08010B50: .4byte gUnknown_03004324
_08010B54: .4byte gUnknown_02024C0C
_08010B58: .4byte 0x00016086
_08010B5C: .4byte 0x00016087
_08010B60: .4byte gEnemyParty
_08010B64: .4byte gBaseStats
_08010B68: .4byte 0x000004fb
_08010B6C: .4byte 0x00016089
_08010B70: .4byte 0x00016088
_08010B74: .4byte 0x0001601b
_08010B78: .4byte 0x000160ac
_08010B7C: .4byte 0x000160c8
_08010B80: .4byte 0x00016113
_08010B84: .4byte gUnknown_030042E0
	thumb_func_end sub_8010874

	thumb_func_start sub_8010B88
sub_8010B88: @ 8010B88
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x24
	ldr r4, _08010CEC @ =gUnknown_02024CA8
	ldr r5, _08010CF0 @ =gUnknown_02024A60
	ldrb r1, [r5]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	mov r1, sp
	adds r0, r4
	ldm r0!, {r2,r3,r6}
	stm r1!, {r2,r3,r6}
	ldm r0!, {r2,r3,r6}
	stm r1!, {r2,r3,r6}
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _08010CF4 @ =gBattleMoves
	ldr r3, _08010CF8 @ =gUnknown_02024BE6
	ldrh r1, [r3]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	mov r10, r4
	adds r7, r5, 0
	ldr r1, _08010CFC @ =gBattleMons
	mov r8, r1
	ldr r2, _08010D00 @ =gUnknown_02024C98
	mov r12, r2
	cmp r0, 0x7F
	beq _08010C66
	movs r5, 0
	adds r4, r7, 0
	movs r3, 0x58
	mov r2, r8
	adds r2, 0x18
	movs r1, 0x6
_08010BDC:
	ldrb r0, [r4]
	muls r0, r3
	adds r0, r5, r0
	adds r0, r2
	strb r1, [r0]
	adds r5, 0x1
	cmp r5, 0x7
	ble _08010BDC
	movs r5, 0
	ldr r3, _08010D04 @ =gUnknown_02024A68
	ldrb r3, [r3]
	cmp r5, r3
	bge _08010C52
	ldr r6, _08010D08 @ =gUnknown_02024AD0
	mov r9, r6
	ldr r3, _08010CEC @ =gUnknown_02024CA8
	ldr r4, _08010D00 @ =gUnknown_02024C98
_08010BFE:
	movs r0, 0x58
	muls r0, r5
	add r0, r9
	str r0, [sp, 0x20]
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 19
	ands r0, r1
	cmp r0, 0
	beq _08010C24
	ldrb r0, [r3, 0x14]
	ldr r2, _08010CF0 @ =gUnknown_02024A60
	ldrb r2, [r2]
	cmp r0, r2
	bne _08010C24
	ldr r0, _08010D0C @ =0xfbffffff
	ands r1, r0
	ldr r6, [sp, 0x20]
	str r1, [r6]
_08010C24:
	ldr r1, [r4]
	movs r0, 0x18
	ands r0, r1
	cmp r0, 0
	beq _08010C44
	ldrb r0, [r3, 0x15]
	ldr r2, _08010CF0 @ =gUnknown_02024A60
	ldrb r2, [r2]
	cmp r0, r2
	bne _08010C44
	movs r0, 0x19
	negs r0, r0
	ands r1, r0
	str r1, [r4]
	movs r0, 0
	strb r0, [r3, 0x15]
_08010C44:
	adds r3, 0x1C
	adds r4, 0x4
	adds r5, 0x1
	ldr r6, _08010D04 @ =gUnknown_02024A68
	ldrb r6, [r6]
	cmp r5, r6
	blt _08010BFE
_08010C52:
	ldr r1, _08010CF8 @ =gUnknown_02024BE6
	ldrh r0, [r1]
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	ldr r2, _08010CF4 @ =gBattleMoves
	adds r1, r2
	ldrb r0, [r1]
	cmp r0, 0x7F
	bne _08010D18
_08010C66:
	ldrb r1, [r7]
	movs r0, 0x58
	adds r2, r1, 0
	muls r2, r0
	mov r0, r8
	adds r0, 0x50
	adds r2, r0
	ldr r0, [r2]
	ldr r1, _08010D10 @ =0x15100007
	ands r0, r1
	str r0, [r2]
	ldrb r1, [r7]
	lsls r1, 2
	add r1, r12
	ldr r0, [r1]
	ldr r2, _08010D14 @ =0x0003043f
	ands r0, r2
	str r0, [r1]
	movs r5, 0
	ldr r3, _08010D04 @ =gUnknown_02024A68
	ldrb r3, [r3]
	cmp r5, r3
	bge _08010D30
	movs r6, 0
_08010C96:
	ldrb r0, [r7]
	bl battle_side_get_owner
	adds r4, r0, 0
	lsls r0, r5, 24
	lsrs r0, 24
	bl battle_side_get_owner
	lsls r4, 24
	lsls r0, 24
	cmp r4, r0
	beq _08010CD6
	ldr r1, _08010D00 @ =gUnknown_02024C98
	lsls r0, r5, 2
	adds r2, r0, r1
	ldr r1, [r2]
	movs r0, 0x18
	ands r0, r1
	cmp r0, 0
	beq _08010CD6
	ldr r0, _08010CEC @ =gUnknown_02024CA8
	adds r0, r6, r0
	ldrb r0, [r0, 0x15]
	ldrb r3, [r7]
	cmp r0, r3
	bne _08010CD6
	movs r0, 0x19
	negs r0, r0
	ands r1, r0
	movs r0, 0x10
	orrs r1, r0
	str r1, [r2]
_08010CD6:
	adds r6, 0x1C
	adds r5, 0x1
	ldr r0, _08010D04 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r5, r0
	blt _08010C96
	ldr r6, _08010CEC @ =gUnknown_02024CA8
	mov r10, r6
	ldr r7, _08010CF0 @ =gUnknown_02024A60
	b _08010D30
	.align 2, 0
_08010CEC: .4byte gUnknown_02024CA8
_08010CF0: .4byte gUnknown_02024A60
_08010CF4: .4byte gBattleMoves
_08010CF8: .4byte gUnknown_02024BE6
_08010CFC: .4byte gBattleMons
_08010D00: .4byte gUnknown_02024C98
_08010D04: .4byte gUnknown_02024A68
_08010D08: .4byte gUnknown_02024AD0
_08010D0C: .4byte 0xfbffffff
_08010D10: .4byte 0x15100007
_08010D14: .4byte 0x0003043f
_08010D18:
	ldrb r1, [r7]
	movs r0, 0x58
	muls r0, r1
	mov r1, r8
	adds r1, 0x50
	adds r0, r1
	movs r1, 0
	str r1, [r0]
	ldrb r0, [r7]
	lsls r0, 2
	add r0, r12
	str r1, [r0]
_08010D30:
	movs r5, 0
	ldr r6, _08010EFC @ =0x02000000
	ldr r0, _08010F00 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r5, r0
	bge _08010D92
	ldr r1, _08010F04 @ =gUnknown_02024AD0
	mov r9, r1
	ldr r2, _08010F08 @ =gBitTable
	mov r8, r2
	ldr r4, _08010F0C @ =gUnknown_02024A60
	mov r12, r6
_08010D48:
	movs r0, 0x58
	muls r0, r5
	mov r1, r9
	adds r3, r0, r1
	ldrb r0, [r4]
	lsls r0, 2
	add r0, r8
	ldr r0, [r0]
	lsls r2, r0, 16
	ldr r1, [r3]
	adds r0, r1, 0
	ands r0, r2
	cmp r0, 0
	beq _08010D68
	bics r1, r2
	str r1, [r3]
_08010D68:
	ldr r1, [r3]
	movs r0, 0xE0
	lsls r0, 8
	ands r0, r1
	cmp r0, 0
	beq _08010D88
	ldr r2, _08010F10 @ =0x00016020
	adds r0, r5, r2
	add r0, r12
	ldrb r0, [r0]
	ldrb r2, [r4]
	cmp r0, r2
	bne _08010D88
	ldr r0, _08010F14 @ =0xffff1fff
	ands r1, r0
	str r1, [r3]
_08010D88:
	adds r5, 0x1
	ldr r3, _08010F00 @ =gUnknown_02024A68
	ldrb r3, [r3]
	cmp r5, r3
	blt _08010D48
_08010D92:
	ldrb r0, [r7]
	ldr r1, _08010F18 @ =gUnknown_02024E60
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
	ldrb r0, [r7]
	ldr r2, _08010F1C @ =gUnknown_02024E64
	adds r0, r2
	strb r1, [r0]
	ldrb r1, [r7]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	mov r3, r10
	adds r1, r0, r3
	movs r5, 0
	movs r2, 0
_08010DB4:
	adds r0, r1, r5
	strb r2, [r0]
	adds r5, 0x1
	cmp r5, 0x1B
	bls _08010DB4
	ldr r1, _08010F20 @ =gUnknown_02024BE6
	ldrh r0, [r1]
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	ldr r2, _08010F24 @ =gBattleMoves
	adds r1, r2
	ldrb r0, [r1]
	cmp r0, 0x7F
	bne _08010E2C
	ldrb r1, [r7]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r10
	mov r1, sp
	ldrb r1, [r1, 0xA]
	strb r1, [r0, 0xA]
	ldrb r1, [r7]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r10
	mov r1, sp
	ldrb r1, [r1, 0x15]
	strb r1, [r0, 0x15]
	ldrb r0, [r7]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	add r1, r10
	mov r0, sp
	ldrb r2, [r0, 0xF]
	lsls r2, 28
	movs r4, 0xF
	lsrs r2, 28
	ldrb r3, [r1, 0xF]
	movs r0, 0x10
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, 0xF]
	ldrb r1, [r7]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r10
	mov r1, sp
	ldrb r1, [r1, 0xF]
	lsrs r1, 4
	lsls r1, 4
	ldrb r2, [r0, 0xF]
	ands r4, r2
	orrs r4, r1
	strb r4, [r0, 0xF]
_08010E2C:
	ldrb r1, [r7]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r10
	movs r3, 0
	movs r1, 0x2
	strb r1, [r0, 0x16]
	ldrb r0, [r7]
	lsls r0, 1
	ldr r1, _08010F28 @ =gUnknown_02024C34
	adds r0, r1
	movs r2, 0
	strh r3, [r0]
	ldrb r0, [r7]
	lsls r0, 1
	ldr r1, _08010F2C @ =gUnknown_02024C3C
	adds r0, r1
	strh r3, [r0]
	ldrb r0, [r7]
	lsls r0, 1
	ldr r1, _08010F30 @ =gUnknown_02024C44
	adds r0, r1
	strh r3, [r0]
	ldrb r0, [r7]
	lsls r0, 1
	ldr r1, _08010F34 @ =gUnknown_02024C4C
	adds r0, r1
	strh r3, [r0]
	ldrb r0, [r7]
	lsls r0, 1
	ldr r1, _08010F38 @ =gUnknown_02024C2C
	adds r0, r1
	strh r3, [r0]
	ldrb r0, [r7]
	ldr r1, _08010F3C @ =gUnknown_02024C5C
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	ldrb r0, [r7]
	lsls r0, 1
	ldr r1, _08010F40 @ =0x000160ac
	adds r0, r1
	adds r0, r6
	strb r2, [r0]
	ldrb r0, [r7]
	lsls r0, 1
	adds r1, 0x1
	adds r0, r1
	adds r0, r6
	strb r2, [r0]
	ldrb r0, [r7]
	lsls r0, 2
	adds r1, 0x53
	adds r0, r1
	adds r0, r6
	strb r2, [r0]
	ldrb r0, [r7]
	lsls r0, 2
	adds r1, 0x1
	adds r0, r1
	adds r0, r6
	strb r2, [r0]
	ldrb r0, [r7]
	lsls r0, 2
	adds r1, 0x1
	adds r0, r1
	adds r0, r6
	strb r2, [r0]
	ldrb r0, [r7]
	lsls r0, 2
	adds r1, 0x1
	adds r0, r1
	adds r0, r6
	strb r2, [r0]
	ldrb r0, [r7]
	lsls r0, 1
	subs r1, 0x1B
	adds r0, r1
	adds r0, r6
	strb r2, [r0]
	ldrb r0, [r7]
	lsls r0, 1
	adds r1, 0x1
	adds r0, r1
	adds r0, r6
	strb r2, [r0]
	ldr r2, _08010F44 @ =0x00017100
	adds r1, r6, r2
	ldrb r0, [r7]
	lsls r0, 2
	adds r0, r1
	str r3, [r0]
	ldr r6, _08010F20 @ =gUnknown_02024BE6
	strh r3, [r6]
	add sp, 0x24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010EFC: .4byte 0x02000000
_08010F00: .4byte gUnknown_02024A68
_08010F04: .4byte gUnknown_02024AD0
_08010F08: .4byte gBitTable
_08010F0C: .4byte gUnknown_02024A60
_08010F10: .4byte 0x00016020
_08010F14: .4byte 0xffff1fff
_08010F18: .4byte gUnknown_02024E60
_08010F1C: .4byte gUnknown_02024E64
_08010F20: .4byte gUnknown_02024BE6
_08010F24: .4byte gBattleMoves
_08010F28: .4byte gUnknown_02024C34
_08010F2C: .4byte gUnknown_02024C3C
_08010F30: .4byte gUnknown_02024C44
_08010F34: .4byte gUnknown_02024C4C
_08010F38: .4byte gUnknown_02024C2C
_08010F3C: .4byte gUnknown_02024C5C
_08010F40: .4byte 0x000160ac
_08010F44: .4byte 0x00017100
	thumb_func_end sub_8010B88

	thumb_func_start sub_8010F48
sub_8010F48: @ 8010F48
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	movs r4, 0
	ldr r7, _08011268 @ =gUnknown_02024A60
	ldr r0, _0801126C @ =gUnknown_02024C98
	mov r9, r0
	ldr r1, _08011270 @ =gUnknown_02024A68
	mov r8, r1
	ldr r2, _08011274 @ =0x02000000
	mov r12, r2
	ldr r6, _08011278 @ =gUnknown_02024D28
	adds r5, r7, 0
	movs r3, 0x58
	ldr r2, _0801127C @ =gBattleMons
	adds r2, 0x18
	movs r1, 0x6
_08010F70:
	ldrb r0, [r5]
	muls r0, r3
	adds r0, r4, r0
	adds r0, r2
	strb r1, [r0]
	adds r4, 0x1
	cmp r4, 0x7
	ble _08010F70
	ldrb r1, [r7]
	movs r0, 0x58
	muls r0, r1
	ldr r2, _0801127C @ =gBattleMons
	adds r2, 0x50
	adds r0, r2
	movs r1, 0
	str r1, [r0]
	ldrb r0, [r7]
	lsls r0, 2
	add r0, r9
	str r1, [r0]
	movs r4, 0
	mov r0, r8
	ldrb r0, [r0]
	cmp r4, r0
	bge _08011012
	adds r3, r2, 0
	movs r5, 0
	ldr r1, _08011280 @ =gBitTable
	mov r10, r1
	ldr r2, _08011274 @ =0x02000000
	mov r9, r2
_08010FAE:
	ldr r1, [r3]
	movs r0, 0x80
	lsls r0, 19
	ands r0, r1
	cmp r0, 0
	beq _08010FCC
	ldr r2, _08011284 @ =gUnknown_02024CA8
	adds r0, r5, r2
	ldrb r0, [r0, 0x14]
	ldrb r2, [r7]
	cmp r0, r2
	bne _08010FCC
	ldr r0, _08011288 @ =0xfbffffff
	ands r1, r0
	str r1, [r3]
_08010FCC:
	ldrb r0, [r7]
	lsls r0, 2
	add r0, r10
	ldr r0, [r0]
	lsls r2, r0, 16
	ldr r1, [r3]
	adds r0, r1, 0
	ands r0, r2
	cmp r0, 0
	beq _08010FE4
	bics r1, r2
	str r1, [r3]
_08010FE4:
	ldr r1, [r3]
	movs r0, 0xE0
	lsls r0, 8
	ands r0, r1
	cmp r0, 0
	beq _08011004
	ldr r2, _0801128C @ =0x00016020
	adds r0, r4, r2
	add r0, r9
	ldrb r0, [r0]
	ldrb r2, [r7]
	cmp r0, r2
	bne _08011004
	ldr r0, _08011290 @ =0xffff1fff
	ands r1, r0
	str r1, [r3]
_08011004:
	adds r3, 0x58
	adds r5, 0x1C
	adds r4, 0x1
	mov r0, r8
	ldrb r0, [r0]
	cmp r4, r0
	blt _08010FAE
_08011012:
	ldrb r0, [r7]
	ldr r1, _08011294 @ =gUnknown_02024E60
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
	ldrb r0, [r7]
	ldr r2, _08011298 @ =gUnknown_02024E64
	adds r0, r2
	strb r1, [r0]
	ldrb r1, [r7]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	ldr r2, _08011284 @ =gUnknown_02024CA8
	adds r1, r0, r2
	movs r4, 0
	movs r2, 0
_08011034:
	adds r0, r1, r4
	strb r2, [r0]
	adds r4, 0x1
	cmp r4, 0x1B
	bls _08011034
	ldrb r1, [r7]
	lsls r1, 4
	adds r1, r6
	ldrb r2, [r1]
	movs r0, 0x2
	negs r0, r0
	mov r9, r0
	ands r0, r2
	strb r0, [r1]
	ldrb r1, [r7]
	lsls r1, 4
	adds r1, r6
	ldrb r2, [r1]
	movs r0, 0x3
	negs r0, r0
	mov r8, r0
	ands r0, r2
	strb r0, [r1]
	ldrb r1, [r7]
	lsls r1, 4
	adds r1, r6
	ldrb r2, [r1]
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldrb r1, [r7]
	lsls r1, 4
	adds r1, r6
	ldrb r2, [r1]
	movs r0, 0x9
	negs r0, r0
	mov r10, r0
	ands r0, r2
	strb r0, [r1]
	ldrb r1, [r7]
	lsls r1, 4
	adds r1, r6
	ldrb r2, [r1]
	movs r0, 0x11
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldrb r1, [r7]
	lsls r1, 4
	adds r1, r6
	ldrb r2, [r1]
	movs r5, 0x21
	negs r5, r5
	adds r0, r5, 0
	ands r0, r2
	strb r0, [r1]
	ldrb r1, [r7]
	lsls r1, 4
	adds r1, r6
	ldrb r2, [r1]
	movs r4, 0x41
	negs r4, r4
	adds r0, r4, 0
	ands r0, r2
	strb r0, [r1]
	ldrb r1, [r7]
	lsls r1, 4
	adds r1, r6
	ldrb r2, [r1]
	movs r3, 0x7F
	adds r0, r3, 0
	ands r0, r2
	strb r0, [r1]
	ldrb r1, [r7]
	lsls r1, 4
	adds r1, r6
	ldrb r2, [r1, 0x1]
	mov r0, r9
	ands r0, r2
	strb r0, [r1, 0x1]
	ldrb r1, [r7]
	lsls r1, 4
	adds r1, r6
	ldrb r2, [r1, 0x1]
	mov r0, r8
	ands r0, r2
	strb r0, [r1, 0x1]
	ldrb r1, [r7]
	lsls r1, 4
	adds r1, r6
	ldrb r2, [r1, 0x1]
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0x1]
	ldrb r1, [r7]
	lsls r1, 4
	adds r1, r6
	ldrb r2, [r1, 0x1]
	movs r0, 0x19
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0x1]
	ldrb r0, [r7]
	lsls r0, 4
	adds r0, r6
	ldrb r1, [r0, 0x1]
	ands r5, r1
	strb r5, [r0, 0x1]
	ldrb r0, [r7]
	lsls r0, 4
	adds r0, r6
	ldrb r1, [r0, 0x1]
	ands r4, r1
	strb r4, [r0, 0x1]
	ldrb r0, [r7]
	lsls r0, 4
	adds r0, r6
	ldrb r1, [r0, 0x1]
	ands r3, r1
	strb r3, [r0, 0x1]
	ldrb r0, [r7]
	lsls r0, 4
	adds r0, r6
	ldrb r1, [r0, 0x2]
	mov r2, r9
	ands r2, r1
	strb r2, [r0, 0x2]
	ldrb r0, [r7]
	lsls r0, 4
	adds r0, r6
	ldrb r1, [r0, 0x2]
	mov r2, r8
	ands r2, r1
	strb r2, [r0, 0x2]
	ldrb r0, [r7]
	lsls r0, 4
	adds r0, r6
	ldrb r1, [r0, 0x2]
	movs r2, 0x5
	negs r2, r2
	ands r2, r1
	strb r2, [r0, 0x2]
	ldrb r0, [r7]
	lsls r0, 4
	adds r0, r6
	ldrb r1, [r0, 0x2]
	mov r2, r10
	ands r2, r1
	strb r2, [r0, 0x2]
	ldrb r1, [r7]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	ldr r1, _08011284 @ =gUnknown_02024CA8
	adds r0, r1
	movs r3, 0
	movs r1, 0x2
	strb r1, [r0, 0x16]
	ldrb r0, [r7]
	lsls r0, 1
	ldr r2, _0801129C @ =gUnknown_02024C34
	adds r0, r2
	movs r2, 0
	strh r3, [r0]
	ldrb r0, [r7]
	lsls r0, 1
	ldr r1, _080112A0 @ =gUnknown_02024C3C
	adds r0, r1
	strh r3, [r0]
	ldrb r0, [r7]
	lsls r0, 1
	ldr r1, _080112A4 @ =gUnknown_02024C44
	adds r0, r1
	strh r3, [r0]
	ldrb r0, [r7]
	lsls r0, 1
	ldr r1, _080112A8 @ =gUnknown_02024C4C
	adds r0, r1
	strh r3, [r0]
	ldrb r0, [r7]
	lsls r0, 1
	ldr r1, _080112AC @ =gUnknown_02024C2C
	adds r0, r1
	strh r3, [r0]
	ldrb r0, [r7]
	ldr r1, _080112B0 @ =gUnknown_02024C5C
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	ldrb r0, [r7]
	lsls r0, 1
	ldr r1, _080112B4 @ =0x000160e8
	adds r0, r1
	add r0, r12
	strb r2, [r0]
	ldrb r0, [r7]
	lsls r0, 1
	adds r1, 0x1
	adds r0, r1
	add r0, r12
	strb r2, [r0]
	ldrb r0, [r7]
	lsls r0, 1
	subs r1, 0x3D
	adds r0, r1
	add r0, r12
	strb r2, [r0]
	ldrb r0, [r7]
	lsls r0, 1
	adds r1, 0x1
	adds r0, r1
	add r0, r12
	strb r2, [r0]
	ldrb r0, [r7]
	lsls r0, 2
	adds r1, 0x53
	adds r0, r1
	add r0, r12
	strb r2, [r0]
	ldrb r0, [r7]
	lsls r0, 2
	adds r1, 0x1
	adds r0, r1
	add r0, r12
	strb r2, [r0]
	ldrb r0, [r7]
	lsls r0, 2
	adds r1, 0x1
	adds r0, r1
	add r0, r12
	strb r2, [r0]
	ldrb r0, [r7]
	lsls r0, 2
	adds r1, 0x1
	adds r0, r1
	add r0, r12
	strb r2, [r0]
	ldr r1, _080112B8 @ =0x00017100
	add r1, r12
	ldrb r0, [r7]
	lsls r0, 2
	adds r0, r1
	str r3, [r0]
	ldrb r0, [r7]
	movs r3, 0x58
	adds r1, r0, 0
	muls r1, r3
	ldr r2, _0801127C @ =gBattleMons
	adds r1, r2
	ldrh r2, [r1]
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	ldr r2, _080112BC @ =gBaseStats
	adds r0, r2
	ldrb r0, [r0, 0x6]
	adds r1, 0x21
	strb r0, [r1]
	ldrb r0, [r7]
	adds r1, r0, 0
	muls r1, r3
	ldr r0, _0801127C @ =gBattleMons
	adds r1, r0
	ldrh r2, [r1]
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	ldr r2, _080112BC @ =gBaseStats
	adds r0, r2
	ldrb r0, [r0, 0x7]
	adds r1, 0x22
	strb r0, [r1]
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011268: .4byte gUnknown_02024A60
_0801126C: .4byte gUnknown_02024C98
_08011270: .4byte gUnknown_02024A68
_08011274: .4byte 0x02000000
_08011278: .4byte gUnknown_02024D28
_0801127C: .4byte gBattleMons
_08011280: .4byte gBitTable
_08011284: .4byte gUnknown_02024CA8
_08011288: .4byte 0xfbffffff
_0801128C: .4byte 0x00016020
_08011290: .4byte 0xffff1fff
_08011294: .4byte gUnknown_02024E60
_08011298: .4byte gUnknown_02024E64
_0801129C: .4byte gUnknown_02024C34
_080112A0: .4byte gUnknown_02024C3C
_080112A4: .4byte gUnknown_02024C44
_080112A8: .4byte gUnknown_02024C4C
_080112AC: .4byte gUnknown_02024C2C
_080112B0: .4byte gUnknown_02024C5C
_080112B4: .4byte 0x000160e8
_080112B8: .4byte 0x00017100
_080112BC: .4byte gBaseStats
	thumb_func_end sub_8010F48

	thumb_func_start bc_8012FAC
bc_8012FAC: @ 80112C0
	push {r4,r5,lr}
	ldr r5, _080112D0 @ =gUnknown_02024D1E
	ldrb r0, [r5]
	cmp r0, 0
	beq _080112D4
	cmp r0, 0x1
	beq _080112F8
	b _0801132E
	.align 2, 0
_080112D0: .4byte gUnknown_02024D1E
_080112D4:
	ldr r4, _080112F4 @ =gUnknown_02024A60
	ldrb r0, [r5, 0x1]
	strb r0, [r4]
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl dp01_build_cmdbuf_x00_a_b_0
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	b _0801132E
	.align 2, 0
_080112F4: .4byte gUnknown_02024A60
_080112F8:
	ldr r0, _0801131C @ =gUnknown_02024A64
	ldr r2, [r0]
	cmp r2, 0
	bne _0801132E
	ldrb r0, [r5, 0x1]
	adds r0, 0x1
	strb r0, [r5, 0x1]
	ldr r1, _08011320 @ =gUnknown_02024A68
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bne _0801132C
	ldr r1, _08011324 @ =gUnknown_030042D4
	ldr r0, _08011328 @ =bc_load_battlefield
	str r0, [r1]
	b _0801132E
	.align 2, 0
_0801131C: .4byte gUnknown_02024A64
_08011320: .4byte gUnknown_02024A68
_08011324: .4byte gUnknown_030042D4
_08011328: .4byte bc_load_battlefield
_0801132C:
	strb r2, [r5]
_0801132E:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end bc_8012FAC

	thumb_func_start bc_load_battlefield
bc_load_battlefield: @ 8011334
	push {r4,r5,lr}
	ldr r0, _0801136C @ =gUnknown_02024A64
	ldr r5, [r0]
	cmp r5, 0
	bne _08011364
	movs r0, 0
	bl battle_get_side_with_given_state
	ldr r4, _08011370 @ =gUnknown_02024A60
	strb r0, [r4]
	ldr r0, _08011374 @ =gUnknown_0300428C
	ldrb r1, [r0]
	movs r0, 0
	bl dp01_build_cmdbuf_x2E_a
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, _08011378 @ =gUnknown_030042D4
	ldr r0, _0801137C @ =sub_8011384
	str r0, [r1]
	ldr r0, _08011380 @ =gUnknown_02024D1E
	strb r5, [r0]
	strb r5, [r0, 0x1]
_08011364:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801136C: .4byte gUnknown_02024A64
_08011370: .4byte gUnknown_02024A60
_08011374: .4byte gUnknown_0300428C
_08011378: .4byte gUnknown_030042D4
_0801137C: .4byte sub_8011384
_08011380: .4byte gUnknown_02024D1E
	thumb_func_end bc_load_battlefield

	thumb_func_start sub_8011384
sub_8011384: @ 8011384
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r0, _080113E0 @ =gUnknown_02024A64
	ldr r1, [r0]
	cmp r1, 0
	beq _08011396
	b _080115DA
_08011396:
	ldr r2, _080113E4 @ =gUnknown_02024A60
	strb r1, [r2]
	ldr r0, _080113E8 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r1, r0
	bcc _080113A4
	b _080115D4
_080113A4:
	movs r7, 0x58
	ldr r0, _080113EC @ =gBattleMons
	mov r9, r0
	mov r8, r2
_080113AC:
	ldr r0, _080113F0 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _080113F4
	ldr r4, _080113E4 @ =gUnknown_02024A60
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _080113F4
	ldrb r0, [r4]
	muls r0, r7
	mov r1, r9
	adds r3, r0, r1
	movs r2, 0
	movs r1, 0
_080113D2:
	adds r0, r3, r2
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, 0x57
	bls _080113D2
	b _080114BE
	.align 2, 0
_080113E0: .4byte gUnknown_02024A64
_080113E4: .4byte gUnknown_02024A60
_080113E8: .4byte gUnknown_02024A68
_080113EC: .4byte gBattleMons
_080113F0: .4byte gUnknown_020239F8
_080113F4:
	mov r2, r8
	ldrb r0, [r2]
	muls r0, r7
	mov r1, r9
	adds r3, r0, r1
	movs r2, 0
	ldr r6, _08011530 @ =gBaseStats
	ldr r5, _08011534 @ =gUnknown_02024260
	ldr r4, _08011538 @ =gUnknown_02024A60
_08011406:
	adds r0, r3, r2
	ldrb r1, [r4]
	lsls r1, 9
	adds r1, 0x4
	adds r1, r2, r1
	adds r1, r5
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, 0x57
	bls _08011406
	mov r2, r8
	ldrb r0, [r2]
	adds r2, r0, 0
	muls r2, r7
	add r2, r9
	ldrh r1, [r2]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r6
	ldrb r0, [r0, 0x6]
	adds r2, 0x21
	strb r0, [r2]
	mov r1, r8
	ldrb r0, [r1]
	adds r2, r0, 0
	muls r2, r7
	add r2, r9
	ldrh r1, [r2]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r6
	ldrb r0, [r0, 0x7]
	adds r2, 0x22
	strb r0, [r2]
	mov r2, r8
	ldrb r0, [r2]
	adds r1, r0, 0
	muls r1, r7
	add r1, r9
	ldrh r0, [r1]
	ldrb r1, [r1, 0x17]
	lsrs r1, 7
	bl GetAbilityBySpecies
	mov r2, r8
	ldrb r1, [r2]
	muls r1, r7
	add r1, r9
	adds r1, 0x20
	strb r0, [r1]
	ldrb r0, [r2]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 23
	ldr r1, _0801153C @ =0x020160bc
	adds r0, r1
	mov r2, r8
	ldrb r1, [r2]
	muls r1, r7
	add r1, r9
	ldrh r1, [r1, 0x28]
	strh r1, [r0]
	movs r2, 0
	ldr r4, _08011538 @ =gUnknown_02024A60
	movs r5, 0x58
	ldr r1, _08011540 @ =gUnknown_02024A98
	adds r6, r4, 0
	movs r0, 0x18
	negs r0, r0
	adds r0, r1
	mov r12, r0
	movs r3, 0x6
_0801149E:
	ldrb r0, [r4]
	muls r0, r5
	adds r0, r2, r0
	adds r0, r1
	strb r3, [r0]
	adds r2, 0x1
	cmp r2, 0x7
	ble _0801149E
	ldrb r0, [r6]
	adds r1, r0, 0
	muls r1, r7
	mov r0, r12
	adds r0, 0x50
	adds r1, r0
	movs r0, 0
	str r0, [r1]
_080114BE:
	ldr r4, _08011538 @ =gUnknown_02024A60
	ldrb r0, [r4]
	bl battle_get_per_side_status
	lsls r0, 24
	cmp r0, 0
	bne _080114D8
	movs r0, 0
	bl dp01_build_cmdbuf_x07_7_7_7
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_080114D8:
	ldr r5, _08011544 @ =gUnknown_020239F8
	ldrh r1, [r5]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _0801154C
	ldrb r0, [r4]
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080114FE
	movs r0, 0
	bl dp01_build_cmdbuf_x07_7_7_7
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_080114FE:
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08011588
	ldrh r1, [r5]
	ldr r2, _08011548 @ =0x00000902
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	bne _08011588
	ldrb r0, [r4]
	muls r0, r7
	add r0, r9
	ldrh r0, [r0]
	bl SpeciesToNationalPokedexNum
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x2
	bl sub_8090D90
	b _08011588
	.align 2, 0
_08011530: .4byte gBaseStats
_08011534: .4byte gUnknown_02024260
_08011538: .4byte gUnknown_02024A60
_0801153C: .4byte 0x020160bc
_08011540: .4byte gUnknown_02024A98
_08011544: .4byte gUnknown_020239F8
_08011548: .4byte 0x00000902
_0801154C:
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08011588
	ldrh r1, [r5]
	ldr r2, _080115E8 @ =0x00000902
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	bne _08011588
	ldrb r0, [r4]
	muls r0, r7
	add r0, r9
	ldrh r0, [r0]
	bl SpeciesToNationalPokedexNum
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x2
	bl sub_8090D90
	movs r0, 0
	bl dp01_build_cmdbuf_x04_4_4_4
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_08011588:
	ldr r0, _080115EC @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _080115BE
	ldr r4, _080115F0 @ =gUnknown_02024A60
	ldrb r0, [r4]
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	beq _080115B2
	ldrb r0, [r4]
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x3
	bne _080115BE
_080115B2:
	movs r0, 0
	bl dp01_build_cmdbuf_x07_7_7_7
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_080115BE:
	mov r1, r8
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r1, _080115F4 @ =gUnknown_02024A68
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcs _080115D4
	b _080113AC
_080115D4:
	ldr r1, _080115F8 @ =gUnknown_030042D4
	ldr r0, _080115FC @ =bc_801333C
	str r0, [r1]
_080115DA:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080115E8: .4byte 0x00000902
_080115EC: .4byte gUnknown_020239F8
_080115F0: .4byte gUnknown_02024A60
_080115F4: .4byte gUnknown_02024A68
_080115F8: .4byte gUnknown_030042D4
_080115FC: .4byte bc_801333C
	thumb_func_end sub_8011384

	thumb_func_start bc_801333C
bc_801333C: @ 8011600
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x30
	ldr r0, _08011658 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	beq _08011612
	b _0801178C
_08011612:
	ldr r0, _0801165C @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	bne _08011620
	b _0801172C
_08011620:
	movs r7, 0
	add r0, sp, 0x4
	mov r8, r0
	mov r6, r8
	mov r5, sp
_0801162A:
	movs r0, 0x64
	adds r1, r7, 0
	muls r1, r0
	ldr r0, _08011660 @ =gEnemyParty
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	cmp r0, 0
	beq _08011650
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	movs r1, 0xCE
	lsls r1, 1
	cmp r0, r1
	bne _08011668
_08011650:
	ldr r0, _08011664 @ =0x0000ffff
	strh r0, [r5]
	movs r0, 0
	b _0801167A
	.align 2, 0
_08011658: .4byte gUnknown_02024A64
_0801165C: .4byte gUnknown_020239F8
_08011660: .4byte gEnemyParty
_08011664: .4byte 0x0000ffff
_08011668:
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	strh r0, [r5]
	adds r0, r4, 0
	movs r1, 0x37
	bl GetMonData
_0801167A:
	str r0, [r6]
	adds r6, 0x8
	adds r5, 0x8
	adds r7, 0x1
	cmp r7, 0x5
	ble _0801162A
	movs r0, 0x1
	bl battle_get_side_with_given_state
	ldr r4, _080116D4 @ =gUnknown_02024A60
	strb r0, [r4]
	movs r0, 0
	mov r1, sp
	movs r2, 0x80
	bl dp01_build_cmdbuf_x30_TODO
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	movs r7, 0
	mov r6, r8
	mov r5, sp
_080116A6:
	movs r0, 0x64
	adds r1, r7, 0
	muls r1, r0
	ldr r0, _080116D8 @ =gPlayerParty
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	cmp r0, 0
	beq _080116CC
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	movs r1, 0xCE
	lsls r1, 1
	cmp r0, r1
	bne _080116E0
_080116CC:
	ldr r0, _080116DC @ =0x0000ffff
	strh r0, [r5]
	movs r0, 0
	b _080116F2
	.align 2, 0
_080116D4: .4byte gUnknown_02024A60
_080116D8: .4byte gPlayerParty
_080116DC: .4byte 0x0000ffff
_080116E0:
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	strh r0, [r5]
	adds r0, r4, 0
	movs r1, 0x37
	bl GetMonData
_080116F2:
	str r0, [r6]
	adds r6, 0x8
	adds r5, 0x8
	adds r7, 0x1
	cmp r7, 0x5
	ble _080116A6
	movs r0, 0
	bl battle_get_side_with_given_state
	ldr r4, _08011720 @ =gUnknown_02024A60
	strb r0, [r4]
	movs r0, 0
	mov r1, sp
	movs r2, 0x80
	bl dp01_build_cmdbuf_x30_TODO
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, _08011724 @ =gUnknown_030042D4
	ldr r0, _08011728 @ =bc_battle_begin_message
	b _0801178A
	.align 2, 0
_08011720: .4byte gUnknown_02024A60
_08011724: .4byte gUnknown_030042D4
_08011728: .4byte bc_battle_begin_message
_0801172C:
	movs r7, 0
	add r6, sp, 0x4
	mov r5, sp
_08011732:
	movs r0, 0x64
	adds r1, r7, 0
	muls r1, r0
	ldr r0, _08011760 @ =gPlayerParty
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	cmp r0, 0
	beq _08011758
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	movs r1, 0xCE
	lsls r1, 1
	cmp r0, r1
	bne _08011768
_08011758:
	ldr r0, _08011764 @ =0x0000ffff
	strh r0, [r5]
	movs r0, 0
	b _0801177A
	.align 2, 0
_08011760: .4byte gPlayerParty
_08011764: .4byte 0x0000ffff
_08011768:
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	strh r0, [r5]
	adds r0, r4, 0
	movs r1, 0x37
	bl GetMonData
_0801177A:
	str r0, [r6]
	adds r6, 0x8
	adds r5, 0x8
	adds r7, 0x1
	cmp r7, 0x5
	ble _08011732
	ldr r1, _08011798 @ =gUnknown_030042D4
	ldr r0, _0801179C @ =bc_8013568
_0801178A:
	str r0, [r1]
_0801178C:
	add sp, 0x30
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011798: .4byte gUnknown_030042D4
_0801179C: .4byte bc_8013568
	thumb_func_end bc_801333C

	thumb_func_start bc_battle_begin_message
bc_battle_begin_message: @ 80117A0
	push {lr}
	ldr r0, _080117C8 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _080117C2
	movs r0, 0x1
	bl battle_get_side_with_given_state
	ldr r1, _080117CC @ =gUnknown_02024A60
	strb r0, [r1]
	ldrb r1, [r1]
	movs r0, 0
	bl b_std_message
	ldr r1, _080117D0 @ =gUnknown_030042D4
	ldr r0, _080117D4 @ =sub_8011800
	str r0, [r1]
_080117C2:
	pop {r0}
	bx r0
	.align 2, 0
_080117C8: .4byte gUnknown_02024A64
_080117CC: .4byte gUnknown_02024A60
_080117D0: .4byte gUnknown_030042D4
_080117D4: .4byte sub_8011800
	thumb_func_end bc_battle_begin_message

	thumb_func_start bc_8013568
bc_8013568: @ 80117D8
	push {lr}
	ldr r0, _080117F4 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _080117F0
	ldr r1, _080117F8 @ =gUnknown_030042D4
	ldr r0, _080117FC @ =sub_8011970
	str r0, [r1]
	movs r0, 0
	movs r1, 0
	bl b_std_message
_080117F0:
	pop {r0}
	bx r0
	.align 2, 0
_080117F4: .4byte gUnknown_02024A64
_080117F8: .4byte gUnknown_030042D4
_080117FC: .4byte sub_8011970
	thumb_func_end bc_8013568

	thumb_func_start sub_8011800
sub_8011800: @ 8011800
	push {lr}
	ldr r0, _08011828 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _08011822
	movs r0, 0x1
	bl battle_get_side_with_given_state
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	movs r0, 0x1
	bl b_std_message
	ldr r1, _0801182C @ =gUnknown_030042D4
	ldr r0, _08011830 @ =sub_8011834
	str r0, [r1]
_08011822:
	pop {r0}
	bx r0
	.align 2, 0
_08011828: .4byte gUnknown_02024A64
_0801182C: .4byte gUnknown_030042D4
_08011830: .4byte sub_8011834
	thumb_func_end sub_8011800

	thumb_func_start sub_8011834
sub_8011834: @ 8011834
	push {r4,lr}
	ldr r0, _080118AC @ =gUnknown_02024A64
	ldr r1, [r0]
	cmp r1, 0
	bne _080118A4
	ldr r2, _080118B0 @ =gUnknown_02024A60
	strb r1, [r2]
	ldr r0, _080118B4 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r1, r0
	bcs _0801189E
	adds r4, r2, 0
_0801184C:
	ldrb r0, [r4]
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08011866
	movs r0, 0
	bl dp01_build_cmdbuf_x2F_2F_2F_2F
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_08011866:
	ldr r0, _080118B8 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0801188C
	ldrb r0, [r4]
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x3
	bne _0801188C
	movs r0, 0
	bl dp01_build_cmdbuf_x2F_2F_2F_2F
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_0801188C:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	ldr r1, _080118B4 @ =gUnknown_02024A68
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0801184C
_0801189E:
	ldr r1, _080118BC @ =gUnknown_030042D4
	ldr r0, _080118C0 @ =bc_801362C
	str r0, [r1]
_080118A4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080118AC: .4byte gUnknown_02024A64
_080118B0: .4byte gUnknown_02024A60
_080118B4: .4byte gUnknown_02024A68
_080118B8: .4byte gUnknown_020239F8
_080118BC: .4byte gUnknown_030042D4
_080118C0: .4byte bc_801362C
	thumb_func_end sub_8011834

	thumb_func_start bc_801362C
bc_801362C: @ 80118C4
	push {r4,r5,lr}
	ldr r0, _08011930 @ =gUnknown_02024A64
	ldr r1, [r0]
	cmp r1, 0
	bne _0801192A
	ldr r2, _08011934 @ =gUnknown_02024A60
	strb r1, [r2]
	ldr r0, _08011938 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r1, r0
	bcs _08011924
	adds r4, r2, 0
	ldr r5, _0801193C @ =gBattleMons
_080118DE:
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08011912
	ldr r0, _08011940 @ =gUnknown_020239F8
	ldrh r1, [r0]
	ldr r2, _08011944 @ =0x00000902
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	bne _08011912
	ldrb r1, [r4]
	movs r0, 0x58
	muls r0, r1
	adds r0, r5
	ldrh r0, [r0]
	bl SpeciesToNationalPokedexNum
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x2
	bl sub_8090D90
_08011912:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	ldr r1, _08011938 @ =gUnknown_02024A68
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _080118DE
_08011924:
	ldr r1, _08011948 @ =gUnknown_030042D4
	ldr r0, _0801194C @ =sub_8011970
	str r0, [r1]
_0801192A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011930: .4byte gUnknown_02024A64
_08011934: .4byte gUnknown_02024A60
_08011938: .4byte gUnknown_02024A68
_0801193C: .4byte gBattleMons
_08011940: .4byte gUnknown_020239F8
_08011944: .4byte 0x00000902
_08011948: .4byte gUnknown_030042D4
_0801194C: .4byte sub_8011970
	thumb_func_end bc_801362C

	thumb_func_start unref_sub_8011950
unref_sub_8011950: @ 8011950
	push {lr}
	ldr r0, _08011964 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _08011960
	ldr r1, _08011968 @ =gUnknown_030042D4
	ldr r0, _0801196C @ =sub_8011970
	str r0, [r1]
_08011960:
	pop {r0}
	bx r0
	.align 2, 0
_08011964: .4byte gUnknown_02024A64
_08011968: .4byte gUnknown_030042D4
_0801196C: .4byte sub_8011970
	thumb_func_end unref_sub_8011950

	thumb_func_start sub_8011970
sub_8011970: @ 8011970
	push {lr}
	ldr r0, _080119A4 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _0801199E
	ldr r0, _080119A8 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08011998
	movs r0, 0
	bl battle_get_side_with_given_state
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	movs r0, 0x1
	bl b_std_message
_08011998:
	ldr r1, _080119AC @ =gUnknown_030042D4
	ldr r0, _080119B0 @ =sub_80119B4
	str r0, [r1]
_0801199E:
	pop {r0}
	bx r0
	.align 2, 0
_080119A4: .4byte gUnknown_02024A64
_080119A8: .4byte gUnknown_020239F8
_080119AC: .4byte gUnknown_030042D4
_080119B0: .4byte sub_80119B4
	thumb_func_end sub_8011970

	thumb_func_start sub_80119B4
sub_80119B4: @ 80119B4
	push {r4,lr}
	ldr r0, _08011A40 @ =gUnknown_02024A64
	ldr r1, [r0]
	cmp r1, 0
	bne _08011A38
	ldr r2, _08011A44 @ =gUnknown_02024A60
	strb r1, [r2]
	ldr r0, _08011A48 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r1, r0
	bcs _08011A1C
	adds r4, r2, 0
_080119CC:
	ldrb r0, [r4]
	bl battle_get_per_side_status
	lsls r0, 24
	cmp r0, 0
	bne _080119E4
	movs r0, 0
	bl dp01_build_cmdbuf_x2F_2F_2F_2F
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_080119E4:
	ldr r0, _08011A4C @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08011A0A
	ldrb r0, [r4]
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _08011A0A
	movs r0, 0
	bl dp01_build_cmdbuf_x2F_2F_2F_2F
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_08011A0A:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	ldr r1, _08011A48 @ =gUnknown_02024A68
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _080119CC
_08011A1C:
	ldr r1, _08011A50 @ =0x02000000
	ldr r2, _08011A54 @ =0x00016058
	adds r0, r1, r2
	movs r2, 0
	strb r2, [r0]
	ldr r3, _08011A58 @ =0x000160f9
	adds r0, r1, r3
	strb r2, [r0]
	ldr r0, _08011A5C @ =0x000160e6
	adds r1, r0
	strb r2, [r1]
	ldr r1, _08011A60 @ =gUnknown_030042D4
	ldr r0, _08011A64 @ =sub_8011B00
	str r0, [r1]
_08011A38:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011A40: .4byte gUnknown_02024A64
_08011A44: .4byte gUnknown_02024A60
_08011A48: .4byte gUnknown_02024A68
_08011A4C: .4byte gUnknown_020239F8
_08011A50: .4byte 0x02000000
_08011A54: .4byte 0x00016058
_08011A58: .4byte 0x000160f9
_08011A5C: .4byte 0x000160e6
_08011A60: .4byte gUnknown_030042D4
_08011A64: .4byte sub_8011B00
	thumb_func_end sub_80119B4

	thumb_func_start unref_sub_8011A68
unref_sub_8011A68: @ 8011A68
	push {r4,r5,lr}
	ldr r0, _08011AD8 @ =gUnknown_02024A64
	ldr r1, [r0]
	cmp r1, 0
	bne _08011AD2
	ldr r2, _08011ADC @ =gUnknown_02024A60
	strb r1, [r2]
	ldr r0, _08011AE0 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r1, r0
	bcs _08011AB6
	adds r4, r2, 0
	ldr r5, _08011AE4 @ =gUnknown_02024A6A
_08011A82:
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _08011AA4
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r5
	ldrb r1, [r0]
	movs r0, 0
	movs r2, 0
	bl sub_800C704
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_08011AA4:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	ldr r1, _08011AE0 @ =gUnknown_02024A68
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08011A82
_08011AB6:
	ldr r1, _08011AE8 @ =0x02000000
	ldr r2, _08011AEC @ =0x00016058
	adds r0, r1, r2
	movs r2, 0
	strb r2, [r0]
	ldr r3, _08011AF0 @ =0x000160f9
	adds r0, r1, r3
	strb r2, [r0]
	ldr r0, _08011AF4 @ =0x000160e6
	adds r1, r0
	strb r2, [r1]
	ldr r1, _08011AF8 @ =gUnknown_030042D4
	ldr r0, _08011AFC @ =sub_8011B00
	str r0, [r1]
_08011AD2:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011AD8: .4byte gUnknown_02024A64
_08011ADC: .4byte gUnknown_02024A60
_08011AE0: .4byte gUnknown_02024A68
_08011AE4: .4byte gUnknown_02024A6A
_08011AE8: .4byte 0x02000000
_08011AEC: .4byte 0x00016058
_08011AF0: .4byte 0x000160f9
_08011AF4: .4byte 0x000160e6
_08011AF8: .4byte gUnknown_030042D4
_08011AFC: .4byte sub_8011B00
	thumb_func_end unref_sub_8011A68

	thumb_func_start sub_8011B00
sub_8011B00: @ 8011B00
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x8
	movs r0, 0
	mov r9, r0
	ldr r0, _08011B44 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	beq _08011B18
	b _08011D6E
_08011B18:
	ldr r0, _08011B48 @ =0x02000000
	ldr r1, _08011B4C @ =0x00016058
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _08011BA2
	movs r5, 0
	ldr r1, _08011B50 @ =gUnknown_02024A68
	adds r3, r1, 0
	ldrb r2, [r1]
	cmp r5, r2
	bge _08011B3E
	ldr r2, _08011B54 @ =gUnknown_02024A7A
_08011B32:
	adds r0, r5, r2
	strb r5, [r0]
	adds r5, 0x1
	ldrb r0, [r1]
	cmp r5, r0
	blt _08011B32
_08011B3E:
	movs r5, 0
	b _08011B98
	.align 2, 0
_08011B44: .4byte gUnknown_02024A64
_08011B48: .4byte 0x02000000
_08011B4C: .4byte 0x00016058
_08011B50: .4byte gUnknown_02024A68
_08011B54: .4byte gUnknown_02024A7A
_08011B58:
	adds r4, r5, 0x1
	mov r8, r4
	ldrb r1, [r1]
	cmp r8, r1
	bge _08011B96
	ldr r6, _08011BC8 @ =gUnknown_02024A7A
	ldr r3, _08011BCC @ =gUnknown_02024A68
	lsls r7, r5, 24
_08011B68:
	adds r0, r5, r6
	ldrb r0, [r0]
	adds r1, r4, r6
	ldrb r1, [r1]
	movs r2, 0x1
	str r3, [sp, 0x4]
	bl b_first_side
	lsls r0, 24
	ldr r3, [sp, 0x4]
	cmp r0, 0
	beq _08011B8C
	lsls r1, r4, 24
	lsrs r1, 24
	lsrs r0, r7, 24
	bl sub_8012FBC
	ldr r3, [sp, 0x4]
_08011B8C:
	adds r4, 0x1
	ldr r0, _08011BCC @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r4, r0
	blt _08011B68
_08011B96:
	mov r5, r8
_08011B98:
	adds r1, r3, 0
	ldrb r0, [r3]
	subs r0, 0x1
	cmp r5, r0
	blt _08011B58
_08011BA2:
	ldr r0, _08011BD0 @ =0x02000000
	ldr r1, _08011BD4 @ =0x000160e6
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, 0
	bne _08011BD8
	str r0, [sp]
	movs r0, 0
	movs r1, 0
	movs r2, 0
	movs r3, 0xFF
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	beq _08011BD8
	movs r0, 0x1
	strb r0, [r4]
	b _08011D6E
	.align 2, 0
_08011BC8: .4byte gUnknown_02024A7A
_08011BCC: .4byte gUnknown_02024A68
_08011BD0: .4byte 0x02000000
_08011BD4: .4byte 0x000160e6
_08011BD8:
	ldr r0, _08011D7C @ =0x02000000
	ldr r3, _08011D80 @ =0x00016058
	adds r2, r0, r3
	ldr r1, _08011D84 @ =gUnknown_02024A68
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	bcs _08011C28
	ldr r5, _08011D88 @ =gUnknown_02024A7A
	adds r4, r2, 0
_08011BEC:
	ldrb r0, [r4]
	adds r0, r5
	ldrb r1, [r0]
	movs r0, 0
	str r0, [sp]
	movs r2, 0
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	beq _08011C0E
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_08011C0E:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	mov r1, r9
	cmp r1, 0
	beq _08011C1C
	b _08011D6E
_08011C1C:
	ldr r1, _08011D84 @ =gUnknown_02024A68
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08011BEC
_08011C28:
	movs r0, 0
	str r0, [sp]
	movs r0, 0x9
	movs r1, 0
	movs r2, 0
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	beq _08011C42
	b _08011D6E
_08011C42:
	str r0, [sp]
	movs r0, 0xB
	movs r1, 0
	movs r2, 0
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	beq _08011C58
	b _08011D6E
_08011C58:
	ldr r0, _08011D7C @ =0x02000000
	ldr r3, _08011D8C @ =0x000160f9
	adds r2, r0, r3
	ldr r0, _08011D84 @ =gUnknown_02024A68
	ldrb r1, [r2]
	adds r3, r0, 0
	ldrb r0, [r3]
	cmp r1, r0
	bcs _08011CA8
	ldr r5, _08011D88 @ =gUnknown_02024A7A
	adds r4, r2, 0
_08011C6E:
	ldrb r0, [r4]
	adds r0, r5
	ldrb r1, [r0]
	movs r0, 0
	movs r2, 0
	str r3, [sp, 0x4]
	bl sub_801A02C
	lsls r0, 24
	ldr r3, [sp, 0x4]
	cmp r0, 0
	beq _08011C90
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_08011C90:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	mov r1, r9
	cmp r1, 0
	bne _08011D6E
	ldr r1, _08011D84 @ =gUnknown_02024A68
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08011C6E
_08011CA8:
	ldrb r0, [r3]
	cmp r0, 0
	beq _08011CB6
	adds r5, r0, 0
_08011CB0:
	subs r5, 0x1
	cmp r5, 0
	bne _08011CB0
_08011CB6:
	movs r5, 0
	ldr r0, _08011D7C @ =0x02000000
	mov r8, r5
	ldr r3, _08011D90 @ =gUnknown_02024C60
	ldr r1, _08011D94 @ =0x00016068
	adds r2, r0, r1
	movs r7, 0x6
	ldr r6, _08011D98 @ =gUnknown_02024C18
	movs r4, 0xFF
_08011CC8:
	strb r7, [r2]
	adds r1, r5, r6
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	mov r0, r8
	strh r0, [r3]
	adds r3, 0x2
	adds r2, 0x1
	adds r5, 0x1
	cmp r5, 0x3
	ble _08011CC8
	movs r0, 0
	bl sub_801365C
	bl sub_801377C
	ldr r0, _08011D7C @ =0x02000000
	ldr r1, _08011D9C @ =gUnknown_02024C0C
	ldrb r1, [r1]
	ldr r2, _08011DA0 @ =0x000160a6
	adds r0, r2
	strb r1, [r0]
	ldr r1, _08011DA4 @ =gUnknown_030042D4
	ldr r0, _08011DA8 @ =sub_8012324
	str r0, [r1]
	bl sub_80156DC
	ldr r1, _08011DAC @ =gUnknown_02024D1E
	movs r2, 0
	adds r0, r1, 0x7
_08011D06:
	strb r2, [r0]
	subs r0, 0x1
	cmp r0, r1
	bge _08011D06
	movs r5, 0
	ldr r3, _08011D84 @ =gUnknown_02024A68
	ldr r2, _08011D7C @ =0x02000000
	ldr r6, _08011DB0 @ =gUnknown_02024C68
	ldrb r0, [r3]
	cmp r5, r0
	bge _08011D36
	ldr r0, _08011DB4 @ =gBattleMons
	movs r4, 0x9
	negs r4, r4
	adds r1, r0, 0
	adds r1, 0x50
_08011D26:
	ldr r0, [r1]
	ands r0, r4
	str r0, [r1]
	adds r1, 0x58
	adds r5, 0x1
	ldrb r0, [r3]
	cmp r5, r0
	blt _08011D26
_08011D36:
	movs r1, 0xB0
	lsls r1, 9
	adds r0, r2, r1
	movs r1, 0
	strb r1, [r0]
	ldr r3, _08011DB8 @ =0x00016001
	adds r0, r2, r3
	strb r1, [r0]
	ldr r3, _08011DBC @ =0x00016110
	adds r0, r2, r3
	strb r1, [r0]
	adds r3, 0x1
	adds r0, r2, r3
	strb r1, [r0]
	ldr r3, _08011DC0 @ =0x0001600c
	adds r0, r2, r3
	strb r1, [r0]
	adds r3, 0x4D
	adds r0, r2, r3
	strb r1, [r0]
	subs r3, 0x4B
	adds r0, r2, r3
	strb r1, [r0]
	strb r1, [r6]
	bl Random
	ldr r1, _08011DC4 @ =gUnknown_02024D1C
	strh r0, [r1]
_08011D6E:
	add sp, 0x8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011D7C: .4byte 0x02000000
_08011D80: .4byte 0x00016058
_08011D84: .4byte gUnknown_02024A68
_08011D88: .4byte gUnknown_02024A7A
_08011D8C: .4byte 0x000160f9
_08011D90: .4byte gUnknown_02024C60
_08011D94: .4byte 0x00016068
_08011D98: .4byte gUnknown_02024C18
_08011D9C: .4byte gUnknown_02024C0C
_08011DA0: .4byte 0x000160a6
_08011DA4: .4byte gUnknown_030042D4
_08011DA8: .4byte sub_8012324
_08011DAC: .4byte gUnknown_02024D1E
_08011DB0: .4byte gUnknown_02024C68
_08011DB4: .4byte gBattleMons
_08011DB8: .4byte 0x00016001
_08011DBC: .4byte 0x00016110
_08011DC0: .4byte 0x0001600c
_08011DC4: .4byte gUnknown_02024D1C
	thumb_func_end sub_8011B00

	thumb_func_start bc_8013B1C
bc_8013B1C: @ 8011DC8
	push {r4-r6,lr}
	ldr r0, _08011E60 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _08011E5A
	ldr r1, _08011E64 @ =gUnknown_030042D4
	ldr r0, _08011E68 @ =sub_8011E8C
	str r0, [r1]
	ldr r3, _08011E6C @ =gUnknown_02024A68
	ldr r1, _08011E70 @ =gUnknown_02024D1E
	movs r2, 0
	adds r0, r1, 0x7
_08011DE0:
	strb r2, [r0]
	subs r0, 0x1
	cmp r0, r1
	bge _08011DE0
	movs r4, 0
	ldrb r3, [r3]
	cmp r4, r3
	bge _08011E32
	ldr r5, _08011E74 @ =gBattleMons
	adds r6, r5, 0
	adds r6, 0x4C
_08011DF6:
	movs r0, 0x58
	adds r2, r4, 0
	muls r2, r0
	adds r1, r5, 0
	adds r1, 0x50
	adds r1, r2, r1
	ldr r3, [r1]
	subs r0, 0x61
	ands r3, r0
	str r3, [r1]
	adds r2, r6
	ldr r0, [r2]
	movs r1, 0x7
	ands r0, r1
	cmp r0, 0
	beq _08011E28
	movs r0, 0x80
	lsls r0, 5
	ands r3, r0
	cmp r3, 0
	beq _08011E28
	lsls r0, r4, 24
	lsrs r0, 24
	bl b_cancel_multi_turn_move_maybe
_08011E28:
	adds r4, 0x1
	ldr r0, _08011E6C @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r4, r0
	blt _08011DF6
_08011E32:
	ldr r0, _08011E78 @ =0x02000000
	movs r2, 0xB0
	lsls r2, 9
	adds r1, r0, r2
	movs r2, 0
	strb r2, [r1]
	ldr r3, _08011E7C @ =0x00016001
	adds r1, r0, r3
	strb r2, [r1]
	ldr r3, _08011E80 @ =0x00016110
	adds r1, r0, r3
	strb r2, [r1]
	adds r3, 0x1
	adds r1, r0, r3
	strb r2, [r1]
	ldr r1, _08011E84 @ =0x0001600e
	adds r0, r1
	strb r2, [r0]
	ldr r0, _08011E88 @ =gUnknown_02024C68
	strb r2, [r0]
_08011E5A:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08011E60: .4byte gUnknown_02024A64
_08011E64: .4byte gUnknown_030042D4
_08011E68: .4byte sub_8011E8C
_08011E6C: .4byte gUnknown_02024A68
_08011E70: .4byte gUnknown_02024D1E
_08011E74: .4byte gBattleMons
_08011E78: .4byte 0x02000000
_08011E7C: .4byte 0x00016001
_08011E80: .4byte 0x00016110
_08011E84: .4byte 0x0001600e
_08011E88: .4byte gUnknown_02024C68
	thumb_func_end bc_8013B1C

	thumb_func_start sub_8011E8C
sub_8011E8C: @ 8011E8C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	movs r0, 0x1
	bl sub_801365C
	ldr r0, _08011F3C @ =gUnknown_02024D26
	ldrb r0, [r0]
	cmp r0, 0
	bne _08011EBC
	bl sub_8015DFC
	lsls r0, 24
	cmp r0, 0
	beq _08011EB0
	b _08011FEE
_08011EB0:
	bl sub_8016558
	lsls r0, 24
	cmp r0, 0
	beq _08011EBC
	b _08011FEE
_08011EBC:
	bl sub_80173A4
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	beq _08011ECA
	b _08011FEE
_08011ECA:
	ldr r5, _08011F40 @ =0x02000000
	ldr r2, _08011F44 @ =0x00016059
	adds r0, r5, r2
	strb r1, [r0]
	bl sub_80170DC
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	beq _08011EE0
	b _08011FEE
_08011EE0:
	movs r0, 0
	bl sub_801365C
	ldr r2, _08011F48 @ =gUnknown_02024C6C
	ldr r0, [r2]
	ldr r1, _08011F4C @ =0xfffffdff
	ands r0, r1
	ldr r1, _08011F50 @ =0xfff7ffff
	ands r0, r1
	ldr r1, _08011F54 @ =0xffbfffff
	ands r0, r1
	ldr r1, _08011F58 @ =0xffefffff
	ands r0, r1
	str r0, [r2]
	ldr r3, _08011F5C @ =0x00016002
	adds r0, r5, r3
	strb r4, [r0]
	ldr r1, _08011F60 @ =0x000160a1
	adds r0, r5, r1
	strb r4, [r0]
	ldr r2, _08011F64 @ =0x0001600c
	adds r0, r5, r2
	strb r4, [r0]
	ldr r0, _08011F68 @ =gUnknown_02024BEC
	str r4, [r0]
	ldr r0, _08011F6C @ =gUnknown_02024C68
	strb r4, [r0]
	ldr r1, _08011F70 @ =gUnknown_02024D1E
	movs r2, 0
	adds r0, r1, 0x4
_08011F1C:
	strb r2, [r0]
	subs r0, 0x1
	cmp r0, r1
	bge _08011F1C
	ldr r0, _08011F3C @ =gUnknown_02024D26
	ldrb r0, [r0]
	cmp r0, 0
	beq _08011F80
	ldr r1, _08011F74 @ =gUnknown_02024A7F
	movs r0, 0xC
	strb r0, [r1]
	ldr r1, _08011F78 @ =gUnknown_030042D4
	ldr r0, _08011F7C @ =sub_80138F0
	str r0, [r1]
	b _08011FEE
	.align 2, 0
_08011F3C: .4byte gUnknown_02024D26
_08011F40: .4byte 0x02000000
_08011F44: .4byte 0x00016059
_08011F48: .4byte gUnknown_02024C6C
_08011F4C: .4byte 0xfffffdff
_08011F50: .4byte 0xfff7ffff
_08011F54: .4byte 0xffbfffff
_08011F58: .4byte 0xffefffff
_08011F5C: .4byte 0x00016002
_08011F60: .4byte 0x000160a1
_08011F64: .4byte 0x0001600c
_08011F68: .4byte gUnknown_02024BEC
_08011F6C: .4byte gUnknown_02024C68
_08011F70: .4byte gUnknown_02024D1E
_08011F74: .4byte gUnknown_02024A7F
_08011F78: .4byte gUnknown_030042D4
_08011F7C: .4byte sub_80138F0
_08011F80:
	ldr r1, _08011FFC @ =gUnknown_030042E0
	ldrb r0, [r1, 0x13]
	cmp r0, 0xFE
	bhi _08011F8C
	adds r0, 0x1
	strb r0, [r1, 0x13]
_08011F8C:
	movs r2, 0
	ldr r4, _08012000 @ =gUnknown_02024A68
	ldr r3, _08012004 @ =0x02000000
	mov r9, r3
	ldr r0, _08012008 @ =gUnknown_030042D4
	mov r10, r0
	ldr r1, _0801200C @ =gUnknown_02024C0C
	mov r12, r1
	ldr r3, _08012010 @ =sub_8012324
	mov r8, r3
	ldrb r0, [r4]
	cmp r2, r0
	bge _08011FC2
	ldr r7, _08012014 @ =gUnknown_02024C18
	movs r6, 0xFF
	movs r5, 0
	ldr r3, _08012018 @ =gUnknown_02024C60
_08011FAE:
	adds r1, r2, r7
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	strh r5, [r3]
	adds r3, 0x2
	adds r2, 0x1
	ldrb r1, [r4]
	cmp r2, r1
	blt _08011FAE
_08011FC2:
	ldr r0, _08012004 @ =0x02000000
	movs r1, 0x6
	movs r2, 0x3
	ldr r3, _0801201C @ =0x0001606b
	adds r0, r3
_08011FCC:
	strb r1, [r0]
	subs r0, 0x1
	subs r2, 0x1
	cmp r2, 0
	bge _08011FCC
	mov r0, r12
	ldrb r1, [r0]
	ldr r0, _08012020 @ =0x000160a6
	add r0, r9
	strb r1, [r0]
	mov r1, r8
	mov r2, r10
	str r1, [r2]
	bl Random
	ldr r1, _08012024 @ =gUnknown_02024D1C
	strh r0, [r1]
_08011FEE:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011FFC: .4byte gUnknown_030042E0
_08012000: .4byte gUnknown_02024A68
_08012004: .4byte 0x02000000
_08012008: .4byte gUnknown_030042D4
_0801200C: .4byte gUnknown_02024C0C
_08012010: .4byte sub_8012324
_08012014: .4byte gUnknown_02024C18
_08012018: .4byte gUnknown_02024C60
_0801201C: .4byte 0x0001606b
_08012020: .4byte 0x000160a6
_08012024: .4byte gUnknown_02024D1C
	thumb_func_end sub_8011E8C

	thumb_func_start sub_8012028
sub_8012028: @ 8012028
	push {r4-r7,lr}
	sub sp, 0x4
	ldr r1, _0801204C @ =gBattleMons
	ldr r0, _08012050 @ =gUnknown_02024A60
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r1, r0, r1
	ldrh r0, [r1, 0x2E]
	cmp r0, 0xAF
	bne _08012058
	ldr r1, _08012054 @ =gEnigmaBerries
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r2, [r0, 0x7]
	b _08012062
	.align 2, 0
_0801204C: .4byte gBattleMons
_08012050: .4byte gUnknown_02024A60
_08012054: .4byte gEnigmaBerries
_08012058:
	ldrh r0, [r1, 0x2E]
	bl ItemId_GetHoldEffect
	lsls r0, 24
	lsrs r2, r0, 24
_08012062:
	ldr r1, _0801217C @ =gUnknown_02024C0B
	ldr r3, _08012180 @ =gUnknown_02024A60
	ldrb r0, [r3]
	strb r0, [r1]
	cmp r2, 0x25
	bne _08012070
	b _080121F4
_08012070:
	ldr r0, _08012184 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0801207E
	b _080121F4
_0801207E:
	ldr r1, _08012188 @ =gBattleMons
	ldrb r2, [r3]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x32
	bne _08012092
	b _080121F4
_08012092:
	adds r0, r2, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r6, r0, 24
	movs r5, 0
	ldr r0, _0801218C @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r5, r0
	bge _08012126
	movs r7, 0
_080120A8:
	lsrs r4, r7, 24
	adds r0, r4, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r6, r0
	beq _080120CC
	ldr r1, _08012188 @ =gBattleMons
	movs r0, 0x58
	muls r0, r5
	adds r0, r1
	adds r2, r0, 0
	adds r2, 0x20
	ldrb r0, [r2]
	cmp r0, 0x17
	bne _080120CC
	b _080121FC
_080120CC:
	adds r0, r4, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r6, r0
	beq _08012116
	ldr r3, _08012188 @ =gBattleMons
	ldr r0, _08012180 @ =gUnknown_02024A60
	ldrb r0, [r0]
	movs r2, 0x58
	muls r0, r2
	adds r1, r0, r3
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x1A
	beq _08012116
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0x2
	beq _08012116
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0x2
	beq _08012116
	adds r0, r5, 0
	muls r0, r2
	adds r0, r3
	adds r2, r0, 0
	adds r2, 0x20
	ldrb r0, [r2]
	cmp r0, 0x47
	bne _08012116
	b _08012220
_08012116:
	movs r0, 0x80
	lsls r0, 17
	adds r7, r0
	adds r5, 0x1
	ldr r0, _0801218C @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r5, r0
	blt _080120A8
_08012126:
	ldr r4, _08012180 @ =gUnknown_02024A60
	ldrb r1, [r4]
	movs r0, 0
	str r0, [sp]
	movs r0, 0xF
	movs r2, 0x2A
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0
	beq _080121A0
	ldr r6, _08012188 @ =gBattleMons
	ldrb r0, [r4]
	movs r3, 0x58
	muls r0, r3
	adds r1, r0, r6
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0x8
	beq _0801215E
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0x8
	bne _080121A0
_0801215E:
	ldr r0, _08012190 @ =0x02000000
	subs r1, r5, 0x1
	ldr r2, _08012194 @ =0x00016003
	adds r0, r2
	strb r1, [r0]
	ldr r2, _08012198 @ =byte_2024C06
	adds r0, r1, 0
	muls r0, r3
	adds r0, r6
	adds r0, 0x20
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r1, _0801219C @ =gUnknown_02024D1E
	movs r0, 0x2
	b _08012248
	.align 2, 0
_0801217C: .4byte gUnknown_02024C0B
_08012180: .4byte gUnknown_02024A60
_08012184: .4byte gUnknown_020239F8
_08012188: .4byte gBattleMons
_0801218C: .4byte gUnknown_02024A68
_08012190: .4byte 0x02000000
_08012194: .4byte 0x00016003
_08012198: .4byte byte_2024C06
_0801219C: .4byte gUnknown_02024D1E
_080121A0:
	ldr r1, _080121D4 @ =gBattleMons
	ldr r0, _080121D8 @ =gUnknown_02024A60
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	ldr r1, _080121DC @ =0x0400e000
	ands r0, r1
	cmp r0, 0
	bne _080121CA
	ldr r1, _080121E0 @ =gUnknown_02024C98
	lsls r0, r2, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 3
	ands r0, r1
	cmp r0, 0
	beq _080121E8
_080121CA:
	ldr r1, _080121E4 @ =gUnknown_02024D1E
	movs r0, 0
	strb r0, [r1, 0x5]
	movs r0, 0x1
	b _0801224A
	.align 2, 0
_080121D4: .4byte gBattleMons
_080121D8: .4byte gUnknown_02024A60
_080121DC: .4byte 0x0400e000
_080121E0: .4byte gUnknown_02024C98
_080121E4: .4byte gUnknown_02024D1E
_080121E8:
	ldr r0, _080121F8 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	bne _08012244
_080121F4:
	movs r0, 0
	b _0801224A
	.align 2, 0
_080121F8: .4byte gUnknown_020239F8
_080121FC:
	ldr r0, _08012210 @ =0x02000000
	ldr r1, _08012214 @ =0x00016003
	adds r0, r1
	strb r5, [r0]
	ldr r1, _08012218 @ =byte_2024C06
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r1, _0801221C @ =gUnknown_02024D1E
	movs r0, 0x2
	b _08012248
	.align 2, 0
_08012210: .4byte 0x02000000
_08012214: .4byte 0x00016003
_08012218: .4byte byte_2024C06
_0801221C: .4byte gUnknown_02024D1E
_08012220:
	ldr r0, _08012234 @ =0x02000000
	ldr r1, _08012238 @ =0x00016003
	adds r0, r1
	strb r5, [r0]
	ldr r1, _0801223C @ =byte_2024C06
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r1, _08012240 @ =gUnknown_02024D1E
	movs r0, 0x2
	b _08012248
	.align 2, 0
_08012234: .4byte 0x02000000
_08012238: .4byte 0x00016003
_0801223C: .4byte byte_2024C06
_08012240: .4byte gUnknown_02024D1E
_08012244:
	ldr r1, _08012254 @ =gUnknown_02024D1E
	movs r0, 0x1
_08012248:
	strb r0, [r1, 0x5]
_0801224A:
	add sp, 0x4
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_08012254: .4byte gUnknown_02024D1E
	thumb_func_end sub_8012028

	thumb_func_start sub_8012258
sub_8012258: @ 8012258
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	movs r3, 0
	ldr r7, _080122E4 @ =gUnknown_02024A6A
	ldr r4, _080122E8 @ =gUnknown_02038470
	ldr r1, _080122EC @ =0x02000000
	lsls r6, r5, 1
	ldr r2, _080122F0 @ =0x0001606c
	adds r0, r5, r2
	adds r0, r6, r0
	adds r2, r0, r1
_08012270:
	adds r1, r3, r4
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, 0x1
	adds r3, 0x1
	cmp r3, 0x2
	ble _08012270
	adds r0, r6, r7
	ldrb r0, [r0]
	bl pokemon_order_func
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r7, _080122EC @ =0x02000000
	ldr r1, _080122F4 @ =0x00016068
	adds r0, r5, r1
	adds r0, r7
	ldrb r0, [r0]
	bl pokemon_order_func
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r4, 0
	bl sub_8094C98
	ldr r0, _080122F8 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080122FC
	movs r3, 0
	ldr r2, _080122F0 @ =0x0001606c
	movs r0, 0x2
	adds r1, r5, 0
	eors r1, r0
	adds r0, r5, r2
	adds r0, r6, r0
	adds r4, r0, r7
	ldr r5, _080122E8 @ =gUnknown_02038470
	lsls r0, r1, 1
	adds r0, r1
	adds r0, r2
	adds r2, r0, r7
_080122CC:
	adds r0, r3, r5
	ldrb r1, [r0]
	strb r1, [r4]
	ldrb r0, [r0]
	strb r0, [r2]
	adds r4, 0x1
	adds r2, 0x1
	adds r3, 0x1
	cmp r3, 0x2
	ble _080122CC
	b _08012316
	.align 2, 0
_080122E4: .4byte gUnknown_02024A6A
_080122E8: .4byte gUnknown_02038470
_080122EC: .4byte 0x02000000
_080122F0: .4byte 0x0001606c
_080122F4: .4byte 0x00016068
_080122F8: .4byte gUnknown_020239F8
_080122FC:
	movs r3, 0
	ldr r2, _0801231C @ =0x0001606c
	adds r0, r5, r2
	adds r0, r6, r0
	adds r1, r0, r7
	ldr r2, _08012320 @ =gUnknown_02038470
_08012308:
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, 0x1
	adds r3, 0x1
	cmp r3, 0x2
	ble _08012308
_08012316:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801231C: .4byte 0x0001606c
_08012320: .4byte gUnknown_02038470
	thumb_func_end sub_8012258

	thumb_func_start sub_8012324
sub_8012324: @ 8012324
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x1C
	ldr r0, _08012340 @ =gUnknown_02024D1E
	movs r1, 0
	strb r1, [r0, 0x4]
	ldr r0, _08012344 @ =gUnknown_02024A60
	strb r1, [r0]
	ldr r0, _08012348 @ =gUnknown_02024A68
	bl _08012F74
	.align 2, 0
_08012340: .4byte gUnknown_02024D1E
_08012344: .4byte gUnknown_02024A60
_08012348: .4byte gUnknown_02024A68
_0801234C:
	ldr r4, _08012374 @ =gUnknown_02024A60
	ldrb r0, [r4]
	bl battle_get_per_side_status
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, _08012378 @ =gUnknown_02024D1E
	ldrb r0, [r4]
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x6
	bls _08012368
	bl _08012F66
_08012368:
	lsls r0, 2
	ldr r1, _0801237C @ =_08012380
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08012374: .4byte gUnknown_02024A60
_08012378: .4byte gUnknown_02024D1E
_0801237C: .4byte _08012380
	.align 2, 0
_08012380:
	.4byte _0801239C
	.4byte _080124C8
	.4byte _08012A28
	.4byte _08012DA8
	.4byte _08012E50
	.4byte _08012E94
	.4byte _08012F38
_0801239C:
	ldr r4, _08012434 @ =0x02000000
	ldr r0, _08012438 @ =gUnknown_02024A60
	ldrb r0, [r0]
	ldr r1, _0801243C @ =0x00016068
	adds r0, r1
	adds r0, r4
	movs r1, 0x6
	strb r1, [r0]
	ldr r0, _08012440 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	bne _080123F8
	movs r1, 0x2
	movs r0, 0x2
	ands r0, r5
	cmp r0, 0
	beq _080123F8
	eors r5, r1
	adds r0, r5, 0
	bl battle_get_side_with_given_state
	ldr r2, _08012444 @ =0x000160a6
	adds r1, r4, r2
	ldrb r1, [r1]
	ldr r2, _08012448 @ =gBitTable
	lsls r0, 24
	lsrs r0, 22
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _080123F8
	ldr r4, _0801244C @ =gUnknown_02024D1E
	adds r0, r5, 0
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r0, 24
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0x4
	beq _080123F8
	bl _08012F66
_080123F8:
	ldr r0, _08012434 @ =0x02000000
	ldr r3, _08012444 @ =0x000160a6
	adds r0, r3
	ldrb r3, [r0]
	ldr r1, _08012448 @ =gBitTable
	ldr r4, _08012438 @ =gUnknown_02024A60
	ldrb r2, [r4]
	lsls r0, r2, 2
	adds r0, r1
	ldr r0, [r0]
	ands r3, r0
	cmp r3, 0
	beq _08012468
	ldr r0, _08012450 @ =gUnknown_02024C18
	adds r0, r2, r0
	movs r1, 0xD
	strb r1, [r0]
	ldr r0, _08012440 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	bne _08012454
	ldr r0, _0801244C @ =gUnknown_02024D1E
	ldrb r1, [r4]
	adds r1, r0
	movs r0, 0x4
	strb r0, [r1]
	bl _08012F66
	.align 2, 0
_08012434: .4byte 0x02000000
_08012438: .4byte gUnknown_02024A60
_0801243C: .4byte 0x00016068
_08012440: .4byte gUnknown_020239F8
_08012444: .4byte 0x000160a6
_08012448: .4byte gBitTable
_0801244C: .4byte gUnknown_02024D1E
_08012450: .4byte gUnknown_02024C18
_08012454:
	ldr r0, _08012464 @ =gUnknown_02024D1E
	ldrb r1, [r4]
	adds r1, r0
	movs r0, 0x3
	strb r0, [r1]
	bl _08012F66
	.align 2, 0
_08012464: .4byte gUnknown_02024D1E
_08012468:
	ldr r1, _0801249C @ =gBattleMons
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 5
	ands r0, r1
	cmp r0, 0
	bne _08012488
	movs r0, 0x80
	lsls r0, 15
	ands r1, r0
	cmp r1, 0
	beq _080124A8
_08012488:
	ldr r0, _080124A0 @ =gUnknown_02024C18
	adds r0, r2, r0
	strb r3, [r0]
	ldr r1, _080124A4 @ =gUnknown_02024D1E
	ldrb r0, [r4]
	adds r0, r1
	movs r1, 0x3
	strb r1, [r0]
	bl _08012F66
	.align 2, 0
_0801249C: .4byte gBattleMons
_080124A0: .4byte gUnknown_02024C18
_080124A4: .4byte gUnknown_02024D1E
_080124A8:
	ldr r0, _080124C0 @ =gUnknown_02024C18
	ldrb r1, [r0]
	ldr r0, _080124C4 @ =gUnknown_02024260
	ldrb r2, [r0, 0x1]
	ldrb r0, [r0, 0x2]
	lsls r0, 8
	orrs r2, r0
	movs r0, 0
	bl dp01_build_cmdbuf_x12_a_bb
	bl _08012E32
	.align 2, 0
_080124C0: .4byte gUnknown_02024C18
_080124C4: .4byte gUnknown_02024260
_080124C8:
	ldr r4, _08012520 @ =gUnknown_02024A64
	ldr r1, _08012524 @ =gBitTable
	ldr r3, _08012528 @ =gUnknown_02024A60
	ldrb r5, [r3]
	lsls r0, r5, 2
	adds r0, r1
	ldr r2, [r0]
	lsls r0, r2, 4
	movs r1, 0xF0
	lsls r1, 24
	orrs r0, r1
	orrs r0, r2
	lsls r1, r2, 8
	orrs r0, r1
	lsls r2, 12
	orrs r0, r2
	ldr r1, [r4]
	ands r1, r0
	mov r8, r3
	cmp r1, 0
	beq _080124F6
	bl _08012F66
_080124F6:
	ldr r2, _0801252C @ =gUnknown_02024C18
	adds r2, r5, r2
	ldr r1, _08012530 @ =gUnknown_02024260
	lsls r0, r5, 9
	adds r1, 0x1
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	ldrb r0, [r3]
	lsls r0, 9
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0xC
	bls _08012514
	b _08012968
_08012514:
	lsls r0, 2
	ldr r1, _08012534 @ =_08012538
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08012520: .4byte gUnknown_02024A64
_08012524: .4byte gBitTable
_08012528: .4byte gUnknown_02024A60
_0801252C: .4byte gUnknown_02024C18
_08012530: .4byte gUnknown_02024260
_08012534: .4byte _08012538
	.align 2, 0
_08012538:
	.4byte _0801256C
	.4byte _080126B4
	.4byte _080126E0
	.4byte _08012968
	.4byte _08012968
	.4byte _080128B0
	.4byte _08012908
	.4byte _08012968
	.4byte _08012968
	.4byte _08012968
	.4byte _08012968
	.4byte _08012968
	.4byte _0801292C
_0801256C:
	bl sub_8015C90
	lsls r0, 24
	cmp r0, 0
	beq _080125D0
	ldr r0, _080125B4 @ =gUnknown_02024D1E
	ldr r2, _080125B8 @ =gUnknown_02024A60
	ldrb r1, [r2]
	adds r1, r0
	movs r4, 0
	movs r0, 0x5
	strb r0, [r1]
	ldr r3, _080125BC @ =0x02000000
	ldrb r0, [r2]
	ldr r1, _080125C0 @ =0x00016060
	adds r0, r1
	adds r0, r3
	strb r4, [r0]
	ldrb r0, [r2]
	ldr r4, _080125C4 @ =0x00016094
	adds r0, r4
	adds r0, r3
	movs r1, 0x3
	strb r1, [r0]
	ldrb r1, [r2]
	ldr r0, _080125C8 @ =0x00016010
	adds r2, r1, r0
	adds r2, r3
	ldr r0, _080125CC @ =gUnknown_02024260
	lsls r1, 9
	adds r0, 0x3
	adds r1, r0
	ldrb r0, [r1]
	strb r0, [r2]
	bl _08012F90
	.align 2, 0
_080125B4: .4byte gUnknown_02024D1E
_080125B8: .4byte gUnknown_02024A60
_080125BC: .4byte 0x02000000
_080125C0: .4byte 0x00016060
_080125C4: .4byte 0x00016094
_080125C8: .4byte 0x00016010
_080125CC: .4byte gUnknown_02024260
_080125D0:
	ldr r1, _080125FC @ =gUnknown_02024CA8
	ldr r5, _08012600 @ =gUnknown_02024A60
	ldrb r4, [r5]
	lsls r0, r4, 3
	subs r0, r4
	lsls r0, 2
	adds r0, r1
	ldrh r2, [r0, 0x6]
	cmp r2, 0
	beq _0801260C
	ldr r1, _08012604 @ =gUnknown_02024C60
	lsls r0, r4, 1
	adds r0, r1
	strh r2, [r0]
	ldr r1, _08012608 @ =gUnknown_02024D1E
	ldrb r0, [r5]
	adds r0, r1
	movs r1, 0x3
	strb r1, [r0]
	bl _08012F90
	.align 2, 0
_080125FC: .4byte gUnknown_02024CA8
_08012600: .4byte gUnknown_02024A60
_08012604: .4byte gUnknown_02024C60
_08012608: .4byte gUnknown_02024D1E
_0801260C:
	add r2, sp, 0x4
	ldr r3, _080126AC @ =gBattleMons
	movs r1, 0x58
	adds r0, r4, 0
	muls r0, r1
	adds r0, r3
	ldrh r0, [r0]
	strh r0, [r2, 0x10]
	ldrb r0, [r5]
	muls r0, r1
	adds r0, r3
	adds r0, 0x21
	ldrb r0, [r0]
	strb r0, [r2, 0x12]
	ldrb r0, [r5]
	muls r0, r1
	adds r0, r3
	adds r0, 0x22
	ldrb r0, [r0]
	strb r0, [r2, 0x13]
	movs r4, 0
	mov r1, sp
	adds r1, 0xC
	str r1, [sp, 0x18]
	add r2, sp, 0x10
	mov r10, r2
	mov r8, r3
	adds r7, r5, 0
	movs r6, 0x58
	movs r3, 0xC
	add r3, r8
	mov r9, r3
	add r5, sp, 0x4
_0801264E:
	lsls r2, r4, 1
	ldrb r0, [r7]
	muls r0, r6
	adds r0, r2, r0
	add r0, r9
	ldrh r0, [r0]
	strh r0, [r5]
	ldr r0, [sp, 0x18]
	adds r3, r0, r4
	ldrb r0, [r7]
	muls r0, r6
	adds r0, r4, r0
	mov r1, r8
	adds r1, 0x24
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r0, [r7]
	adds r1, r0, 0
	muls r1, r6
	adds r2, r1
	add r2, r9
	ldrh r0, [r2]
	add r1, r8
	adds r1, 0x3B
	ldrb r1, [r1]
	lsls r2, r4, 24
	lsrs r2, 24
	bl CalculatePPWithBonus
	mov r2, r10
	adds r1, r2, r4
	strb r0, [r1]
	adds r5, 0x2
	adds r4, 0x1
	cmp r4, 0x3
	ble _0801264E
	ldr r0, _080126B0 @ =gUnknown_020239F8
	ldrb r0, [r0]
	movs r1, 0x1
	ands r1, r0
	movs r0, 0
	movs r2, 0
	add r3, sp, 0x4
	bl sub_800CBA4
	b _0801289E
	.align 2, 0
_080126AC: .4byte gBattleMons
_080126B0: .4byte gUnknown_020239F8
_080126B4:
	ldr r0, _080126D0 @ =gUnknown_020239F8
	ldrh r1, [r0]
	ldr r0, _080126D4 @ =0x00000902
	ands r0, r1
	cmp r0, 0
	bne _080126C2
	b _08012908
_080126C2:
	ldr r1, _080126D8 @ =gUnknown_02024C1C
	mov r3, r8
	ldrb r0, [r3]
	lsls r0, 2
	adds r0, r1
	ldr r1, _080126DC @ =gUnknown_081D9B29
	b _080129CC
	.align 2, 0
_080126D0: .4byte gUnknown_020239F8
_080126D4: .4byte 0x00000902
_080126D8: .4byte gUnknown_02024C1C
_080126DC: .4byte gUnknown_081D9B29
_080126E0:
	ldr r3, _08012738 @ =0x02000000
	ldr r5, _0801273C @ =gUnknown_02024A60
	ldrb r0, [r5]
	ldr r4, _08012740 @ =0x00016064
	adds r1, r0, r4
	adds r1, r3
	ldr r2, _08012744 @ =gUnknown_02024A6A
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	strb r0, [r1]
	ldr r7, _08012748 @ =gBattleMons
	ldrb r2, [r5]
	movs r6, 0x58
	adds r0, r2, 0
	muls r0, r6
	adds r1, r7, 0
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	ldr r1, _0801274C @ =0x0400e000
	ands r0, r1
	cmp r0, 0
	bne _08012722
	ldr r0, _08012750 @ =gUnknown_02024C98
	lsls r1, r2, 2
	adds r1, r0
	ldr r1, [r1]
	movs r0, 0x80
	lsls r0, 3
	ands r1, r0
	cmp r1, 0
	beq _08012758
_08012722:
	lsls r0, r2, 1
	adds r0, r2
	ldr r2, _08012754 @ =0x0001606c
	adds r1, r3, r2
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0x2
	movs r2, 0x6
	b _0801286C
	.align 2, 0
_08012738: .4byte 0x02000000
_0801273C: .4byte gUnknown_02024A60
_08012740: .4byte 0x00016064
_08012744: .4byte gUnknown_02024A6A
_08012748: .4byte gBattleMons
_0801274C: .4byte 0x0400e000
_08012750: .4byte gUnknown_02024C98
_08012754: .4byte 0x0001606c
_08012758:
	str r1, [sp]
	movs r0, 0xC
	adds r1, r2, 0
	movs r2, 0x17
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	bne _080127E0
	ldrb r1, [r5]
	str r4, [sp]
	movs r0, 0xC
	movs r2, 0x47
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	beq _080127A8
	ldrb r0, [r5]
	muls r0, r6
	adds r1, r0, r7
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0x2
	beq _080127A8
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0x2
	beq _080127A8
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x1A
	bne _080127E0
_080127A8:
	ldr r5, _08012808 @ =gUnknown_02024A60
	ldrb r1, [r5]
	movs r0, 0
	str r0, [sp]
	movs r0, 0xF
	movs r2, 0x2A
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	beq _08012818
	ldr r2, _0801280C @ =gBattleMons
	ldrb r1, [r5]
	movs r0, 0x58
	muls r0, r1
	adds r1, r0, r2
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0x8
	beq _080127E0
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0x8
	bne _08012818
_080127E0:
	subs r1, r4, 0x1
	lsls r1, 4
	movs r0, 0x4
	orrs r1, r0
	lsls r1, 24
	lsrs r1, 24
	ldr r0, _08012810 @ =byte_2024C06
	ldrb r3, [r0]
	ldr r0, _08012808 @ =gUnknown_02024A60
	ldrb r2, [r0]
	lsls r0, r2, 1
	adds r0, r2
	ldr r2, _08012814 @ =0x0201606c
	adds r0, r2
	str r0, [sp]
	movs r0, 0
	movs r2, 0x6
	bl dp01_build_cmdbuf_x16_a_b_c_ptr_d_e_f
	b _0801289E
	.align 2, 0
_08012808: .4byte gUnknown_02024A60
_0801280C: .4byte gBattleMons
_08012810: .4byte byte_2024C06
_08012814: .4byte 0x0201606c
_08012818:
	ldr r0, _08012830 @ =gUnknown_02024A60
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, 0x2
	bne _08012840
	ldr r0, _08012834 @ =gUnknown_02024C18
	ldrb r0, [r0]
	cmp r0, 0x2
	bne _08012840
	ldr r3, _08012838 @ =0x02000000
	ldr r4, _0801283C @ =0x00016068
	b _08012854
	.align 2, 0
_08012830: .4byte gUnknown_02024A60
_08012834: .4byte gUnknown_02024C18
_08012838: .4byte 0x02000000
_0801283C: .4byte 0x00016068
_08012840:
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, 0x3
	bne _08012884
	ldr r0, _08012874 @ =gUnknown_02024C18
	ldrb r0, [r0, 0x1]
	cmp r0, 0x2
	bne _08012884
	ldr r3, _08012878 @ =0x02000000
	ldr r4, _0801287C @ =0x00016069
_08012854:
	adds r0, r3, r4
	ldrb r2, [r0]
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	ldr r1, _08012880 @ =0x0001606c
	adds r3, r1
	adds r0, r3
	str r0, [sp]
	movs r0, 0
	movs r1, 0
_0801286C:
	movs r3, 0
	bl dp01_build_cmdbuf_x16_a_b_c_ptr_d_e_f
	b _0801289E
	.align 2, 0
_08012874: .4byte gUnknown_02024C18
_08012878: .4byte 0x02000000
_0801287C: .4byte 0x00016069
_08012880: .4byte 0x0001606c
_08012884:
	ldr r0, _080128A8 @ =gUnknown_02024A60
	ldrb r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	ldr r1, _080128AC @ =0x0201606c
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0
	movs r2, 0x6
	movs r3, 0
	bl dp01_build_cmdbuf_x16_a_b_c_ptr_d_e_f
_0801289E:
	ldr r0, _080128A8 @ =gUnknown_02024A60
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
	b _08012968
	.align 2, 0
_080128A8: .4byte gUnknown_02024A60
_080128AC: .4byte 0x0201606c
_080128B0:
	bl PlayerPartyAndPokemonStorageFull
	lsls r0, 24
	cmp r0, 0
	beq _08012968
	ldr r1, _080128EC @ =gUnknown_02024C1C
	ldr r2, _080128F0 @ =gUnknown_02024A60
	ldrb r0, [r2]
	lsls r0, 2
	adds r0, r1
	ldr r1, _080128F4 @ =gUnknown_081D8E4A
	str r1, [r0]
	ldr r0, _080128F8 @ =gUnknown_02024D1E
	ldrb r1, [r2]
	adds r1, r0
	movs r3, 0
	movs r0, 0x5
	strb r0, [r1]
	ldr r1, _080128FC @ =0x02000000
	ldrb r0, [r2]
	ldr r4, _08012900 @ =0x00016060
	adds r0, r4
	adds r0, r1
	strb r3, [r0]
	ldrb r0, [r2]
	ldr r2, _08012904 @ =0x00016094
	adds r0, r2
	adds r0, r1
	strb r3, [r0]
	b _08012F90
	.align 2, 0
_080128EC: .4byte gUnknown_02024C1C
_080128F0: .4byte gUnknown_02024A60
_080128F4: .4byte gUnknown_081D8E4A
_080128F8: .4byte gUnknown_02024D1E
_080128FC: .4byte 0x02000000
_08012900: .4byte 0x00016060
_08012904: .4byte 0x00016094
_08012908:
	ldr r4, _08012924 @ =gUnknown_02024A60
	ldrb r0, [r4]
	lsls r1, r0, 1
	adds r1, r0
	ldr r0, _08012928 @ =0x0201606c
	adds r1, r0
	movs r0, 0
	bl sub_800CBE0
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	b _08012968
	.align 2, 0
_08012924: .4byte gUnknown_02024A60
_08012928: .4byte 0x0201606c
_0801292C:
	ldr r4, _08012964 @ =gUnknown_02024D1E
	mov r3, r8
	ldrb r1, [r3]
	adds r1, r4
	movs r5, 0
	movs r0, 0x6
	strb r0, [r1]
	ldrb r0, [r3]
	bl battle_get_per_side_status
	movs r1, 0x2
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r0, 24
	adds r0, r4
	strb r5, [r0]
	movs r0, 0
	bl dp01_build_cmdbuf_x32_32_32_32
	mov r4, r8
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	b _08012F90
	.align 2, 0
_08012964: .4byte gUnknown_02024D1E
_08012968:
	ldr r0, _08012994 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0xA
	ands r0, r1
	cmp r0, 0x8
	bne _080129A8
	ldr r0, _08012998 @ =gUnknown_02024260
	ldr r4, _0801299C @ =gUnknown_02024A60
	ldrb r1, [r4]
	lsls r1, 9
	adds r0, 0x1
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0x3
	bne _080129A8
	ldr r0, _080129A0 @ =gUnknown_081D8E37
	bl b_call_bc_move_exec
	ldr r1, _080129A4 @ =gUnknown_02024D1E
	ldrb r0, [r4]
	adds r0, r1
	b _08012BFE
	.align 2, 0
_08012994: .4byte gUnknown_020239F8
_08012998: .4byte gUnknown_02024260
_0801299C: .4byte gUnknown_02024A60
_080129A0: .4byte gUnknown_081D8E37
_080129A4: .4byte gUnknown_02024D1E
_080129A8:
	bl sub_8012028
	lsls r0, 24
	cmp r0, 0
	beq _08012A14
	ldr r0, _080129F4 @ =gUnknown_02024260
	ldr r3, _080129F8 @ =gUnknown_02024A60
	ldrb r2, [r3]
	lsls r1, r2, 9
	adds r0, 0x1
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0x3
	bne _08012A14
	ldr r1, _080129FC @ =gUnknown_02024C1C
	lsls r0, r2, 2
	adds r0, r1
	ldr r1, _08012A00 @ =gUnknown_081D8E44
_080129CC:
	str r1, [r0]
	ldr r0, _08012A04 @ =gUnknown_02024D1E
	ldrb r1, [r3]
	adds r1, r0
	movs r2, 0
	movs r0, 0x5
	strb r0, [r1]
	ldr r1, _08012A08 @ =0x02000000
	ldrb r0, [r3]
	ldr r4, _08012A0C @ =0x00016060
	adds r0, r4
	adds r0, r1
	strb r2, [r0]
	ldrb r0, [r3]
	ldr r3, _08012A10 @ =0x00016094
	adds r0, r3
	adds r0, r1
	strb r2, [r0]
	b _08012F90
	.align 2, 0
_080129F4: .4byte gUnknown_02024260
_080129F8: .4byte gUnknown_02024A60
_080129FC: .4byte gUnknown_02024C1C
_08012A00: .4byte gUnknown_081D8E44
_08012A04: .4byte gUnknown_02024D1E
_08012A08: .4byte 0x02000000
_08012A0C: .4byte 0x00016060
_08012A10: .4byte 0x00016094
_08012A14:
	ldr r2, _08012A20 @ =gUnknown_02024D1E
	ldr r0, _08012A24 @ =gUnknown_02024A60
	ldrb r1, [r0]
	adds r1, r2
	b _08012E3E
	.align 2, 0
_08012A20: .4byte gUnknown_02024D1E
_08012A24: .4byte gUnknown_02024A60
_08012A28:
	ldr r4, _08012A6C @ =gUnknown_02024A64
	ldr r1, _08012A70 @ =gBitTable
	ldr r3, _08012A74 @ =gUnknown_02024A60
	ldrb r5, [r3]
	lsls r0, r5, 2
	adds r0, r1
	ldr r2, [r0]
	lsls r0, r2, 4
	movs r1, 0xF0
	lsls r1, 24
	orrs r0, r1
	orrs r0, r2
	lsls r1, r2, 8
	orrs r0, r1
	lsls r2, 12
	orrs r0, r2
	ldr r1, [r4]
	ands r1, r0
	mov r8, r3
	cmp r1, 0
	beq _08012A54
	b _08012F66
_08012A54:
	ldr r1, _08012A78 @ =gUnknown_02024C18
	adds r0, r5, r1
	ldrb r0, [r0]
	adds r3, r1, 0
	cmp r0, 0x9
	bls _08012A62
	b _08012F66
_08012A62:
	lsls r0, 2
	ldr r1, _08012A7C @ =_08012A80
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08012A6C: .4byte gUnknown_02024A64
_08012A70: .4byte gBitTable
_08012A74: .4byte gUnknown_02024A60
_08012A78: .4byte gUnknown_02024C18
_08012A7C: .4byte _08012A80
	.align 2, 0
_08012A80:
	.4byte _08012AA8
	.4byte _08012BB0
	.4byte _08012BE8
	.4byte _08012CE0
	.4byte _08012D04
	.4byte _08012D18
	.4byte _08012D2C
	.4byte _08012D5C
	.4byte _08012D70
	.4byte _08012D94
_08012AA8:
	ldr r0, _08012AC8 @ =gUnknown_02024260
	mov r1, r8
	ldrb r4, [r1]
	lsls r1, r4, 9
	adds r2, r0, 0x1
	adds r1, r2
	ldrb r1, [r1]
	adds r6, r0, 0
	cmp r1, 0x9
	bgt _08012ACC
	cmp r1, 0x3
	blt _08012ACC
	adds r0, r4, r3
	strb r1, [r0]
	b _08012F90
	.align 2, 0
_08012AC8: .4byte gUnknown_02024260
_08012ACC:
	adds r3, r6, 0
	mov r5, r8
	ldrb r4, [r5]
	lsls r1, r4, 9
	adds r7, r3, 0x2
	adds r0, r1, r7
	ldrb r2, [r0]
	adds r3, 0x3
	mov r9, r3
	add r1, r9
	ldrb r0, [r1]
	lsls r0, 8
	orrs r2, r0
	ldr r0, _08012AF4 @ =0x0000ffff
	cmp r2, r0
	bne _08012AFC
	ldr r0, _08012AF8 @ =gUnknown_02024D1E
	adds r0, r4, r0
	b _08012BFE
	.align 2, 0
_08012AF4: .4byte 0x0000ffff
_08012AF8: .4byte gUnknown_02024D1E
_08012AFC:
	bl sub_8015894
	lsls r0, 24
	cmp r0, 0
	beq _08012B48
	ldr r0, _08012B38 @ =gUnknown_02024D1E
	ldrb r1, [r5]
	adds r1, r0
	movs r2, 0
	movs r0, 0x5
	strb r0, [r1]
	ldr r3, _08012B3C @ =0x02000000
	ldrb r0, [r5]
	ldr r4, _08012B40 @ =0x00016060
	adds r0, r4
	adds r0, r3
	strb r2, [r0]
	ldrb r0, [r5]
	lsls r0, 9
	adds r1, r6, 0x1
	adds r0, r1
	strb r2, [r0]
	ldrb r0, [r5]
	ldr r1, _08012B44 @ =0x00016094
	adds r0, r1
	adds r0, r3
	movs r1, 0x1
	strb r1, [r0]
	b _08012F90
	.align 2, 0
_08012B38: .4byte gUnknown_02024D1E
_08012B3C: .4byte 0x02000000
_08012B40: .4byte 0x00016060
_08012B44: .4byte 0x00016094
_08012B48:
	ldr r6, _08012B98 @ =0x02000000
	mov r2, r8
	ldrb r0, [r2]
	ldr r2, _08012B9C @ =0x0001608c
	adds r1, r0, r2
	adds r1, r6
	lsls r0, 9
	adds r0, r7
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08012BA0 @ =gUnknown_02024C60
	mov r4, r8
	ldrb r3, [r4]
	lsls r5, r3, 1
	adds r5, r0
	ldr r4, _08012BA4 @ =gBattleMons
	adds r2, r3, r2
	adds r2, r6
	ldrb r0, [r2]
	lsls r0, 1
	movs r1, 0x58
	muls r1, r3
	adds r0, r1
	adds r4, 0xC
	adds r0, r4
	ldrh r0, [r0]
	strh r0, [r5]
	mov r1, r8
	ldrb r0, [r1]
	ldr r2, _08012BA8 @ =0x00016010
	adds r1, r0, r2
	adds r1, r6
	lsls r0, 9
	add r0, r9
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08012BAC @ =gUnknown_02024D1E
	mov r3, r8
	ldrb r1, [r3]
	b _08012E3C
	.align 2, 0
_08012B98: .4byte 0x02000000
_08012B9C: .4byte 0x0001608c
_08012BA0: .4byte gUnknown_02024C60
_08012BA4: .4byte gBattleMons
_08012BA8: .4byte 0x00016010
_08012BAC: .4byte gUnknown_02024D1E
_08012BB0:
	ldr r2, _08012BD8 @ =gUnknown_02024260
	ldr r5, _08012BDC @ =gUnknown_02024A60
	ldrb r4, [r5]
	lsls r1, r4, 9
	adds r0, r2, 0x1
	adds r0, r1, r0
	ldrb r3, [r0]
	adds r2, 0x2
	adds r1, r2
	ldrb r0, [r1]
	lsls r0, 8
	orrs r3, r0
	cmp r3, 0
	bne _08012BCE
	b _08012F60
_08012BCE:
	ldr r0, _08012BE0 @ =gUnknown_02024C04
	strh r3, [r0]
	ldr r0, _08012BE4 @ =gUnknown_02024D1E
	ldrb r1, [r5]
	b _08012E3C
	.align 2, 0
_08012BD8: .4byte gUnknown_02024260
_08012BDC: .4byte gUnknown_02024A60
_08012BE0: .4byte gUnknown_02024C04
_08012BE4: .4byte gUnknown_02024D1E
_08012BE8:
	ldr r4, _08012C04 @ =gUnknown_02024260
	ldr r7, _08012C08 @ =gUnknown_02024A60
	ldrb r2, [r7]
	lsls r0, r2, 9
	adds r1, r4, 0x1
	adds r0, r1
	ldrb r1, [r0]
	cmp r1, 0x6
	bne _08012C10
	ldr r0, _08012C0C @ =gUnknown_02024D1E
	adds r0, r2, r0
_08012BFE:
	movs r1, 0
	strb r1, [r0]
	b _08012F66
	.align 2, 0
_08012C04: .4byte gUnknown_02024260
_08012C08: .4byte gUnknown_02024A60
_08012C0C: .4byte gUnknown_02024D1E
_08012C10:
	ldr r0, _08012CC4 @ =0x02000000
	mov r12, r0
	ldr r3, _08012CC8 @ =0x00016068
	adds r0, r2, r3
	add r0, r12
	strb r1, [r0]
	ldr r0, _08012CCC @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08012CBE
	ldrb r0, [r7]
	lsls r1, r0, 1
	adds r1, r0
	ldr r5, _08012CD0 @ =0x0001606c
	adds r1, r5
	add r1, r12
	ldrb r2, [r1]
	movs r0, 0xF
	ands r0, r2
	strb r0, [r1]
	ldrb r0, [r7]
	lsls r2, r0, 1
	adds r2, r0
	adds r2, r5
	add r2, r12
	lsls r0, 9
	adds r6, r4, 0x2
	adds r0, r6
	ldrb r1, [r0]
	movs r3, 0xF0
	adds r0, r3, 0
	ands r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r7]
	lsls r1, r0, 1
	adds r1, r0
	ldr r2, _08012CD4 @ =0x0001606d
	adds r1, r2
	add r1, r12
	lsls r0, 9
	adds r4, 0x3
	mov r8, r4
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r7]
	movs r4, 0x2
	eors r0, r4
	lsls r1, r0, 1
	adds r1, r0
	adds r1, r5
	add r1, r12
	ldrb r2, [r1]
	adds r0, r3, 0
	ands r0, r2
	strb r0, [r1]
	ldrb r0, [r7]
	eors r0, r4
	lsls r1, r0, 1
	adds r1, r0
	adds r1, r5
	add r1, r12
	ldrb r0, [r7]
	lsls r0, 9
	adds r0, r6
	ldrb r0, [r0]
	ands r3, r0
	lsrs r3, 4
	ldrb r0, [r1]
	orrs r3, r0
	strb r3, [r1]
	ldrb r0, [r7]
	eors r4, r0
	lsls r1, r4, 1
	adds r1, r4
	ldr r3, _08012CD8 @ =0x0001606e
	adds r1, r3
	add r1, r12
	ldrb r0, [r7]
	lsls r0, 9
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r1]
_08012CBE:
	ldr r0, _08012CDC @ =gUnknown_02024D1E
	ldrb r1, [r7]
	b _08012E3C
	.align 2, 0
_08012CC4: .4byte 0x02000000
_08012CC8: .4byte 0x00016068
_08012CCC: .4byte gUnknown_020239F8
_08012CD0: .4byte 0x0001606c
_08012CD4: .4byte 0x0001606d
_08012CD8: .4byte 0x0001606e
_08012CDC: .4byte gUnknown_02024D1E
_08012CE0:
	ldr r2, _08012CF8 @ =gUnknown_02024C6C
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 8
	orrs r0, r1
	str r0, [r2]
	ldr r2, _08012CFC @ =gUnknown_02024D1E
	ldr r0, _08012D00 @ =gUnknown_02024A60
	ldrb r1, [r0]
	adds r1, r2
	b _08012E3E
	.align 2, 0
_08012CF8: .4byte gUnknown_02024C6C
_08012CFC: .4byte gUnknown_02024D1E
_08012D00: .4byte gUnknown_02024A60
_08012D04:
	ldr r2, _08012D10 @ =gUnknown_02024D1E
	ldr r0, _08012D14 @ =gUnknown_02024A60
	ldrb r1, [r0]
	adds r1, r2
	b _08012E3E
	.align 2, 0
_08012D10: .4byte gUnknown_02024D1E
_08012D14: .4byte gUnknown_02024A60
_08012D18:
	ldr r2, _08012D24 @ =gUnknown_02024D1E
	ldr r0, _08012D28 @ =gUnknown_02024A60
	ldrb r1, [r0]
	adds r1, r2
	b _08012E3E
	.align 2, 0
_08012D24: .4byte gUnknown_02024D1E
_08012D28: .4byte gUnknown_02024A60
_08012D2C:
	ldr r2, _08012D50 @ =gUnknown_02024260
	ldr r0, _08012D54 @ =gUnknown_02024A60
	ldrb r4, [r0]
	lsls r1, r4, 9
	adds r0, r2, 0x1
	adds r0, r1, r0
	ldrb r3, [r0]
	adds r2, 0x2
	adds r1, r2
	ldrb r0, [r1]
	lsls r0, 8
	orrs r3, r0
	cmp r3, 0
	bne _08012D4A
	b _08012F60
_08012D4A:
	ldr r1, _08012D58 @ =gUnknown_02024D1E
	adds r1, r4, r1
	b _08012E3E
	.align 2, 0
_08012D50: .4byte gUnknown_02024260
_08012D54: .4byte gUnknown_02024A60
_08012D58: .4byte gUnknown_02024D1E
_08012D5C:
	ldr r2, _08012D68 @ =gUnknown_02024D1E
	ldr r0, _08012D6C @ =gUnknown_02024A60
	ldrb r1, [r0]
	adds r1, r2
	b _08012E3E
	.align 2, 0
_08012D68: .4byte gUnknown_02024D1E
_08012D6C: .4byte gUnknown_02024A60
_08012D70:
	ldr r2, _08012D88 @ =gUnknown_02024C6C
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 8
	orrs r0, r1
	str r0, [r2]
	ldr r2, _08012D8C @ =gUnknown_02024D1E
	ldr r0, _08012D90 @ =gUnknown_02024A60
	ldrb r1, [r0]
	adds r1, r2
	b _08012E3E
	.align 2, 0
_08012D88: .4byte gUnknown_02024C6C
_08012D8C: .4byte gUnknown_02024D1E
_08012D90: .4byte gUnknown_02024A60
_08012D94:
	ldr r2, _08012DA0 @ =gUnknown_02024D1E
	ldr r0, _08012DA4 @ =gUnknown_02024A60
	ldrb r1, [r0]
	adds r1, r2
	b _08012E3E
	.align 2, 0
_08012DA0: .4byte gUnknown_02024D1E
_08012DA4: .4byte gUnknown_02024A60
_08012DA8:
	ldr r3, _08012E10 @ =gUnknown_02024A64
	ldr r4, _08012E14 @ =gBitTable
	ldr r0, _08012E18 @ =gUnknown_02024A60
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r4
	ldr r2, [r0]
	lsls r1, r2, 4
	movs r0, 0xF0
	lsls r0, 24
	orrs r1, r0
	orrs r1, r2
	lsls r0, r2, 8
	orrs r1, r0
	lsls r2, 12
	orrs r1, r2
	ldr r0, [r3]
	ands r0, r1
	cmp r0, 0
	beq _08012DD2
	b _08012F66
_08012DD2:
	ldr r0, _08012E1C @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x41
	ands r0, r1
	cmp r0, 0x1
	bne _08012E06
	movs r1, 0x2
	movs r0, 0x2
	ands r0, r5
	cmp r0, 0
	bne _08012E06
	adds r0, r5, 0
	eors r0, r1
	bl battle_get_side_with_given_state
	ldr r1, _08012E20 @ =0x02000000
	ldr r2, _08012E24 @ =0x000160a6
	adds r1, r2
	ldrb r1, [r1]
	lsls r0, 24
	lsrs r0, 22
	adds r0, r4
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _08012E28
_08012E06:
	movs r0, 0
	movs r1, 0
	bl sub_800D1D8
	b _08012E30
	.align 2, 0
_08012E10: .4byte gUnknown_02024A64
_08012E14: .4byte gBitTable
_08012E18: .4byte gUnknown_02024A60
_08012E1C: .4byte gUnknown_020239F8
_08012E20: .4byte 0x02000000
_08012E24: .4byte 0x000160a6
_08012E28:
	movs r0, 0
	movs r1, 0x1
	bl sub_800D1D8
_08012E30:
	ldr r4, _08012E48 @ =gUnknown_02024A60
_08012E32:
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, _08012E4C @ =gUnknown_02024D1E
	ldrb r1, [r4]
_08012E3C:
	adds r1, r0
_08012E3E:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _08012F66
	.align 2, 0
_08012E48: .4byte gUnknown_02024A60
_08012E4C: .4byte gUnknown_02024D1E
_08012E50:
	ldr r3, _08012E84 @ =gUnknown_02024A64
	ldr r1, _08012E88 @ =gBitTable
	ldr r0, _08012E8C @ =gUnknown_02024A60
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r2, [r0]
	lsls r1, r2, 4
	movs r0, 0xF0
	lsls r0, 24
	orrs r1, r0
	orrs r1, r2
	lsls r0, r2, 8
	orrs r1, r0
	lsls r2, 12
	orrs r1, r2
	ldr r0, [r3]
	ands r0, r1
	cmp r0, 0
	bne _08012F66
	ldr r1, _08012E90 @ =gUnknown_02024D1E
	ldrb r0, [r1, 0x4]
	adds r0, 0x1
	strb r0, [r1, 0x4]
	b _08012F66
	.align 2, 0
_08012E84: .4byte gUnknown_02024A64
_08012E88: .4byte gBitTable
_08012E8C: .4byte gUnknown_02024A60
_08012E90: .4byte gUnknown_02024D1E
_08012E94:
	ldr r2, _08012EB8 @ =0x02000000
	ldr r5, _08012EBC @ =gUnknown_02024A60
	ldrb r1, [r5]
	ldr r3, _08012EC0 @ =0x00016060
	adds r0, r1, r3
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0
	beq _08012ECC
	ldr r0, _08012EC4 @ =gUnknown_02024D1E
	adds r0, r1, r0
	ldr r4, _08012EC8 @ =0x00016094
	adds r1, r4
	adds r1, r2
	ldrb r1, [r1]
	strb r1, [r0]
	b _08012F66
	.align 2, 0
_08012EB8: .4byte 0x02000000
_08012EBC: .4byte gUnknown_02024A60
_08012EC0: .4byte 0x00016060
_08012EC4: .4byte gUnknown_02024D1E
_08012EC8: .4byte 0x00016094
_08012ECC:
	ldr r0, _08012F20 @ =gUnknown_02024C07
	strb r1, [r0]
	ldr r7, _08012F24 @ =gUnknown_02024C10
	ldr r6, _08012F28 @ =gUnknown_02024C1C
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r6
	ldr r4, [r0]
	str r4, [r7]
	ldr r3, _08012F2C @ =gUnknown_02024A64
	ldr r1, _08012F30 @ =gBitTable
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r2, [r0]
	lsls r1, r2, 4
	movs r0, 0xF0
	lsls r0, 24
	orrs r1, r0
	orrs r1, r2
	lsls r0, r2, 8
	orrs r1, r0
	lsls r2, 12
	orrs r1, r2
	ldr r0, [r3]
	ands r0, r1
	cmp r0, 0
	bne _08012F12
	ldr r0, _08012F34 @ =gUnknown_081FA73C
	ldrb r1, [r4]
	lsls r1, 2
	adds r1, r0
	ldr r0, [r1]
	bl _call_via_r0
_08012F12:
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r6
	ldr r1, [r7]
	str r1, [r0]
	b _08012F66
	.align 2, 0
_08012F20: .4byte gUnknown_02024C07
_08012F24: .4byte gUnknown_02024C10
_08012F28: .4byte gUnknown_02024C1C
_08012F2C: .4byte gUnknown_02024A64
_08012F30: .4byte gBitTable
_08012F34: .4byte gUnknown_081FA73C
_08012F38:
	ldr r3, _08012FA0 @ =gUnknown_02024A64
	ldr r1, _08012FA4 @ =gBitTable
	ldr r0, _08012FA8 @ =gUnknown_02024A60
	ldrb r4, [r0]
	lsls r0, r4, 2
	adds r0, r1
	ldr r2, [r0]
	lsls r0, r2, 4
	movs r1, 0xF0
	lsls r1, 24
	orrs r0, r1
	orrs r0, r2
	lsls r1, r2, 8
	orrs r0, r1
	lsls r2, 12
	orrs r0, r2
	ldr r3, [r3]
	ands r3, r0
	cmp r3, 0
	bne _08012F66
_08012F60:
	ldr r0, _08012FAC @ =gUnknown_02024D1E
	adds r0, r4, r0
	strb r3, [r0]
_08012F66:
	ldr r0, _08012FA8 @ =gUnknown_02024A60
	ldrb r1, [r0]
	adds r1, 0x1
	strb r1, [r0]
	ldr r0, _08012FB0 @ =gUnknown_02024A68
	lsls r1, 24
	lsrs r1, 24
_08012F74:
	adds r2, r0, 0
	ldrb r0, [r2]
	cmp r1, r0
	bcs _08012F80
	bl _0801234C
_08012F80:
	ldr r0, _08012FAC @ =gUnknown_02024D1E
	ldrb r0, [r0, 0x4]
	ldrb r2, [r2]
	cmp r0, r2
	bne _08012F90
	ldr r1, _08012FB4 @ =gUnknown_030042D4
	ldr r0, _08012FB8 @ =sub_80133C8
	str r0, [r1]
_08012F90:
	add sp, 0x1C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012FA0: .4byte gUnknown_02024A64
_08012FA4: .4byte gBitTable
_08012FA8: .4byte gUnknown_02024A60
_08012FAC: .4byte gUnknown_02024D1E
_08012FB0: .4byte gUnknown_02024A68
_08012FB4: .4byte gUnknown_030042D4
_08012FB8: .4byte sub_80133C8
	thumb_func_end sub_8012324

	thumb_func_start sub_8012FBC
sub_8012FBC: @ 8012FBC
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	ldr r2, _08012FE8 @ =gUnknown_02024A76
	adds r4, r0, r2
	ldrb r5, [r4]
	adds r2, r1, r2
	ldrb r3, [r2]
	strb r3, [r4]
	strb r5, [r2]
	ldr r2, _08012FEC @ =gUnknown_02024A7A
	adds r0, r2
	ldrb r5, [r0]
	adds r1, r2
	ldrb r2, [r1]
	strb r2, [r0]
	strb r5, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08012FE8: .4byte gUnknown_02024A76
_08012FEC: .4byte gUnknown_02024A7A
	thumb_func_end sub_8012FBC

	thumb_func_start b_first_side
b_first_side: @ 8012FF0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	lsls r1, 24
	lsrs r1, 24
	mov r10, r1
	lsls r2, 24
	lsrs r2, 24
	str r2, [sp, 0x4]
	movs r0, 0
	str r0, [sp, 0x8]
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0xD
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	bne _080130B8
	ldr r1, [sp, 0x8]
	str r1, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0x4D
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	bne _080130B8
	ldr r1, _08013070 @ =gBattleMons
	movs r0, 0x58
	mov r2, r9
	muls r2, r0
	adds r0, r2, 0
	adds r0, r1
	adds r0, 0x20
	ldrb r3, [r0]
	cmp r3, 0x21
	bne _0801305C
	ldr r0, _08013074 @ =word_2024DB8
	ldrh r1, [r0]
	movs r0, 0x7
	ands r0, r1
	cmp r0, 0
	bne _0801306C
_0801305C:
	cmp r3, 0x22
	bne _08013078
	ldr r0, _08013074 @ =word_2024DB8
	ldrh r1, [r0]
	movs r0, 0x60
	ands r0, r1
	cmp r0, 0
	beq _08013078
_0801306C:
	movs r3, 0x2
	b _0801307A
	.align 2, 0
_08013070: .4byte gBattleMons
_08013074: .4byte word_2024DB8
_08013078:
	movs r3, 0x1
_0801307A:
	movs r0, 0x58
	mov r1, r10
	muls r1, r0
	adds r0, r1, 0
	ldr r2, _080130B0 @ =gBattleMons
	adds r0, r2
	adds r0, 0x20
	ldrb r2, [r0]
	cmp r2, 0x21
	bne _0801309A
	ldr r0, _080130B4 @ =word_2024DB8
	ldrh r1, [r0]
	movs r0, 0x7
	ands r0, r1
	cmp r0, 0
	bne _080130AA
_0801309A:
	cmp r2, 0x22
	bne _080130BA
	ldr r0, _080130B4 @ =word_2024DB8
	ldrh r1, [r0]
	movs r0, 0x60
	ands r0, r1
	cmp r0, 0
	beq _080130BA
_080130AA:
	movs r7, 0x2
	b _080130BC
	.align 2, 0
_080130B0: .4byte gBattleMons
_080130B4: .4byte word_2024DB8
_080130B8:
	movs r3, 0x1
_080130BA:
	movs r7, 0x1
_080130BC:
	ldr r1, _08013100 @ =gBattleMons
	movs r0, 0x58
	mov r2, r9
	muls r2, r0
	adds r0, r2, 0
	adds r4, r0, r1
	ldrh r0, [r4, 0x6]
	muls r3, r0
	ldr r2, _08013104 @ =gStatStageRatios
	movs r1, 0x1B
	ldrsb r1, [r4, r1]
	lsls r1, 1
	adds r0, r1, r2
	ldrb r0, [r0]
	muls r0, r3
	adds r2, 0x1
	adds r1, r2
	ldrb r1, [r1]
	bl __divsi3
	mov r8, r0
	ldrh r0, [r4, 0x2E]
	cmp r0, 0xAF
	bne _0801310C
	ldr r1, _08013108 @ =gEnigmaBerries
	mov r3, r9
	lsls r0, r3, 3
	subs r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r6, [r0, 0x7]
	ldrb r5, [r0, 0x1A]
	b _08013120
	.align 2, 0
_08013100: .4byte gBattleMons
_08013104: .4byte gStatStageRatios
_08013108: .4byte gEnigmaBerries
_0801310C:
	ldrh r0, [r4, 0x2E]
	bl ItemId_GetHoldEffect
	lsls r0, 24
	lsrs r6, r0, 24
	ldrh r0, [r4, 0x2E]
	bl ItemId_GetHoldEffectParam
	lsls r0, 24
	lsrs r5, r0, 24
_08013120:
	ldr r0, _080131DC @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _08013154
	ldr r0, _080131E0 @ =0x00000809
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _08013154
	mov r0, r9
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _08013154
	movs r0, 0x6E
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	movs r1, 0x64
	bl __udivsi3
	mov r8, r0
_08013154:
	cmp r6, 0x18
	bne _0801315E
	mov r2, r8
	lsrs r2, 1
	mov r8, r2
_0801315E:
	ldr r1, _080131E4 @ =gBattleMons
	movs r0, 0x58
	mov r3, r9
	muls r3, r0
	adds r0, r3, 0
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0801317C
	mov r0, r8
	lsrs r0, 2
	mov r8, r0
_0801317C:
	cmp r6, 0x1A
	bne _08013198
	ldr r0, _080131E8 @ =gUnknown_02024D1C
	ldrh r4, [r0]
	lsls r0, r5, 16
	subs r0, r5
	movs r1, 0x64
	bl __divsi3
	cmp r4, r0
	bge _08013198
	movs r1, 0x1
	negs r1, r1
	mov r8, r1
_08013198:
	ldr r1, _080131E4 @ =gBattleMons
	movs r0, 0x58
	mov r2, r10
	muls r2, r0
	adds r0, r2, 0
	adds r4, r0, r1
	ldrh r0, [r4, 0x6]
	adds r3, r0, 0
	muls r3, r7
	ldr r2, _080131EC @ =gStatStageRatios
	movs r1, 0x1B
	ldrsb r1, [r4, r1]
	lsls r1, 1
	adds r0, r1, r2
	ldrb r0, [r0]
	muls r0, r3
	adds r2, 0x1
	adds r1, r2
	ldrb r1, [r1]
	bl __divsi3
	adds r7, r0, 0
	ldrh r0, [r4, 0x2E]
	cmp r0, 0xAF
	bne _080131F4
	ldr r1, _080131F0 @ =gEnigmaBerries
	mov r3, r10
	lsls r0, r3, 3
	subs r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r6, [r0, 0x7]
	ldrb r5, [r0, 0x1A]
	b _08013208
	.align 2, 0
_080131DC: .4byte gUnknown_020239F8
_080131E0: .4byte 0x00000809
_080131E4: .4byte gBattleMons
_080131E8: .4byte gUnknown_02024D1C
_080131EC: .4byte gStatStageRatios
_080131F0: .4byte gEnigmaBerries
_080131F4:
	ldrh r0, [r4, 0x2E]
	bl ItemId_GetHoldEffect
	lsls r0, 24
	lsrs r6, r0, 24
	ldrh r0, [r4, 0x2E]
	bl ItemId_GetHoldEffectParam
	lsls r0, 24
	lsrs r5, r0, 24
_08013208:
	ldr r0, _08013280 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _08013238
	ldr r0, _08013284 @ =0x00000809
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _08013238
	mov r0, r10
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _08013238
	movs r0, 0x6E
	muls r0, r7
	movs r1, 0x64
	bl __udivsi3
	adds r7, r0, 0
_08013238:
	cmp r6, 0x18
	bne _0801323E
	lsrs r7, 1
_0801323E:
	ldr r2, _08013288 @ =gBattleMons
	movs r0, 0x58
	mov r1, r10
	muls r1, r0
	adds r0, r1, 0
	adds r1, r2, 0
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0801325A
	lsrs r7, 2
_0801325A:
	cmp r6, 0x1A
	bne _08013274
	ldr r0, _0801328C @ =gUnknown_02024D1C
	ldrh r4, [r0]
	lsls r0, r5, 16
	subs r0, r5
	movs r1, 0x64
	bl __divsi3
	cmp r4, r0
	bge _08013274
	movs r7, 0x1
	negs r7, r7
_08013274:
	ldr r2, [sp, 0x4]
	cmp r2, 0
	beq _08013290
	movs r3, 0
	b _08013334
	.align 2, 0
_08013280: .4byte gUnknown_020239F8
_08013284: .4byte 0x00000809
_08013288: .4byte gBattleMons
_0801328C: .4byte gUnknown_02024D1C
_08013290:
	ldr r0, _080132B0 @ =gUnknown_02024C18
	mov r3, r9
	adds r1, r3, r0
	ldrb r1, [r1]
	adds r2, r0, 0
	cmp r1, 0
	bne _080132E4
	ldr r0, _080132B4 @ =gUnknown_02024D28
	lsls r1, r3, 4
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 29
	cmp r0, 0
	bge _080132B8
	movs r3, 0xA5
	b _080132E6
	.align 2, 0
_080132B0: .4byte gUnknown_02024C18
_080132B4: .4byte gUnknown_02024D28
_080132B8:
	ldr r1, _080132D8 @ =0x02000000
	ldr r0, _080132DC @ =0x0001608c
	add r0, r9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 1
	movs r1, 0x58
	mov r3, r9
	muls r3, r1
	adds r1, r3, 0
	adds r0, r1
	ldr r1, _080132E0 @ =gBattleMons
	adds r1, 0xC
	adds r0, r1
	ldrh r3, [r0]
	b _080132E6
	.align 2, 0
_080132D8: .4byte 0x02000000
_080132DC: .4byte 0x0001608c
_080132E0: .4byte gBattleMons
_080132E4:
	movs r3, 0
_080132E6:
	mov r1, r10
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0
	bne _08013334
	ldr r0, _08013304 @ =gUnknown_02024D28
	lsls r1, 4
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 29
	cmp r0, 0
	bge _08013308
	movs r2, 0xA5
	b _08013336
	.align 2, 0
_08013304: .4byte gUnknown_02024D28
_08013308:
	ldr r1, _08013328 @ =0x02000000
	ldr r0, _0801332C @ =0x0001608c
	add r0, r10
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 1
	movs r1, 0x58
	mov r2, r10
	muls r2, r1
	adds r1, r2, 0
	adds r0, r1
	ldr r1, _08013330 @ =gBattleMons
	adds r1, 0xC
	adds r0, r1
	ldrh r2, [r0]
	b _08013336
	.align 2, 0
_08013328: .4byte 0x02000000
_0801332C: .4byte 0x0001608c
_08013330: .4byte gBattleMons
_08013334:
	movs r2, 0
_08013336:
	ldr r4, _08013380 @ =gBattleMoves
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 2
	adds r0, r4
	movs r1, 0x7
	ldrsb r1, [r0, r1]
	lsls r3, r2, 1
	cmp r1, 0
	bne _0801335A
	adds r0, r3, r2
	lsls r0, 2
	adds r0, r4
	ldrb r0, [r0, 0x7]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0
	beq _08013398
_0801335A:
	adds r0, r3, r2
	lsls r0, 2
	adds r0, r4
	ldrb r0, [r0, 0x7]
	lsls r0, 24
	asrs r0, 24
	cmp r1, r0
	bne _0801338E
	cmp r8, r7
	bne _08013384
	bl Random
	movs r1, 0x1
	ands r1, r0
	cmp r1, 0
	beq _08013384
	movs r3, 0x2
	b _080133B4
	.align 2, 0
_08013380: .4byte gBattleMoves
_08013384:
	cmp r8, r7
	bcs _080133B6
	movs r0, 0x1
	str r0, [sp, 0x8]
	b _080133B6
_0801338E:
	cmp r1, r0
	bge _080133B6
	movs r1, 0x1
	str r1, [sp, 0x8]
	b _080133B6
_08013398:
	cmp r8, r7
	bne _080133AE
	bl Random
	movs r1, 0x1
	ands r1, r0
	cmp r1, 0
	beq _080133AE
	movs r2, 0x2
	str r2, [sp, 0x8]
	b _080133B6
_080133AE:
	cmp r8, r7
	bcs _080133B6
	movs r3, 0x1
_080133B4:
	str r3, [sp, 0x8]
_080133B6:
	ldr r0, [sp, 0x8]
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end b_first_side

	thumb_func_start sub_80133C8
sub_80133C8: @ 80133C8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	movs r3, 0
	ldr r0, _0801341C @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08013434
	ldr r0, _08013420 @ =gUnknown_02024A60
	strb r3, [r0]
	ldr r4, _08013424 @ =gUnknown_02024A68
	mov r8, r0
	ldrb r0, [r4]
	cmp r3, r0
	bcc _080133F0
	b _08013622
_080133F0:
	ldr r7, _08013428 @ =gUnknown_02024A76
	ldr r6, _0801342C @ =gUnknown_02024C18
	mov r2, r8
	ldr r5, _08013430 @ =gUnknown_02024A7A
_080133F8:
	adds r1, r3, r7
	ldrb r0, [r2]
	adds r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, r3, r5
	ldrb r0, [r2]
	strb r0, [r1]
	adds r3, 0x1
	ldrb r0, [r2]
	adds r0, 0x1
	strb r0, [r2]
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r4]
	cmp r0, r1
	bcc _080133F8
	b _08013622
	.align 2, 0
_0801341C: .4byte gUnknown_020239F8
_08013420: .4byte gUnknown_02024A60
_08013424: .4byte gUnknown_02024A68
_08013428: .4byte gUnknown_02024A76
_0801342C: .4byte gUnknown_02024C18
_08013430: .4byte gUnknown_02024A7A
_08013434:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08013484
	ldr r0, _08013478 @ =gUnknown_02024A60
	strb r3, [r0]
	ldr r1, _0801347C @ =gUnknown_02024A68
	mov r8, r0
	adds r2, r1, 0
	ldrb r2, [r2]
	cmp r3, r2
	bcs _08013494
	ldr r0, _08013480 @ =gUnknown_02024C18
	ldrb r1, [r0]
	adds r4, r0, 0
	cmp r1, 0x3
	beq _08013492
_08013456:
	mov r7, r8
	ldrb r0, [r7]
	adds r0, 0x1
	strb r0, [r7]
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _0801347C @ =gUnknown_02024A68
	ldrb r1, [r1]
	cmp r0, r1
	bcs _08013494
	ldrb r0, [r7]
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0x3
	bne _08013456
	b _08013492
	.align 2, 0
_08013478: .4byte gUnknown_02024A60
_0801347C: .4byte gUnknown_02024A68
_08013480: .4byte gUnknown_02024C18
_08013484:
	ldr r0, _080134FC @ =gUnknown_02024C18
	ldrb r0, [r0]
	ldr r2, _08013500 @ =gUnknown_02024A60
	mov r8, r2
	cmp r0, 0x3
	bne _08013494
	strb r3, [r2]
_08013492:
	movs r3, 0x5
_08013494:
	cmp r3, 0x5
	bne _08013520
	ldr r6, _08013504 @ =gUnknown_02024A76
	ldr r1, _080134FC @ =gUnknown_02024C18
	mov r3, r8
	ldrb r0, [r3]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r6]
	ldr r2, _08013508 @ =gUnknown_02024A7A
	ldrb r0, [r3]
	strb r0, [r2]
	movs r3, 0x1
	movs r5, 0
	adds r4, r1, 0
	ldr r7, _0801350C @ =gUnknown_030042D4
	mov r9, r7
	ldr r0, _08013510 @ =bc_80154A0
	mov r12, r0
	ldr r1, _08013514 @ =0x02000000
	mov r10, r1
	ldr r7, _08013518 @ =gUnknown_02024A68
	ldrb r7, [r7]
	cmp r5, r7
	bge _080134EC
	adds r7, r6, 0
	adds r6, r4, 0
	adds r4, r2, 0
	ldr r2, _08013518 @ =gUnknown_02024A68
_080134CE:
	mov r0, r8
	ldrb r0, [r0]
	cmp r5, r0
	beq _080134E4
	adds r1, r3, r7
	adds r0, r5, r6
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r3, r4
	strb r5, [r0]
	adds r3, 0x1
_080134E4:
	adds r5, 0x1
	ldrb r1, [r2]
	cmp r5, r1
	blt _080134CE
_080134EC:
	mov r2, r12
	mov r3, r9
	str r2, [r3]
	ldr r1, _0801351C @ =0x0001601d
	add r1, r10
	movs r0, 0
	strb r0, [r1]
	b _08013632
	.align 2, 0
_080134FC: .4byte gUnknown_02024C18
_08013500: .4byte gUnknown_02024A60
_08013504: .4byte gUnknown_02024A76
_08013508: .4byte gUnknown_02024A7A
_0801350C: .4byte gUnknown_030042D4
_08013510: .4byte bc_80154A0
_08013514: .4byte 0x02000000
_08013518: .4byte gUnknown_02024A68
_0801351C: .4byte 0x0001601d
_08013520:
	movs r0, 0
	mov r7, r8
	strb r0, [r7]
	ldr r1, _080135B0 @ =gUnknown_02024A68
	ldrb r0, [r1]
	cmp r0, 0
	beq _08013566
	ldr r6, _080135B4 @ =gUnknown_02024C18
	mov r2, r8
	ldr r5, _080135B8 @ =gUnknown_02024A76
	ldr r4, _080135BC @ =gUnknown_02024A7A
_08013536:
	ldrb r0, [r2]
	adds r0, r6
	ldrb r1, [r0]
	subs r0, r1, 0x1
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bhi _08013554
	adds r0, r3, r5
	strb r1, [r0]
	adds r1, r3, r4
	mov r7, r8
	ldrb r0, [r7]
	strb r0, [r1]
	adds r3, 0x1
_08013554:
	ldrb r0, [r2]
	adds r0, 0x1
	strb r0, [r2]
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _080135B0 @ =gUnknown_02024A68
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08013536
_08013566:
	movs r0, 0
	mov r2, r8
	strb r0, [r2]
	ldr r7, _080135B0 @ =gUnknown_02024A68
	ldrb r0, [r7]
	cmp r0, 0
	beq _080135AA
	ldr r6, _080135B4 @ =gUnknown_02024C18
	ldr r5, _080135B8 @ =gUnknown_02024A76
	ldr r4, _080135BC @ =gUnknown_02024A7A
_0801357A:
	ldrb r0, [r2]
	adds r0, r6
	ldrb r1, [r0]
	subs r0, r1, 0x1
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bls _08013598
	adds r0, r3, r5
	strb r1, [r0]
	adds r1, r3, r4
	mov r7, r8
	ldrb r0, [r7]
	strb r0, [r1]
	adds r3, 0x1
_08013598:
	ldrb r0, [r2]
	adds r0, 0x1
	strb r0, [r2]
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _080135B0 @ =gUnknown_02024A68
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0801357A
_080135AA:
	movs r5, 0
	b _08013618
	.align 2, 0
_080135B0: .4byte gUnknown_02024A68
_080135B4: .4byte gUnknown_02024C18
_080135B8: .4byte gUnknown_02024A76
_080135BC: .4byte gUnknown_02024A7A
_080135C0:
	adds r4, r5, 0x1
	adds r7, r4, 0
	ldrb r1, [r1]
	cmp r7, r1
	bge _08013616
	ldr r6, _08013640 @ =gUnknown_02024A76
	lsls r2, r5, 24
	mov r8, r2
_080135D0:
	ldr r0, _08013644 @ =gUnknown_02024A7A
	adds r1, r5, r0
	ldrb r3, [r1]
	adds r0, r4, r0
	ldrb r1, [r0]
	adds r0, r5, r6
	ldrb r2, [r0]
	cmp r2, 0x1
	beq _0801360C
	adds r0, r4, r6
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0801360C
	cmp r2, 0x2
	beq _0801360C
	cmp r0, 0x2
	beq _0801360C
	adds r0, r3, 0
	movs r2, 0
	bl b_first_side
	lsls r0, 24
	cmp r0, 0
	beq _0801360C
	lsls r1, r4, 24
	lsrs r1, 24
	mov r3, r8
	lsrs r0, r3, 24
	bl sub_8012FBC
_0801360C:
	adds r4, 0x1
	ldr r0, _08013648 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r4, r0
	blt _080135D0
_08013616:
	adds r5, r7, 0
_08013618:
	ldr r1, _08013648 @ =gUnknown_02024A68
	ldrb r0, [r1]
	subs r0, 0x1
	cmp r5, r0
	blt _080135C0
_08013622:
	ldr r1, _0801364C @ =gUnknown_030042D4
	ldr r0, _08013650 @ =bc_80154A0
	str r0, [r1]
	ldr r0, _08013654 @ =0x02000000
	ldr r7, _08013658 @ =0x0001601d
	adds r0, r7
	movs r1, 0
	strb r1, [r0]
_08013632:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013640: .4byte gUnknown_02024A76
_08013644: .4byte gUnknown_02024A7A
_08013648: .4byte gUnknown_02024A68
_0801364C: .4byte gUnknown_030042D4
_08013650: .4byte bc_80154A0
_08013654: .4byte 0x02000000
_08013658: .4byte 0x0001601d
	thumb_func_end sub_80133C8

	thumb_func_start sub_801365C
sub_801365C: @ 801365C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	ldr r1, _080136B4 @ =gUnknown_02024A60
	movs r0, 0
	strb r0, [r1]
	ldr r0, _080136B8 @ =gUnknown_02024A68
	ldrb r2, [r0]
	adds r5, r1, 0
	cmp r2, 0
	beq _08013754
	ldr r7, _080136BC @ =gUnknown_02024D28
	adds r6, r5, 0
	ldr r0, _080136C0 @ =gUnknown_02024AD0
	mov r12, r0
	ldr r1, _080136C4 @ =gUnknown_02024CA8
	mov r8, r1
	mov r10, r8
_0801368A:
	mov r2, r9
	cmp r2, 0
	beq _080136C8
	ldrb r1, [r6]
	lsls r1, 4
	adds r1, r7
	ldrb r2, [r1]
	movs r0, 0x2
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldrb r1, [r6]
	lsls r1, 4
	adds r1, r7
	ldrb r2, [r1]
	movs r0, 0x3
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	b _08013724
	.align 2, 0
_080136B4: .4byte gUnknown_02024A60
_080136B8: .4byte gUnknown_02024A68
_080136BC: .4byte gUnknown_02024D28
_080136C0: .4byte gUnknown_02024AD0
_080136C4: .4byte gUnknown_02024CA8
_080136C8:
	ldrb r0, [r6]
	lsls r0, 4
	adds r2, r0, r7
	movs r1, 0
	mov r4, r10
	movs r3, 0
_080136D4:
	adds r0, r2, r1
	strb r3, [r0]
	adds r1, 0x1
	cmp r1, 0xF
	bls _080136D4
	ldrb r1, [r5]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r1, r0, r4
	ldrb r0, [r1, 0x16]
	cmp r0, 0
	beq _080136F2
	subs r0, 0x1
	strb r0, [r1, 0x16]
_080136F2:
	ldrb r1, [r5]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r1, r0, r4
	ldrb r0, [r1, 0x19]
	cmp r0, 0
	beq _08013724
	subs r0, 0x1
	strb r0, [r1, 0x19]
	ldrb r2, [r5]
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r4
	ldrb r0, [r0, 0x19]
	cmp r0, 0
	bne _08013724
	movs r0, 0x58
	muls r2, r0
	add r2, r12
	ldr r0, [r2]
	ldr r1, _0801376C @ =0xffbfffff
	ands r0, r1
	str r0, [r2]
_08013724:
	ldrb r2, [r5]
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	add r0, r8
	ldrb r0, [r0, 0xA]
	cmp r0, 0
	bne _08013742
	movs r0, 0x58
	muls r2, r0
	add r2, r12
	ldr r0, [r2]
	ldr r1, _08013770 @ =0xfeffffff
	ands r0, r1
	str r0, [r2]
_08013742:
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _08013774 @ =gUnknown_02024A68
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0801368A
_08013754:
	movs r0, 0
	ldr r2, _08013778 @ =gUnknown_02024C80
	strb r0, [r2, 0x8]
	strb r0, [r2, 0x14]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801376C: .4byte 0xffbfffff
_08013770: .4byte 0xfeffffff
_08013774: .4byte gUnknown_02024A68
_08013778: .4byte gUnknown_02024C80
	thumb_func_end sub_801365C

	thumb_func_start sub_801377C
sub_801377C: @ 801377C
	push {r4-r6,lr}
	ldr r2, _080137C0 @ =gUnknown_02024A60
	movs r0, 0
	strb r0, [r2]
	ldr r0, _080137C4 @ =gUnknown_02024A68
	ldrb r1, [r0]
	adds r6, r0, 0
	cmp r1, 0
	beq _080137BA
	adds r3, r2, 0
	movs r4, 0
	ldr r5, _080137C8 @ =gUnknown_02024D68
_08013794:
	ldrb r1, [r3]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r2, r0, r5
	movs r1, 0
_080137A0:
	adds r0, r2, r1
	strb r4, [r0]
	adds r1, 0x1
	cmp r1, 0x13
	bls _080137A0
	ldrb r0, [r3]
	adds r0, 0x1
	strb r0, [r3]
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r6]
	cmp r0, r1
	bcc _08013794
_080137BA:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080137C0: .4byte gUnknown_02024A60
_080137C4: .4byte gUnknown_02024A68
_080137C8: .4byte gUnknown_02024D68
	thumb_func_end sub_801377C

	thumb_func_start bc_80154A0
bc_80154A0: @ 80137CC
	push {r4-r7,lr}
	ldr r0, _08013850 @ =gUnknown_02024C6C
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 8
	ands r0, r1
	cmp r0, 0
	bne _08013884
	ldr r0, _08013854 @ =0x02000000
	ldr r1, _08013858 @ =0x0001601d
	adds r2, r0, r1
	ldr r0, _0801385C @ =gUnknown_02024A68
	ldrb r1, [r2]
	adds r7, r0, 0
	ldrb r0, [r7]
	cmp r1, r0
	bcs _08013884
	ldr r6, _08013860 @ =gUnknown_02024A60
	ldr r5, _08013864 @ =gUnknown_02024C07
	adds r4, r2, 0
	movs r1, 0x84
	lsls r1, 1
	mov r12, r1
_080137FA:
	ldrb r0, [r4]
	strb r0, [r5]
	strb r0, [r6]
	adds r0, 0x1
	strb r0, [r4]
	ldr r1, _08013868 @ =gUnknown_02024C60
	ldrb r3, [r6]
	lsls r0, r3, 1
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, r12
	bne _0801387C
	ldr r1, _0801386C @ =gBattleMons
	movs r0, 0x58
	muls r0, r3
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x7
	ands r0, r1
	cmp r0, 0
	bne _0801387C
	ldr r2, _08013870 @ =gUnknown_02024CA8
	ldrb r1, [r5]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x18]
	lsls r0, 31
	cmp r0, 0
	bne _0801387C
	ldr r0, _08013874 @ =gUnknown_02024D28
	lsls r1, r3, 4
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 29
	cmp r0, 0
	blt _0801387C
	ldr r0, _08013878 @ =gUnknown_081D94DA
	bl b_call_bc_move_exec
	b _080138BE
	.align 2, 0
_08013850: .4byte gUnknown_02024C6C
_08013854: .4byte 0x02000000
_08013858: .4byte 0x0001601d
_0801385C: .4byte gUnknown_02024A68
_08013860: .4byte gUnknown_02024A60
_08013864: .4byte gUnknown_02024C07
_08013868: .4byte gUnknown_02024C60
_0801386C: .4byte gBattleMons
_08013870: .4byte gUnknown_02024CA8
_08013874: .4byte gUnknown_02024D28
_08013878: .4byte gUnknown_081D94DA
_0801387C:
	ldrb r0, [r4]
	ldrb r2, [r7]
	cmp r0, r2
	bcc _080137FA
_08013884:
	bl b_clear_atk_up_if_hit_flag_unless_enraged
	ldr r1, _080138C4 @ =gUnknown_02024A7E
	movs r0, 0
	strb r0, [r1]
	ldr r1, _080138C8 @ =gUnknown_02024A7F
	ldr r0, _080138CC @ =gUnknown_02024A76
	movs r2, 0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080138D0 @ =gUnknown_02024DEC
	movs r3, 0
	strh r2, [r0]
	ldr r1, _080138D4 @ =0x02000000
	ldr r2, _080138D8 @ =0x0001601c
	adds r0, r1, r2
	strb r3, [r0]
	ldr r2, _080138DC @ =gUnknown_030042D4
	ldr r0, _080138E0 @ =sub_80138F0
	str r0, [r2]
	ldr r0, _080138E4 @ =gUnknown_02024D1E
	strb r3, [r0, 0x3]
	strb r3, [r0, 0x4]
	ldr r2, _080138E8 @ =0x00016112
	adds r0, r1, r2
	strb r3, [r0]
	ldr r0, _080138EC @ =0x00017130
	adds r1, r0
	strb r3, [r1]
_080138BE:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080138C4: .4byte gUnknown_02024A7E
_080138C8: .4byte gUnknown_02024A7F
_080138CC: .4byte gUnknown_02024A76
_080138D0: .4byte gUnknown_02024DEC
_080138D4: .4byte 0x02000000
_080138D8: .4byte 0x0001601c
_080138DC: .4byte gUnknown_030042D4
_080138E0: .4byte sub_80138F0
_080138E4: .4byte gUnknown_02024D1E
_080138E8: .4byte 0x00016112
_080138EC: .4byte 0x00017130
	thumb_func_end bc_80154A0

	thumb_func_start sub_80138F0
sub_80138F0: @ 80138F0
	push {r4-r6,lr}
	ldr r6, _08013944 @ =gUnknown_02024D26
	ldrb r0, [r6]
	ldr r2, _08013948 @ =gUnknown_02024A7F
	cmp r0, 0
	beq _08013900
	movs r0, 0xC
	strb r0, [r2]
_08013900:
	ldr r1, _0801394C @ =0x02000000
	ldr r4, _08013950 @ =gUnknown_02024A7E
	ldrb r0, [r4]
	ldr r3, _08013954 @ =0x00016057
	adds r5, r1, r3
	strb r0, [r5]
	ldr r1, _08013958 @ =gUnknown_081FA640
	ldrb r0, [r2]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldr r0, _0801395C @ =gUnknown_02024A68
	ldrb r1, [r4]
	ldrb r0, [r0]
	cmp r1, r0
	bcc _08013970
	ldr r2, _08013960 @ =gUnknown_02024C6C
	ldr r0, [r2]
	ldr r1, _08013964 @ =0xffefffff
	ands r0, r1
	str r0, [r2]
	ldr r3, _08013968 @ =gUnknown_030042D4
	ldr r2, _0801396C @ =gUnknown_081FA678
	ldrb r1, [r6]
	movs r0, 0x7F
	ands r0, r1
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	str r0, [r3]
	b _08013984
	.align 2, 0
_08013944: .4byte gUnknown_02024D26
_08013948: .4byte gUnknown_02024A7F
_0801394C: .4byte 0x02000000
_08013950: .4byte gUnknown_02024A7E
_08013954: .4byte 0x00016057
_08013958: .4byte gUnknown_081FA640
_0801395C: .4byte gUnknown_02024A68
_08013960: .4byte gUnknown_02024C6C
_08013964: .4byte 0xffefffff
_08013968: .4byte gUnknown_030042D4
_0801396C: .4byte gUnknown_081FA678
_08013970:
	ldrb r0, [r5]
	cmp r0, r1
	beq _08013984
	ldr r2, _0801398C @ =gUnknown_02024C6C
	ldr r0, [r2]
	ldr r1, _08013990 @ =0xfffffdff
	ands r0, r1
	ldr r1, _08013994 @ =0xfff7ffff
	ands r0, r1
	str r0, [r2]
_08013984:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801398C: .4byte gUnknown_02024C6C
_08013990: .4byte 0xfffffdff
_08013994: .4byte 0xfff7ffff
	thumb_func_end sub_80138F0

	thumb_func_start sub_8013998
sub_8013998: @ 8013998
	push {r4,lr}
	ldr r1, _080139D0 @ =gUnknown_02024A7F
	movs r0, 0
	strb r0, [r1]
	ldr r0, _080139D4 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _080139EC
	ldr r1, _080139D8 @ =gUnknown_030041C0
	ldr r4, _080139DC @ =gUnknown_02024D26
	ldrb r0, [r4]
	strb r0, [r1]
	movs r0, 0
	bl battle_get_side_with_given_state
	ldr r1, _080139E0 @ =gUnknown_02024C07
	strb r0, [r1]
	ldr r1, _080139E4 @ =gUnknown_02024C10
	ldr r0, _080139E8 @ =gUnknown_081D8E02
	str r0, [r1]
	ldrb r1, [r4]
	movs r0, 0x7F
	ands r0, r1
	strb r0, [r4]
	b _08013B48
	.align 2, 0
_080139D0: .4byte gUnknown_02024A7F
_080139D4: .4byte gUnknown_020239F8
_080139D8: .4byte gUnknown_030041C0
_080139DC: .4byte gUnknown_02024D26
_080139E0: .4byte gUnknown_02024C07
_080139E4: .4byte gUnknown_02024C10
_080139E8: .4byte gUnknown_081D8E02
_080139EC:
	movs r0, 0x90
	lsls r0, 4
	ands r0, r1
	cmp r0, 0
	beq _08013A04
	ldr r1, _080139FC @ =gUnknown_02024C10
	ldr r0, _08013A00 @ =gUnknown_081D8E0D
	b _08013B46
	.align 2, 0
_080139FC: .4byte gUnknown_02024C10
_08013A00: .4byte gUnknown_081D8E0D
_08013A04:
	movs r0, 0xA
	ands r0, r1
	cmp r0, 0x8
	beq _08013A0E
	b _08013B42
_08013A0E:
	bl sub_80325B8
	ldr r1, _08013A3C @ =gUnknown_02024C10
	ldr r0, _08013A40 @ =gUnknown_081D8DBE
	str r0, [r1]
	ldr r2, _08013A44 @ =gTrainers
	ldr r0, _08013A48 @ =gTrainerBattleOpponent
	ldrh r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldrb r0, [r0, 0x1]
	subs r0, 0x2
	cmp r0, 0x31
	bls _08013A30
	b _08013B38
_08013A30:
	lsls r0, 2
	ldr r1, _08013A4C @ =_08013A50
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08013A3C: .4byte gUnknown_02024C10
_08013A40: .4byte gUnknown_081D8DBE
_08013A44: .4byte gTrainers
_08013A48: .4byte gTrainerBattleOpponent
_08013A4C: .4byte _08013A50
	.align 2, 0
_08013A50:
	.4byte _08013B24
	.4byte _08013B24
	.4byte _08013B24
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B18
	.4byte _08013B2E
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B18
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B38
	.4byte _08013B24
	.4byte _08013B24
	.4byte _08013B24
_08013B18:
	ldr r0, _08013B20 @ =0x00000163
	bl PlayBGM
	b _08013B48
	.align 2, 0
_08013B20: .4byte 0x00000163
_08013B24:
	movs r0, 0xD4
	lsls r0, 1
	bl PlayBGM
	b _08013B48
_08013B2E:
	movs r0, 0xB1
	lsls r0, 1
	bl PlayBGM
	b _08013B48
_08013B38:
	movs r0, 0xCE
	lsls r0, 1
	bl PlayBGM
	b _08013B48
_08013B42:
	ldr r1, _08013B54 @ =gUnknown_02024C10
	ldr r0, _08013B58 @ =gUnknown_081D8DCE
_08013B46:
	str r0, [r1]
_08013B48:
	ldr r1, _08013B5C @ =gUnknown_030042D4
	ldr r0, _08013B60 @ =sub_8013C9C
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013B54: .4byte gUnknown_02024C10
_08013B58: .4byte gUnknown_081D8DCE
_08013B5C: .4byte gUnknown_030042D4
_08013B60: .4byte sub_8013C9C
	thumb_func_end sub_8013998

	thumb_func_start sub_8013B64
sub_8013B64: @ 8013B64
	push {r4,lr}
	ldr r1, _08013B9C @ =gUnknown_02024A7F
	movs r0, 0
	strb r0, [r1]
	ldr r0, _08013BA0 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08013BB8
	ldr r1, _08013BA4 @ =gUnknown_030041C0
	ldr r4, _08013BA8 @ =gUnknown_02024D26
	ldrb r0, [r4]
	strb r0, [r1]
	movs r0, 0
	bl battle_get_side_with_given_state
	ldr r1, _08013BAC @ =gUnknown_02024C07
	strb r0, [r1]
	ldr r1, _08013BB0 @ =gUnknown_02024C10
	ldr r0, _08013BB4 @ =gUnknown_081D8E02
	str r0, [r1]
	ldrb r1, [r4]
	movs r0, 0x7F
	ands r0, r1
	strb r0, [r4]
	b _08013BBE
	.align 2, 0
_08013B9C: .4byte gUnknown_02024A7F
_08013BA0: .4byte gUnknown_020239F8
_08013BA4: .4byte gUnknown_030041C0
_08013BA8: .4byte gUnknown_02024D26
_08013BAC: .4byte gUnknown_02024C07
_08013BB0: .4byte gUnknown_02024C10
_08013BB4: .4byte gUnknown_081D8E02
_08013BB8:
	ldr r1, _08013BCC @ =gUnknown_02024C10
	ldr r0, _08013BD0 @ =gUnknown_081D8DD1
	str r0, [r1]
_08013BBE:
	ldr r1, _08013BD4 @ =gUnknown_030042D4
	ldr r0, _08013BD8 @ =sub_8013C9C
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013BCC: .4byte gUnknown_02024C10
_08013BD0: .4byte gUnknown_081D8DD1
_08013BD4: .4byte gUnknown_030042D4
_08013BD8: .4byte sub_8013C9C
	thumb_func_end sub_8013B64

	thumb_func_start sub_8013BDC
sub_8013BDC: @ 8013BDC
	push {lr}
	ldr r1, _08013C04 @ =gUnknown_02024A7F
	movs r0, 0
	strb r0, [r1]
	ldr r1, _08013C08 @ =gUnknown_02024D28
	ldr r0, _08013C0C @ =gUnknown_02024C07
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0, 0x1]
	lsls r0, 27
	lsrs r0, 30
	cmp r0, 0x1
	beq _08013C18
	cmp r0, 0x2
	beq _08013C28
	ldr r1, _08013C10 @ =gUnknown_02024C10
	ldr r0, _08013C14 @ =gUnknown_081D8E29
	b _08013C2C
	.align 2, 0
_08013C04: .4byte gUnknown_02024A7F
_08013C08: .4byte gUnknown_02024D28
_08013C0C: .4byte gUnknown_02024C07
_08013C10: .4byte gUnknown_02024C10
_08013C14: .4byte gUnknown_081D8E29
_08013C18:
	ldr r1, _08013C20 @ =gUnknown_02024C10
	ldr r0, _08013C24 @ =gUnknown_081D8E14
	b _08013C2C
	.align 2, 0
_08013C20: .4byte gUnknown_02024C10
_08013C24: .4byte gUnknown_081D8E14
_08013C28:
	ldr r1, _08013C38 @ =gUnknown_02024C10
	ldr r0, _08013C3C @ =gUnknown_081D8E22
_08013C2C:
	str r0, [r1]
	ldr r1, _08013C40 @ =gUnknown_030042D4
	ldr r0, _08013C44 @ =sub_8013C9C
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08013C38: .4byte gUnknown_02024C10
_08013C3C: .4byte gUnknown_081D8E22
_08013C40: .4byte gUnknown_030042D4
_08013C44: .4byte sub_8013C9C
	thumb_func_end sub_8013BDC

	thumb_func_start sub_8013C48
sub_8013C48: @ 8013C48
	ldr r1, _08013C7C @ =gUnknown_02024A7F
	movs r0, 0
	strb r0, [r1]
	ldr r1, _08013C80 @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x7
	strb r0, [r1, 0x1]
	ldr r2, _08013C84 @ =gUnknown_02024C07
	ldrb r0, [r2]
	strb r0, [r1, 0x2]
	ldr r3, _08013C88 @ =gUnknown_02024A6A
	ldrb r0, [r2]
	lsls r0, 1
	adds r0, r3
	ldrh r0, [r0]
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r1, _08013C8C @ =gUnknown_02024C10
	ldr r0, _08013C90 @ =gUnknown_081D8E30
	str r0, [r1]
	ldr r1, _08013C94 @ =gUnknown_030042D4
	ldr r0, _08013C98 @ =sub_8013C9C
	str r0, [r1]
	bx lr
	.align 2, 0
_08013C7C: .4byte gUnknown_02024A7F
_08013C80: .4byte gUnknown_030041C0
_08013C84: .4byte gUnknown_02024C07
_08013C88: .4byte gUnknown_02024A6A
_08013C8C: .4byte gUnknown_02024C10
_08013C90: .4byte gUnknown_081D8E30
_08013C94: .4byte gUnknown_030042D4
_08013C98: .4byte sub_8013C9C
	thumb_func_end sub_8013C48

	thumb_func_start sub_8013C9C
sub_8013C9C: @ 8013C9C
	push {r4-r7,lr}
	ldr r0, _08013D00 @ =gUnknown_02024A7F
	ldrb r0, [r0]
	subs r0, 0xB
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bhi _08013D7C
	ldr r0, _08013D04 @ =gUnknown_020239F8
	ldrh r0, [r0]
	ldr r1, _08013D08 @ =0x00000b92
	ands r1, r0
	cmp r1, 0
	bne _08013D4C
	ldr r2, _08013D0C @ =gUnknown_02024A60
	strb r1, [r2]
	ldr r0, _08013D10 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r1, r0
	bcs _08013D48
	adds r4, r2, 0
	ldr r6, _08013D14 @ =gBattleMons
	movs r5, 0x58
	adds r7, r6, 0
	adds r7, 0x30
_08013CCE:
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _08013D36
	ldr r2, _08013D18 @ =gUnknown_030042E0
	ldrh r0, [r2, 0x6]
	cmp r0, 0
	bne _08013D1C
	ldrb r0, [r4]
	muls r0, r5
	adds r0, r6
	ldrh r0, [r0]
	strh r0, [r2, 0x6]
	ldrb r0, [r4]
	adds r1, r0, 0
	muls r1, r5
	adds r1, r7
	adds r0, r2, 0
	adds r0, 0x8
	bl StringCopy
	b _08013D36
	.align 2, 0
_08013D00: .4byte gUnknown_02024A7F
_08013D04: .4byte gUnknown_020239F8
_08013D08: .4byte 0x00000b92
_08013D0C: .4byte gUnknown_02024A60
_08013D10: .4byte gUnknown_02024A68
_08013D14: .4byte gBattleMons
_08013D18: .4byte gUnknown_030042E0
_08013D1C:
	ldrb r0, [r4]
	muls r0, r5
	adds r0, r6
	ldrh r0, [r0]
	strh r0, [r2, 0x26]
	ldrb r0, [r4]
	adds r1, r0, 0
	muls r1, r5
	adds r1, r7
	adds r0, r2, 0
	adds r0, 0x14
	bl StringCopy
_08013D36:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	ldr r1, _08013D68 @ =gUnknown_02024A68
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08013CCE
_08013D48:
	bl sub_80BDEC8
_08013D4C:
	movs r0, 0x3
	bl BeginFastPaletteFade
	movs r0, 0x5
	bl FadeOutMapMusic
	ldr r1, _08013D6C @ =gUnknown_030042D4
	ldr r0, _08013D70 @ =sub_8013DA8
	str r0, [r1]
	ldr r1, _08013D74 @ =gUnknown_03005E94
	ldr r0, _08013D78 @ =sub_800F808
	str r0, [r1]
	b _08013D96
	.align 2, 0
_08013D68: .4byte gUnknown_02024A68
_08013D6C: .4byte gUnknown_030042D4
_08013D70: .4byte sub_8013DA8
_08013D74: .4byte gUnknown_03005E94
_08013D78: .4byte sub_800F808
_08013D7C:
	ldr r0, _08013D9C @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _08013D96
	ldr r1, _08013DA0 @ =gUnknown_081FA73C
	ldr r0, _08013DA4 @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
_08013D96:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013D9C: .4byte gUnknown_02024A64
_08013DA0: .4byte gUnknown_081FA73C
_08013DA4: .4byte gUnknown_02024C10
	thumb_func_end sub_8013C9C

	thumb_func_start sub_8013DA8
sub_8013DA8: @ 8013DA8
	push {lr}
	ldr r0, _08013DD0 @ =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08013DEA
	bl ResetSpriteData
	ldr r0, _08013DD4 @ =gUnknown_03004324
	ldrb r0, [r0]
	cmp r0, 0
	beq _08013DCA
	ldr r0, _08013DD8 @ =gUnknown_02024D26
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _08013DE4
_08013DCA:
	ldr r1, _08013DDC @ =gUnknown_030042D4
	ldr r0, _08013DE0 @ =c4_overworld
	b _08013DE8
	.align 2, 0
_08013DD0: .4byte gPaletteFade
_08013DD4: .4byte gUnknown_03004324
_08013DD8: .4byte gUnknown_02024D26
_08013DDC: .4byte gUnknown_030042D4
_08013DE0: .4byte c4_overworld
_08013DE4:
	ldr r1, _08013DF0 @ =gUnknown_030042D4
	ldr r0, _08013DF4 @ =bc_evolution_cutscene
_08013DE8:
	str r0, [r1]
_08013DEA:
	pop {r0}
	bx r0
	.align 2, 0
_08013DF0: .4byte gUnknown_030042D4
_08013DF4: .4byte bc_evolution_cutscene
	thumb_func_end sub_8013DA8

	thumb_func_start bc_evolution_cutscene
bc_evolution_cutscene: @ 8013DF8
	push {r4,r5,lr}
	ldr r0, _08013E4C @ =gUnknown_03004324
	ldrb r1, [r0]
	adds r3, r0, 0
	cmp r1, 0
	beq _08013E6E
_08013E04:
	movs r5, 0
_08013E06:
	ldrb r2, [r3]
	ldr r0, _08013E50 @ =gBitTable
	lsls r1, r5, 2
	adds r1, r0
	ldr r1, [r1]
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	beq _08013E60
	bics r2, r1
	strb r2, [r3]
	movs r0, 0x64
	adds r1, r5, 0
	muls r1, r0
	ldr r0, _08013E54 @ =gPlayerParty
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0
	bl GetEvolutionTargetSpecies
	lsls r0, 16
	lsrs r2, r0, 16
	cmp r2, 0
	beq _08013E60
	ldr r0, _08013E58 @ =gUnknown_030042D4
	ldr r1, _08013E5C @ =sub_8013E88
	str r1, [r0]
	lsls r3, r5, 24
	lsrs r3, 24
	adds r0, r4, 0
	adds r1, r2, 0
	movs r2, 0x81
	bl EvolutionScene
	b _08013E74
	.align 2, 0
_08013E4C: .4byte gUnknown_03004324
_08013E50: .4byte gBitTable
_08013E54: .4byte gPlayerParty
_08013E58: .4byte gUnknown_030042D4
_08013E5C: .4byte sub_8013E88
_08013E60:
	adds r5, 0x1
	ldr r3, _08013E7C @ =gUnknown_03004324
	cmp r5, 0x5
	ble _08013E06
	ldrb r0, [r3]
	cmp r0, 0
	bne _08013E04
_08013E6E:
	ldr r1, _08013E80 @ =gUnknown_030042D4
	ldr r0, _08013E84 @ =c4_overworld
	str r0, [r1]
_08013E74:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013E7C: .4byte gUnknown_03004324
_08013E80: .4byte gUnknown_030042D4
_08013E84: .4byte c4_overworld
	thumb_func_end bc_evolution_cutscene

	thumb_func_start sub_8013E88
sub_8013E88: @ 8013E88
	push {lr}
	ldr r0, _08013EA0 @ =gMain
	ldr r1, [r0, 0x4]
	ldr r0, _08013EA4 @ =sub_800F808
	cmp r1, r0
	bne _08013E9A
	ldr r1, _08013EA8 @ =gUnknown_030042D4
	ldr r0, _08013EAC @ =bc_evolution_cutscene
	str r0, [r1]
_08013E9A:
	pop {r0}
	bx r0
	.align 2, 0
_08013EA0: .4byte gMain
_08013EA4: .4byte sub_800F808
_08013EA8: .4byte gUnknown_030042D4
_08013EAC: .4byte bc_evolution_cutscene
	thumb_func_end sub_8013E88

	thumb_func_start c4_overworld
c4_overworld: @ 8013EB0
	push {r4-r6,lr}
	ldr r5, _08013F30 @ =gUnknown_020239F8
	ldrh r1, [r5]
	movs r6, 0x2
	adds r0, r6, 0
	ands r0, r1
	cmp r0, 0
	bne _08013ECE
	ldr r4, _08013F34 @ =gPlayerParty
	adds r0, r4, 0
	bl RandomlyGivePartyPokerus
	adds r0, r4, 0
	bl PartySpreadPokerus
_08013ECE:
	ldrh r4, [r5]
	adds r0, r6, 0
	ands r0, r4
	cmp r0, 0
	beq _08013EE0
	ldr r0, _08013F38 @ =gReceivedRemoteLinkPlayers
	ldrb r0, [r0]
	cmp r0, 0
	bne _08013F2A
_08013EE0:
	ldr r1, _08013F3C @ =gScriptResult
	ldr r5, _08013F40 @ =gUnknown_02024D26
	ldrb r0, [r5]
	strh r0, [r1]
	ldr r3, _08013F44 @ =gMain
	ldr r0, _08013F48 @ =0x0000043d
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, 0x3
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08013F4C @ =gUnknown_030042D0
	ldr r0, [r0]
	str r0, [r3]
	movs r0, 0x80
	lsls r0, 3
	ands r0, r4
	cmp r0, 0
	beq _08013F1C
	ldr r0, _08013F50 @ =gEnemyParty
	bl sub_8134504
	ldrb r0, [r5]
	cmp r0, 0x1
	beq _08013F18
	cmp r0, 0x7
	bne _08013F1C
_08013F18:
	bl sub_813452C
_08013F1C:
	movs r0, 0x5A
	bl m4aSongNumStop
	ldr r0, _08013F44 @ =gMain
	ldr r0, [r0, 0x8]
	bl SetMainCallback2
_08013F2A:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08013F30: .4byte gUnknown_020239F8
_08013F34: .4byte gPlayerParty
_08013F38: .4byte gReceivedRemoteLinkPlayers
_08013F3C: .4byte gScriptResult
_08013F40: .4byte gUnknown_02024D26
_08013F44: .4byte gMain
_08013F48: .4byte 0x0000043d
_08013F4C: .4byte gUnknown_030042D0
_08013F50: .4byte gEnemyParty
	thumb_func_end c4_overworld

	thumb_func_start sub_8013F54
sub_8013F54: @ 8013F54
	push {lr}
	ldr r0, _08013F84 @ =gUnknown_02024A7F
	ldrb r0, [r0]
	subs r0, 0xB
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bhi _08013F90
	ldr r2, _08013F88 @ =0x02017140
	adds r1, r2, 0
	adds r1, 0x20
	ldrb r0, [r1]
	cmp r0, 0
	beq _08013F74
	subs r0, 0x1
	strb r0, [r1]
_08013F74:
	ldr r0, _08013F8C @ =gUnknown_030042D4
	ldrb r1, [r1]
	lsls r1, 2
	adds r1, r2
	ldr r1, [r1]
	str r1, [r0]
	b _08013FAA
	.align 2, 0
_08013F84: .4byte gUnknown_02024A7F
_08013F88: .4byte 0x02017140
_08013F8C: .4byte gUnknown_030042D4
_08013F90:
	ldr r0, _08013FB0 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _08013FAA
	ldr r1, _08013FB4 @ =gUnknown_081FA73C
	ldr r0, _08013FB8 @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
_08013FAA:
	pop {r0}
	bx r0
	.align 2, 0
_08013FB0: .4byte gUnknown_02024A64
_08013FB4: .4byte gUnknown_081FA73C
_08013FB8: .4byte gUnknown_02024C10
	thumb_func_end sub_8013F54

	thumb_func_start sub_8013FBC
sub_8013FBC: @ 8013FBC
	push {lr}
	ldr r0, _08013FDC @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _08013FD8
	ldr r1, _08013FE0 @ =gUnknown_081FA73C
	ldr r0, _08013FE4 @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
_08013FD8:
	pop {r0}
	bx r0
	.align 2, 0
_08013FDC: .4byte gUnknown_02024A64
_08013FE0: .4byte gUnknown_081FA73C
_08013FE4: .4byte gUnknown_02024C10
	thumb_func_end sub_8013FBC

	thumb_func_start sub_8013FE8
sub_8013FE8: @ 8013FE8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	movs r0, 0x4
	str r0, [sp]
	ldr r7, _08014028 @ =gUnknown_02024C07
	ldr r1, _0801402C @ =gUnknown_02024A7A
	ldr r0, _08014030 @ =gUnknown_02024A7E
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r7]
	ldr r1, _08014034 @ =0x02000000
	mov r10, r1
	ldr r0, _08014038 @ =0x000160a6
	add r0, r10
	ldrb r2, [r0]
	ldr r1, _0801403C @ =gBitTable
	ldrb r0, [r7]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	ands r2, r0
	cmp r2, 0
	beq _08014044
	ldr r1, _08014040 @ =gUnknown_02024A7F
	movs r0, 0xC
	b _080146CC
	.align 2, 0
_08014028: .4byte gUnknown_02024C07
_0801402C: .4byte gUnknown_02024A7A
_08014030: .4byte gUnknown_02024A7E
_08014034: .4byte 0x02000000
_08014038: .4byte 0x000160a6
_0801403C: .4byte gBitTable
_08014040: .4byte gUnknown_02024A7F
_08014044:
	ldr r1, _080140B8 @ =gCritMultiplier
	movs r0, 0x1
	strb r0, [r1]
	ldr r1, _080140BC @ =0x0001601f
	add r1, r10
	movs r0, 0x1
	strb r0, [r1]
	ldr r0, _080140C0 @ =0x000160e7
	add r0, r10
	strb r2, [r0]
	ldr r0, _080140C4 @ =gUnknown_02024C68
	strb r2, [r0]
	ldr r0, _080140C8 @ =gUnknown_02024C0E
	strb r2, [r0]
	ldr r0, _080140CC @ =gUnknown_02024D1E
	strb r2, [r0, 0x6]
	ldr r3, _080140D0 @ =gUnknown_02024BE4
	ldrb r0, [r7]
	ldr r2, _080140D4 @ =0x0001608c
	adds r0, r2
	add r0, r10
	ldrb r0, [r0]
	ldr r4, _080140D8 @ =gUnknown_02024BE5
	strb r0, [r4]
	strb r0, [r3]
	ldr r1, _080140DC @ =gUnknown_02024D28
	ldrb r2, [r7]
	lsls r0, r2, 4
	adds r5, r0, r1
	ldrb r1, [r5]
	lsls r0, r1, 29
	adds r4, r2, 0
	mov r8, r3
	cmp r0, 0
	bge _080140F0
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r5]
	ldr r2, _080140E0 @ =gUnknown_02024BE6
	ldr r1, _080140E4 @ =gUnknown_02024BE8
	movs r0, 0xA5
	strh r0, [r1]
	strh r0, [r2]
	ldr r2, _080140E8 @ =gUnknown_02024C6C
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 4
	orrs r0, r1
	str r0, [r2]
	movs r0, 0xA5
	movs r1, 0
	bl sub_801B5C0
	ldrb r1, [r7]
	ldr r2, _080140EC @ =0x00016010
	adds r1, r2
	b _08014200
	.align 2, 0
_080140B8: .4byte gCritMultiplier
_080140BC: .4byte 0x0001601f
_080140C0: .4byte 0x000160e7
_080140C4: .4byte gUnknown_02024C68
_080140C8: .4byte gUnknown_02024C0E
_080140CC: .4byte gUnknown_02024D1E
_080140D0: .4byte gUnknown_02024BE4
_080140D4: .4byte 0x0001608c
_080140D8: .4byte gUnknown_02024BE5
_080140DC: .4byte gUnknown_02024D28
_080140E0: .4byte gUnknown_02024BE6
_080140E4: .4byte gUnknown_02024BE8
_080140E8: .4byte gUnknown_02024C6C
_080140EC: .4byte 0x00016010
_080140F0:
	ldr r1, _08014128 @ =gBattleMons
	movs r0, 0x58
	adds r5, r4, 0
	muls r5, r0
	adds r0, r1, 0
	adds r0, 0x50
	adds r0, r5, r0
	ldr r2, [r0]
	movs r0, 0x80
	lsls r0, 5
	ands r0, r2
	cmp r0, 0
	bne _08014114
	movs r6, 0x80
	lsls r6, 15
	ands r6, r2
	cmp r6, 0
	beq _08014138
_08014114:
	ldr r3, _0801412C @ =gUnknown_02024BE6
	ldr r2, _08014130 @ =gUnknown_02024BE8
	ldr r1, _08014134 @ =gUnknown_02024C54
	lsls r0, r4, 1
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	strh r0, [r3]
	b _08014280
	.align 2, 0
_08014128: .4byte gBattleMons
_0801412C: .4byte gUnknown_02024BE6
_08014130: .4byte gUnknown_02024BE8
_08014134: .4byte gUnknown_02024C54
_08014138:
	ldr r3, _08014188 @ =gUnknown_02024CA8
	mov r12, r3
	lsls r0, r4, 3
	subs r0, r4
	lsls r0, 2
	adds r2, r0, r3
	ldrh r4, [r2, 0x6]
	adds r1, r4, 0
	cmp r1, 0
	beq _08014218
	ldrb r3, [r2, 0xC]
	lsls r0, r3, 1
	adds r0, r5
	str r0, [sp, 0x8]
	ldr r0, _0801418C @ =gBattleMons
	adds r0, 0xC
	mov r9, r0
	ldr r0, [sp, 0x8]
	add r0, r9
	ldrh r0, [r0]
	cmp r1, r0
	bne _080141A0
	ldr r1, _08014190 @ =gUnknown_02024BE6
	ldr r0, _08014194 @ =gUnknown_02024BE8
	strh r4, [r0]
	strh r4, [r1]
	ldrb r0, [r2, 0xC]
	ldr r2, _08014198 @ =gUnknown_02024BE5
	strb r0, [r2]
	mov r3, r8
	strb r0, [r3]
	ldrh r0, [r1]
	movs r1, 0
	bl sub_801B5C0
	ldrb r1, [r7]
	ldr r4, _0801419C @ =0x00016010
	adds r1, r4
	b _08014200
	.align 2, 0
_08014188: .4byte gUnknown_02024CA8
_0801418C: .4byte gBattleMons
_08014190: .4byte gUnknown_02024BE6
_08014194: .4byte gUnknown_02024BE8
_08014198: .4byte gUnknown_02024BE5
_0801419C: .4byte 0x00016010
_080141A0:
	cmp r1, 0
	beq _08014218
	cmp r1, r0
	beq _08014218
	ldr r0, _08014208 @ =gUnknown_02024BE5
	strb r3, [r0]
	mov r1, r8
	strb r3, [r1]
	ldr r3, _0801420C @ =gUnknown_02024BE6
	ldr r1, _08014210 @ =gUnknown_02024BE8
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, 1
	adds r0, r5
	add r0, r9
	ldrh r0, [r0]
	strh r0, [r1]
	strh r0, [r3]
	ldrb r1, [r7]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r12
	movs r2, 0
	strh r6, [r0, 0x6]
	ldrb r1, [r7]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r12
	strb r2, [r0, 0xC]
	ldrb r0, [r7]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	add r1, r12
	ldrb r2, [r1, 0xE]
	movs r0, 0x10
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0xE]
	ldrh r0, [r3]
	movs r1, 0
	bl sub_801B5C0
	ldrb r1, [r7]
	ldr r3, _08014214 @ =0x00016010
	adds r1, r3
_08014200:
	add r1, r10
	strb r0, [r1]
	b _08014280
	.align 2, 0
_08014208: .4byte gUnknown_02024BE5
_0801420C: .4byte gUnknown_02024BE6
_08014210: .4byte gUnknown_02024BE8
_08014214: .4byte 0x00016010
_08014218:
	mov r4, r8
	ldrb r0, [r4]
	lsls r0, 1
	ldr r4, _0801425C @ =gUnknown_02024C07
	ldrb r2, [r4]
	movs r1, 0x58
	muls r1, r2
	adds r0, r1
	ldr r1, _08014260 @ =gBattleMons
	adds r1, 0xC
	adds r0, r1
	ldr r1, _08014264 @ =gUnknown_02024C60
	lsls r2, 1
	adds r2, r1
	ldrh r3, [r0]
	ldrh r2, [r2]
	cmp r3, r2
	beq _08014278
	ldr r1, _08014268 @ =gUnknown_02024BE6
	ldr r0, _0801426C @ =gUnknown_02024BE8
	strh r3, [r0]
	strh r3, [r1]
	ldrh r0, [r1]
	movs r1, 0
	bl sub_801B5C0
	ldr r2, _08014270 @ =0x02000000
	ldrb r1, [r4]
	ldr r3, _08014274 @ =0x00016010
	adds r1, r3
	adds r1, r2
	strb r0, [r1]
	b _08014280
	.align 2, 0
_0801425C: .4byte gUnknown_02024C07
_08014260: .4byte gBattleMons
_08014264: .4byte gUnknown_02024C60
_08014268: .4byte gUnknown_02024BE6
_0801426C: .4byte gUnknown_02024BE8
_08014270: .4byte 0x02000000
_08014274: .4byte 0x00016010
_08014278:
	ldr r1, _08014298 @ =gUnknown_02024BE6
	ldr r0, _0801429C @ =gUnknown_02024BE8
	strh r3, [r0]
	strh r3, [r1]
_08014280:
	ldr r0, _080142A0 @ =gUnknown_02024C07
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _080142A8
	ldr r0, _080142A4 @ =gUnknown_030042E0
	ldr r1, _08014298 @ =gUnknown_02024BE6
	ldrh r1, [r1]
	strh r1, [r0, 0x22]
	b _080142B0
	.align 2, 0
_08014298: .4byte gUnknown_02024BE6
_0801429C: .4byte gUnknown_02024BE8
_080142A0: .4byte gUnknown_02024C07
_080142A4: .4byte gUnknown_030042E0
_080142A8:
	ldr r0, _08014314 @ =gUnknown_030042E0
	ldr r1, _08014318 @ =gUnknown_02024BE6
	ldrh r1, [r1]
	strh r1, [r0, 0x24]
_080142B0:
	ldr r4, _0801431C @ =gUnknown_02024C07
	ldrb r0, [r4]
	bl battle_side_get_owner
	movs r1, 0x1
	eors r0, r1
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, _08014320 @ =gUnknown_02024C80
	lsls r0, r6, 1
	adds r0, r6
	lsls r0, 2
	adds r5, r0, r1
	ldrb r0, [r5, 0x8]
	adds r3, r4, 0
	cmp r0, 0
	beq _08014330
	ldr r2, _08014324 @ =gBattleMoves
	ldr r0, _08014318 @ =gUnknown_02024BE6
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x6]
	cmp r0, 0
	bne _08014330
	ldrb r0, [r3]
	bl battle_side_get_owner
	adds r4, r0, 0
	ldrb r0, [r5, 0x9]
	bl battle_side_get_owner
	lsls r4, 24
	lsls r0, 24
	cmp r4, r0
	beq _08014330
	ldr r1, _08014328 @ =gBattleMons
	ldrb r2, [r5, 0x9]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _08014330
	ldr r0, _0801432C @ =gUnknown_02024C08
	strb r2, [r0]
	b _080146AC
	.align 2, 0
_08014314: .4byte gUnknown_030042E0
_08014318: .4byte gUnknown_02024BE6
_0801431C: .4byte gUnknown_02024C07
_08014320: .4byte gUnknown_02024C80
_08014324: .4byte gBattleMoves
_08014328: .4byte gBattleMons
_0801432C: .4byte gUnknown_02024C08
_08014330:
	ldr r2, _08014454 @ =gUnknown_020239F8
	ldrh r1, [r2]
	movs r0, 0x1
	ands r0, r1
	ldr r3, _08014458 @ =gUnknown_02024C07
	mov r9, r2
	cmp r0, 0
	bne _08014342
	b _0801461C
_08014342:
	ldr r1, _0801445C @ =gUnknown_02024C80
	lsls r0, r6, 1
	adds r0, r6
	lsls r0, 2
	adds r0, r1
	ldrb r7, [r0, 0x8]
	cmp r7, 0
	beq _08014354
	b _08014570
_08014354:
	ldr r2, _08014460 @ =gBattleMoves
	ldr r0, _08014464 @ =gUnknown_02024BE6
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r4, r0, r2
	ldrb r0, [r4, 0x1]
	cmp r0, 0
	bne _08014370
	ldrb r0, [r4, 0x6]
	cmp r0, 0x10
	bne _08014370
	b _08014570
_08014370:
	ldr r3, _08014468 @ =gBattleMons
	ldr r0, _0801446C @ =0x02000000
	mov r8, r0
	ldr r2, _08014458 @ =gUnknown_02024C07
	ldrb r5, [r2]
	ldr r1, _08014470 @ =0x00016010
	adds r0, r5, r1
	add r0, r8
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r3
	adds r0, 0x20
	ldrb r0, [r0]
	adds r3, r2, 0
	cmp r0, 0x1F
	bne _08014394
	b _08014570
_08014394:
	ldrb r0, [r4, 0x2]
	cmp r0, 0xD
	beq _0801439C
	b _08014570
_0801439C:
	adds r0, r5, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, _08014474 @ =gUnknown_02024A60
	strb r7, [r1]
	ldr r0, _08014478 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r7, r0
	bcs _08014416
	adds r4, r1, 0
	mov r5, r8
_080143B6:
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r6, r0
	beq _08014404
	ldr r0, _08014458 @ =gUnknown_02024C07
	ldrb r0, [r0]
	ldr r2, _08014470 @ =0x00016010
	adds r0, r2
	adds r0, r5
	ldrb r0, [r0]
	ldrb r3, [r4]
	cmp r0, r3
	beq _08014404
	ldr r1, _08014468 @ =gBattleMons
	ldrb r2, [r4]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x1F
	bne _08014404
	adds r0, r2, 0
	bl sub_801E3B4
	lsls r0, 24
	lsrs r0, 24
	ldr r1, [sp]
	cmp r0, r1
	bcs _08014404
	ldrb r0, [r4]
	bl sub_801E3B4
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
_08014404:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	ldr r1, _08014478 @ =gUnknown_02024A68
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _080143B6
_08014416:
	ldr r2, [sp]
	cmp r2, 0x4
	beq _0801441E
	b _08014522
_0801441E:
	ldr r2, _08014460 @ =gBattleMoves
	ldr r0, _0801447C @ =gUnknown_02024BE8
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x6]
	ldr r3, [sp]
	ands r3, r0
	cmp r3, 0
	beq _080144A4
	ldr r0, _08014458 @ =gUnknown_02024C07
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _08014484
	bl Random
	movs r1, 0x1
	ands r1, r0
	cmp r1, 0
	beq _08014480
	movs r0, 0x1
	b _08014496
	.align 2, 0
_08014454: .4byte gUnknown_020239F8
_08014458: .4byte gUnknown_02024C07
_0801445C: .4byte gUnknown_02024C80
_08014460: .4byte gBattleMoves
_08014464: .4byte gUnknown_02024BE6
_08014468: .4byte gBattleMons
_0801446C: .4byte 0x02000000
_08014470: .4byte 0x00016010
_08014474: .4byte gUnknown_02024A60
_08014478: .4byte gUnknown_02024A68
_0801447C: .4byte gUnknown_02024BE8
_08014480:
	movs r0, 0x3
	b _08014496
_08014484:
	bl Random
	movs r1, 0x1
	ands r1, r0
	cmp r1, 0
	beq _08014494
	movs r0, 0
	b _08014496
_08014494:
	movs r0, 0x2
_08014496:
	bl battle_get_side_with_given_state
	ldr r1, _080144A0 @ =gUnknown_02024C08
	strb r0, [r1]
	b _080144B6
	.align 2, 0
_080144A0: .4byte gUnknown_02024C08
_080144A4:
	ldr r2, _080144EC @ =gUnknown_02024C08
	ldr r1, _080144F0 @ =0x02000000
	ldr r0, _080144F4 @ =gUnknown_02024C07
	ldrb r0, [r0]
	ldr r4, _080144F8 @ =0x00016010
	adds r0, r4
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
_080144B6:
	ldr r7, _080144FC @ =gUnknown_02024C0C
	ldrb r0, [r7]
	ldr r1, _08014500 @ =gBitTable
	mov r8, r1
	ldr r5, _080144EC @ =gUnknown_02024C08
	ldrb r1, [r5]
	lsls r1, 2
	add r1, r8
	ldr r1, [r1]
	ands r0, r1
	cmp r0, 0
	bne _080144D0
	b _080146AC
_080144D0:
	ldr r6, _080144F4 @ =gUnknown_02024C07
	ldrb r0, [r6]
	bl battle_side_get_owner
	adds r4, r0, 0
	ldrb r0, [r5]
	bl battle_side_get_owner
	lsls r4, 24
	lsls r0, 24
	cmp r4, r0
	beq _08014504
	ldrb r0, [r5]
	b _0801469A
	.align 2, 0
_080144EC: .4byte gUnknown_02024C08
_080144F0: .4byte 0x02000000
_080144F4: .4byte gUnknown_02024C07
_080144F8: .4byte 0x00016010
_080144FC: .4byte gUnknown_02024C0C
_08014500: .4byte gBitTable
_08014504:
	ldrb r0, [r6]
	bl battle_get_per_side_status
	movs r1, 0x1
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	strb r0, [r5]
	ldrb r1, [r7]
	ldrb r2, [r5]
	lsls r0, r2, 2
	add r0, r8
	b _08014690
_08014522:
	ldr r4, _0801455C @ =gUnknown_02024A60
	ldr r0, _08014560 @ =gUnknown_02024A7A
	ldr r2, [sp]
	adds r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r4]
	ldrb r0, [r4]
	ldr r2, _08014564 @ =gBattleMons
	movs r1, 0x58
	muls r1, r0
	adds r1, r2
	adds r1, 0x20
	ldrb r1, [r1]
	bl sub_81074C4
	ldr r2, _08014568 @ =gUnknown_02024D68
	ldrb r1, [r4]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r2, 0x2
	orrs r1, r2
	strb r1, [r0]
	ldr r1, _0801456C @ =gUnknown_02024C08
	ldrb r0, [r4]
	strb r0, [r1]
	b _080146AC
	.align 2, 0
_0801455C: .4byte gUnknown_02024A60
_08014560: .4byte gUnknown_02024A7A
_08014564: .4byte gBattleMons
_08014568: .4byte gUnknown_02024D68
_0801456C: .4byte gUnknown_02024C08
_08014570:
	mov r4, r9
	ldrh r1, [r4]
	movs r4, 0x1
	adds r0, r4, 0
	ands r0, r1
	cmp r0, 0
	beq _0801461C
	ldr r2, _080145B4 @ =gBattleMoves
	ldr r0, _080145B8 @ =gUnknown_02024BE8
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x6]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _0801461C
	ldrb r0, [r3]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _080145C0
	bl Random
	adds r1, r4, 0
	ands r1, r0
	cmp r1, 0
	beq _080145BC
	movs r0, 0x1
	b _080145D2
	.align 2, 0
_080145B4: .4byte gBattleMoves
_080145B8: .4byte gUnknown_02024BE8
_080145BC:
	movs r0, 0x3
	b _080145D2
_080145C0:
	bl Random
	adds r1, r4, 0
	ands r1, r0
	cmp r1, 0
	beq _080145D0
	movs r0, 0
	b _080145D2
_080145D0:
	movs r0, 0x2
_080145D2:
	bl battle_get_side_with_given_state
	ldr r1, _0801460C @ =gUnknown_02024C08
	strb r0, [r1]
	ldr r0, _08014610 @ =gUnknown_02024C0C
	ldrb r1, [r0]
	ldr r2, _08014614 @ =gBitTable
	ldr r5, _0801460C @ =gUnknown_02024C08
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _080146AC
	ldr r0, _08014618 @ =gUnknown_02024C07
	ldrb r0, [r0]
	bl battle_side_get_owner
	adds r4, r0, 0
	ldrb r0, [r5]
	bl battle_side_get_owner
	lsls r4, 24
	lsls r0, 24
	cmp r4, r0
	beq _080146AC
	ldrb r0, [r5]
	b _0801469A
	.align 2, 0
_0801460C: .4byte gUnknown_02024C08
_08014610: .4byte gUnknown_02024C0C
_08014614: .4byte gBitTable
_08014618: .4byte gUnknown_02024C07
_0801461C:
	ldr r5, _08014660 @ =gUnknown_02024C08
	ldr r1, _08014664 @ =0x02000000
	adds r2, r3, 0
	ldrb r0, [r2]
	ldr r4, _08014668 @ =0x00016010
	adds r0, r4
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r5]
	ldr r6, _0801466C @ =gUnknown_02024C0C
	ldrb r1, [r6]
	ldr r7, _08014670 @ =gBitTable
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r7
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _080146AC
	ldrb r0, [r2]
	str r3, [sp, 0x4]
	bl battle_side_get_owner
	adds r4, r0, 0
	ldrb r0, [r5]
	bl battle_side_get_owner
	lsls r4, 24
	lsls r0, 24
	ldr r3, [sp, 0x4]
	cmp r4, r0
	beq _08014674
	ldrb r0, [r5]
	b _0801469A
	.align 2, 0
_08014660: .4byte gUnknown_02024C08
_08014664: .4byte 0x02000000
_08014668: .4byte 0x00016010
_0801466C: .4byte gUnknown_02024C0C
_08014670: .4byte gBitTable
_08014674:
	ldrb r0, [r3]
	bl battle_get_per_side_status
	movs r1, 0x1
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	strb r0, [r5]
	ldrb r1, [r6]
	ldrb r2, [r5]
	lsls r0, r2, 2
	adds r0, r7
_08014690:
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _080146AC
	adds r0, r2, 0
_0801469A:
	bl battle_get_per_side_status
	movs r1, 0x2
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	strb r0, [r5]
_080146AC:
	ldr r4, _080146E0 @ =gUnknown_02024C10
	ldr r3, _080146E4 @ =gUnknown_081D6BBC
	ldr r2, _080146E8 @ =gBattleMoves
	ldr r0, _080146EC @ =gUnknown_02024BE6
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	str r0, [r4]
	ldr r1, _080146F0 @ =gUnknown_02024A7F
	movs r0, 0xA
_080146CC:
	strb r0, [r1]
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080146E0: .4byte gUnknown_02024C10
_080146E4: .4byte gUnknown_081D6BBC
_080146E8: .4byte gBattleMoves
_080146EC: .4byte gUnknown_02024BE6
_080146F0: .4byte gUnknown_02024A7F
	thumb_func_end sub_8013FE8

	thumb_func_start sub_80146F4
sub_80146F4: @ 80146F4
	push {r4,lr}
	ldr r3, _08014764 @ =gUnknown_02024C07
	ldr r1, _08014768 @ =gUnknown_02024A7A
	ldr r0, _0801476C @ =gUnknown_02024A7E
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	ldr r0, _08014770 @ =gUnknown_030042A4
	movs r2, 0
	strh r2, [r0]
	ldr r0, _08014774 @ =gUnknown_030042A0
	strh r2, [r0]
	ldr r1, _08014778 @ =gUnknown_02024E60
	ldrb r0, [r3]
	adds r0, r1
	strb r2, [r0]
	ldr r1, _0801477C @ =gUnknown_02024E64
	ldrb r0, [r3]
	adds r0, r1
	strb r2, [r0]
	ldr r2, _08014780 @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r2]
	movs r0, 0x7
	strb r0, [r2, 0x1]
	ldrb r4, [r3]
	strb r4, [r2, 0x2]
	ldr r1, _08014784 @ =0x02000000
	ldrb r0, [r3]
	ldr r3, _08014788 @ =0x00016064
	adds r0, r3
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r2, 0x3]
	movs r0, 0xFF
	strb r0, [r2, 0x4]
	ldr r0, _0801478C @ =0x00016003
	adds r1, r0
	strb r4, [r1]
	ldr r1, _08014790 @ =gUnknown_02024C10
	ldr r0, _08014794 @ =gUnknown_081D8E4E
	str r0, [r1]
	ldr r1, _08014798 @ =gUnknown_02024A7F
	movs r0, 0xA
	strb r0, [r1]
	ldr r1, _0801479C @ =gUnknown_030042E0
	ldrb r0, [r1, 0x2]
	cmp r0, 0xFE
	bhi _0801475C
	adds r0, 0x1
	strb r0, [r1, 0x2]
_0801475C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08014764: .4byte gUnknown_02024C07
_08014768: .4byte gUnknown_02024A7A
_0801476C: .4byte gUnknown_02024A7E
_08014770: .4byte gUnknown_030042A4
_08014774: .4byte gUnknown_030042A0
_08014778: .4byte gUnknown_02024E60
_0801477C: .4byte gUnknown_02024E64
_08014780: .4byte gUnknown_030041C0
_08014784: .4byte 0x02000000
_08014788: .4byte 0x00016064
_0801478C: .4byte 0x00016003
_08014790: .4byte gUnknown_02024C10
_08014794: .4byte gUnknown_081D8E4E
_08014798: .4byte gUnknown_02024A7F
_0801479C: .4byte gUnknown_030042E0
	thumb_func_end sub_80146F4

	thumb_func_start sub_80147A0
sub_80147A0: @ 80147A0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r4, _08014804 @ =gUnknown_02024C07
	ldr r2, _08014808 @ =gUnknown_02024C08
	ldr r1, _0801480C @ =gUnknown_02024A7A
	ldr r0, _08014810 @ =gUnknown_02024A7E
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	strb r0, [r4]
	ldr r0, _08014814 @ =gUnknown_030042A4
	movs r2, 0
	strh r2, [r0]
	ldr r0, _08014818 @ =gUnknown_030042A0
	strh r2, [r0]
	ldr r3, _0801481C @ =gUnknown_02024CA8
	ldrb r1, [r4]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r3
	strb r2, [r0, 0x10]
	ldr r5, _08014820 @ =gUnknown_02024C04
	ldr r2, _08014824 @ =gUnknown_02024260
	ldrb r1, [r4]
	lsls r1, 9
	adds r0, r2, 0x1
	adds r0, r1, r0
	ldrb r3, [r0]
	adds r2, 0x2
	adds r1, r2
	ldrb r0, [r1]
	lsls r0, 8
	orrs r3, r0
	strh r3, [r5]
	cmp r3, 0xC
	bhi _08014830
	ldr r2, _08014828 @ =gUnknown_02024C10
	ldr r1, _0801482C @ =gUnknown_081D9E48
	ldrh r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	str r0, [r2]
	b _08014A8C
	.align 2, 0
_08014804: .4byte gUnknown_02024C07
_08014808: .4byte gUnknown_02024C08
_0801480C: .4byte gUnknown_02024A7A
_08014810: .4byte gUnknown_02024A7E
_08014814: .4byte gUnknown_030042A4
_08014818: .4byte gUnknown_030042A0
_0801481C: .4byte gUnknown_02024CA8
_08014820: .4byte gUnknown_02024C04
_08014824: .4byte gUnknown_02024260
_08014828: .4byte gUnknown_02024C10
_0801482C: .4byte gUnknown_081D9E48
_08014830:
	adds r0, r3, 0
	subs r0, 0x50
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1
	bhi _0801484C
	ldr r0, _08014844 @ =gUnknown_02024C10
	ldr r1, _08014848 @ =gUnknown_081D9E94
	b _0801485C
	.align 2, 0
_08014844: .4byte gUnknown_02024C10
_08014848: .4byte gUnknown_081D9E94
_0801484C:
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _0801486C
	ldr r0, _08014864 @ =gUnknown_02024C10
	ldr r1, _08014868 @ =gUnknown_081D9E7C
_0801485C:
	ldr r1, [r1]
	str r1, [r0]
	b _08014A8C
	.align 2, 0
_08014864: .4byte gUnknown_02024C10
_08014868: .4byte gUnknown_081D9E7C
_0801486C:
	ldr r2, _080148A0 @ =0x02000000
	ldrb r0, [r4]
	ldr r3, _080148A4 @ =0x00016003
	adds r1, r2, r3
	strb r0, [r1]
	lsls r0, 24
	lsrs r0, 25
	ldr r1, _080148A8 @ =0x000160d8
	adds r0, r1
	adds r0, r2
	ldrb r0, [r0]
	subs r0, 0x1
	mov r8, r4
	ldr r3, _080148AC @ =gUnknown_02024C10
	mov r9, r3
	ldr r1, _080148B0 @ =gUnknown_081D9E7C
	mov r10, r1
	adds r7, r2, 0
	cmp r0, 0x4
	bls _08014896
	b _08014A74
_08014896:
	lsls r0, 2
	ldr r1, _080148B4 @ =_080148B8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080148A0: .4byte 0x02000000
_080148A4: .4byte 0x00016003
_080148A8: .4byte 0x000160d8
_080148AC: .4byte gUnknown_02024C10
_080148B0: .4byte gUnknown_081D9E7C
_080148B4: .4byte _080148B8
	.align 2, 0
_080148B8:
	.4byte _08014A74
	.4byte _08014A74
	.4byte _080148CC
	.4byte _08014958
	.4byte _08014A30
_080148CC:
	ldr r2, _08014904 @ =gUnknown_02024D1E
	movs r0, 0
	strb r0, [r2, 0x5]
	ldr r1, _08014908 @ =gUnknown_02024C07
	ldrb r0, [r1]
	lsrs r0, 1
	ldr r6, _0801490C @ =0x000160da
	adds r0, r6
	adds r0, r7
	ldrb r3, [r0]
	movs r0, 0x1
	ands r0, r3
	mov r8, r1
	cmp r0, 0
	beq _08014918
	movs r0, 0x3E
	ands r0, r3
	ldr r3, _08014910 @ =gUnknown_02024C10
	mov r9, r3
	ldr r1, _08014914 @ =gUnknown_081D9E7C
	mov r10, r1
	cmp r0, 0
	bne _080148FC
	b _08014A74
_080148FC:
	movs r0, 0x5
	strb r0, [r2, 0x5]
	b _08014A74
	.align 2, 0
_08014904: .4byte gUnknown_02024D1E
_08014908: .4byte gUnknown_02024C07
_0801490C: .4byte 0x000160da
_08014910: .4byte gUnknown_02024C10
_08014914: .4byte gUnknown_081D9E7C
_08014918:
	ldr r3, _08014950 @ =gUnknown_02024C10
	mov r9, r3
	ldr r0, _08014954 @ =gUnknown_081D9E7C
	mov r10, r0
	adds r5, r7, 0
	mov r4, r8
	adds r3, r6, 0
_08014926:
	ldrb r0, [r4]
	lsrs r0, 1
	adds r0, r3
	adds r0, r5
	ldrb r1, [r0]
	lsrs r1, 1
	strb r1, [r0]
	ldrb r0, [r2, 0x5]
	adds r0, 0x1
	strb r0, [r2, 0x5]
	ldrb r0, [r4]
	lsrs r0, 1
	adds r0, r3
	adds r0, r5
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08014926
	b _08014A74
	.align 2, 0
_08014950: .4byte gUnknown_02024C10
_08014954: .4byte gUnknown_081D9E7C
_08014958:
	ldr r3, _0801498C @ =gUnknown_02024D1E
	movs r0, 0x4
	strb r0, [r3, 0x5]
	ldr r2, _08014990 @ =gUnknown_02024C07
	ldrb r0, [r2]
	lsrs r0, 1
	ldr r1, _08014994 @ =0x000160da
	mov r12, r1
	add r0, r12
	adds r6, r0, r7
	ldrb r1, [r6]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r5, r0, 24
	mov r8, r2
	cmp r5, 0
	beq _080149A0
	movs r0, 0x5
	strb r0, [r3, 0x5]
	ldr r2, _08014998 @ =gUnknown_02024C10
	mov r9, r2
	ldr r3, _0801499C @ =gUnknown_081D9E7C
	mov r10, r3
	b _08014A74
	.align 2, 0
_0801498C: .4byte gUnknown_02024D1E
_08014990: .4byte gUnknown_02024C07
_08014994: .4byte 0x000160da
_08014998: .4byte gUnknown_02024C10
_0801499C: .4byte gUnknown_081D9E7C
_080149A0:
	ldr r3, _08014A18 @ =gUnknown_030041C0
	movs r4, 0xFD
	strb r4, [r3]
	movs r0, 0x5
	strb r0, [r3, 0x1]
	movs r2, 0x1
	strb r2, [r3, 0x2]
	movs r0, 0xFF
	strb r0, [r3, 0x3]
	ldr r1, _08014A1C @ =gUnknown_03004290
	strb r4, [r1]
	strb r5, [r1, 0x1]
	movs r0, 0xD2
	strb r0, [r1, 0x2]
	strb r5, [r1, 0x3]
	subs r0, 0xD3
	strb r0, [r1, 0x4]
	ldrb r0, [r6]
	ands r2, r0
	ldr r0, _08014A20 @ =gUnknown_02024C10
	mov r9, r0
	ldr r1, _08014A24 @ =gUnknown_081D9E7C
	mov r10, r1
	adds r6, r3, 0
	cmp r2, 0
	bne _08014A02
	adds r3, r7, 0
	mov r5, r8
	mov r4, r12
	adds r2, r6, 0
_080149DC:
	ldrb r0, [r5]
	lsrs r0, 1
	adds r0, r4
	adds r0, r3
	ldrb r1, [r0]
	lsrs r1, 1
	strb r1, [r0]
	ldrb r0, [r2, 0x2]
	adds r0, 0x1
	strb r0, [r2, 0x2]
	ldrb r0, [r5]
	lsrs r0, 1
	adds r0, r4
	adds r0, r3
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080149DC
_08014A02:
	ldrb r0, [r6, 0x2]
	adds r0, 0xE
	ldr r2, _08014A28 @ =0x000160a4
	adds r1, r7, r2
	movs r2, 0
	strb r0, [r1]
	ldr r3, _08014A2C @ =0x000160a5
	adds r0, r7, r3
	strb r2, [r0]
	b _08014A74
	.align 2, 0
_08014A18: .4byte gUnknown_030041C0
_08014A1C: .4byte gUnknown_03004290
_08014A20: .4byte gUnknown_02024C10
_08014A24: .4byte gUnknown_081D9E7C
_08014A28: .4byte 0x000160a4
_08014A2C: .4byte 0x000160a5
_08014A30:
	ldr r0, _08014A50 @ =gUnknown_020239F8
	ldrh r0, [r0]
	movs r1, 0x1
	ands r1, r0
	cmp r1, 0
	beq _08014A64
	ldr r1, _08014A54 @ =gUnknown_02024D1E
	movs r0, 0x2
	strb r0, [r1, 0x5]
	ldr r0, _08014A58 @ =gUnknown_02024C07
	mov r8, r0
	ldr r1, _08014A5C @ =gUnknown_02024C10
	mov r9, r1
	ldr r2, _08014A60 @ =gUnknown_081D9E7C
	mov r10, r2
	b _08014A74
	.align 2, 0
_08014A50: .4byte gUnknown_020239F8
_08014A54: .4byte gUnknown_02024D1E
_08014A58: .4byte gUnknown_02024C07
_08014A5C: .4byte gUnknown_02024C10
_08014A60: .4byte gUnknown_081D9E7C
_08014A64:
	ldr r0, _08014AA0 @ =gUnknown_02024D1E
	strb r1, [r0, 0x5]
	ldr r3, _08014AA4 @ =gUnknown_02024C07
	mov r8, r3
	ldr r0, _08014AA8 @ =gUnknown_02024C10
	mov r9, r0
	ldr r1, _08014AAC @ =gUnknown_081D9E7C
	mov r10, r1
_08014A74:
	mov r2, r8
	ldrb r0, [r2]
	lsrs r0, 1
	ldr r3, _08014AB0 @ =0x000160d8
	adds r0, r3
	adds r0, r7
	ldrb r0, [r0]
	lsls r0, 2
	add r0, r10
	ldr r0, [r0]
	mov r1, r9
	str r0, [r1]
_08014A8C:
	movs r0, 0xA
	ldr r2, _08014AB4 @ =gUnknown_02024A7F
	strb r0, [r2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014AA0: .4byte gUnknown_02024D1E
_08014AA4: .4byte gUnknown_02024C07
_08014AA8: .4byte gUnknown_02024C10
_08014AAC: .4byte gUnknown_081D9E7C
_08014AB0: .4byte 0x000160d8
_08014AB4: .4byte gUnknown_02024A7F
	thumb_func_end sub_80147A0

	thumb_func_start sub_8014AB8
sub_8014AB8: @ 8014AB8
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	movs r5, 0
	ldr r1, _08014ADC @ =gBattleMons
	movs r0, 0x58
	muls r0, r4
	adds r1, r0, r1
	ldrh r0, [r1, 0x2E]
	cmp r0, 0xAF
	bne _08014AE4
	ldr r1, _08014AE0 @ =gEnigmaBerries
	lsls r0, r4, 3
	subs r0, r4
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x7]
	b _08014AEE
	.align 2, 0
_08014ADC: .4byte gBattleMons
_08014AE0: .4byte gEnigmaBerries
_08014AE4:
	ldrh r0, [r1, 0x2E]
	bl ItemId_GetHoldEffect
	lsls r0, 24
	lsrs r1, r0, 24
_08014AEE:
	ldr r0, _08014B18 @ =gUnknown_02024C0B
	strb r4, [r0]
	cmp r1, 0x25
	bne _08014B28
	ldr r2, _08014B1C @ =gUnknown_02024C04
	ldr r1, _08014B20 @ =gBattleMons
	movs r0, 0x58
	muls r0, r4
	adds r0, r1
	ldrh r0, [r0, 0x2E]
	strh r0, [r2]
	ldr r0, _08014B24 @ =gUnknown_02024D28
	lsls r2, r4, 4
	adds r2, r0
	ldrb r1, [r2, 0x1]
	movs r0, 0x19
	negs r0, r0
	ands r0, r1
	movs r1, 0x8
	b _08014B50
	.align 2, 0
_08014B18: .4byte gUnknown_02024C0B
_08014B1C: .4byte gUnknown_02024C04
_08014B20: .4byte gBattleMons
_08014B24: .4byte gUnknown_02024D28
_08014B28:
	ldr r6, _08014B5C @ =gBattleMons
	movs r2, 0x58
	adds r0, r4, 0
	muls r0, r2
	adds r3, r0, r6
	adds r0, r3, 0
	adds r0, 0x20
	ldrb r1, [r0]
	cmp r1, 0x32
	bne _08014B68
	ldr r0, _08014B60 @ =byte_2024C06
	strb r1, [r0]
	ldr r0, _08014B64 @ =gUnknown_02024D28
	lsls r2, r4, 4
	adds r2, r0
	ldrb r1, [r2, 0x1]
	movs r0, 0x19
	negs r0, r0
	ands r0, r1
	movs r1, 0x10
_08014B50:
	orrs r0, r1
	strb r0, [r2, 0x1]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	b _08014BC2
	.align 2, 0
_08014B5C: .4byte gBattleMons
_08014B60: .4byte byte_2024C06
_08014B64: .4byte gUnknown_02024D28
_08014B68:
	ldr r0, _08014BDC @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08014BB6
	movs r1, 0x1
	adds r0, r4, 0
	eors r0, r1
	muls r0, r2
	adds r2, r0, r6
	ldrh r0, [r3, 0x6]
	ldrh r1, [r2, 0x6]
	cmp r0, r1
	bcs _08014BB0
	lsls r0, 7
	ldrh r1, [r2, 0x6]
	bl __divsi3
	adds r4, r0, 0
	ldr r0, _08014BE0 @ =0x02000000
	ldr r1, _08014BE4 @ =0x00016078
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	subs r0, r1
	lsls r0, 1
	adds r4, r0
	lsls r4, 24
	lsrs r4, 24
	bl Random
	movs r1, 0xFF
	ands r1, r0
	cmp r4, r1
	bls _08014BB6
_08014BB0:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
_08014BB6:
	ldr r1, _08014BE0 @ =0x02000000
	ldr r0, _08014BE4 @ =0x00016078
	adds r1, r0
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_08014BC2:
	cmp r5, 0
	beq _08014BD4
	ldr r1, _08014BE8 @ =gUnknown_02024A7E
	ldr r0, _08014BEC @ =gUnknown_02024A68
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08014BF0 @ =gUnknown_02024D26
	movs r0, 0x4
	strb r0, [r1]
_08014BD4:
	adds r0, r5, 0
	pop {r4-r6}
	pop {r1}
	bx r1
	.align 2, 0
_08014BDC: .4byte gUnknown_020239F8
_08014BE0: .4byte 0x02000000
_08014BE4: .4byte 0x00016078
_08014BE8: .4byte gUnknown_02024A7E
_08014BEC: .4byte gUnknown_02024A68
_08014BF0: .4byte gUnknown_02024D26
	thumb_func_end sub_8014AB8

	thumb_func_start sub_8014BF4
sub_8014BF4: @ 8014BF4
	push {r4-r6,lr}
	ldr r4, _08014C44 @ =gUnknown_02024C07
	ldr r1, _08014C48 @ =gUnknown_02024A7A
	ldr r5, _08014C4C @ =gUnknown_02024A7E
	ldrb r0, [r5]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r4]
	ldr r0, _08014C50 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08014C9C
	ldr r0, _08014C54 @ =gUnknown_02024A68
	ldrb r1, [r0]
	strb r1, [r5]
	ldr r2, _08014C58 @ =gUnknown_02024A60
	movs r0, 0
	strb r0, [r2]
	lsls r1, 24
	cmp r1, 0
	beq _08014C88
	adds r4, r2, 0
	ldr r6, _08014C5C @ =gUnknown_02024C18
	ldr r5, _08014C60 @ =gUnknown_02024D26
_08014C28:
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _08014C64
	ldrb r0, [r4]
	adds r0, r6
	ldrb r0, [r0]
	cmp r0, 0x3
	bne _08014C76
	ldrb r0, [r5]
	movs r1, 0x2
	b _08014C72
	.align 2, 0
_08014C44: .4byte gUnknown_02024C07
_08014C48: .4byte gUnknown_02024A7A
_08014C4C: .4byte gUnknown_02024A7E
_08014C50: .4byte gUnknown_020239F8
_08014C54: .4byte gUnknown_02024A68
_08014C58: .4byte gUnknown_02024A60
_08014C5C: .4byte gUnknown_02024C18
_08014C60: .4byte gUnknown_02024D26
_08014C64:
	ldrb r0, [r4]
	adds r0, r6
	ldrb r0, [r0]
	cmp r0, 0x3
	bne _08014C76
	ldrb r0, [r5]
	movs r1, 0x1
_08014C72:
	orrs r0, r1
	strb r0, [r5]
_08014C76:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	ldr r1, _08014C94 @ =gUnknown_02024A68
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08014C28
_08014C88:
	ldr r0, _08014C98 @ =gUnknown_02024D26
	ldrb r1, [r0]
	movs r2, 0x80
	orrs r1, r2
	strb r1, [r0]
	b _08014D40
	.align 2, 0
_08014C94: .4byte gUnknown_02024A68
_08014C98: .4byte gUnknown_02024D26
_08014C9C:
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _08014CF4
	ldrb r0, [r4]
	bl sub_8014AB8
	lsls r0, 24
	cmp r0, 0
	bne _08014D40
	ldr r1, _08014CDC @ =gBattleMons
	ldrb r2, [r4]
	movs r0, 0x58
	muls r2, r0
	adds r1, 0x50
	adds r2, r1
	ldr r0, [r2]
	ldr r1, _08014CE0 @ =0xfdffffff
	ands r0, r1
	str r0, [r2]
	ldr r1, _08014CE4 @ =gUnknown_02024D1E
	movs r0, 0x3
	strb r0, [r1, 0x5]
	ldr r1, _08014CE8 @ =gUnknown_02024C10
	ldr r0, _08014CEC @ =gUnknown_081D8E3B
	str r0, [r1]
	ldr r1, _08014CF0 @ =gUnknown_02024A7F
	movs r0, 0xA
	b _08014D3E
	.align 2, 0
_08014CDC: .4byte gBattleMons
_08014CE0: .4byte 0xfdffffff
_08014CE4: .4byte gUnknown_02024D1E
_08014CE8: .4byte gUnknown_02024C10
_08014CEC: .4byte gUnknown_081D8E3B
_08014CF0: .4byte gUnknown_02024A7F
_08014CF4:
	ldr r1, _08014D1C @ =gBattleMons
	ldrb r2, [r4]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	ldr r1, _08014D20 @ =0x0400e000
	ands r0, r1
	cmp r0, 0
	beq _08014D34
	ldr r1, _08014D24 @ =gUnknown_02024D1E
	movs r0, 0x4
	strb r0, [r1, 0x5]
	ldr r1, _08014D28 @ =gUnknown_02024C10
	ldr r0, _08014D2C @ =gUnknown_081D8E3B
	str r0, [r1]
	ldr r1, _08014D30 @ =gUnknown_02024A7F
	movs r0, 0xA
	b _08014D3E
	.align 2, 0
_08014D1C: .4byte gBattleMons
_08014D20: .4byte 0x0400e000
_08014D24: .4byte gUnknown_02024D1E
_08014D28: .4byte gUnknown_02024C10
_08014D2C: .4byte gUnknown_081D8E3B
_08014D30: .4byte gUnknown_02024A7F
_08014D34:
	ldr r0, _08014D48 @ =gUnknown_02024A68
	ldrb r0, [r0]
	strb r0, [r5]
	ldr r1, _08014D4C @ =gUnknown_02024D26
	movs r0, 0x6
_08014D3E:
	strb r0, [r1]
_08014D40:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08014D48: .4byte gUnknown_02024A68
_08014D4C: .4byte gUnknown_02024D26
	thumb_func_end sub_8014BF4

	thumb_func_start sub_8014D50
sub_8014D50: @ 8014D50
	ldr r2, _08014D78 @ =gUnknown_02024C07
	ldr r1, _08014D7C @ =gUnknown_02024A7A
	ldr r0, _08014D80 @ =gUnknown_02024A7E
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r0, _08014D84 @ =gUnknown_030042A4
	movs r1, 0
	strh r1, [r0]
	ldr r0, _08014D88 @ =gUnknown_030042A0
	strh r1, [r0]
	ldr r1, _08014D8C @ =gUnknown_02024C10
	ldr r0, _08014D90 @ =gUnknown_081D9E98
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _08014D94 @ =gUnknown_02024A7F
	movs r0, 0xA
	strb r0, [r1]
	bx lr
	.align 2, 0
_08014D78: .4byte gUnknown_02024C07
_08014D7C: .4byte gUnknown_02024A7A
_08014D80: .4byte gUnknown_02024A7E
_08014D84: .4byte gUnknown_030042A4
_08014D88: .4byte gUnknown_030042A0
_08014D8C: .4byte gUnknown_02024C10
_08014D90: .4byte gUnknown_081D9E98
_08014D94: .4byte gUnknown_02024A7F
	thumb_func_end sub_8014D50

	thumb_func_start sub_8014D98
sub_8014D98: @ 8014D98
	ldr r2, _08014DD0 @ =gUnknown_02024C07
	ldr r1, _08014DD4 @ =gUnknown_02024A7A
	ldr r0, _08014DD8 @ =gUnknown_02024A7E
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r0, _08014DDC @ =gUnknown_030042A4
	movs r1, 0
	strh r1, [r0]
	ldr r0, _08014DE0 @ =gUnknown_030042A0
	strh r1, [r0]
	ldr r1, _08014DE4 @ =gNumSafariBalls
	ldrb r0, [r1]
	subs r0, 0x1
	strb r0, [r1]
	ldr r1, _08014DE8 @ =gUnknown_02024C04
	movs r0, 0x5
	strh r0, [r1]
	ldr r1, _08014DEC @ =gUnknown_02024C10
	ldr r0, _08014DF0 @ =gUnknown_081D9E48
	ldr r0, [r0, 0x14]
	str r0, [r1]
	ldr r1, _08014DF4 @ =gUnknown_02024A7F
	movs r0, 0xA
	strb r0, [r1]
	bx lr
	.align 2, 0
_08014DD0: .4byte gUnknown_02024C07
_08014DD4: .4byte gUnknown_02024A7A
_08014DD8: .4byte gUnknown_02024A7E
_08014DDC: .4byte gUnknown_030042A4
_08014DE0: .4byte gUnknown_030042A0
_08014DE4: .4byte gNumSafariBalls
_08014DE8: .4byte gUnknown_02024C04
_08014DEC: .4byte gUnknown_02024C10
_08014DF0: .4byte gUnknown_081D9E48
_08014DF4: .4byte gUnknown_02024A7F
	thumb_func_end sub_8014D98

	thumb_func_start sub_8014DF8
sub_8014DF8: @ 8014DF8
	push {r4-r6,lr}
	ldr r3, _08014E68 @ =gUnknown_02024C07
	ldr r1, _08014E6C @ =gUnknown_02024A7A
	ldr r0, _08014E70 @ =gUnknown_02024A7E
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	ldr r0, _08014E74 @ =gUnknown_030042A4
	movs r1, 0
	strh r1, [r0]
	ldr r0, _08014E78 @ =gUnknown_030042A0
	strh r1, [r0]
	ldr r6, _08014E7C @ =gUnknown_02024D1E
	ldr r2, _08014E80 @ =gUnknown_02024260
	ldrb r0, [r3]
	lsls r0, 9
	adds r1, r2, 0x1
	adds r0, r1
	ldrb r0, [r0]
	subs r0, 0x1
	strb r0, [r6, 0x5]
	ldr r1, _08014E84 @ =gUnknown_02024C04
	ldrb r0, [r3]
	lsls r0, 9
	adds r2, 0x2
	adds r0, r2
	ldrb r0, [r0]
	strh r0, [r1]
	ldr r2, _08014E88 @ =0x02000000
	ldr r0, _08014E8C @ =0x00016087
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, 0x2
	bhi _08014E42
	adds r0, 0x1
	strb r0, [r1]
_08014E42:
	ldr r0, _08014E90 @ =0x00016088
	adds r4, r2, r0
	ldrb r5, [r4]
	adds r3, r5, 0
	cmp r3, 0x1
	bls _08014E9C
	ldr r2, _08014E94 @ =gUnknown_081FA70C
	ldrb r1, [r1]
	lsls r0, r1, 1
	adds r0, r1
	ldrb r6, [r6, 0x5]
	adds r0, r6
	adds r0, r2
	ldrb r0, [r0]
	cmp r3, r0
	bcs _08014E98
	movs r0, 0x1
	b _08014E9A
	.align 2, 0
_08014E68: .4byte gUnknown_02024C07
_08014E6C: .4byte gUnknown_02024A7A
_08014E70: .4byte gUnknown_02024A7E
_08014E74: .4byte gUnknown_030042A4
_08014E78: .4byte gUnknown_030042A0
_08014E7C: .4byte gUnknown_02024D1E
_08014E80: .4byte gUnknown_02024260
_08014E84: .4byte gUnknown_02024C04
_08014E88: .4byte 0x02000000
_08014E8C: .4byte 0x00016087
_08014E90: .4byte 0x00016088
_08014E94: .4byte gUnknown_081FA70C
_08014E98:
	subs r0, r5, r0
_08014E9A:
	strb r0, [r4]
_08014E9C:
	ldr r1, _08014EB0 @ =gUnknown_02024C10
	ldr r0, _08014EB4 @ =gUnknown_081D9E98
	ldr r0, [r0, 0x8]
	str r0, [r1]
	ldr r1, _08014EB8 @ =gUnknown_02024A7F
	movs r0, 0xA
	strb r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08014EB0: .4byte gUnknown_02024C10
_08014EB4: .4byte gUnknown_081D9E98
_08014EB8: .4byte gUnknown_02024A7F
	thumb_func_end sub_8014DF8

	thumb_func_start sub_8014EBC
sub_8014EBC: @ 8014EBC
	push {r4,r5,lr}
	ldr r2, _08014F28 @ =gUnknown_02024C07
	ldr r1, _08014F2C @ =gUnknown_02024A7A
	ldr r0, _08014F30 @ =gUnknown_02024A7E
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r0, _08014F34 @ =gUnknown_030042A4
	movs r5, 0
	strh r5, [r0]
	ldr r0, _08014F38 @ =gUnknown_030042A0
	strh r5, [r0]
	ldr r3, _08014F3C @ =0x02000000
	ldr r0, _08014F40 @ =0x00016089
	adds r2, r3, r0
	ldr r1, _08014F44 @ =gUnknown_081FA71B
	subs r0, 0x3
	adds r4, r3, r0
	ldrb r0, [r4]
	adds r0, r1
	ldrb r0, [r0]
	ldrb r1, [r2]
	adds r0, r1
	strb r0, [r2]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x14
	bls _08014EFA
	movs r0, 0x14
	strb r0, [r2]
_08014EFA:
	ldr r0, _08014F48 @ =0x00016088
	adds r2, r3, r0
	ldr r1, _08014F4C @ =gUnknown_081FA71F
	ldrb r0, [r4]
	adds r0, r1
	ldrb r0, [r0]
	ldrb r1, [r2]
	adds r0, r1
	strb r0, [r2]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x14
	bls _08014F18
	movs r0, 0x14
	strb r0, [r2]
_08014F18:
	ldrb r0, [r4]
	cmp r0, 0x2
	bhi _08014F54
	adds r0, 0x1
	strb r0, [r4]
	ldr r0, _08014F50 @ =gUnknown_02024D1E
	strb r5, [r0, 0x5]
	b _08014F5A
	.align 2, 0
_08014F28: .4byte gUnknown_02024C07
_08014F2C: .4byte gUnknown_02024A7A
_08014F30: .4byte gUnknown_02024A7E
_08014F34: .4byte gUnknown_030042A4
_08014F38: .4byte gUnknown_030042A0
_08014F3C: .4byte 0x02000000
_08014F40: .4byte 0x00016089
_08014F44: .4byte gUnknown_081FA71B
_08014F48: .4byte 0x00016088
_08014F4C: .4byte gUnknown_081FA71F
_08014F50: .4byte gUnknown_02024D1E
_08014F54:
	ldr r1, _08014F70 @ =gUnknown_02024D1E
	movs r0, 0x1
	strb r0, [r1, 0x5]
_08014F5A:
	ldr r1, _08014F74 @ =gUnknown_02024C10
	ldr r0, _08014F78 @ =gUnknown_081D9E98
	ldr r0, [r0, 0x4]
	str r0, [r1]
	ldr r1, _08014F7C @ =gUnknown_02024A7F
	movs r0, 0xA
	strb r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014F70: .4byte gUnknown_02024D1E
_08014F74: .4byte gUnknown_02024C10
_08014F78: .4byte gUnknown_081D9E98
_08014F7C: .4byte gUnknown_02024A7F
	thumb_func_end sub_8014EBC

	thumb_func_start bs8_exit_by_flight
bs8_exit_by_flight: @ 8014F80
	push {r4,lr}
	ldr r2, _08014FA8 @ =gUnknown_02024C07
	ldr r1, _08014FAC @ =gUnknown_02024A7A
	ldr r4, _08014FB0 @ =gUnknown_02024A7E
	ldrb r0, [r4]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	movs r0, 0x11
	bl PlaySE
	ldr r0, _08014FB4 @ =gUnknown_02024A68
	ldrb r0, [r0]
	strb r0, [r4]
	ldr r1, _08014FB8 @ =gUnknown_02024D26
	movs r0, 0x4
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08014FA8: .4byte gUnknown_02024C07
_08014FAC: .4byte gUnknown_02024A7A
_08014FB0: .4byte gUnknown_02024A7E
_08014FB4: .4byte gUnknown_02024A68
_08014FB8: .4byte gUnknown_02024D26
	thumb_func_end bs8_exit_by_flight

	thumb_func_start sub_8014FBC
sub_8014FBC: @ 8014FBC
	ldr r3, _08015008 @ =gUnknown_02024C07
	ldr r1, _0801500C @ =gUnknown_02024A7A
	ldr r0, _08015010 @ =gUnknown_02024A7E
	ldrb r0, [r0]
	adds r0, r1
	ldrb r2, [r0]
	strb r2, [r3]
	ldr r0, _08015014 @ =gUnknown_030042A4
	movs r1, 0
	strh r1, [r0]
	ldr r0, _08015018 @ =gUnknown_030042A0
	strh r1, [r0]
	ldr r1, _0801501C @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x7
	strb r0, [r1, 0x1]
	strb r2, [r1, 0x2]
	ldr r2, _08015020 @ =gUnknown_02024A6A
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r1, _08015024 @ =gUnknown_02024C10
	ldr r0, _08015028 @ =gUnknown_081D9E98
	ldr r0, [r0, 0xC]
	str r0, [r1]
	ldr r1, _0801502C @ =gUnknown_02024A7F
	movs r0, 0xA
	strb r0, [r1]
	ldr r1, _08015030 @ =gUnknown_02024A76
	movs r0, 0xC
	strb r0, [r1, 0x1]
	bx lr
	.align 2, 0
_08015008: .4byte gUnknown_02024C07
_0801500C: .4byte gUnknown_02024A7A
_08015010: .4byte gUnknown_02024A7E
_08015014: .4byte gUnknown_030042A4
_08015018: .4byte gUnknown_030042A0
_0801501C: .4byte gUnknown_030041C0
_08015020: .4byte gUnknown_02024A6A
_08015024: .4byte gUnknown_02024C10
_08015028: .4byte gUnknown_081D9E98
_0801502C: .4byte gUnknown_02024A7F
_08015030: .4byte gUnknown_02024A76
	thumb_func_end sub_8014FBC

	thumb_func_start bsB_exit_by_move
bsB_exit_by_move: @ 8015034
	push {lr}
	bl sub_80173A4
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	bne _08015050
	ldr r0, _08015054 @ =0x02000000
	ldr r2, _08015058 @ =0x00016059
	adds r0, r2
	strb r1, [r0]
	ldr r1, _0801505C @ =gUnknown_02024A7F
	movs r0, 0xC
	strb r0, [r1]
_08015050:
	pop {r0}
	bx r0
	.align 2, 0
_08015054: .4byte 0x02000000
_08015058: .4byte 0x00016059
_0801505C: .4byte gUnknown_02024A7F
	thumb_func_end bsB_exit_by_move

	thumb_func_start sub_8015060
sub_8015060: @ 8015060
	ldr r1, _08015080 @ =gUnknown_02024A7E
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r3, _08015084 @ =gUnknown_02024A7F
	ldr r2, _08015088 @ =gUnknown_02024A76
	ldrb r0, [r1]
	adds r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	ldr r2, _0801508C @ =gUnknown_02024C6C
	ldr r0, [r2]
	ldr r1, _08015090 @ =0xf1e892af
	ands r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_08015080: .4byte gUnknown_02024A7E
_08015084: .4byte gUnknown_02024A7F
_08015088: .4byte gUnknown_02024A76
_0801508C: .4byte gUnknown_02024C6C
_08015090: .4byte 0xf1e892af
	thumb_func_end sub_8015060

	thumb_func_start bsC_8016D70
bsC_8016D70: @ 8015094
	push {r4,r5,lr}
	ldr r1, _0801510C @ =gUnknown_02024A7E
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r3, _08015110 @ =gUnknown_02024A7F
	ldr r2, _08015114 @ =gUnknown_02024A76
	ldrb r0, [r1]
	adds r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	bl sub_801377C
	ldr r2, _08015118 @ =gUnknown_02024C6C
	ldr r0, [r2]
	ldr r1, _0801511C @ =0xf1e892af
	ands r0, r1
	str r0, [r2]
	ldr r0, _08015120 @ =gUnknown_02024BEC
	movs r4, 0
	str r4, [r0]
	ldr r1, _08015124 @ =0x02000000
	ldr r2, _08015128 @ =0x00016002
	adds r0, r1, r2
	strb r4, [r0]
	ldr r3, _0801512C @ =0x000160a1
	adds r0, r1, r3
	strb r4, [r0]
	ldr r2, _08015130 @ =gUnknown_02024C3C
	ldr r5, _08015134 @ =gUnknown_02024C07
	ldrb r0, [r5]
	lsls r0, 1
	adds r0, r2
	movs r2, 0
	strh r4, [r0]
	ldr r3, _08015138 @ =gUnknown_02024C44
	ldrb r0, [r5]
	lsls r0, 1
	adds r0, r3
	strh r4, [r0]
	ldr r3, _0801513C @ =0x0001601c
	adds r0, r1, r3
	strb r2, [r0]
	ldr r0, _08015140 @ =gUnknown_02024DEC
	strh r4, [r0]
	subs r3, 0x10
	adds r0, r1, r3
	strb r2, [r0]
	ldr r0, _08015144 @ =gUnknown_02024D1E
	strb r2, [r0, 0x3]
	strb r2, [r0, 0x4]
	ldr r3, _08015148 @ =0x00016112
	adds r0, r1, r3
	strb r2, [r0]
	ldr r0, _0801514C @ =0x00017130
	adds r1, r0
	strb r2, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801510C: .4byte gUnknown_02024A7E
_08015110: .4byte gUnknown_02024A7F
_08015114: .4byte gUnknown_02024A76
_08015118: .4byte gUnknown_02024C6C
_0801511C: .4byte 0xf1e892af
_08015120: .4byte gUnknown_02024BEC
_08015124: .4byte 0x02000000
_08015128: .4byte 0x00016002
_0801512C: .4byte 0x000160a1
_08015130: .4byte gUnknown_02024C3C
_08015134: .4byte gUnknown_02024C07
_08015138: .4byte gUnknown_02024C44
_0801513C: .4byte 0x0001601c
_08015140: .4byte gUnknown_02024DEC
_08015144: .4byte gUnknown_02024D1E
_08015148: .4byte 0x00016112
_0801514C: .4byte 0x00017130
	thumb_func_end bsC_8016D70

	thumb_func_start sub_8015150
sub_8015150: @ 8015150
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	movs r2, 0
	cmp r0, 0xA
	bhi _080151C8
	lsls r0, 2
	ldr r1, _08015168 @ =_0801516C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08015168: .4byte _0801516C
	.align 2, 0
_0801516C:
	.4byte _08015198
	.4byte _080151A0
	.4byte _080151A8
	.4byte _080151C4
	.4byte _080151C8
	.4byte _080151C4
	.4byte _080151C8
	.4byte _080151B0
	.4byte _080151C8
	.4byte _080151C8
	.4byte _080151B4
_08015198:
	ldr r0, _0801519C @ =gUnknown_02024C08
	b _080151C6
	.align 2, 0
_0801519C: .4byte gUnknown_02024C08
_080151A0:
	ldr r0, _080151A4 @ =gUnknown_02024C07
	b _080151C6
	.align 2, 0
_080151A4: .4byte gUnknown_02024C07
_080151A8:
	ldr r0, _080151AC @ =gUnknown_02024C0A
	b _080151C6
	.align 2, 0
_080151AC: .4byte gUnknown_02024C0A
_080151B0:
	movs r2, 0
	b _080151C8
_080151B4:
	ldr r0, _080151BC @ =0x02000000
	ldr r1, _080151C0 @ =0x00016003
	adds r0, r1
	b _080151C6
	.align 2, 0
_080151BC: .4byte 0x02000000
_080151C0: .4byte 0x00016003
_080151C4:
	ldr r0, _080151D0 @ =gUnknown_02024C09
_080151C6:
	ldrb r2, [r0]
_080151C8:
	adds r0, r2, 0
	pop {r1}
	bx r1
	.align 2, 0
_080151D0: .4byte gUnknown_02024C09
	thumb_func_end sub_8015150

	thumb_func_start sub_80151D4
sub_80151D4: @ 80151D4
	push {r4-r7,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r5, r1, 24
	lsls r2, 16
	lsrs r2, 16
	ldr r1, _08015204 @ =gBattleMons
	movs r4, 0x58
	muls r0, r4
	adds r0, r1
	adds r0, 0x20
	ldrb r0, [r0]
	mov r12, r1
	cmp r0, 0x2E
	bne _08015286
	movs r3, 0
	adds r0, r5, 0
	muls r0, r4
	adds r1, 0xC
	adds r1, r0, r1
	b _08015210
	.align 2, 0
_08015204: .4byte gBattleMons
_08015208:
	adds r1, 0x2
	adds r3, 0x1
	cmp r3, 0x3
	bgt _08015216
_08015210:
	ldrh r0, [r1]
	cmp r0, r2
	bne _08015208
_08015216:
	cmp r3, 0x4
	beq _08015286
	movs r7, 0x58
	adds r2, r5, 0
	muls r2, r7
	adds r0, r3, r2
	mov r6, r12
	adds r6, 0x24
	adds r1, r0, r6
	ldrb r0, [r1]
	cmp r0, 0
	beq _08015232
	subs r0, 0x1
	strb r0, [r1]
_08015232:
	mov r0, r12
	adds r0, 0x50
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 14
	ands r0, r1
	cmp r0, 0
	bne _08015286
	ldr r1, _08015290 @ =gUnknown_02024CA8
	lsls r0, r5, 3
	subs r0, r5
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x18]
	lsrs r1, 4
	ldr r2, _08015294 @ =gBitTable
	lsls r0, r3, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _08015286
	ldr r4, _08015298 @ =gUnknown_02024A60
	strb r5, [r4]
	adds r1, r3, 0
	adds r1, 0x9
	lsls r1, 24
	lsrs r1, 24
	ldrb r0, [r4]
	muls r0, r7
	adds r0, r6
	adds r0, r3
	str r0, [sp]
	movs r0, 0
	movs r2, 0
	movs r3, 0x1
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_08015286:
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015290: .4byte gUnknown_02024CA8
_08015294: .4byte gBitTable
_08015298: .4byte gUnknown_02024A60
	thumb_func_end sub_80151D4

	thumb_func_start sub_801529C
sub_801529C: @ 801529C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r5, r0, 24
	movs r0, 0x4
	mov r8, r0
	adds r0, r5, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	movs r4, 0
	ldr r0, _080153BC @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r4, r0
	bge _08015344
	ldr r1, _080153C0 @ =gBattleMons
	movs r0, 0x58
	adds r7, r5, 0
	muls r7, r0
	adds r1, 0xC
	mov r10, r1
_080152D2:
	lsls r0, r4, 24
	lsrs r0, 24
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	adds r6, r4, 0x1
	cmp r9, r0
	beq _0801533A
	ldr r0, _080153C0 @ =gBattleMons
	movs r3, 0x58
	adds r1, r4, 0
	muls r1, r3
	adds r1, r0
	adds r1, 0x20
	ldrb r1, [r1]
	adds r4, r0, 0
	cmp r1, 0x2E
	bne _0801533A
	movs r2, 0
	adds r0, r5, 0
	muls r0, r3
	adds r1, r4, 0
	adds r1, 0xC
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x8F
	lsls r1, 1
	cmp r0, r1
	beq _08015322
	adds r3, r1, 0
	mov r0, r10
	adds r1, r7, r0
_08015314:
	adds r1, 0x2
	adds r2, 0x1
	cmp r2, 0x3
	bgt _08015322
	ldrh r0, [r1]
	cmp r0, r3
	bne _08015314
_08015322:
	cmp r2, 0x4
	beq _0801533A
	mov r8, r2
	adds r1, r2, r7
	adds r0, r4, 0
	adds r0, 0x24
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0
	beq _0801533A
	subs r0, 0x1
	strb r0, [r1]
_0801533A:
	adds r4, r6, 0
	ldr r0, _080153BC @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r4, r0
	blt _080152D2
_08015344:
	mov r1, r8
	cmp r1, 0x4
	beq _080153AC
	ldr r6, _080153C0 @ =gBattleMons
	movs r3, 0x58
	adds r0, r5, 0
	muls r0, r3
	adds r1, r6, 0
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 14
	ands r0, r1
	cmp r0, 0
	bne _080153AC
	ldr r1, _080153C4 @ =gUnknown_02024CA8
	lsls r0, r5, 3
	subs r0, r5
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x18]
	lsrs r1, 4
	ldr r2, _080153C8 @ =gBitTable
	mov r4, r8
	lsls r0, r4, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _080153AC
	ldr r4, _080153CC @ =gUnknown_02024A60
	strb r5, [r4]
	mov r1, r8
	adds r1, 0x9
	lsls r1, 24
	lsrs r1, 24
	ldrb r0, [r4]
	muls r0, r3
	adds r2, r6, 0
	adds r2, 0x24
	adds r0, r2
	add r0, r8
	str r0, [sp]
	movs r0, 0
	movs r2, 0
	movs r3, 0x1
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_080153AC:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080153BC: .4byte gUnknown_02024A68
_080153C0: .4byte gBattleMons
_080153C4: .4byte gUnknown_02024CA8
_080153C8: .4byte gBitTable
_080153CC: .4byte gUnknown_02024A60
	thumb_func_end sub_801529C

	thumb_func_start sub_80153D0
sub_80153D0: @ 80153D0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r3, r0, 24
	movs r6, 0x4
	movs r1, 0
	ldr r0, _080154C8 @ =gUnknown_02024A68
	mov r8, r0
	ldrb r0, [r0]
	cmp r1, r0
	bge _08015452
	ldr r7, _080154CC @ =gBattleMons
	movs r2, 0x58
	mov r12, r2
	mov r5, r12
	muls r5, r3
	adds r0, r7, 0
	adds r0, 0xC
	adds r2, r5, r0
	mov r10, r2
	mov r9, r5
_08015402:
	mov r0, r12
	muls r0, r1
	adds r0, r7
	adds r0, 0x20
	ldrb r0, [r0]
	adds r4, r1, 0x1
	cmp r0, 0x2E
	bne _08015448
	cmp r1, r3
	beq _08015448
	movs r2, 0
	mov r1, r10
	ldrh r0, [r1]
	cmp r0, 0xC3
	beq _08015432
	ldr r1, _080154D0 @ =gUnknown_02024A8C
	add r1, r9
_08015424:
	adds r1, 0x2
	adds r2, 0x1
	cmp r2, 0x3
	bgt _08015432
	ldrh r0, [r1]
	cmp r0, 0xC3
	bne _08015424
_08015432:
	cmp r2, 0x4
	beq _08015448
	adds r6, r2, 0
	adds r0, r6, r5
	ldr r2, _080154D4 @ =gUnknown_02024AA4
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, 0
	beq _08015448
	subs r0, 0x1
	strb r0, [r1]
_08015448:
	adds r1, r4, 0
	mov r0, r8
	ldrb r0, [r0]
	cmp r1, r0
	blt _08015402
_08015452:
	cmp r6, 0x4
	beq _080154B6
	ldr r7, _080154CC @ =gBattleMons
	movs r5, 0x58
	adds r0, r3, 0
	muls r0, r5
	adds r1, r7, 0
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 14
	ands r0, r1
	cmp r0, 0
	bne _080154B6
	ldr r1, _080154D8 @ =gUnknown_02024CA8
	lsls r0, r3, 3
	subs r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x18]
	lsrs r1, 4
	ldr r2, _080154DC @ =gBitTable
	lsls r0, r6, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _080154B6
	ldr r4, _080154E0 @ =gUnknown_02024A60
	strb r3, [r4]
	adds r1, r6, 0
	adds r1, 0x9
	lsls r1, 24
	lsrs r1, 24
	ldrb r0, [r4]
	muls r0, r5
	adds r2, r7, 0
	adds r2, 0x24
	adds r0, r2
	adds r0, r6
	str r0, [sp]
	movs r0, 0
	movs r2, 0
	movs r3, 0x1
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_080154B6:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080154C8: .4byte gUnknown_02024A68
_080154CC: .4byte gBattleMons
_080154D0: .4byte gUnknown_02024A8C
_080154D4: .4byte gUnknown_02024AA4
_080154D8: .4byte gUnknown_02024CA8
_080154DC: .4byte gBitTable
_080154E0: .4byte gUnknown_02024A60
	thumb_func_end sub_80153D0

	thumb_func_start unref_sub_80154E4
unref_sub_80154E4: @ 80154E4
	push {r4,r5,lr}
	ldr r0, _08015514 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08015524
	movs r2, 0
	ldr r4, _08015518 @ =gUnknown_02024A68
	ldrb r0, [r4]
	cmp r2, r0
	bge _08015542
	ldr r3, _0801551C @ =gUnknown_02024A64
	ldr r5, _08015520 @ =gBitTable
_08015500:
	ldm r5!, {r1}
	lsls r1, 28
	ldr r0, [r3]
	orrs r0, r1
	str r0, [r3]
	adds r2, 0x1
	ldrb r0, [r4]
	cmp r2, r0
	blt _08015500
	b _08015542
	.align 2, 0
_08015514: .4byte gUnknown_020239F8
_08015518: .4byte gUnknown_02024A68
_0801551C: .4byte gUnknown_02024A64
_08015520: .4byte gBitTable
_08015524:
	movs r2, 0
	ldr r4, _08015548 @ =gUnknown_02024A68
	ldrb r0, [r4]
	cmp r2, r0
	bge _08015542
	ldr r3, _0801554C @ =gUnknown_02024A64
	ldr r5, _08015550 @ =gBitTable
_08015532:
	ldr r0, [r3]
	ldm r5!, {r1}
	orrs r0, r1
	str r0, [r3]
	adds r2, 0x1
	ldrb r0, [r4]
	cmp r2, r0
	blt _08015532
_08015542:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08015548: .4byte gUnknown_02024A68
_0801554C: .4byte gUnknown_02024A64
_08015550: .4byte gBitTable
	thumb_func_end unref_sub_80154E4

	thumb_func_start dp01_battle_side_mark_buffer_for_execution
dp01_battle_side_mark_buffer_for_execution: @ 8015554
	push {lr}
	lsls r0, 24
	lsrs r3, r0, 24
	ldr r0, _0801557C @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08015588
	ldr r2, _08015580 @ =gUnknown_02024A64
	ldr r1, _08015584 @ =gBitTable
	lsls r0, r3, 2
	adds r0, r1
	ldr r1, [r0]
	lsls r1, 28
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	b _08015598
	.align 2, 0
_0801557C: .4byte gUnknown_020239F8
_08015580: .4byte gUnknown_02024A64
_08015584: .4byte gBitTable
_08015588:
	ldr r2, _0801559C @ =gUnknown_02024A64
	ldr r1, _080155A0 @ =gBitTable
	lsls r0, r3, 2
	adds r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	orrs r1, r0
	str r1, [r2]
_08015598:
	pop {r0}
	bx r0
	.align 2, 0
_0801559C: .4byte gUnknown_02024A64
_080155A0: .4byte gBitTable
	thumb_func_end dp01_battle_side_mark_buffer_for_execution

	thumb_func_start sub_80155A4
sub_80155A4: @ 80155A4
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r7, r0, 24
	movs r4, 0
	ldr r5, _080155B8 @ =gUnknown_02024A64
	ldr r1, _080155BC @ =gBitTable
	lsls r0, r7, 2
	adds r6, r0, r1
	b _080155CE
	.align 2, 0
_080155B8: .4byte gUnknown_02024A64
_080155BC: .4byte gBitTable
_080155C0:
	lsls r0, r4, 2
	ldr r1, [r6]
	lsls r1, r0
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	adds r4, 0x1
_080155CE:
	bl GetLinkPlayerCount
	lsls r0, 24
	lsrs r0, 24
	cmp r4, r0
	blt _080155C0
	ldr r2, _080155F0 @ =gUnknown_02024A64
	movs r1, 0x80
	lsls r1, 21
	lsls r1, r7
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080155F0: .4byte gUnknown_02024A64
	thumb_func_end sub_80155A4

	thumb_func_start b_cancel_multi_turn_move_maybe
b_cancel_multi_turn_move_maybe: @ 80155F4
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _08015644 @ =gBattleMons
	movs r2, 0x58
	adds r3, r0, 0
	muls r3, r2
	adds r1, 0x50
	adds r3, r1
	ldr r1, [r3]
	ldr r2, _08015648 @ =0xffffefff
	ands r1, r2
	ldr r2, _0801564C @ =0xfffff3ff
	ands r1, r2
	movs r2, 0x71
	negs r2, r2
	ands r1, r2
	ldr r2, _08015650 @ =0xfffffcff
	ands r1, r2
	str r1, [r3]
	ldr r1, _08015654 @ =gUnknown_02024C98
	lsls r2, r0, 2
	adds r2, r1
	ldr r1, [r2]
	ldr r3, _08015658 @ =0xfffbff3f
	ands r1, r3
	str r1, [r2]
	ldr r2, _0801565C @ =gUnknown_02024CA8
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r2
	ldrb r2, [r1, 0x11]
	movs r0, 0x10
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0x11]
	movs r0, 0
	strb r0, [r1, 0x10]
	bx lr
	.align 2, 0
_08015644: .4byte gBattleMons
_08015648: .4byte 0xffffefff
_0801564C: .4byte 0xfffff3ff
_08015650: .4byte 0xfffffcff
_08015654: .4byte gUnknown_02024C98
_08015658: .4byte 0xfffbff3f
_0801565C: .4byte gUnknown_02024CA8
	thumb_func_end b_cancel_multi_turn_move_maybe

	thumb_func_start sub_8015660
sub_8015660: @ 8015660
	push {lr}
	lsls r0, 24
	ldr r1, _080156AC @ =gUnknown_02024D28
	lsrs r0, 20
	adds r1, r0, r1
	ldrb r0, [r1]
	lsrs r0, 7
	cmp r0, 0
	bne _080156A6
	ldrb r2, [r1, 0x1]
	lsls r0, r2, 30
	cmp r0, 0
	blt _080156A6
	lsls r0, r2, 26
	cmp r0, 0
	blt _080156A6
	lsls r0, r2, 25
	cmp r0, 0
	blt _080156A6
	lsrs r0, r2, 7
	cmp r0, 0
	bne _080156A6
	ldrb r1, [r1, 0x2]
	lsls r0, r1, 31
	cmp r0, 0
	bne _080156A6
	lsls r0, r1, 30
	cmp r0, 0
	blt _080156A6
	lsls r0, r1, 29
	cmp r0, 0
	blt _080156A6
	lsls r0, r2, 31
	cmp r0, 0
	beq _080156B0
_080156A6:
	movs r0, 0x1
	b _080156B2
	.align 2, 0
_080156AC: .4byte gUnknown_02024D28
_080156B0:
	movs r0, 0
_080156B2:
	pop {r1}
	bx r1
	thumb_func_end sub_8015660

	thumb_func_start b_std_message
b_std_message: @ 80156B8
	push {r4,lr}
	adds r2, r0, 0
	lsls r2, 16
	lsrs r2, 16
	ldr r4, _080156D8 @ =gUnknown_02024A60
	strb r1, [r4]
	movs r0, 0
	adds r1, r2, 0
	bl dp01_build_cmdbuf_x10_TODO
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080156D8: .4byte gUnknown_02024A60
	thumb_func_end b_std_message

	thumb_func_start sub_80156DC
sub_80156DC: @ 80156DC
	push {r4-r6,lr}
	movs r3, 0
	ldr r0, _08015730 @ =gUnknown_02024DEA
	strb r3, [r0]
	strb r3, [r0, 0x1]
	movs r1, 0
	ldr r0, _08015734 @ =gUnknown_02024A68
	ldrb r2, [r0]
	adds r6, r0, 0
	cmp r1, r2
	bge _0801570A
	ldr r5, _08015738 @ =gBitTable
	adds r4, r2, 0
	ldr r2, _0801573C @ =gUnknown_02024A6A
_080156F8:
	ldrh r0, [r2]
	lsls r0, 2
	adds r0, r5
	ldr r0, [r0]
	orrs r3, r0
	adds r2, 0x4
	adds r1, 0x2
	cmp r1, r4
	blt _080156F8
_0801570A:
	movs r1, 0x1
	adds r2, r6, 0
	ldrb r0, [r2]
	cmp r1, r0
	bge _0801572A
	ldr r5, _08015730 @ =gUnknown_02024DEA
	movs r4, 0x2
_08015718:
	adds r0, r1, 0
	ands r0, r4
	asrs r0, 1
	adds r0, r5
	strb r3, [r0]
	adds r1, 0x2
	ldrb r0, [r2]
	cmp r1, r0
	blt _08015718
_0801572A:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015730: .4byte gUnknown_02024DEA
_08015734: .4byte gUnknown_02024A68
_08015738: .4byte gBitTable
_0801573C: .4byte gUnknown_02024A6A
	thumb_func_end sub_80156DC

	thumb_func_start sub_8015740
sub_8015740: @ 8015740
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r5, r0, 24
	movs r4, 0
	adds r0, r5, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080157A4
	movs r0, 0x2
	ands r0, r5
	lsls r0, 24
	lsrs r0, 25
	mov r12, r0
	ldr r1, _080157B0 @ =gUnknown_02024DEA
	adds r0, r1
	strb r4, [r0]
	adds r5, r4, 0
	ldr r0, _080157B4 @ =gUnknown_02024A68
	ldrb r2, [r0]
	mov r8, r1
	cmp r4, r2
	bge _0801579E
	ldr r0, _080157B8 @ =gUnknown_02024C0C
	ldrb r7, [r0]
	ldr r1, _080157BC @ =gBitTable
	adds r6, r2, 0
	ldr r3, _080157C0 @ =gUnknown_02024A6A
	adds r2, r1, 0
_08015782:
	ldr r0, [r2]
	ands r0, r7
	cmp r0, 0
	bne _08015794
	ldrh r0, [r3]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	orrs r4, r0
_08015794:
	adds r3, 0x4
	adds r2, 0x8
	adds r5, 0x2
	cmp r5, r6
	blt _08015782
_0801579E:
	mov r0, r12
	add r0, r8
	strb r4, [r0]
_080157A4:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080157B0: .4byte gUnknown_02024DEA
_080157B4: .4byte gUnknown_02024A68
_080157B8: .4byte gUnknown_02024C0C
_080157BC: .4byte gBitTable
_080157C0: .4byte gUnknown_02024A6A
	thumb_func_end sub_8015740

	thumb_func_start sub_80157C4
sub_80157C4: @ 80157C4
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	adds r0, r4, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080157E0
	adds r0, r4, 0
	bl sub_8015740
	b _08015816
_080157E0:
	movs r3, 0x1
	ldr r5, _0801581C @ =gUnknown_02024A68
	ldrb r0, [r5]
	cmp r3, r0
	bge _08015816
	ldr r0, _08015820 @ =gUnknown_02024DEA
	mov r12, r0
	movs r7, 0x2
	ldr r6, _08015824 @ =gBitTable
	ldr r1, _08015828 @ =gUnknown_02024A6A
	lsls r0, r4, 1
	adds r4, r0, r1
_080157F8:
	adds r2, r3, 0
	ands r2, r7
	asrs r2, 1
	add r2, r12
	ldrh r0, [r4]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r3, 0x1
	ldrb r0, [r5]
	cmp r3, r0
	blt _080157F8
_08015816:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801581C: .4byte gUnknown_02024A68
_08015820: .4byte gUnknown_02024DEA
_08015824: .4byte gBitTable
_08015828: .4byte gUnknown_02024A6A
	thumb_func_end sub_80157C4

	thumb_func_start b_movescr_stack_push
b_movescr_stack_push: @ 801582C
	push {r4,lr}
	ldr r4, _08015848 @ =0x02017110
	adds r3, r4, 0
	adds r3, 0x20
	ldrb r1, [r3]
	adds r2, r1, 0x1
	strb r2, [r3]
	lsls r1, 24
	lsrs r1, 22
	adds r1, r4
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08015848: .4byte 0x02017110
	thumb_func_end b_movescr_stack_push

	thumb_func_start b_movescr_stack_push_cursor
b_movescr_stack_push_cursor: @ 801584C
	ldr r3, _08015868 @ =0x02017110
	adds r2, r3, 0
	adds r2, 0x20
	ldrb r0, [r2]
	adds r1, r0, 0x1
	strb r1, [r2]
	lsls r0, 24
	lsrs r0, 22
	adds r0, r3
	ldr r1, _0801586C @ =gUnknown_02024C10
	ldr r1, [r1]
	str r1, [r0]
	bx lr
	.align 2, 0
_08015868: .4byte 0x02017110
_0801586C: .4byte gUnknown_02024C10
	thumb_func_end b_movescr_stack_push_cursor

	thumb_func_start b_movescr_stack_pop_cursor
b_movescr_stack_pop_cursor: @ 8015870
	ldr r3, _0801588C @ =gUnknown_02024C10
	ldr r2, _08015890 @ =0x02017110
	adds r1, r2, 0
	adds r1, 0x20
	ldrb r0, [r1]
	subs r0, 0x1
	strb r0, [r1]
	lsls r0, 24
	lsrs r0, 22
	adds r0, r2
	ldr r0, [r0]
	str r0, [r3]
	bx lr
	.align 2, 0
_0801588C: .4byte gUnknown_02024C10
_08015890: .4byte 0x02017110
	thumb_func_end b_movescr_stack_pop_cursor

	thumb_func_start sub_8015894
sub_8015894: @ 8015894
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	movs r6, 0
	ldr r2, _080159AC @ =gBattleMons
	ldr r1, _080159B0 @ =gUnknown_02024260
	ldr r5, _080159B4 @ =gUnknown_02024A60
	ldrb r3, [r5]
	lsls r0, r3, 9
	adds r1, 0x2
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 1
	movs r1, 0x58
	muls r1, r3
	adds r0, r1
	adds r2, 0xC
	adds r0, r2
	ldrh r4, [r0]
	lsls r0, r3, 1
	ldr r2, _080159B8 @ =0x020160e8
	adds r0, r2
	mov r8, r0
	ldr r1, _080159BC @ =gUnknown_02024CA8
	lsls r0, r3, 3
	subs r0, r3
	lsls r0, 2
	adds r0, r1
	ldrh r0, [r0, 0x4]
	cmp r0, r4
	bne _080158EE
	cmp r4, 0
	beq _080158EE
	adds r0, r2, 0
	subs r0, 0xE5
	strb r3, [r0]
	ldr r0, _080159C0 @ =gUnknown_02024BE6
	strh r4, [r0]
	ldr r1, _080159C4 @ =gUnknown_02024C1C
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r1, _080159C8 @ =gUnknown_081D9144
	str r1, [r0]
	movs r6, 0x1
_080158EE:
	ldr r1, _080159CC @ =gUnknown_02024C34
	ldr r5, _080159B4 @ =gUnknown_02024A60
	ldrb r2, [r5]
	lsls r0, r2, 1
	adds r0, r1
	ldrh r0, [r0]
	cmp r4, r0
	bne _0801592A
	cmp r4, 0xA5
	beq _0801592A
	ldr r1, _080159AC @ =gBattleMons
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	cmp r0, 0
	bge _0801592A
	adds r0, r2, 0
	bl b_cancel_multi_turn_move_maybe
	ldr r1, _080159C4 @ =gUnknown_02024C1C
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r1, _080159D0 @ =gUnknown_081D937C
	str r1, [r0]
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_0801592A:
	ldr r2, _080159BC @ =gUnknown_02024CA8
	ldr r3, _080159B4 @ =gUnknown_02024A60
	ldrb r1, [r3]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x13]
	lsls r0, 28
	cmp r0, 0
	beq _08015966
	ldr r0, _080159D4 @ =gBattleMoves
	lsls r1, r4, 1
	adds r1, r4
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x1]
	cmp r0, 0
	bne _08015966
	ldr r0, _080159C0 @ =gUnknown_02024BE6
	strh r4, [r0]
	ldr r1, _080159C4 @ =gUnknown_02024C1C
	ldrb r0, [r3]
	lsls r0, 2
	adds r0, r1
	ldr r1, _080159D8 @ =gUnknown_081D938B
	str r1, [r0]
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_08015966:
	ldr r5, _080159B4 @ =gUnknown_02024A60
	ldrb r0, [r5]
	adds r1, r4, 0
	bl sub_8015D5C
	lsls r0, 24
	cmp r0, 0
	beq _0801598C
	ldr r0, _080159C0 @ =gUnknown_02024BE6
	strh r4, [r0]
	ldr r1, _080159C4 @ =gUnknown_02024C1C
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r1, _080159DC @ =gUnknown_081D9464
	str r1, [r0]
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_0801598C:
	ldr r1, _080159AC @ =gBattleMons
	ldrb r2, [r5]
	movs r0, 0x58
	muls r0, r2
	adds r1, r0, r1
	ldrh r0, [r1, 0x2E]
	cmp r0, 0xAF
	bne _080159E4
	ldr r1, _080159E0 @ =gEnigmaBerries
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r3, [r0, 0x7]
	b _080159EE
	.align 2, 0
_080159AC: .4byte gBattleMons
_080159B0: .4byte gUnknown_02024260
_080159B4: .4byte gUnknown_02024A60
_080159B8: .4byte 0x020160e8
_080159BC: .4byte gUnknown_02024CA8
_080159C0: .4byte gUnknown_02024BE6
_080159C4: .4byte gUnknown_02024C1C
_080159C8: .4byte gUnknown_081D9144
_080159CC: .4byte gUnknown_02024C34
_080159D0: .4byte gUnknown_081D937C
_080159D4: .4byte gBattleMoves
_080159D8: .4byte gUnknown_081D938B
_080159DC: .4byte gUnknown_081D9464
_080159E0: .4byte gEnigmaBerries
_080159E4:
	ldrh r0, [r1, 0x2E]
	bl ItemId_GetHoldEffect
	lsls r0, 24
	lsrs r3, r0, 24
_080159EE:
	ldr r2, _08015A70 @ =gUnknown_02024C0B
	ldr r1, _08015A74 @ =gUnknown_02024A60
	ldrb r0, [r1]
	strb r0, [r2]
	ldr r7, _08015A78 @ =gBattleMons
	adds r5, r1, 0
	cmp r3, 0x1D
	bne _08015A36
	mov r0, r8
	ldrh r2, [r0]
	adds r1, r2, 0
	cmp r1, 0
	beq _08015A36
	ldr r0, _08015A7C @ =0x0000ffff
	cmp r1, r0
	beq _08015A36
	cmp r1, r4
	beq _08015A36
	ldr r0, _08015A80 @ =gUnknown_02024BE6
	strh r2, [r0]
	ldr r2, _08015A84 @ =gUnknown_02024C04
	ldrb r1, [r5]
	movs r0, 0x58
	muls r0, r1
	adds r0, r7
	ldrh r0, [r0, 0x2E]
	strh r0, [r2]
	ldr r1, _08015A88 @ =gUnknown_02024C1C
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r1, _08015A8C @ =gUnknown_081D9AC2
	str r1, [r0]
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_08015A36:
	ldr r0, _08015A90 @ =gUnknown_02024260
	ldrb r2, [r5]
	lsls r1, r2, 9
	adds r0, 0x2
	adds r1, r0
	movs r0, 0x58
	muls r0, r2
	ldrb r1, [r1]
	adds r0, r1
	adds r1, r7, 0
	adds r1, 0x24
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _08015A64
	ldr r1, _08015A88 @ =gUnknown_02024C1C
	lsls r0, r2, 2
	adds r0, r1
	ldr r1, _08015A94 @ =gUnknown_081D9369
	str r1, [r0]
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_08015A64:
	adds r0, r6, 0
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_08015A70: .4byte gUnknown_02024C0B
_08015A74: .4byte gUnknown_02024A60
_08015A78: .4byte gBattleMons
_08015A7C: .4byte 0x0000ffff
_08015A80: .4byte gUnknown_02024BE6
_08015A84: .4byte gUnknown_02024C04
_08015A88: .4byte gUnknown_02024C1C
_08015A8C: .4byte gUnknown_081D9AC2
_08015A90: .4byte gUnknown_02024260
_08015A94: .4byte gUnknown_081D9369
	thumb_func_end sub_8015894

	thumb_func_start sub_8015A98
sub_8015A98: @ 8015A98
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x1C
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r1, 24
	lsrs r4, r1, 24
	lsls r2, 24
	lsrs r3, r2, 24
	lsls r1, r7, 1
	ldr r0, _08015AD8 @ =0x020160e8
	adds r1, r0
	str r1, [sp, 0x4]
	ldr r1, _08015ADC @ =gBattleMons
	movs r0, 0x58
	muls r0, r7
	adds r1, r0, r1
	ldrh r0, [r1, 0x2E]
	cmp r0, 0xAF
	bne _08015AE4
	ldr r2, _08015AE0 @ =gEnigmaBerries
	lsls r1, r7, 3
	subs r0, r1, r7
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x7]
	str r0, [sp]
	b _08015AF6
	.align 2, 0
_08015AD8: .4byte 0x020160e8
_08015ADC: .4byte gBattleMons
_08015AE0: .4byte gEnigmaBerries
_08015AE4:
	ldrh r0, [r1, 0x2E]
	str r3, [sp, 0x14]
	bl ItemId_GetHoldEffect
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	lsls r1, r7, 3
	ldr r3, [sp, 0x14]
_08015AF6:
	ldr r0, _08015C70 @ =gUnknown_02024C0B
	strb r7, [r0]
	movs r0, 0
	mov r9, r0
	lsls r2, r7, 1
	str r2, [sp, 0xC]
	ldr r5, _08015C74 @ =gUnknown_02024CA8
	mov r12, r5
	ldr r0, _08015C78 @ =gBattleMons
	movs r2, 0x58
	adds r6, r7, 0
	muls r6, r2
	str r6, [sp, 0x8]
	ldr r2, _08015C7C @ =gUnknown_02024A8C
	adds r5, r6, r2
	movs r6, 0
	str r6, [sp, 0x10]
	mov r10, r0
	subs r0, r1, r7
	lsls r0, 2
	mov r8, r0
	ldr r6, _08015C80 @ =gBitTable
_08015B22:
	ldrh r0, [r5]
	cmp r0, 0
	bne _08015B38
	movs r0, 0x1
	ands r0, r3
	cmp r0, 0
	beq _08015B38
	ldr r0, [r6]
	orrs r4, r0
	lsls r0, r4, 24
	lsrs r4, r0, 24
_08015B38:
	ldr r0, [sp, 0x8]
	add r0, r9
	mov r1, r10
	adds r1, 0x24
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _08015B58
	movs r0, 0x2
	ands r0, r3
	cmp r0, 0
	beq _08015B58
	ldr r0, [r6]
	orrs r4, r0
	lsls r0, r4, 24
	lsrs r4, r0, 24
_08015B58:
	mov r1, r8
	add r1, r12
	ldrh r0, [r5]
	ldrh r1, [r1, 0x4]
	cmp r0, r1
	bne _08015B74
	movs r0, 0x4
	ands r0, r3
	cmp r0, 0
	beq _08015B74
	ldr r0, [r6]
	orrs r4, r0
	lsls r0, r4, 24
	lsrs r4, r0, 24
_08015B74:
	movs r0, 0x58
	adds r2, r7, 0
	muls r2, r0
	ldr r1, [sp, 0x10]
	adds r0, r1, r2
	ldr r1, _08015C7C @ =gUnknown_02024A8C
	adds r0, r1
	mov r12, r0
	ldr r1, _08015C84 @ =gUnknown_02024C34
	ldr r0, [sp, 0xC]
	adds r1, r0, r1
	str r1, [sp, 0x18]
	mov r1, r12
	ldrh r1, [r1]
	mov r12, r1
	ldr r0, [sp, 0x18]
	ldrh r0, [r0]
	cmp r12, r0
	bne _08015BB6
	movs r0, 0x8
	ands r0, r3
	cmp r0, 0
	beq _08015BB6
	mov r0, r10
	adds r0, 0x50
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, 0
	bge _08015BB6
	ldr r0, [r6]
	orrs r4, r0
	lsls r0, r4, 24
	lsrs r4, r0, 24
_08015BB6:
	ldr r0, _08015C74 @ =gUnknown_02024CA8
	add r0, r8
	ldrb r0, [r0, 0x13]
	lsls r0, 28
	cmp r0, 0
	beq _08015BE4
	movs r0, 0x10
	ands r0, r3
	cmp r0, 0
	beq _08015BE4
	ldr r2, _08015C88 @ =gBattleMoves
	ldrh r1, [r5]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	bne _08015BE4
	ldr r0, [r6]
	orrs r4, r0
	lsls r0, r4, 24
	lsrs r4, r0, 24
_08015BE4:
	ldrh r1, [r5]
	adds r0, r7, 0
	str r3, [sp, 0x14]
	bl sub_8015D5C
	lsls r0, 24
	ldr r3, [sp, 0x14]
	cmp r0, 0
	beq _08015C06
	movs r0, 0x20
	ands r0, r3
	cmp r0, 0
	beq _08015C06
	ldr r0, [r6]
	orrs r4, r0
	lsls r0, r4, 24
	lsrs r4, r0, 24
_08015C06:
	ldr r1, _08015C74 @ =gUnknown_02024CA8
	mov r0, r8
	adds r2, r0, r1
	ldrb r0, [r2, 0xE]
	lsls r0, 28
	mov r12, r1
	cmp r0, 0
	beq _08015C26
	ldrh r0, [r2, 0x6]
	ldrh r1, [r5]
	cmp r0, r1
	beq _08015C26
	ldr r0, [r6]
	orrs r4, r0
	lsls r0, r4, 24
	lsrs r4, r0, 24
_08015C26:
	ldr r2, [sp]
	cmp r2, 0x1D
	bne _08015C48
	ldr r0, [sp, 0x4]
	ldrh r1, [r0]
	cmp r1, 0
	beq _08015C48
	ldr r0, _08015C8C @ =0x0000ffff
	cmp r1, r0
	beq _08015C48
	ldrh r2, [r5]
	cmp r1, r2
	beq _08015C48
	ldr r0, [r6]
	orrs r4, r0
	lsls r0, r4, 24
	lsrs r4, r0, 24
_08015C48:
	adds r6, 0x4
	adds r5, 0x2
	ldr r0, [sp, 0x10]
	adds r0, 0x2
	str r0, [sp, 0x10]
	movs r1, 0x1
	add r9, r1
	mov r2, r9
	cmp r2, 0x3
	bgt _08015C5E
	b _08015B22
_08015C5E:
	adds r0, r4, 0
	add sp, 0x1C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_08015C70: .4byte gUnknown_02024C0B
_08015C74: .4byte gUnknown_02024CA8
_08015C78: .4byte gBattleMons
_08015C7C: .4byte gUnknown_02024A8C
_08015C80: .4byte gBitTable
_08015C84: .4byte gUnknown_02024C34
_08015C88: .4byte gBattleMoves
_08015C8C: .4byte 0x0000ffff
	thumb_func_end sub_8015A98

	thumb_func_start sub_8015C90
sub_8015C90: @ 8015C90
	push {r4-r6,lr}
	ldr r5, _08015CFC @ =gUnknown_02024A60
	ldrb r0, [r5]
	movs r1, 0
	movs r2, 0xFF
	bl sub_8015A98
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0xF
	bne _08015D38
	ldr r0, _08015D00 @ =gUnknown_02024D28
	ldrb r1, [r5]
	lsls r1, 4
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
	ldr r1, _08015D04 @ =gUnknown_02024C1C
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r1, _08015D08 @ =gUnknown_081D9365
	str r1, [r0]
	ldr r0, _08015D0C @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08015D14
	ldrb r0, [r5]
	bl battle_get_per_side_status
	adds r4, r0, 0
	bl Random
	movs r1, 0x1
	eors r4, r1
	movs r1, 0x2
	ands r1, r0
	orrs r4, r1
	lsls r4, 24
	lsrs r4, 24
	adds r0, r4, 0
	bl battle_get_side_with_given_state
	ldr r2, _08015D10 @ =gUnknown_02024260
	ldrb r1, [r5]
	lsls r1, 9
	adds r2, 0x3
	adds r1, r2
	b _08015D48
	.align 2, 0
_08015CFC: .4byte gUnknown_02024A60
_08015D00: .4byte gUnknown_02024D28
_08015D04: .4byte gUnknown_02024C1C
_08015D08: .4byte gUnknown_081D9365
_08015D0C: .4byte gUnknown_020239F8
_08015D10: .4byte gUnknown_02024260
_08015D14:
	ldrb r0, [r5]
	bl battle_get_per_side_status
	movs r1, 0x1
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	ldr r2, _08015D34 @ =gUnknown_02024260
	ldrb r1, [r5]
	lsls r1, 9
	adds r2, 0x3
	adds r1, r2
	b _08015D48
	.align 2, 0
_08015D34: .4byte gUnknown_02024260
_08015D38:
	ldr r0, _08015D58 @ =gUnknown_02024D28
	ldrb r1, [r5]
	lsls r1, 4
	adds r1, r0
	ldrb r2, [r1]
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
_08015D48:
	strb r0, [r1]
	movs r0, 0
	cmp r6, 0xF
	bne _08015D52
	movs r0, 0x1
_08015D52:
	pop {r4-r6}
	pop {r1}
	bx r1
	.align 2, 0
_08015D58: .4byte gUnknown_02024D28
	thumb_func_end sub_8015C90

	thumb_func_start sub_8015D5C
sub_8015D5C: @ 8015D5C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 16
	lsrs r5, r1, 16
	movs r6, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	movs r4, 0
	ldr r0, _08015DF0 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r6, r0
	bge _08015DE0
	ldr r7, _08015DF4 @ =gUnknown_02024A8C
	mov r8, r7
_08015D86:
	lsls r0, r4, 24
	lsrs r0, 24
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	adds r3, r4, 0x1
	cmp r9, r0
	beq _08015DD6
	ldr r1, _08015DF8 @ =gUnknown_02024C98
	lsls r0, r4, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 6
	ands r0, r1
	cmp r0, 0
	beq _08015DD6
	movs r2, 0
	movs r0, 0x58
	adds r1, r4, 0
	muls r1, r0
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r5, r0
	beq _08015DCC
	mov r4, r8
	adds r0, r1, r4
_08015DBE:
	adds r0, 0x2
	adds r2, 0x1
	cmp r2, 0x3
	bgt _08015DD6
	ldrh r1, [r0]
	cmp r5, r1
	bne _08015DBE
_08015DCC:
	cmp r2, 0x3
	bgt _08015DD6
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_08015DD6:
	adds r4, r3, 0
	ldr r0, _08015DF0 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r4, r0
	blt _08015D86
_08015DE0:
	adds r0, r6, 0
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_08015DF0: .4byte gUnknown_02024A68
_08015DF4: .4byte gUnknown_02024A8C
_08015DF8: .4byte gUnknown_02024C98
	thumb_func_end sub_8015D5C

	thumb_func_start sub_8015DFC
sub_8015DFC: @ 8015DFC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	movs r0, 0
	mov r9, r0
	ldr r1, _08015EA0 @ =gUnknown_02024C07
	mov r2, r9
	strb r2, [r1]
	ldr r0, _08015EA4 @ =gUnknown_02024A68
	ldrb r4, [r0]
	adds r6, r1, 0
	mov r10, r0
	ldr r7, _08015EA8 @ =gUnknown_02024C08
	ldr r3, _08015EAC @ =0x02000000
	mov r12, r3
	cmp r9, r4
	bcs _08015E50
	ldr r2, _08015EB0 @ =gUnknown_02024C0C
	ldrb r1, [r2]
	ldr r5, _08015EB4 @ =gBitTable
	ldr r0, [r5]
	ands r1, r0
	cmp r1, 0
	beq _08015E50
	adds r3, r6, 0
_08015E32:
	ldrb r0, [r3]
	adds r0, 0x1
	strb r0, [r3]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, r4
	bcs _08015E50
	ldrb r0, [r2]
	ldrb r1, [r6]
	lsls r1, 2
	adds r1, r5
	ldr r1, [r1]
	ands r0, r1
	cmp r0, 0
	bne _08015E32
_08015E50:
	movs r0, 0
	strb r0, [r7]
	mov r0, r10
	ldrb r4, [r0]
	cmp r4, 0
	beq _08015E8A
	ldr r2, _08015EB0 @ =gUnknown_02024C0C
	ldrb r1, [r2]
	ldr r5, _08015EB4 @ =gBitTable
	ldr r0, [r5]
	ands r1, r0
	cmp r1, 0
	beq _08015E8A
	adds r3, r7, 0
_08015E6C:
	ldrb r0, [r3]
	adds r0, 0x1
	strb r0, [r3]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, r4
	bcs _08015E8A
	ldrb r0, [r2]
	ldrb r1, [r7]
	lsls r1, 2
	adds r1, r5
	ldr r1, [r1]
	ands r0, r1
	cmp r0, 0
	bne _08015E6C
_08015E8A:
	ldr r0, _08015EB8 @ =0x0001600e
	add r0, r12
	ldrb r0, [r0]
	cmp r0, 0xA
	bls _08015E96
	b _0801652A
_08015E96:
	lsls r0, 2
	ldr r1, _08015EBC @ =_08015EC0
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08015EA0: .4byte gUnknown_02024C07
_08015EA4: .4byte gUnknown_02024A68
_08015EA8: .4byte gUnknown_02024C08
_08015EAC: .4byte 0x02000000
_08015EB0: .4byte gUnknown_02024C0C
_08015EB4: .4byte gBitTable
_08015EB8: .4byte 0x0001600e
_08015EBC: .4byte _08015EC0
	.align 2, 0
_08015EC0:
	.4byte _08015EEC
	.4byte _08015F74
	.4byte _08016034
	.4byte _080160F4
	.4byte _080161C8
	.4byte _08016274
	.4byte _08016324
	.4byte _080163A8
	.4byte _08016420
	.4byte _08016494
	.4byte _08016520
_08015EEC:
	movs r5, 0
	ldr r1, _08015F0C @ =gUnknown_02024A68
	mov r10, r1
	ldrb r2, [r1]
	cmp r5, r2
	bge _08015F06
	ldr r2, _08015F10 @ =gUnknown_02024A7A
_08015EFA:
	adds r0, r5, r2
	strb r5, [r0]
	adds r5, 0x1
	ldrb r3, [r1]
	cmp r5, r3
	blt _08015EFA
_08015F06:
	movs r5, 0
	b _08015F54
	.align 2, 0
_08015F0C: .4byte gUnknown_02024A68
_08015F10: .4byte gUnknown_02024A7A
_08015F14:
	adds r4, r5, 0x1
	adds r6, r4, 0
	ldrb r1, [r1]
	cmp r6, r1
	bge _08015F52
	ldr r7, _08016004 @ =gUnknown_02024A7A
	ldr r0, _08016008 @ =gUnknown_02024A68
	mov r10, r0
	lsls r1, r5, 24
	mov r8, r1
_08015F28:
	adds r0, r5, r7
	ldrb r0, [r0]
	adds r1, r4, r7
	ldrb r1, [r1]
	movs r2, 0
	bl b_first_side
	lsls r0, 24
	cmp r0, 0
	beq _08015F48
	lsls r1, r4, 24
	lsrs r1, 24
	mov r2, r8
	lsrs r0, r2, 24
	bl sub_8012FBC
_08015F48:
	adds r4, 0x1
	ldr r0, _08016008 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r4, r0
	blt _08015F28
_08015F52:
	adds r5, r6, 0
_08015F54:
	mov r1, r10
	ldrb r0, [r1]
	subs r0, 0x1
	cmp r5, r0
	blt _08015F14
	ldr r1, _0801600C @ =0x02000000
	ldr r3, _08016010 @ =0x0001600e
	adds r2, r1, r3
	ldrb r0, [r2]
	adds r0, 0x1
	movs r3, 0
	strb r0, [r2]
	ldr r2, _08016014 @ =0x000160fc
	adds r0, r1, r2
	strb r3, [r0]
	mov r12, r1
_08015F74:
	ldr r1, _08016014 @ =0x000160fc
	add r1, r12
	ldrb r0, [r1]
	cmp r0, 0x1
	bls _08015F80
	b _08016236
_08015F80:
	ldr r3, _08016018 @ =gUnknown_02024A60
	mov r8, r3
	adds r6, r1, 0
	movs r7, 0
	ldr r5, _0801601C @ =gUnknown_030041C0
_08015F8A:
	ldr r0, _08016020 @ =gUnknown_02024C07
	ldrb r4, [r6]
	strb r4, [r0]
	mov r0, r8
	strb r4, [r0]
	ldr r0, _08016024 @ =gUnknown_02024C7A
	lsls r2, r4, 1
	adds r3, r2, r0
	ldrh r1, [r3]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08015FE8
	ldr r0, _08016028 @ =gUnknown_02024C80
	adds r1, r2, r4
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1]
	subs r0, 0x1
	strb r0, [r1]
	movs r4, 0xFF
	lsls r0, 24
	cmp r0, 0
	bne _08015FE8
	ldrh r0, [r3]
	ldr r2, _0801602C @ =0x0000fffe
	adds r1, r2, 0
	ands r0, r1
	strh r0, [r3]
	ldr r0, _08016030 @ =gUnknown_081D9030
	bl b_call_bc_move_exec
	movs r0, 0xFD
	strb r0, [r5]
	movs r0, 0x2
	strb r0, [r5, 0x1]
	movs r0, 0x73
	strb r0, [r5, 0x2]
	strb r7, [r5, 0x3]
	ldrb r0, [r5, 0x4]
	orrs r0, r4
	strb r0, [r5, 0x4]
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_08015FE8:
	ldrb r0, [r6]
	adds r0, 0x1
	strb r0, [r6]
	ldr r3, _0801600C @ =0x02000000
	mov r12, r3
	mov r1, r9
	cmp r1, 0
	beq _08015FFA
	b _08016532
_08015FFA:
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bls _08015F8A
	b _08016236
	.align 2, 0
_08016004: .4byte gUnknown_02024A7A
_08016008: .4byte gUnknown_02024A68
_0801600C: .4byte 0x02000000
_08016010: .4byte 0x0001600e
_08016014: .4byte 0x000160fc
_08016018: .4byte gUnknown_02024A60
_0801601C: .4byte gUnknown_030041C0
_08016020: .4byte gUnknown_02024C07
_08016024: .4byte gUnknown_02024C7A
_08016028: .4byte gUnknown_02024C80
_0801602C: .4byte 0x0000fffe
_08016030: .4byte gUnknown_081D9030
_08016034:
	ldr r1, _080160CC @ =0x000160fc
	add r1, r12
	ldrb r0, [r1]
	cmp r0, 0x1
	bls _08016040
	b _08016182
_08016040:
	adds r7, r1, 0
	movs r3, 0x2
	mov r10, r3
	movs r0, 0
	mov r8, r0
	ldr r5, _080160D0 @ =gUnknown_030041C0
_0801604C:
	ldr r0, _080160D4 @ =gUnknown_02024C07
	ldrb r4, [r7]
	strb r4, [r0]
	ldr r1, _080160D8 @ =gUnknown_02024A60
	strb r4, [r1]
	ldr r0, _080160DC @ =gUnknown_02024C7A
	lsls r2, r4, 1
	adds r3, r2, r0
	ldrh r1, [r3]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _080160B0
	ldr r0, _080160E0 @ =gUnknown_02024C80
	adds r1, r2, r4
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x1]
	subs r0, 0x1
	strb r0, [r1, 0x1]
	movs r6, 0xFF
	lsls r0, 24
	cmp r0, 0
	bne _080160B0
	ldrh r0, [r3]
	ldr r2, _080160E4 @ =0x0000fffd
	adds r1, r2, 0
	ands r0, r1
	strh r0, [r3]
	ldr r0, _080160E8 @ =gUnknown_081D9030
	bl b_call_bc_move_exec
	ldr r0, _080160EC @ =gUnknown_02024D1E
	strb r4, [r0, 0x5]
	movs r0, 0xFD
	strb r0, [r5]
	mov r3, r10
	strb r3, [r5, 0x1]
	movs r0, 0x71
	strb r0, [r5, 0x2]
	mov r0, r8
	strb r0, [r5, 0x3]
	ldrb r0, [r5, 0x4]
	orrs r0, r6
	strb r0, [r5, 0x4]
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_080160B0:
	ldrb r0, [r7]
	adds r0, 0x1
	strb r0, [r7]
	ldr r1, _080160F0 @ =0x02000000
	mov r12, r1
	mov r2, r9
	cmp r2, 0
	beq _080160C2
	b _08016532
_080160C2:
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bls _0801604C
	b _08016182
	.align 2, 0
_080160CC: .4byte 0x000160fc
_080160D0: .4byte gUnknown_030041C0
_080160D4: .4byte gUnknown_02024C07
_080160D8: .4byte gUnknown_02024A60
_080160DC: .4byte gUnknown_02024C7A
_080160E0: .4byte gUnknown_02024C80
_080160E4: .4byte 0x0000fffd
_080160E8: .4byte gUnknown_081D9030
_080160EC: .4byte gUnknown_02024D1E
_080160F0: .4byte 0x02000000
_080160F4:
	ldr r1, _0801619C @ =0x000160fc
	add r1, r12
	ldrb r0, [r1]
	cmp r0, 0x1
	bhi _08016182
	ldr r0, _080161A0 @ =gUnknown_02024A60
	mov r10, r0
	adds r7, r1, 0
	movs r1, 0
	mov r8, r1
	ldr r5, _080161A4 @ =gUnknown_030041C0
_0801610A:
	ldr r0, _080161A8 @ =gUnknown_02024C07
	ldrb r4, [r7]
	strb r4, [r0]
	mov r2, r10
	strb r4, [r2]
	ldr r1, _080161AC @ =gUnknown_02024C80
	lsls r3, r4, 1
	adds r0, r3, r4
	lsls r0, 2
	adds r1, r0, r1
	ldrb r0, [r1, 0x2]
	cmp r0, 0
	beq _08016168
	subs r0, 0x1
	strb r0, [r1, 0x2]
	movs r6, 0xFF
	lsls r0, 24
	cmp r0, 0
	bne _08016168
	ldr r2, _080161B0 @ =gUnknown_02024C7A
	adds r2, r3, r2
	ldrh r0, [r2]
	ldr r3, _080161B4 @ =0x0000feff
	adds r1, r3, 0
	ands r0, r1
	strh r0, [r2]
	ldr r0, _080161B8 @ =gUnknown_081D9030
	bl b_call_bc_move_exec
	ldr r0, _080161BC @ =gUnknown_02024D1E
	strb r4, [r0, 0x5]
	movs r0, 0xFD
	strb r0, [r5]
	movs r0, 0x2
	strb r0, [r5, 0x1]
	movs r0, 0x36
	strb r0, [r5, 0x2]
	mov r0, r8
	strb r0, [r5, 0x3]
	ldrb r0, [r5, 0x4]
	orrs r0, r6
	strb r0, [r5, 0x4]
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_08016168:
	ldrb r0, [r7]
	adds r0, 0x1
	strb r0, [r7]
	ldr r1, _080161C0 @ =0x02000000
	mov r12, r1
	mov r2, r9
	cmp r2, 0
	beq _0801617A
	b _08016532
_0801617A:
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bls _0801610A
_08016182:
	mov r3, r9
	cmp r3, 0
	beq _0801618A
	b _08016532
_0801618A:
	ldr r0, _080161C4 @ =0x0001600e
	add r0, r12
	ldrb r1, [r0]
	adds r1, 0x1
	strb r1, [r0]
	ldr r0, _0801619C @ =0x000160fc
	add r0, r12
	strb r3, [r0]
	b _0801652A
	.align 2, 0
_0801619C: .4byte 0x000160fc
_080161A0: .4byte gUnknown_02024A60
_080161A4: .4byte gUnknown_030041C0
_080161A8: .4byte gUnknown_02024C07
_080161AC: .4byte gUnknown_02024C80
_080161B0: .4byte gUnknown_02024C7A
_080161B4: .4byte 0x0000feff
_080161B8: .4byte gUnknown_081D9030
_080161BC: .4byte gUnknown_02024D1E
_080161C0: .4byte 0x02000000
_080161C4: .4byte 0x0001600e
_080161C8:
	ldr r1, _08016250 @ =0x000160fc
	add r1, r12
	ldrb r0, [r1]
	cmp r0, 0x1
	bhi _08016236
	ldr r7, _08016254 @ =gUnknown_02024A60
	adds r5, r1, 0
	ldr r6, _08016258 @ =gUnknown_02024C07
_080161D8:
	ldrb r4, [r5]
	strb r4, [r6]
	strb r4, [r7]
	ldr r0, _0801625C @ =gUnknown_02024C7A
	lsls r2, r4, 1
	adds r3, r2, r0
	ldrh r1, [r3]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0801621C
	ldr r0, _08016260 @ =gUnknown_02024C80
	adds r1, r2, r4
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x7]
	subs r0, 0x1
	strb r0, [r1, 0x7]
	lsls r0, 24
	cmp r0, 0
	bne _0801621C
	ldrh r0, [r3]
	ldr r2, _08016264 @ =0x0000ffdf
	adds r1, r2, 0
	ands r0, r1
	strh r0, [r3]
	ldr r0, _08016268 @ =gUnknown_081D9041
	bl b_call_bc_move_exec
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_0801621C:
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	ldr r3, _0801626C @ =0x02000000
	mov r12, r3
	mov r1, r9
	cmp r1, 0
	beq _0801622E
	b _08016532
_0801622E:
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bls _080161D8
_08016236:
	mov r2, r9
	cmp r2, 0
	beq _0801623E
	b _08016532
_0801623E:
	ldr r0, _08016270 @ =0x0001600e
	add r0, r12
	ldrb r1, [r0]
	adds r1, 0x1
	strb r1, [r0]
	ldr r0, _08016250 @ =0x000160fc
	add r0, r12
	strb r2, [r0]
	b _0801652A
	.align 2, 0
_08016250: .4byte 0x000160fc
_08016254: .4byte gUnknown_02024A60
_08016258: .4byte gUnknown_02024C07
_0801625C: .4byte gUnknown_02024C7A
_08016260: .4byte gUnknown_02024C80
_08016264: .4byte 0x0000ffdf
_08016268: .4byte gUnknown_081D9041
_0801626C: .4byte 0x02000000
_08016270: .4byte 0x0001600e
_08016274:
	ldr r2, _080162FC @ =0x000160fc
	add r2, r12
	ldr r1, _08016300 @ =gUnknown_02024A68
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	bcs _080162E8
	ldr r5, _08016304 @ =gUnknown_02024A60
	adds r4, r2, 0
	ldr r6, _08016308 @ =gUnknown_02024DDC
_08016288:
	ldr r1, _0801630C @ =gUnknown_02024A7A
	ldrb r0, [r4]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r5]
	ldrb r0, [r5]
	adds r1, r0, r6
	ldrb r0, [r1]
	cmp r0, 0
	beq _080162CA
	subs r0, 0x1
	strb r0, [r1]
	lsls r0, 24
	cmp r0, 0
	bne _080162CA
	ldr r1, _08016310 @ =gBattleMons
	ldrb r2, [r5]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _080162CA
	ldr r0, _08016314 @ =gUnknown_02024C08
	strb r2, [r0]
	ldr r0, _08016318 @ =gUnknown_081D939A
	bl b_call_bc_move_exec
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_080162CA:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	ldr r3, _0801631C @ =0x02000000
	mov r12, r3
	mov r1, r9
	cmp r1, 0
	beq _080162DC
	b _08016532
_080162DC:
	ldr r1, _08016300 @ =gUnknown_02024A68
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08016288
_080162E8:
	mov r2, r9
	cmp r2, 0
	beq _080162F0
	b _08016532
_080162F0:
	ldr r1, _08016320 @ =0x0001600e
	add r1, r12
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _0801652A
	.align 2, 0
_080162FC: .4byte 0x000160fc
_08016300: .4byte gUnknown_02024A68
_08016304: .4byte gUnknown_02024A60
_08016308: .4byte gUnknown_02024DDC
_0801630C: .4byte gUnknown_02024A7A
_08016310: .4byte gBattleMons
_08016314: .4byte gUnknown_02024C08
_08016318: .4byte gUnknown_081D939A
_0801631C: .4byte 0x02000000
_08016320: .4byte 0x0001600e
_08016324:
	ldr r3, _0801635C @ =word_2024DB8
	ldrh r2, [r3]
	movs r0, 0x7
	ands r0, r2
	cmp r0, 0
	bne _08016332
	b _080164F8
_08016332:
	movs r0, 0x4
	ands r0, r2
	cmp r0, 0
	bne _0801637E
	ldr r1, _08016360 @ =gUnknown_02024DBC
	adds r1, 0x28
	ldrb r0, [r1]
	subs r0, 0x1
	strb r0, [r1]
	lsls r0, 24
	cmp r0, 0
	bne _08016370
	ldr r0, _08016364 @ =0x0000fffe
	ands r0, r2
	ldr r1, _08016368 @ =0x0000fffd
	ands r0, r1
	strh r0, [r3]
	ldr r1, _0801636C @ =gUnknown_02024D1E
	movs r0, 0x2
	strb r0, [r1, 0x5]
	b _0801639C
	.align 2, 0
_0801635C: .4byte word_2024DB8
_08016360: .4byte gUnknown_02024DBC
_08016364: .4byte 0x0000fffe
_08016368: .4byte 0x0000fffd
_0801636C: .4byte gUnknown_02024D1E
_08016370:
	movs r0, 0x2
	ands r0, r2
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0
	bne _0801638A
	b _08016398
_0801637E:
	movs r0, 0x2
	ands r0, r2
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0
	beq _08016398
_0801638A:
	ldr r1, _08016394 @ =gUnknown_02024D1E
	movs r0, 0x1
	strb r0, [r1, 0x5]
	b _0801639C
	.align 2, 0
_08016394: .4byte gUnknown_02024D1E
_08016398:
	ldr r0, _080163A0 @ =gUnknown_02024D1E
	strb r1, [r0, 0x5]
_0801639C:
	ldr r0, _080163A4 @ =gUnknown_081D8F62
	b _080164EA
	.align 2, 0
_080163A0: .4byte gUnknown_02024D1E
_080163A4: .4byte gUnknown_081D8F62
_080163A8:
	ldr r3, _080163DC @ =word_2024DB8
	ldrh r2, [r3]
	movs r0, 0x18
	ands r0, r2
	cmp r0, 0
	bne _080163B6
	b _080164F8
_080163B6:
	movs r0, 0x10
	ands r0, r2
	cmp r0, 0
	bne _080163F0
	ldr r1, _080163E0 @ =gUnknown_02024DBC
	adds r1, 0x28
	ldrb r0, [r1]
	subs r0, 0x1
	strb r0, [r1]
	lsls r0, 24
	cmp r0, 0
	bne _080163F0
	ldr r0, _080163E4 @ =0x0000fff7
	ands r0, r2
	strh r0, [r3]
	ldr r1, _080163E8 @ =gUnknown_02024C10
	ldr r0, _080163EC @ =gUnknown_081D8FFF
	b _080163F4
	.align 2, 0
_080163DC: .4byte word_2024DB8
_080163E0: .4byte gUnknown_02024DBC
_080163E4: .4byte 0x0000fff7
_080163E8: .4byte gUnknown_02024C10
_080163EC: .4byte gUnknown_081D8FFF
_080163F0:
	ldr r1, _0801640C @ =gUnknown_02024C10
	ldr r0, _08016410 @ =gUnknown_081D8F7D
_080163F4:
	str r0, [r1]
	adds r3, r1, 0
	ldr r1, _08016414 @ =0x02000000
	ldr r0, _08016418 @ =0x000160a4
	adds r1, r0
	movs r2, 0
	movs r0, 0xC
	strb r0, [r1]
	ldr r0, _0801641C @ =gUnknown_02024D1E
	strb r2, [r0, 0x5]
	b _080164E8
	.align 2, 0
_0801640C: .4byte gUnknown_02024C10
_08016410: .4byte gUnknown_081D8F7D
_08016414: .4byte 0x02000000
_08016418: .4byte 0x000160a4
_0801641C: .4byte gUnknown_02024D1E
_08016420:
	ldr r3, _08016450 @ =word_2024DB8
	ldrh r2, [r3]
	movs r0, 0x60
	ands r0, r2
	cmp r0, 0
	beq _0801647C
	movs r0, 0x40
	ands r0, r2
	cmp r0, 0
	bne _08016464
	ldr r1, _08016454 @ =gUnknown_02024DBC
	adds r1, 0x28
	ldrb r0, [r1]
	subs r0, 0x1
	strb r0, [r1]
	lsls r0, 24
	cmp r0, 0
	bne _08016464
	ldr r0, _08016458 @ =0x0000ffdf
	ands r0, r2
	strh r0, [r3]
	ldr r1, _0801645C @ =gUnknown_02024C10
	ldr r0, _08016460 @ =gUnknown_081D9016
	b _08016468
	.align 2, 0
_08016450: .4byte word_2024DB8
_08016454: .4byte gUnknown_02024DBC
_08016458: .4byte 0x0000ffdf
_0801645C: .4byte gUnknown_02024C10
_08016460: .4byte gUnknown_081D9016
_08016464:
	ldr r1, _08016484 @ =gUnknown_02024C10
	ldr r0, _08016488 @ =gUnknown_081D9008
_08016468:
	str r0, [r1]
	adds r3, r1, 0
	ldr r0, [r3]
	bl b_call_bc_move_exec
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_0801647C:
	ldr r2, _0801648C @ =0x02000000
	ldr r0, _08016490 @ =0x0001600e
	adds r1, r2, r0
	b _080164FE
	.align 2, 0
_08016484: .4byte gUnknown_02024C10
_08016488: .4byte gUnknown_081D9008
_0801648C: .4byte 0x02000000
_08016490: .4byte 0x0001600e
_08016494:
	ldr r3, _080164BC @ =word_2024DB8
	ldrh r2, [r3]
	movs r0, 0x80
	ands r0, r2
	cmp r0, 0
	beq _080164F8
	ldr r1, _080164C0 @ =gUnknown_02024DBC
	adds r1, 0x28
	ldrb r0, [r1]
	subs r0, 0x1
	strb r0, [r1]
	lsls r0, 24
	cmp r0, 0
	bne _080164D0
	ldr r0, _080164C4 @ =0x0000ff7f
	ands r0, r2
	strh r0, [r3]
	ldr r1, _080164C8 @ =gUnknown_02024C10
	ldr r0, _080164CC @ =gUnknown_081D8FFF
	b _080164D4
	.align 2, 0
_080164BC: .4byte word_2024DB8
_080164C0: .4byte gUnknown_02024DBC
_080164C4: .4byte 0x0000ff7f
_080164C8: .4byte gUnknown_02024C10
_080164CC: .4byte gUnknown_081D8FFF
_080164D0:
	ldr r1, _08016508 @ =gUnknown_02024C10
	ldr r0, _0801650C @ =gUnknown_081D8F7D
_080164D4:
	str r0, [r1]
	adds r3, r1, 0
	ldr r0, _08016510 @ =0x02000000
	ldr r1, _08016514 @ =0x000160a4
	adds r0, r1
	movs r1, 0xD
	strb r1, [r0]
	ldr r1, _08016518 @ =gUnknown_02024D1E
	movs r0, 0x1
	strb r0, [r1, 0x5]
_080164E8:
	ldr r0, [r3]
_080164EA:
	bl b_call_bc_move_exec
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_080164F8:
	ldr r2, _08016510 @ =0x02000000
	ldr r3, _0801651C @ =0x0001600e
	adds r1, r2, r3
_080164FE:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	mov r12, r2
	b _0801652A
	.align 2, 0
_08016508: .4byte gUnknown_02024C10
_0801650C: .4byte gUnknown_081D8F7D
_08016510: .4byte 0x02000000
_08016514: .4byte 0x000160a4
_08016518: .4byte gUnknown_02024D1E
_0801651C: .4byte 0x0001600e
_08016520:
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_0801652A:
	mov r0, r9
	cmp r0, 0
	bne _08016532
	b _08015E8A
_08016532:
	ldr r0, _08016550 @ =gUnknown_030042D4
	ldr r1, [r0]
	ldr r0, _08016554 @ =sub_8011E8C
	eors r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_08016550: .4byte gUnknown_030042D4
_08016554: .4byte sub_8011E8C
	thumb_func_end sub_8015DFC

	thumb_func_start sub_8016558
sub_8016558: @ 8016558
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	movs r0, 0
	mov r9, r0
	ldr r2, _08016578 @ =gUnknown_02024C6C
	ldr r0, [r2]
	ldr r1, _0801657C @ =0x01000020
	orrs r0, r1
	str r0, [r2]
	bl _08017088
	.align 2, 0
_08016578: .4byte gUnknown_02024C6C
_0801657C: .4byte 0x01000020
_08016580:
	ldr r3, _080165B4 @ =gUnknown_02024A60
	ldr r4, _080165B8 @ =gUnknown_02024C07
	ldr r1, _080165BC @ =gUnknown_02024A7A
	adds r5, r7, r2
	ldrb r0, [r5]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r4]
	strb r0, [r3]
	ldr r0, _080165C0 @ =gUnknown_02024C0C
	ldrb r1, [r0]
	ldr r2, _080165C4 @ =gBitTable
	ldrb r0, [r3]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	adds r6, r3, 0
	cmp r1, 0
	beq _080165C8
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	bl _08017088
	.align 2, 0
_080165B4: .4byte gUnknown_02024A60
_080165B8: .4byte gUnknown_02024C07
_080165BC: .4byte gUnknown_02024A7A
_080165C0: .4byte gUnknown_02024C0C
_080165C4: .4byte gBitTable
_080165C8:
	movs r5, 0xB0
	lsls r5, 9
	adds r0, r7, r5
	ldrb r0, [r0]
	cmp r0, 0x13
	bls _080165D8
	bl _08017078
_080165D8:
	lsls r0, 2
	ldr r1, _080165E4 @ =_080165E8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080165E4: .4byte _080165E8
	.align 2, 0
_080165E8:
	.4byte _08016638
	.4byte _080166A8
	.4byte _080166D8
	.4byte _08016730
	.4byte _080167C8
	.4byte _08016828
	.4byte _080168C0
	.4byte _0801691C
	.4byte _0801697C
	.4byte _080169DC
	.4byte _08016B78
	.4byte _08016CA0
	.4byte _08016D58
	.4byte _08016E30
	.4byte _08016EFC
	.4byte _08016F20
	.4byte _08016F6C
	.4byte _08016F9C
	.4byte _08016704
	.4byte _08017064
_08016638:
	ldr r1, _08016694 @ =gUnknown_02024C98
	ldrb r3, [r6]
	lsls r0, r3, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 3
	ands r0, r1
	cmp r0, 0
	beq _08016686
	ldr r0, _08016698 @ =gBattleMons
	movs r1, 0x58
	muls r1, r3
	adds r0, r1, r0
	ldrh r2, [r0, 0x28]
	ldrh r7, [r0, 0x2C]
	cmp r2, r7
	beq _08016686
	cmp r2, 0
	beq _08016686
	ldr r1, _0801669C @ =gUnknown_02024BEC
	ldrh r0, [r0, 0x2C]
	lsrs r0, 4
	str r0, [r1]
	cmp r0, 0
	bne _08016670
	movs r0, 0x1
	str r0, [r1]
_08016670:
	ldr r0, [r1]
	negs r0, r0
	str r0, [r1]
	ldr r0, _080166A0 @ =gUnknown_081D93D1
	bl b_call_bc_move_exec
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_08016686:
	ldr r1, _080166A4 @ =0x02000000
	movs r0, 0xB0
	lsls r0, 9
	adds r1, r0
	bl _08017072
	.align 2, 0
_08016694: .4byte gUnknown_02024C98
_08016698: .4byte gBattleMons
_0801669C: .4byte gUnknown_02024BEC
_080166A0: .4byte gUnknown_081D93D1
_080166A4: .4byte 0x02000000
_080166A8:
	ldrb r1, [r6]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x1
	movs r2, 0
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	beq _080166C8
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_080166C8:
	ldr r1, _080166D4 @ =0x02000000
	movs r2, 0xB0
	lsls r2, 9
	adds r1, r2
	bl _08017072
	.align 2, 0
_080166D4: .4byte 0x02000000
_080166D8:
	ldrb r1, [r6]
	movs r0, 0x1
	movs r2, 0
	bl sub_801A02C
	lsls r0, 24
	cmp r0, 0
	beq _080166F2
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_080166F2:
	ldr r1, _08016700 @ =0x02000000
	movs r3, 0xB0
	lsls r3, 9
	adds r1, r3
	bl _08017072
	.align 2, 0
_08016700: .4byte 0x02000000
_08016704:
	ldrb r1, [r6]
	movs r0, 0x1
	movs r2, 0x1
	bl sub_801A02C
	lsls r0, 24
	cmp r0, 0
	beq _0801671E
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_0801671E:
	ldr r1, _0801672C @ =0x02000000
	movs r5, 0xB0
	lsls r5, 9
	adds r1, r5
	bl _08017072
	.align 2, 0
_0801672C: .4byte 0x02000000
_08016730:
	ldr r0, _080167A8 @ =gUnknown_02024C98
	ldrb r2, [r6]
	lsls r1, r2, 2
	adds r1, r0
	ldr r1, [r1]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _0801679C
	ldr r3, _080167AC @ =gBattleMons
	movs r5, 0x3
	ands r5, r1
	movs r1, 0x58
	adds r0, r5, 0
	muls r0, r1
	adds r0, r3
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _0801679C
	adds r0, r2, 0
	muls r0, r1
	adds r0, r3
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _0801679C
	ldr r0, _080167B0 @ =gUnknown_02024C08
	strb r5, [r0]
	ldr r2, _080167B4 @ =gUnknown_02024BEC
	ldrb r0, [r6]
	muls r0, r1
	adds r0, r3
	ldrh r0, [r0, 0x2C]
	lsrs r0, 3
	str r0, [r2]
	cmp r0, 0
	bne _0801677C
	movs r0, 0x1
	str r0, [r2]
_0801677C:
	ldr r1, _080167B8 @ =0x02000000
	ldr r7, _080167BC @ =0x000160a4
	adds r0, r1, r7
	strb r5, [r0]
	ldrb r0, [r4]
	ldr r2, _080167C0 @ =0x000160a5
	adds r1, r2
	strb r0, [r1]
	ldr r0, _080167C4 @ =gUnknown_081D904B
	bl b_call_bc_move_exec
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_0801679C:
	ldr r1, _080167B8 @ =0x02000000
	movs r3, 0xB0
	lsls r3, 9
	adds r1, r3
	bl _08017072
	.align 2, 0
_080167A8: .4byte gUnknown_02024C98
_080167AC: .4byte gBattleMons
_080167B0: .4byte gUnknown_02024C08
_080167B4: .4byte gUnknown_02024BEC
_080167B8: .4byte 0x02000000
_080167BC: .4byte 0x000160a4
_080167C0: .4byte 0x000160a5
_080167C4: .4byte gUnknown_081D904B
_080167C8:
	ldr r2, _08016818 @ =gBattleMons
	ldrb r1, [r6]
	movs r0, 0x58
	adds r3, r1, 0
	muls r3, r0
	adds r0, r2, 0
	adds r0, 0x4C
	adds r0, r3, r0
	ldr r0, [r0]
	movs r1, 0x8
	ands r0, r1
	cmp r0, 0
	beq _0801680A
	adds r1, r3, r2
	ldrh r0, [r1, 0x28]
	cmp r0, 0
	beq _0801680A
	ldr r2, _0801681C @ =gUnknown_02024BEC
	ldrh r0, [r1, 0x2C]
	lsrs r0, 3
	str r0, [r2]
	cmp r0, 0
	bne _080167FA
	movs r0, 0x1
	str r0, [r2]
_080167FA:
	ldr r0, _08016820 @ =gUnknown_081D9518
	bl b_call_bc_move_exec
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_0801680A:
	ldr r1, _08016824 @ =0x02000000
	movs r5, 0xB0
	lsls r5, 9
	adds r1, r5
	bl _08017072
	.align 2, 0
_08016818: .4byte gBattleMons
_0801681C: .4byte gUnknown_02024BEC
_08016820: .4byte gUnknown_081D9518
_08016824: .4byte 0x02000000
_08016828:
	ldr r4, _080168B0 @ =gBattleMons
	ldrb r0, [r6]
	movs r7, 0x58
	mov r8, r7
	mov r2, r8
	muls r2, r0
	adds r3, r4, 0
	adds r3, 0x4C
	adds r0, r2, r3
	ldr r0, [r0]
	movs r1, 0x80
	ands r0, r1
	cmp r0, 0
	beq _080168A2
	adds r1, r2, r4
	ldrh r0, [r1, 0x28]
	cmp r0, 0
	beq _080168A2
	ldr r5, _080168B4 @ =gUnknown_02024BEC
	ldrh r0, [r1, 0x2C]
	lsrs r0, 4
	str r0, [r5]
	cmp r0, 0
	bne _0801685C
	movs r0, 0x1
	str r0, [r5]
_0801685C:
	ldrb r0, [r6]
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	adds r2, r0, r3
	ldr r1, [r2]
	movs r4, 0xF0
	lsls r4, 4
	adds r0, r1, 0
	ands r0, r4
	cmp r0, r4
	beq _0801687C
	movs r7, 0x80
	lsls r7, 1
	adds r0, r1, r7
	str r0, [r2]
_0801687C:
	ldrb r0, [r6]
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	adds r0, r3
	ldr r0, [r0]
	ands r0, r4
	lsrs r0, 8
	ldr r1, [r5]
	muls r0, r1
	str r0, [r5]
	ldr r0, _080168B8 @ =gUnknown_081D9518
	bl b_call_bc_move_exec
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_080168A2:
	ldr r1, _080168BC @ =0x02000000
	movs r2, 0xB0
	lsls r2, 9
	adds r1, r2
	bl _08017072
	.align 2, 0
_080168B0: .4byte gBattleMons
_080168B4: .4byte gUnknown_02024BEC
_080168B8: .4byte gUnknown_081D9518
_080168BC: .4byte 0x02000000
_080168C0:
	ldr r2, _0801690C @ =gBattleMons
	ldrb r1, [r6]
	movs r0, 0x58
	adds r3, r1, 0
	muls r3, r0
	adds r0, r2, 0
	adds r0, 0x4C
	adds r0, r3, r0
	ldr r0, [r0]
	movs r1, 0x10
	ands r0, r1
	cmp r0, 0
	beq _08016902
	adds r1, r3, r2
	ldrh r0, [r1, 0x28]
	cmp r0, 0
	beq _08016902
	ldr r2, _08016910 @ =gUnknown_02024BEC
	ldrh r0, [r1, 0x2C]
	lsrs r0, 3
	str r0, [r2]
	cmp r0, 0
	bne _080168F2
	movs r0, 0x1
	str r0, [r2]
_080168F2:
	ldr r0, _08016914 @ =gUnknown_081D953A
	bl b_call_bc_move_exec
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_08016902:
	ldr r1, _08016918 @ =0x02000000
	movs r3, 0xB0
	lsls r3, 9
	adds r1, r3
	b _08017072
	.align 2, 0
_0801690C: .4byte gBattleMons
_08016910: .4byte gUnknown_02024BEC
_08016914: .4byte gUnknown_081D953A
_08016918: .4byte 0x02000000
_0801691C:
	ldr r2, _0801696C @ =gBattleMons
	ldrb r1, [r6]
	movs r0, 0x58
	adds r3, r1, 0
	muls r3, r0
	adds r0, r2, 0
	adds r0, 0x50
	adds r0, r3, r0
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 20
	ands r0, r1
	cmp r0, 0
	beq _08016960
	adds r1, r3, r2
	ldrh r0, [r1, 0x28]
	cmp r0, 0
	beq _08016960
	ldr r2, _08016970 @ =gUnknown_02024BEC
	ldrh r0, [r1, 0x2C]
	lsrs r0, 2
	str r0, [r2]
	cmp r0, 0
	bne _08016950
	movs r0, 0x1
	str r0, [r2]
_08016950:
	ldr r0, _08016974 @ =gUnknown_081D9613
	bl b_call_bc_move_exec
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_08016960:
	ldr r1, _08016978 @ =0x02000000
	movs r5, 0xB0
	lsls r5, 9
	adds r1, r5
	b _08017072
	.align 2, 0
_0801696C: .4byte gBattleMons
_08016970: .4byte gUnknown_02024BEC
_08016974: .4byte gUnknown_081D9613
_08016978: .4byte 0x02000000
_0801697C:
	ldr r2, _080169CC @ =gBattleMons
	ldrb r1, [r6]
	movs r0, 0x58
	adds r3, r1, 0
	muls r3, r0
	adds r0, r2, 0
	adds r0, 0x50
	adds r0, r3, r0
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 21
	ands r0, r1
	cmp r0, 0
	beq _080169C0
	adds r1, r3, r2
	ldrh r0, [r1, 0x28]
	cmp r0, 0
	beq _080169C0
	ldr r2, _080169D0 @ =gUnknown_02024BEC
	ldrh r0, [r1, 0x2C]
	lsrs r0, 2
	str r0, [r2]
	cmp r0, 0
	bne _080169B0
	movs r0, 0x1
	str r0, [r2]
_080169B0:
	ldr r0, _080169D4 @ =gUnknown_081D9624
	bl b_call_bc_move_exec
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_080169C0:
	ldr r1, _080169D8 @ =0x02000000
	movs r7, 0xB0
	lsls r7, 9
	adds r1, r7
	b _08017072
	.align 2, 0
_080169CC: .4byte gBattleMons
_080169D0: .4byte gUnknown_02024BEC
_080169D4: .4byte gUnknown_081D9624
_080169D8: .4byte 0x02000000
_080169DC:
	ldr r0, _08016A8C @ =gBattleMons
	mov r8, r0
	ldrb r0, [r6]
	movs r1, 0x58
	mov r10, r1
	mov r1, r10
	muls r1, r0
	mov r5, r8
	adds r5, 0x50
	adds r3, r1, r5
	ldr r2, [r3]
	movs r4, 0xE0
	lsls r4, 8
	adds r0, r2, 0
	ands r0, r4
	cmp r0, 0
	beq _08016AF6
	mov r7, r8
	adds r0, r1, r7
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _08016AF6
	ldr r1, _08016A90 @ =0xffffe000
	adds r0, r2, r1
	str r0, [r3]
	ldrb r1, [r6]
	mov r0, r10
	muls r0, r1
	adds r0, r5
	ldr r0, [r0]
	ands r0, r4
	cmp r0, 0
	beq _08016AB4
	ldr r2, _08016A94 @ =0x02000000
	lsls r0, r1, 1
	ldr r4, _08016A98 @ =0x00016004
	adds r0, r4
	adds r0, r2
	ldrb r1, [r0]
	ldr r3, _08016A9C @ =0x000160a4
	adds r0, r2, r3
	strb r1, [r0]
	ldrb r0, [r6]
	lsls r0, 1
	subs r3, 0x9F
	adds r0, r3
	adds r0, r2
	ldrb r1, [r0]
	ldr r5, _08016AA0 @ =0x000160a5
	adds r0, r2, r5
	strb r1, [r0]
	ldr r1, _08016AA4 @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x2
	strb r0, [r1, 0x1]
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r4
	adds r0, r2
	ldrb r0, [r0]
	strb r0, [r1, 0x2]
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r3
	adds r0, r2
	ldrb r0, [r0]
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r1, _08016AA8 @ =gUnknown_02024C10
	ldr r0, _08016AAC @ =gUnknown_081D95E2
	str r0, [r1]
	ldr r2, _08016AB0 @ =gUnknown_02024BEC
	ldrb r0, [r6]
	mov r7, r10
	muls r7, r0
	adds r0, r7, 0
	add r0, r8
	ldrh r0, [r0, 0x2C]
	lsrs r0, 4
	str r0, [r2]
	cmp r0, 0
	bne _08016AE6
	movs r0, 0x1
	str r0, [r2]
	b _08016AE6
	.align 2, 0
_08016A8C: .4byte gBattleMons
_08016A90: .4byte 0xffffe000
_08016A94: .4byte 0x02000000
_08016A98: .4byte 0x00016004
_08016A9C: .4byte 0x000160a4
_08016AA0: .4byte 0x000160a5
_08016AA4: .4byte gUnknown_030041C0
_08016AA8: .4byte gUnknown_02024C10
_08016AAC: .4byte gUnknown_081D95E2
_08016AB0: .4byte gUnknown_02024BEC
_08016AB4:
	ldr r1, _08016B00 @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x2
	strb r0, [r1, 0x1]
	ldr r2, _08016B04 @ =0x02000000
	ldrb r0, [r6]
	lsls r0, 1
	ldr r3, _08016B08 @ =0x00016004
	adds r0, r3
	adds r0, r2
	ldrb r0, [r0]
	strb r0, [r1, 0x2]
	ldrb r0, [r6]
	lsls r0, 1
	ldr r5, _08016B0C @ =0x00016005
	adds r0, r5
	adds r0, r2
	ldrb r0, [r0]
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r1, _08016B10 @ =gUnknown_02024C10
	ldr r0, _08016B14 @ =gUnknown_081D95F4
	str r0, [r1]
_08016AE6:
	ldr r0, [r1]
	bl b_call_bc_move_exec
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_08016AF6:
	ldr r1, _08016B04 @ =0x02000000
	movs r7, 0xB0
	lsls r7, 9
	adds r1, r7
	b _08017072
	.align 2, 0
_08016B00: .4byte gUnknown_030041C0
_08016B04: .4byte 0x02000000
_08016B08: .4byte 0x00016004
_08016B0C: .4byte 0x00016005
_08016B10: .4byte gUnknown_02024C10
_08016B14: .4byte gUnknown_081D95F4
_08016B18:
	movs r0, 0x8
	negs r0, r0
	ands r4, r0
	str r4, [r2]
	ldrb r0, [r6]
	mov r2, r8
	muls r2, r0
	mov r0, r10
	adds r0, 0x50
	adds r2, r0
	ldr r0, [r2]
	ldr r1, _08016B68 @ =0xf7ffffff
	ands r0, r1
	str r0, [r2]
	ldr r1, _08016B6C @ =gUnknown_02024D1E
	movs r0, 0x1
	strb r0, [r1, 0x5]
	ldr r0, _08016B70 @ =gUnknown_081D950F
	bl b_call_bc_move_exec
	ldr r4, _08016B74 @ =gUnknown_02024A60
	ldrb r0, [r6]
	strb r0, [r4]
	ldrb r0, [r4]
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	add r0, r9
	str r0, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r2, 0
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	b _08016BE0
	.align 2, 0
_08016B68: .4byte 0xf7ffffff
_08016B6C: .4byte gUnknown_02024D1E
_08016B70: .4byte gUnknown_081D950F
_08016B74: .4byte gUnknown_02024A60
_08016B78:
	ldr r2, _08016BF4 @ =gBattleMons
	ldrb r1, [r6]
	movs r0, 0x58
	muls r0, r1
	adds r1, r2, 0
	adds r1, 0x50
	adds r0, r1
	ldr r1, [r0]
	movs r0, 0x70
	ands r1, r0
	adds r7, r2, 0
	cmp r1, 0
	beq _08016C82
	movs r0, 0
	strb r0, [r4]
	mov r2, r8
	ldrb r1, [r2]
	cmp r1, 0
	beq _08016BE0
	mov r10, r7
	adds r6, r4, 0
	movs r3, 0x58
	mov r8, r3
	movs r5, 0x4C
	adds r5, r7
	mov r9, r5
	str r1, [sp, 0x4]
	movs r0, 0x7
	mov r12, r0
_08016BB2:
	ldrb r1, [r6]
	mov r3, r8
	muls r3, r1
	mov r5, r9
	adds r2, r3, r5
	ldr r4, [r2]
	adds r0, r4, 0
	mov r5, r12
	ands r0, r5
	cmp r0, 0
	beq _08016BD2
	adds r0, r3, r7
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x2B
	bne _08016B18
_08016BD2:
	adds r0, r1, 0x1
	strb r0, [r6]
	lsls r0, 24
	lsrs r0, 24
	ldr r1, [sp, 0x4]
	cmp r0, r1
	bcc _08016BB2
_08016BE0:
	ldr r2, _08016BF8 @ =gUnknown_02024C07
	ldr r1, _08016BFC @ =gUnknown_02024A68
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08016C00
	movs r2, 0x2
	mov r9, r2
	b _0801707E
	.align 2, 0
_08016BF4: .4byte gBattleMons
_08016BF8: .4byte gUnknown_02024C07
_08016BFC: .4byte gUnknown_02024A68
_08016C00:
	ldr r5, _08016C38 @ =gUnknown_02024A60
	ldrb r0, [r5]
	strb r0, [r2]
	ldr r2, _08016C3C @ =gBattleMons
	ldrb r0, [r5]
	movs r7, 0x58
	adds r1, r0, 0
	muls r1, r7
	adds r6, r2, 0
	adds r6, 0x50
	adds r1, r6
	ldr r0, [r1]
	subs r0, 0x10
	str r0, [r1]
	ldrb r0, [r5]
	bl sub_8015660
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	beq _08016C44
	ldrb r0, [r5]
	bl b_cancel_multi_turn_move_maybe
	ldr r1, _08016C40 @ =gUnknown_02024D1E
	movs r0, 0x1
	strb r0, [r1, 0x5]
	b _08016C78
	.align 2, 0
_08016C38: .4byte gUnknown_02024A60
_08016C3C: .4byte gBattleMons
_08016C40: .4byte gUnknown_02024D1E
_08016C44:
	ldrb r3, [r5]
	adds r0, r3, 0
	muls r0, r7
	adds r2, r0, r6
	ldr r0, [r2]
	movs r1, 0x70
	ands r0, r1
	cmp r0, 0
	beq _08016C6C
	ldr r0, _08016C68 @ =gUnknown_02024D1E
	strb r4, [r0, 0x5]
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 5
	orrs r0, r1
	str r0, [r2]
	b _08016C78
	.align 2, 0
_08016C68: .4byte gUnknown_02024D1E
_08016C6C:
	ldr r1, _08016C94 @ =gUnknown_02024D1E
	movs r0, 0x1
	strb r0, [r1, 0x5]
	adds r0, r3, 0
	bl b_cancel_multi_turn_move_maybe
_08016C78:
	ldr r0, _08016C98 @ =gUnknown_081D957E
	bl b_call_bc_move_exec
	movs r3, 0x1
	mov r9, r3
_08016C82:
	mov r5, r9
	cmp r5, 0x2
	bne _08016C8A
	b _08017078
_08016C8A:
	ldr r1, _08016C9C @ =0x02000000
	movs r7, 0xB0
	lsls r7, 9
	adds r1, r7
	b _08017072
	.align 2, 0
_08016C94: .4byte gUnknown_02024D1E
_08016C98: .4byte gUnknown_081D957E
_08016C9C: .4byte 0x02000000
_08016CA0:
	ldr r1, _08016CD8 @ =gBattleMons
	ldrb r0, [r6]
	movs r7, 0x58
	muls r0, r7
	adds r5, r1, 0
	adds r5, 0x50
	adds r2, r0, r5
	ldr r1, [r2]
	movs r4, 0xC0
	lsls r4, 4
	adds r0, r1, 0
	ands r0, r4
	cmp r0, 0
	beq _08016D3C
	ldr r3, _08016CDC @ =0xfffffc00
	adds r0, r1, r3
	str r0, [r2]
	ldrb r0, [r6]
	bl sub_8015660
	lsls r0, 24
	cmp r0, 0
	beq _08016CE0
	ldrb r0, [r6]
	bl b_cancel_multi_turn_move_maybe
	b _08016D3C
	.align 2, 0
_08016CD8: .4byte gBattleMons
_08016CDC: .4byte 0xfffffc00
_08016CE0:
	ldrb r0, [r6]
	muls r0, r7
	adds r2, r0, r5
	ldr r1, [r2]
	adds r0, r1, 0
	ands r0, r4
	cmp r0, 0
	bne _08016D3C
	movs r0, 0x80
	lsls r0, 5
	ands r0, r1
	cmp r0, 0
	beq _08016D3C
	ldr r0, _08016D48 @ =0xffffefff
	ands r1, r0
	str r1, [r2]
	ldrb r0, [r6]
	muls r0, r7
	adds r0, r5
	ldr r0, [r0]
	movs r4, 0x7
	ands r0, r4
	cmp r0, 0
	bne _08016D3C
	ldr r1, _08016D4C @ =gUnknown_02024D1E
	movs r0, 0x47
	strb r0, [r1, 0x3]
	movs r0, 0x1
	movs r1, 0
	bl sub_801E3EC
	ldrb r0, [r6]
	muls r0, r7
	adds r0, r5
	ldr r0, [r0]
	ands r0, r4
	cmp r0, 0
	beq _08016D32
	ldr r0, _08016D50 @ =gUnknown_081D9587
	bl b_call_bc_move_exec
_08016D32:
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_08016D3C:
	ldr r1, _08016D54 @ =0x02000000
	movs r5, 0xB0
	lsls r5, 9
	adds r1, r5
	b _08017072
	.align 2, 0
_08016D48: .4byte 0xffffefff
_08016D4C: .4byte gUnknown_02024D1E
_08016D50: .4byte gUnknown_081D9587
_08016D54: .4byte 0x02000000
_08016D58:
	ldr r0, _08016DD4 @ =gUnknown_02024CA8
	ldrb r3, [r6]
	lsls r1, r3, 3
	subs r1, r3
	lsls r1, 2
	adds r5, r1, r0
	ldrb r1, [r5, 0xB]
	lsls r1, 28
	adds r7, r0, 0
	cmp r1, 0
	beq _08016E1E
	movs r4, 0
	ldr r2, _08016DD8 @ =gBattleMons
	movs r0, 0x58
	adds r1, r3, 0
	muls r1, r0
	adds r2, 0xC
	adds r1, r2
	ldrh r0, [r5, 0x4]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08016DAC
	mov r12, r7
	mov r8, r2
	adds r5, r6, 0
	movs r3, 0x58
_08016D8C:
	adds r4, 0x1
	cmp r4, 0x3
	bgt _08016DAC
	ldrb r2, [r5]
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	add r1, r12
	lsls r0, r4, 1
	muls r2, r3
	adds r0, r2
	add r0, r8
	ldrh r1, [r1, 0x4]
	ldrh r0, [r0]
	cmp r1, r0
	bne _08016D8C
_08016DAC:
	cmp r4, 0x4
	bne _08016DDC
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r7
	movs r1, 0
	strh r1, [r0, 0x4]
	ldrb r0, [r6]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r7
	ldrb r2, [r1, 0xB]
	movs r0, 0x10
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0xB]
	b _08016E1E
	.align 2, 0
_08016DD4: .4byte gUnknown_02024CA8
_08016DD8: .4byte gBattleMons
_08016DDC:
	ldrb r0, [r6]
	lsls r2, r0, 3
	subs r2, r0
	lsls r2, 2
	adds r2, r7
	ldrb r3, [r2, 0xB]
	lsls r1, r3, 28
	lsrs r1, 28
	subs r1, 0x1
	movs r0, 0xF
	ands r1, r0
	movs r0, 0x10
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, 0xB]
	adds r2, r1, 0
	cmp r2, 0
	bne _08016E1E
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r7
	strh r2, [r0, 0x4]
	ldr r0, _08016E28 @ =gUnknown_081D9148
	bl b_call_bc_move_exec
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_08016E1E:
	ldr r1, _08016E2C @ =0x02000000
	movs r7, 0xB0
	lsls r7, 9
	adds r1, r7
	b _08017072
	.align 2, 0
_08016E28: .4byte gUnknown_081D9148
_08016E2C: .4byte 0x02000000
_08016E30:
	ldr r3, _08016E7C @ =gUnknown_02024CA8
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r2, r0, r3
	ldrb r5, [r2, 0xE]
	lsls r4, r5, 28
	cmp r4, 0
	beq _08016EE8
	ldr r0, _08016E80 @ =gBattleMons
	mov r8, r0
	ldrb r0, [r2, 0xC]
	lsls r0, 1
	movs r7, 0x58
	muls r1, r7
	adds r0, r1
	mov r1, r8
	adds r1, 0xC
	adds r0, r1
	ldrh r0, [r0]
	ldrh r1, [r2, 0x6]
	cmp r0, r1
	beq _08016E84
	movs r0, 0
	strh r0, [r2, 0x6]
	ldrb r0, [r6]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r3
	ldrb r2, [r1, 0xE]
	movs r0, 0x10
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0xE]
	b _08016EE8
	.align 2, 0
_08016E7C: .4byte gUnknown_02024CA8
_08016E80: .4byte gBattleMons
_08016E84:
	lsrs r1, r4, 28
	subs r1, 0x1
	movs r0, 0xF
	ands r1, r0
	movs r4, 0x10
	negs r4, r4
	adds r0, r4, 0
	ands r0, r5
	orrs r0, r1
	strb r0, [r2, 0xE]
	cmp r1, 0
	beq _08016EB8
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r3
	muls r1, r7
	ldrb r0, [r0, 0xC]
	adds r1, r0
	mov r0, r8
	adds r0, 0x24
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0
	bne _08016EE8
_08016EB8:
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r3
	movs r1, 0
	strh r1, [r0, 0x6]
	ldrb r0, [r6]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r3
	ldrb r2, [r1, 0xE]
	adds r0, r4, 0
	ands r0, r2
	strb r0, [r1, 0xE]
	ldr r0, _08016EF4 @ =gUnknown_081D914F
	bl b_call_bc_move_exec
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_08016EE8:
	ldr r1, _08016EF8 @ =0x02000000
	movs r2, 0xB0
	lsls r2, 9
	adds r1, r2
	b _08017072
	.align 2, 0
_08016EF4: .4byte gUnknown_081D914F
_08016EF8: .4byte 0x02000000
_08016EFC:
	ldr r0, _08016F1C @ =gUnknown_02024C98
	ldrb r1, [r6]
	lsls r1, 2
	adds r1, r0
	ldr r2, [r1]
	movs r0, 0x18
	ands r0, r2
	cmp r0, 0
	beq _08016F14
	adds r0, r2, 0
	subs r0, 0x8
	str r0, [r1]
_08016F14:
	movs r1, 0xB0
	lsls r1, 9
	b _08017070
	.align 2, 0
_08016F1C: .4byte gUnknown_02024C98
_08016F20:
	ldr r2, _08016F60 @ =gUnknown_02024CA8
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r3, r0, r2
	ldrb r2, [r3, 0x12]
	lsls r1, r2, 28
	cmp r1, 0
	beq _08016F5A
	lsrs r1, 28
	subs r1, 0x1
	movs r0, 0xF
	ands r1, r0
	movs r0, 0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, 0x12]
	cmp r1, 0
	bne _08016F5A
	ldr r0, _08016F64 @ =gUnknown_02024C98
	ldrb r2, [r6]
	lsls r2, 2
	adds r2, r0
	ldr r0, [r2]
	ldr r1, _08016F68 @ =0xfffffdff
	ands r0, r1
	str r0, [r2]
_08016F5A:
	movs r1, 0xB0
	lsls r1, 9
	b _08017070
	.align 2, 0
_08016F60: .4byte gUnknown_02024CA8
_08016F64: .4byte gUnknown_02024C98
_08016F68: .4byte 0xfffffdff
_08016F6C:
	ldr r2, _08016F98 @ =gUnknown_02024CA8
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r3, r0, r2
	ldrb r2, [r3, 0x13]
	lsls r1, r2, 28
	cmp r1, 0
	beq _08016F92
	lsrs r1, 28
	subs r1, 0x1
	movs r0, 0xF
	ands r1, r0
	movs r0, 0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, 0x13]
_08016F92:
	movs r1, 0xB0
	lsls r1, 9
	b _08017070
	.align 2, 0
_08016F98: .4byte gUnknown_02024CA8
_08016F9C:
	ldr r4, _0801704C @ =gUnknown_02024C98
	ldrb r0, [r6]
	lsls r0, 2
	adds r2, r0, r4
	ldr r1, [r2]
	movs r3, 0xC0
	lsls r3, 5
	adds r0, r1, 0
	ands r0, r3
	cmp r0, 0
	beq _08017042
	ldr r5, _08017050 @ =0xfffff800
	adds r0, r1, r5
	str r0, [r2]
	ldrb r2, [r6]
	lsls r0, r2, 2
	adds r0, r4
	ldr r0, [r0]
	ands r0, r3
	cmp r0, 0
	bne _08017042
	ldr r3, _08017054 @ =gBattleMons
	movs r5, 0x58
	adds r1, r2, 0
	muls r1, r5
	adds r4, r3, 0
	adds r4, 0x4C
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, 0
	bne _08017042
	adds r0, r1, r3
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x48
	beq _08017042
	cmp r0, 0xF
	beq _08017042
	adds r0, r2, 0
	bl sub_8025A44
	lsls r0, 24
	cmp r0, 0
	bne _08017042
	ldrb r0, [r6]
	bl b_cancel_multi_turn_move_maybe
	bl Random
	ldrb r1, [r6]
	adds r2, r1, 0
	muls r2, r5
	adds r2, r4
	movs r1, 0x3
	ands r1, r0
	adds r1, 0x2
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	ldrb r0, [r6]
	muls r0, r5
	adds r0, r4
	str r0, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r2, 0
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r6]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, _08017058 @ =gUnknown_02024C0A
	ldrb r0, [r6]
	strb r0, [r1]
	ldr r0, _0801705C @ =gUnknown_081D964C
	bl b_call_bc_move_exec
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_08017042:
	ldr r1, _08017060 @ =0x02000000
	movs r7, 0xB0
	lsls r7, 9
	adds r1, r7
	b _08017072
	.align 2, 0
_0801704C: .4byte gUnknown_02024C98
_08017050: .4byte 0xfffff800
_08017054: .4byte gBattleMons
_08017058: .4byte gUnknown_02024C0A
_0801705C: .4byte gUnknown_081D964C
_08017060: .4byte 0x02000000
_08017064:
	movs r1, 0xB0
	lsls r1, 9
	add r1, r10
	movs r0, 0
	strb r0, [r1]
	ldr r1, _08017084 @ =0x00016001
_08017070:
	add r1, r10
_08017072:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_08017078:
	mov r0, r9
	cmp r0, 0
	beq _08017088
_0801707E:
	mov r0, r9
	b _080170B8
	.align 2, 0
_08017084: .4byte 0x00016001
_08017088:
	ldr r7, _080170C8 @ =0x02000000
	ldr r2, _080170CC @ =0x00016001
	adds r0, r7, r2
	ldr r1, _080170D0 @ =gUnknown_02024A68
	ldrb r0, [r0]
	mov r10, r7
	mov r8, r1
	ldrb r1, [r1]
	cmp r0, r1
	bcs _080170AC
	movs r3, 0xB0
	lsls r3, 9
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, 0x13
	bhi _080170AC
	bl _08016580
_080170AC:
	ldr r0, _080170D4 @ =gUnknown_02024C6C
	ldr r1, [r0]
	ldr r2, _080170D8 @ =0xfeffffdf
	ands r1, r2
	str r1, [r0]
	movs r0, 0
_080170B8:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_080170C8: .4byte 0x02000000
_080170CC: .4byte 0x00016001
_080170D0: .4byte gUnknown_02024A68
_080170D4: .4byte gUnknown_02024C6C
_080170D8: .4byte 0xfeffffdf
	thumb_func_end sub_8016558

	thumb_func_start sub_80170DC
sub_80170DC: @ 80170DC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r2, _08017108 @ =gUnknown_02024C6C
	ldr r0, [r2]
	ldr r1, _0801710C @ =0x01000020
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08017110 @ =0x02000000
	ldr r3, _08017114 @ =0x00016110
	adds r0, r1, r3
	ldrb r0, [r0]
	mov r8, r1
	cmp r0, 0
	beq _08017118
	cmp r0, 0x1
	bne _08017104
	b _08017258
_08017104:
	b _08017380
	.align 2, 0
_08017108: .4byte gUnknown_02024C6C
_0801710C: .4byte 0x01000020
_08017110: .4byte 0x02000000
_08017114: .4byte 0x00016110
_08017118:
	ldr r2, _0801715C @ =0x00016111
	add r2, r8
	ldr r0, _08017160 @ =gUnknown_02024A68
	ldrb r1, [r2]
	mov r9, r0
	ldrb r0, [r0]
	cmp r1, r0
	bcc _0801712A
	b _08017248
_0801712A:
	ldr r4, _08017164 @ =gUnknown_02024A60
	adds r5, r2, 0
	ldr r1, _08017168 @ =gUnknown_02024DBC
	mov r12, r1
	movs r2, 0x8
	add r2, r12
	mov r10, r2
	mov r7, r12
	adds r7, 0x18
	ldr r6, _0801716C @ =gUnknown_030041C0
_0801713E:
	ldrb r3, [r5]
	strb r3, [r4]
	ldr r0, _08017170 @ =gUnknown_02024C0C
	ldrb r1, [r0]
	ldr r2, _08017174 @ =gBitTable
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _08017178
	adds r0, r3, 0x1
	strb r0, [r5]
	b _0801723C
	.align 2, 0
_0801715C: .4byte 0x00016111
_08017160: .4byte gUnknown_02024A68
_08017164: .4byte gUnknown_02024A60
_08017168: .4byte gUnknown_02024DBC
_0801716C: .4byte gUnknown_030041C0
_08017170: .4byte gUnknown_02024C0C
_08017174: .4byte gBitTable
_08017178:
	adds r0, r3, 0x1
	strb r0, [r5]
	ldr r1, _080171B4 @ =gUnknown_02024DBC
	ldrb r0, [r4]
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, 0
	beq _0801723C
	subs r0, 0x1
	strb r0, [r1]
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0
	bne _0801723C
	ldr r1, _080171B8 @ =gBattleMons
	ldrb r2, [r4]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _0801723C
	lsls r0, r2, 1
	adds r0, r7
	ldrh r0, [r0]
	cmp r0, 0xF8
	bne _080171C0
	ldr r0, _080171BC @ =gUnknown_02024D1E
	strb r3, [r0, 0x5]
	b _080171C6
	.align 2, 0
_080171B4: .4byte gUnknown_02024DBC
_080171B8: .4byte gBattleMons
_080171BC: .4byte gUnknown_02024D1E
_080171C0:
	ldr r1, _08017220 @ =gUnknown_02024D1E
	movs r0, 0x1
	strb r0, [r1, 0x5]
_080171C6:
	movs r0, 0xFD
	strb r0, [r6]
	movs r0, 0x2
	strb r0, [r6, 0x1]
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r7
	ldrh r0, [r0]
	strb r0, [r6, 0x2]
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r7
	ldrh r0, [r0]
	lsrs r0, 8
	strb r0, [r6, 0x3]
	movs r0, 0xFF
	strb r0, [r6, 0x4]
	ldr r3, _08017224 @ =gUnknown_02024C08
	ldrb r0, [r4]
	strb r0, [r3]
	ldr r1, _08017228 @ =gUnknown_02024C07
	mov r0, r12
	adds r0, 0x4
	ldrb r2, [r4]
	adds r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0801722C @ =gUnknown_02024BEC
	ldrb r0, [r4]
	lsls r0, 2
	add r0, r10
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _08017230 @ =gUnknown_02024D68
	ldrb r1, [r3]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r2, 0x4
	adds r0, r2
	ldr r1, _08017234 @ =0x0000ffff
	str r1, [r0]
	ldr r0, _08017238 @ =gUnknown_081D92D7
	b _08017364
	.align 2, 0
_08017220: .4byte gUnknown_02024D1E
_08017224: .4byte gUnknown_02024C08
_08017228: .4byte gUnknown_02024C07
_0801722C: .4byte gUnknown_02024BEC
_08017230: .4byte gUnknown_02024D68
_08017234: .4byte 0x0000ffff
_08017238: .4byte gUnknown_081D92D7
_0801723C:
	ldrb r0, [r5]
	mov r3, r9
	ldrb r3, [r3]
	cmp r0, r3
	bcs _08017248
	b _0801713E
_08017248:
	ldr r1, _0801729C @ =0x00016110
	add r1, r8
	movs r2, 0
	movs r0, 0x1
	strb r0, [r1]
	ldr r0, _080172A0 @ =0x00016111
	add r0, r8
	strb r2, [r0]
_08017258:
	ldr r2, _080172A0 @ =0x00016111
	add r2, r8
	ldr r0, _080172A4 @ =gUnknown_02024A68
	ldrb r1, [r2]
	mov r9, r0
	ldrb r0, [r0]
	cmp r1, r0
	bcc _0801726A
	b _08017380
_0801726A:
	ldr r5, _080172A8 @ =gUnknown_02024A60
	adds r3, r2, 0
	ldr r4, _080172AC @ =gUnknown_030041C0
	ldr r7, _080172B0 @ =gUnknown_02024CA8
_08017272:
	ldr r2, _080172B4 @ =gUnknown_02024C07
	ldr r1, _080172B8 @ =gUnknown_02024A7A
	ldrb r0, [r3]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	strb r0, [r5]
	ldr r0, _080172BC @ =gUnknown_02024C0C
	ldrb r1, [r0]
	ldr r2, _080172C0 @ =gBitTable
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _080172C4
	ldrb r0, [r3]
	adds r0, 0x1
	strb r0, [r3]
	b _08017374
	.align 2, 0
_0801729C: .4byte 0x00016110
_080172A0: .4byte 0x00016111
_080172A4: .4byte gUnknown_02024A68
_080172A8: .4byte gUnknown_02024A60
_080172AC: .4byte gUnknown_030041C0
_080172B0: .4byte gUnknown_02024CA8
_080172B4: .4byte gUnknown_02024C07
_080172B8: .4byte gUnknown_02024A7A
_080172BC: .4byte gUnknown_02024C0C
_080172C0: .4byte gBitTable
_080172C4:
	ldrb r0, [r3]
	adds r0, 0x1
	strb r0, [r3]
	ldr r6, _08017334 @ =gUnknown_02024C98
	ldrb r2, [r5]
	lsls r0, r2, 2
	adds r0, r6
	ldr r0, [r0]
	movs r1, 0x20
	ands r0, r1
	cmp r0, 0
	beq _08017374
	movs r0, 0xFD
	strb r0, [r4]
	movs r0, 0x1
	strb r0, [r4, 0x1]
	strb r0, [r4, 0x2]
	strb r0, [r4, 0x3]
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r7
	ldrb r0, [r0, 0xF]
	lsls r0, 28
	lsrs r0, 28
	strb r0, [r4, 0x4]
	movs r0, 0xFF
	strb r0, [r4, 0x5]
	ldrb r2, [r5]
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r4, r0, r7
	ldrb r3, [r4, 0xF]
	lsls r1, r3, 28
	cmp r1, 0
	bne _08017348
	lsls r2, 2
	adds r2, r6
	ldr r0, [r2]
	movs r1, 0x21
	negs r1, r1
	ands r0, r1
	str r0, [r2]
	ldr r3, _08017338 @ =gUnknown_02024BEC
	ldr r2, _0801733C @ =gBattleMons
	ldrb r1, [r5]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r0, [r0, 0x28]
	str r0, [r3]
	ldr r1, _08017340 @ =gUnknown_02024C10
	ldr r0, _08017344 @ =gUnknown_081D9202
	b _08017360
	.align 2, 0
_08017334: .4byte gUnknown_02024C98
_08017338: .4byte gUnknown_02024BEC
_0801733C: .4byte gBattleMons
_08017340: .4byte gUnknown_02024C10
_08017344: .4byte gUnknown_081D9202
_08017348:
	lsrs r1, 28
	subs r1, 0x1
	movs r0, 0xF
	ands r1, r0
	movs r2, 0x10
	negs r2, r2
	adds r0, r2, 0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, 0xF]
	ldr r1, _0801736C @ =gUnknown_02024C10
	ldr r0, _08017370 @ =gUnknown_081D921D
_08017360:
	str r0, [r1]
	ldr r0, [r1]
_08017364:
	bl b_call_bc_move_exec
	movs r0, 0x1
	b _0801738C
	.align 2, 0
_0801736C: .4byte gUnknown_02024C10
_08017370: .4byte gUnknown_081D921D
_08017374:
	ldrb r0, [r3]
	mov r1, r9
	ldrb r1, [r1]
	cmp r0, r1
	bcs _08017380
	b _08017272
_08017380:
	ldr r2, _0801739C @ =gUnknown_02024C6C
	ldr r0, [r2]
	ldr r1, _080173A0 @ =0xfeffffdf
	ands r0, r1
	str r0, [r2]
	movs r0, 0
_0801738C:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801739C: .4byte gUnknown_02024C6C
_080173A0: .4byte 0xfeffffdf
	thumb_func_end sub_80170DC

	thumb_func_start sub_80173A4
sub_80173A4: @ 80173A4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	ldr r0, _080173C0 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _080173F8
	b _080176AC
	.align 2, 0
_080173C0: .4byte gUnknown_020239F8
_080173C4:
	ldr r0, _080173D4 @ =gUnknown_081D8C72
	bl b_call_bc_move_exec
	ldr r1, _080173D8 @ =0x00016059
	add r1, r10
	movs r0, 0x2
	b _080173E8
	.align 2, 0
_080173D4: .4byte gUnknown_081D8C72
_080173D8: .4byte 0x00016059
_080173DC:
	ldr r0, _080173F0 @ =gUnknown_081D8C7B
	bl b_call_bc_move_exec
	ldr r1, _080173F4 @ =0x00016059
	add r1, r8
	movs r0, 0x5
_080173E8:
	strb r0, [r1]
_080173EA:
	movs r0, 0x1
	b _080176AE
	.align 2, 0
_080173F0: .4byte gUnknown_081D8C7B
_080173F4: .4byte 0x00016059
_080173F8:
	ldr r0, _08017414 @ =0x02000000
	mov r9, r0
_080173FC:
	ldr r0, _08017418 @ =0x00016059
	add r0, r9
	ldrb r0, [r0]
	cmp r0, 0x7
	bls _08017408
	b _080176A0
_08017408:
	lsls r0, 2
	ldr r1, _0801741C @ =_08017420
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08017414: .4byte 0x02000000
_08017418: .4byte 0x00016059
_0801741C: .4byte _08017420
	.align 2, 0
_08017420:
	.4byte _08017440
	.4byte _08017490
	.4byte _08017534
	.4byte _0801757C
	.4byte _0801758E
	.4byte _080175FC
	.4byte _08017638
	.4byte _080176A0
_08017440:
	ldr r1, _08017508 @ =0x0001605a
	add r1, r9
	movs r0, 0
	strb r0, [r1]
	ldr r1, _0801750C @ =0x00016059
	add r1, r9
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	movs r5, 0
	ldr r0, _08017510 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r5, r0
	bge _08017490
	ldr r6, _08017514 @ =gUnknown_02024C0C
_0801745E:
	ldrb r0, [r6]
	ldr r2, _08017518 @ =gBitTable
	lsls r1, r5, 2
	adds r1, r2
	ldr r4, [r1]
	ands r0, r4
	cmp r0, 0
	beq _08017486
	lsls r0, r5, 24
	lsrs r0, 24
	movs r1, 0x6
	movs r2, 0x6
	bl sub_8018018
	lsls r0, 24
	cmp r0, 0
	bne _08017486
	ldrb r0, [r6]
	bics r0, r4
	strb r0, [r6]
_08017486:
	adds r5, 0x1
	ldr r0, _08017510 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r5, r0
	blt _0801745E
_08017490:
	ldr r1, _0801751C @ =0x02000000
	mov r9, r1
	ldr r0, _08017520 @ =gUnknown_02024C09
	mov r12, r0
	ldr r1, _08017524 @ =gUnknown_02024C08
	mov r8, r1
	mov r10, r9
	ldr r5, _08017508 @ =0x0001605a
	add r5, r9
	ldr r7, _08017528 @ =gBattleMons
	ldr r6, _0801752C @ =0x00016113
	add r6, r9
_080174A8:
	ldrb r0, [r5]
	mov r1, r8
	strb r0, [r1]
	mov r1, r12
	strb r0, [r1]
	ldrb r3, [r5]
	movs r0, 0x58
	muls r0, r3
	adds r0, r7
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _080174EA
	ldrb r2, [r6]
	ldr r4, _08017518 @ =gBitTable
	ldr r1, _08017530 @ =gUnknown_02024A6A
	lsls r0, r3, 1
	adds r0, r1
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r4
	ldr r0, [r0]
	ands r2, r0
	cmp r2, 0
	bne _080174EA
	ldr r0, _08017514 @ =gUnknown_02024C0C
	ldrb r1, [r0]
	lsls r0, r3, 2
	adds r0, r4
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _080174EA
	b _080173C4
_080174EA:
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	ldr r1, _08017510 @ =gUnknown_02024A68
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bne _080174A8
	ldr r1, _0801750C @ =0x00016059
	add r1, r9
	movs r0, 0x3
	strb r0, [r1]
	b _080176A0
	.align 2, 0
_08017508: .4byte 0x0001605a
_0801750C: .4byte 0x00016059
_08017510: .4byte gUnknown_02024A68
_08017514: .4byte gUnknown_02024C0C
_08017518: .4byte gBitTable
_0801751C: .4byte 0x02000000
_08017520: .4byte gUnknown_02024C09
_08017524: .4byte gUnknown_02024C08
_08017528: .4byte gBattleMons
_0801752C: .4byte 0x00016113
_08017530: .4byte gUnknown_02024A6A
_08017534:
	ldr r0, _0801755C @ =gUnknown_02024C09
	ldrb r0, [r0]
	bl sub_8015740
	ldr r2, _08017560 @ =0x02000000
	ldr r0, _08017564 @ =0x0001605a
	adds r1, r2, r0
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r1, _08017568 @ =gUnknown_02024A68
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bne _08017570
	ldr r0, _0801756C @ =0x00016059
	adds r1, r2, r0
	movs r0, 0x3
	b _0801769C
	.align 2, 0
_0801755C: .4byte gUnknown_02024C09
_08017560: .4byte 0x02000000
_08017564: .4byte 0x0001605a
_08017568: .4byte gUnknown_02024A68
_0801756C: .4byte 0x00016059
_08017570:
	ldr r0, _08017578 @ =0x00016059
	adds r1, r2, r0
	movs r0, 0x1
	b _0801769C
	.align 2, 0
_08017578: .4byte 0x00016059
_0801757C:
	ldr r1, _080175D8 @ =0x0001605a
	add r1, r9
	movs r0, 0
	strb r0, [r1]
	ldr r1, _080175DC @ =0x00016059
	add r1, r9
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_0801758E:
	ldr r7, _080175E0 @ =gUnknown_02024C09
	ldr r6, _080175E4 @ =gUnknown_02024C08
	ldr r1, _080175E8 @ =0x02000000
	mov r8, r1
	ldr r3, _080175D8 @ =0x0001605a
	add r3, r8
	ldr r5, _080175EC @ =gBattleMons
	ldr r4, _080175F0 @ =gBitTable
_0801759E:
	ldrb r0, [r3]
	strb r0, [r6]
	strb r0, [r7]
	ldrb r2, [r3]
	movs r0, 0x58
	muls r0, r2
	adds r0, r5
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _080175C4
	ldr r0, _080175F4 @ =gUnknown_02024C0C
	ldrb r1, [r0]
	lsls r0, r2, 2
	adds r0, r4
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _080175C4
	b _080173DC
_080175C4:
	adds r0, r2, 0x1
	strb r0, [r3]
	ldr r1, _080175F8 @ =gUnknown_02024A68
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bne _0801759E
	b _08017612
	.align 2, 0
_080175D8: .4byte 0x0001605a
_080175DC: .4byte 0x00016059
_080175E0: .4byte gUnknown_02024C09
_080175E4: .4byte gUnknown_02024C08
_080175E8: .4byte 0x02000000
_080175EC: .4byte gBattleMons
_080175F0: .4byte gBitTable
_080175F4: .4byte gUnknown_02024C0C
_080175F8: .4byte gUnknown_02024A68
_080175FC:
	ldr r0, _0801761C @ =0x0001605a
	add r0, r9
	ldrb r1, [r0]
	adds r1, 0x1
	strb r1, [r0]
	ldr r0, _08017620 @ =gUnknown_02024A68
	lsls r1, 24
	lsrs r1, 24
	ldrb r0, [r0]
	cmp r1, r0
	bne _08017628
_08017612:
	ldr r1, _08017624 @ =0x00016059
	add r1, r9
	movs r0, 0x6
	strb r0, [r1]
	b _080176A0
	.align 2, 0
_0801761C: .4byte 0x0001605a
_08017620: .4byte gUnknown_02024A68
_08017624: .4byte 0x00016059
_08017628:
	ldr r1, _08017634 @ =0x00016059
	add r1, r9
	movs r0, 0x4
	strb r0, [r1]
	b _080176A0
	.align 2, 0
_08017634: .4byte 0x00016059
_08017638:
	movs r0, 0
	str r0, [sp]
	movs r0, 0x9
	movs r1, 0
	movs r2, 0
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	beq _08017652
	b _080173EA
_08017652:
	str r0, [sp]
	movs r0, 0xB
	movs r1, 0
	movs r2, 0
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	beq _08017668
	b _080173EA
_08017668:
	movs r0, 0x1
	movs r1, 0
	movs r2, 0x1
	bl sub_801A02C
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	beq _0801767C
	b _080173EA
_0801767C:
	str r0, [sp]
	movs r0, 0x6
	movs r1, 0
	movs r2, 0
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	beq _08017692
	b _080173EA
_08017692:
	ldr r2, _080176C0 @ =0x02000000
	ldr r0, _080176C4 @ =0x00016059
	adds r1, r2, r0
	ldrb r0, [r1]
	adds r0, 0x1
_0801769C:
	strb r0, [r1]
	mov r9, r2
_080176A0:
	ldr r0, _080176C4 @ =0x00016059
	add r0, r9
	ldrb r0, [r0]
	cmp r0, 0x7
	beq _080176AC
	b _080173FC
_080176AC:
	movs r0, 0
_080176AE:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_080176C0: .4byte 0x02000000
_080176C4: .4byte 0x00016059
	thumb_func_end sub_80173A4

	thumb_func_start b_clear_atk_up_if_hit_flag_unless_enraged
b_clear_atk_up_if_hit_flag_unless_enraged: @ 80176C8
	push {r4-r6,lr}
	movs r3, 0
	ldr r0, _08017708 @ =gUnknown_02024A68
	adds r5, r0, 0
	ldrb r0, [r5]
	cmp r3, r0
	bge _08017700
	ldr r4, _0801770C @ =gUnknown_02024C60
	movs r6, 0x80
	lsls r6, 16
	ldr r2, _08017710 @ =gUnknown_02024AD0
_080176DE:
	ldr r1, [r2]
	adds r0, r1, 0
	ands r0, r6
	cmp r0, 0
	beq _080176F4
	ldrh r0, [r4]
	cmp r0, 0x63
	beq _080176F4
	ldr r0, _08017714 @ =0xff7fffff
	ands r1, r0
	str r1, [r2]
_080176F4:
	adds r4, 0x2
	adds r2, 0x58
	adds r3, 0x1
	ldrb r0, [r5]
	cmp r3, r0
	blt _080176DE
_08017700:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017708: .4byte gUnknown_02024A68
_0801770C: .4byte gUnknown_02024C60
_08017710: .4byte gUnknown_02024AD0
_08017714: .4byte 0xff7fffff
	thumb_func_end b_clear_atk_up_if_hit_flag_unless_enraged

	thumb_func_start sub_8017718
sub_8017718: @ 8017718
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	movs r0, 0
	mov r9, r0
	ldr r1, _08017734 @ =0x02016090
	mov r10, r1
	ldr r2, _08017738 @ =0xfffe9f70
	add r2, r10
	mov r8, r2
	b _08017746
	.align 2, 0
_08017734: .4byte 0x02016090
_08017738: .4byte 0xfffe9f70
_0801773C:
	mov r4, r9
	cmp r4, 0
	beq _08017746
	bl _08017FAC
_08017746:
	ldr r0, _08017760 @ =0x000160e7
	add r0, r8
	ldrb r0, [r0]
	cmp r0, 0xE
	bls _08017754
	bl _08017F9E
_08017754:
	lsls r0, 2
	ldr r1, _08017764 @ =_08017768
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08017760: .4byte 0x000160e7
_08017764: .4byte _08017768
	.align 2, 0
_08017768:
	.4byte _080177A4
	.4byte _080177E4
	.4byte _08017920
	.4byte _080179D8
	.4byte _08017A50
	.4byte _08017AC8
	.4byte _08017B1C
	.4byte _08017B98
	.4byte _08017C1C
	.4byte _08017C60
	.4byte _08017D3C
	.4byte _08017DC0
	.4byte _08017E5C
	.4byte _08017F48
	.4byte _08017F9E
_080177A4:
	ldr r1, _080177D0 @ =gBattleMons
	ldr r3, _080177D4 @ =gUnknown_02024C07
	ldrb r2, [r3]
	movs r0, 0x58
	muls r2, r0
	adds r1, 0x50
	adds r2, r1
	ldr r0, [r2]
	ldr r1, _080177D8 @ =0xfdffffff
	ands r0, r1
	str r0, [r2]
	ldr r0, _080177DC @ =gUnknown_02024C98
	ldrb r2, [r3]
	lsls r2, 2
	adds r2, r0
	ldr r0, [r2]
	ldr r1, _080177E0 @ =0xffffbfff
	ands r0, r1
	str r0, [r2]
	bl _08017F94
	.align 2, 0
_080177D0: .4byte gBattleMons
_080177D4: .4byte gUnknown_02024C07
_080177D8: .4byte 0xfdffffff
_080177DC: .4byte gUnknown_02024C98
_080177E0: .4byte 0xffffbfff
_080177E4:
	ldr r7, _0801784C @ =gBattleMons
	ldr r4, _08017850 @ =gUnknown_02024C07
	ldrb r1, [r4]
	movs r5, 0x58
	adds r0, r1, 0
	muls r0, r5
	adds r6, r7, 0
	adds r6, 0x4C
	adds r0, r6
	ldr r0, [r0]
	movs r2, 0x7
	mov r8, r2
	ands r0, r2
	cmp r0, 0
	bne _08017804
	b _08017D90
_08017804:
	adds r0, r1, 0
	bl sub_8025A44
	lsls r0, 24
	cmp r0, 0
	beq _08017864
	ldrb r0, [r4]
	adds r2, r0, 0
	muls r2, r5
	adds r2, r6
	ldr r0, [r2]
	movs r1, 0x8
	negs r1, r1
	ands r0, r1
	str r0, [r2]
	ldrb r0, [r4]
	adds r2, r0, 0
	muls r2, r5
	adds r0, r7, 0
	adds r0, 0x50
	adds r2, r0
	ldr r0, [r2]
	ldr r1, _08017854 @ =0xf7ffffff
	ands r0, r1
	str r0, [r2]
	bl b_movescr_stack_push_cursor
	ldr r1, _08017858 @ =gUnknown_02024D1E
	movs r0, 0x1
	strb r0, [r1, 0x5]
	ldr r1, _0801785C @ =gUnknown_02024C10
	ldr r0, _08017860 @ =gUnknown_081D94FB
	str r0, [r1]
	movs r4, 0x2
	mov r9, r4
	b _08017D90
	.align 2, 0
_0801784C: .4byte gBattleMons
_08017850: .4byte gUnknown_02024C07
_08017854: .4byte 0xf7ffffff
_08017858: .4byte gUnknown_02024D1E
_0801785C: .4byte gUnknown_02024C10
_08017860: .4byte gUnknown_081D94FB
_08017864:
	ldrb r0, [r4]
	adds r1, r0, 0
	muls r1, r5
	adds r0, r1, r7
	adds r0, 0x20
	ldrb r0, [r0]
	movs r3, 0x1
	cmp r0, 0x30
	bne _08017878
	movs r3, 0x2
_08017878:
	adds r2, r1, r6
	ldr r1, [r2]
	adds r0, r1, 0
	mov r7, r8
	ands r0, r7
	cmp r0, r3
	bcs _08017890
	movs r0, 0x8
	negs r0, r0
	ands r1, r0
	str r1, [r2]
	b _08017894
_08017890:
	subs r0, r1, r3
	str r0, [r2]
_08017894:
	ldr r2, _080178D8 @ =gBattleMons
	ldr r0, _080178DC @ =gUnknown_02024C07
	ldrb r1, [r0]
	movs r0, 0x58
	muls r1, r0
	adds r0, r2, 0
	adds r0, 0x4C
	adds r0, r1, r0
	ldr r4, [r0]
	movs r0, 0x7
	ands r4, r0
	cmp r4, 0
	beq _080178F0
	ldr r0, _080178E0 @ =gUnknown_02024BE6
	ldrh r0, [r0]
	cmp r0, 0xAD
	bne _080178B8
	b _08017D90
_080178B8:
	cmp r0, 0xD6
	bne _080178BE
	b _08017D90
_080178BE:
	ldr r1, _080178E4 @ =gUnknown_02024C10
	ldr r0, _080178E8 @ =gUnknown_081D94EE
	str r0, [r1]
	ldr r2, _080178EC @ =gUnknown_02024C6C
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 12
	orrs r0, r1
	str r0, [r2]
	movs r0, 0x2
	mov r9, r0
	b _08017D90
	.align 2, 0
_080178D8: .4byte gBattleMons
_080178DC: .4byte gUnknown_02024C07
_080178E0: .4byte gUnknown_02024BE6
_080178E4: .4byte gUnknown_02024C10
_080178E8: .4byte gUnknown_081D94EE
_080178EC: .4byte gUnknown_02024C6C
_080178F0:
	adds r2, 0x50
	adds r2, r1, r2
	ldr r0, [r2]
	ldr r1, _08017910 @ =0xf7ffffff
	ands r0, r1
	str r0, [r2]
	bl b_movescr_stack_push_cursor
	ldr r0, _08017914 @ =gUnknown_02024D1E
	strb r4, [r0, 0x5]
	ldr r1, _08017918 @ =gUnknown_02024C10
	ldr r0, _0801791C @ =gUnknown_081D94FB
	str r0, [r1]
	movs r1, 0x2
	b _08017D8E
	.align 2, 0
_08017910: .4byte 0xf7ffffff
_08017914: .4byte gUnknown_02024D1E
_08017918: .4byte gUnknown_02024C10
_0801791C: .4byte gUnknown_081D94FB
_08017920:
	ldr r1, _0801797C @ =gBattleMons
	ldr r7, _08017980 @ =gUnknown_02024C07
	ldrb r0, [r7]
	movs r6, 0x58
	muls r0, r6
	adds r5, r1, 0
	adds r5, 0x4C
	adds r0, r5
	ldr r0, [r0]
	movs r1, 0x20
	ands r0, r1
	cmp r0, 0
	bne _0801793C
	b _08017F94
_0801793C:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x5
	bl __umodsi3
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0
	beq _080179A8
	ldr r2, _08017984 @ =gBattleMoves
	ldr r0, _08017988 @ =gUnknown_02024BE6
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0x7D
	beq _08017998
	ldr r1, _0801798C @ =gUnknown_02024C10
	ldr r0, _08017990 @ =gUnknown_081D9545
	str r0, [r1]
	ldr r2, _08017994 @ =gUnknown_02024C6C
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 2
	orrs r0, r1
	str r0, [r2]
	b _080179C8
	.align 2, 0
_0801797C: .4byte gBattleMons
_08017980: .4byte gUnknown_02024C07
_08017984: .4byte gBattleMoves
_08017988: .4byte gUnknown_02024BE6
_0801798C: .4byte gUnknown_02024C10
_08017990: .4byte gUnknown_081D9545
_08017994: .4byte gUnknown_02024C6C
_08017998:
	ldr r2, _080179A0 @ =0x02000000
	ldr r7, _080179A4 @ =0x000160e7
	adds r1, r2, r7
	b _08017D96
	.align 2, 0
_080179A0: .4byte 0x02000000
_080179A4: .4byte 0x000160e7
_080179A8:
	ldrb r0, [r7]
	adds r2, r0, 0
	muls r2, r6
	adds r2, r5
	ldr r0, [r2]
	movs r1, 0x21
	negs r1, r1
	ands r0, r1
	str r0, [r2]
	bl b_movescr_stack_push_cursor
	ldr r1, _080179CC @ =gUnknown_02024C10
	ldr r0, _080179D0 @ =gUnknown_081D9552
	str r0, [r1]
	ldr r0, _080179D4 @ =gUnknown_02024D1E
	strb r4, [r0, 0x5]
_080179C8:
	movs r0, 0x2
	b _08017E3C
	.align 2, 0
_080179CC: .4byte gUnknown_02024C10
_080179D0: .4byte gUnknown_081D9552
_080179D4: .4byte gUnknown_02024D1E
_080179D8:
	ldr r1, _08017A30 @ =gBattleMons
	ldr r0, _08017A34 @ =gUnknown_02024C07
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x36
	beq _080179EE
	b _08017D90
_080179EE:
	ldr r0, _08017A38 @ =gUnknown_02024CA8
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x18]
	lsls r0, 31
	cmp r0, 0
	bne _08017A02
	b _08017D90
_08017A02:
	adds r0, r2, 0
	bl b_cancel_multi_turn_move_maybe
	ldr r2, _08017A3C @ =gUnknown_02024C6C
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 12
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08017A40 @ =gUnknown_02024D1E
	movs r0, 0
	strb r0, [r1, 0x5]
	ldr r1, _08017A44 @ =gUnknown_02024C10
	ldr r0, _08017A48 @ =gUnknown_081D9977
	str r0, [r1]
	ldr r2, _08017A4C @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	movs r2, 0x1
	mov r9, r2
	b _08017D90
	.align 2, 0
_08017A30: .4byte gBattleMons
_08017A34: .4byte gUnknown_02024C07
_08017A38: .4byte gUnknown_02024CA8
_08017A3C: .4byte gUnknown_02024C6C
_08017A40: .4byte gUnknown_02024D1E
_08017A44: .4byte gUnknown_02024C10
_08017A48: .4byte gUnknown_081D9977
_08017A4C: .4byte gUnknown_02024C68
_08017A50:
	ldr r1, _08017AA4 @ =gBattleMons
	ldr r3, _08017AA8 @ =gUnknown_02024C07
	ldrb r2, [r3]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r2, r0, r1
	ldr r1, [r2]
	movs r0, 0x80
	lsls r0, 15
	ands r0, r1
	cmp r0, 0
	beq _08017A9C
	ldr r0, _08017AAC @ =0xffbfffff
	ands r1, r0
	str r1, [r2]
	ldr r2, _08017AB0 @ =gUnknown_02024CA8
	ldrb r1, [r3]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0
	strb r1, [r0, 0x19]
	ldrb r0, [r3]
	bl b_cancel_multi_turn_move_maybe
	ldr r1, _08017AB4 @ =gUnknown_02024C10
	ldr r0, _08017AB8 @ =gUnknown_081D7956
	str r0, [r1]
	ldr r2, _08017ABC @ =gUnknown_02024C6C
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 12
	orrs r0, r1
	str r0, [r2]
	movs r7, 0x1
	mov r9, r7
_08017A9C:
	ldr r2, _08017AC0 @ =0x02000000
	ldr r0, _08017AC4 @ =0x000160e7
	adds r1, r2, r0
	b _08017D96
	.align 2, 0
_08017AA4: .4byte gBattleMons
_08017AA8: .4byte gUnknown_02024C07
_08017AAC: .4byte 0xffbfffff
_08017AB0: .4byte gUnknown_02024CA8
_08017AB4: .4byte gUnknown_02024C10
_08017AB8: .4byte gUnknown_081D7956
_08017ABC: .4byte gUnknown_02024C6C
_08017AC0: .4byte 0x02000000
_08017AC4: .4byte 0x000160e7
_08017AC8:
	ldr r1, _08017B08 @ =gBattleMons
	ldr r3, _08017B0C @ =gUnknown_02024C07
	ldrb r2, [r3]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r2, r0, r1
	ldr r1, [r2]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	bne _08017AE2
	b _08017D90
_08017AE2:
	movs r0, 0x9
	negs r0, r0
	ands r1, r0
	str r1, [r2]
	ldr r0, _08017B10 @ =gUnknown_02024D28
	ldrb r2, [r3]
	lsls r2, 4
	adds r2, r0
	ldrb r0, [r2, 0x2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2, 0x2]
	ldrb r0, [r3]
	bl b_cancel_multi_turn_move_maybe
	ldr r1, _08017B14 @ =gUnknown_02024C10
	ldr r0, _08017B18 @ =gUnknown_081D9573
	b _08017D7E
	.align 2, 0
_08017B08: .4byte gBattleMons
_08017B0C: .4byte gUnknown_02024C07
_08017B10: .4byte gUnknown_02024D28
_08017B14: .4byte gUnknown_02024C10
_08017B18: .4byte gUnknown_081D9573
_08017B1C:
	ldr r0, _08017B74 @ =gUnknown_02024CA8
	ldr r3, _08017B78 @ =gUnknown_02024C07
	ldrb r2, [r3]
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r1, r0
	ldr r0, _08017B7C @ =gUnknown_02024BE6
	ldrh r1, [r1, 0x4]
	ldrh r0, [r0]
	cmp r1, r0
	beq _08017B36
	b _08017D90
_08017B36:
	cmp r1, 0
	bne _08017B3C
	b _08017D90
_08017B3C:
	ldr r0, _08017B80 @ =gUnknown_02024D28
	lsls r2, 4
	adds r2, r0
	ldrb r0, [r2, 0x1]
	movs r1, 0x80
	orrs r0, r1
	strb r0, [r2, 0x1]
	ldr r0, _08017B84 @ =0x02000000
	ldrb r1, [r3]
	ldr r7, _08017B88 @ =0x00016003
	adds r0, r7
	strb r1, [r0]
	ldrb r0, [r3]
	bl b_cancel_multi_turn_move_maybe
	ldr r1, _08017B8C @ =gUnknown_02024C10
	ldr r0, _08017B90 @ =gUnknown_081D9139
	str r0, [r1]
	ldr r2, _08017B94 @ =gUnknown_02024C6C
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 12
	orrs r0, r1
	str r0, [r2]
	movs r0, 0x1
	mov r9, r0
	b _08017D90
	.align 2, 0
_08017B74: .4byte gUnknown_02024CA8
_08017B78: .4byte gUnknown_02024C07
_08017B7C: .4byte gUnknown_02024BE6
_08017B80: .4byte gUnknown_02024D28
_08017B84: .4byte 0x02000000
_08017B88: .4byte 0x00016003
_08017B8C: .4byte gUnknown_02024C10
_08017B90: .4byte gUnknown_081D9139
_08017B94: .4byte gUnknown_02024C6C
_08017B98:
	ldr r0, _08017BF4 @ =gUnknown_02024CA8
	ldr r4, _08017BF8 @ =gUnknown_02024C07
	ldrb r3, [r4]
	lsls r1, r3, 3
	subs r1, r3
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x13]
	lsls r0, 28
	cmp r0, 0
	beq _08017BEC
	ldr r2, _08017BFC @ =gBattleMoves
	ldr r0, _08017C00 @ =gUnknown_02024BE6
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	bne _08017BEC
	ldr r0, _08017C04 @ =gUnknown_02024D28
	lsls r2, r3, 4
	adds r2, r0
	ldrb r0, [r2, 0x2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2, 0x2]
	ldrb r0, [r4]
	bl b_cancel_multi_turn_move_maybe
	ldr r1, _08017C08 @ =gUnknown_02024C10
	ldr r0, _08017C0C @ =gUnknown_081D938F
	str r0, [r1]
	ldr r2, _08017C10 @ =gUnknown_02024C6C
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 12
	orrs r0, r1
	str r0, [r2]
	movs r7, 0x1
	mov r9, r7
_08017BEC:
	ldr r2, _08017C14 @ =0x02000000
	ldr r0, _08017C18 @ =0x000160e7
	adds r1, r2, r0
	b _08017D96
	.align 2, 0
_08017BF4: .4byte gUnknown_02024CA8
_08017BF8: .4byte gUnknown_02024C07
_08017BFC: .4byte gBattleMoves
_08017C00: .4byte gUnknown_02024BE6
_08017C04: .4byte gUnknown_02024D28
_08017C08: .4byte gUnknown_02024C10
_08017C0C: .4byte gUnknown_081D938F
_08017C10: .4byte gUnknown_02024C6C
_08017C14: .4byte 0x02000000
_08017C18: .4byte 0x000160e7
_08017C1C:
	ldr r4, _08017C4C @ =gUnknown_02024C07
	ldrb r0, [r4]
	ldr r1, _08017C50 @ =gUnknown_02024BE6
	ldrh r1, [r1]
	bl sub_8015D5C
	lsls r0, 24
	cmp r0, 0
	bne _08017C30
	b _08017D90
_08017C30:
	ldr r0, _08017C54 @ =gUnknown_02024D28
	ldrb r2, [r4]
	lsls r2, 4
	adds r2, r0
	ldrb r0, [r2, 0x1]
	movs r1, 0x20
	orrs r0, r1
	strb r0, [r2, 0x1]
	ldrb r0, [r4]
	bl b_cancel_multi_turn_move_maybe
	ldr r1, _08017C58 @ =gUnknown_02024C10
	ldr r0, _08017C5C @ =gUnknown_081D9459
	b _08017D7E
	.align 2, 0
_08017C4C: .4byte gUnknown_02024C07
_08017C50: .4byte gUnknown_02024BE6
_08017C54: .4byte gUnknown_02024D28
_08017C58: .4byte gUnknown_02024C10
_08017C5C: .4byte gUnknown_081D9459
_08017C60:
	ldr r7, _08017CAC @ =gBattleMons
	ldr r5, _08017CB0 @ =gUnknown_02024C07
	ldrb r0, [r5]
	movs r6, 0x58
	muls r0, r6
	adds r4, r7, 0
	adds r4, 0x50
	adds r2, r0, r4
	ldr r1, [r2]
	movs r3, 0x7
	adds r0, r1, 0
	ands r0, r3
	cmp r0, 0
	bne _08017C7E
	b _08017F94
_08017C7E:
	subs r0, r1, 0x1
	str r0, [r2]
	ldrb r0, [r5]
	muls r0, r6
	adds r0, r4
	ldr r0, [r0]
	ands r0, r3
	cmp r0, 0
	beq _08017D24
	bl Random
	movs r1, 0x1
	movs r2, 0x1
	ands r2, r0
	cmp r2, 0
	beq _08017CB8
	ldr r1, _08017CB4 @ =gUnknown_02024D1E
	movs r0, 0
	strb r0, [r1, 0x5]
	bl b_movescr_stack_push_cursor
	b _08017D02
	.align 2, 0
_08017CAC: .4byte gBattleMons
_08017CB0: .4byte gUnknown_02024C07
_08017CB4: .4byte gUnknown_02024D1E
_08017CB8:
	ldr r0, _08017D08 @ =gUnknown_02024D1E
	movs r4, 0x1
	strb r1, [r0, 0x5]
	ldr r1, _08017D0C @ =gUnknown_02024C08
	ldrb r0, [r5]
	strb r0, [r1]
	ldrb r0, [r5]
	adds r1, r0, 0
	muls r1, r6
	adds r1, r7
	movs r0, 0x28
	str r0, [sp]
	str r2, [sp, 0x4]
	ldrb r0, [r5]
	str r0, [sp, 0x8]
	ldrb r0, [r5]
	str r0, [sp, 0xC]
	adds r0, r1, 0
	movs r2, 0x1
	movs r3, 0
	bl CalculateBaseDamage
	ldr r1, _08017D10 @ =gUnknown_02024BEC
	str r0, [r1]
	ldr r0, _08017D14 @ =gUnknown_02024D28
	ldrb r1, [r5]
	lsls r1, 4
	adds r1, r0
	ldrb r0, [r1, 0x1]
	orrs r0, r4
	strb r0, [r1, 0x1]
	ldr r2, _08017D18 @ =gUnknown_02024C6C
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 12
	orrs r0, r1
	str r0, [r2]
_08017D02:
	ldr r1, _08017D1C @ =gUnknown_02024C10
	ldr r0, _08017D20 @ =gUnknown_081D9595
	b _08017D2C
	.align 2, 0
_08017D08: .4byte gUnknown_02024D1E
_08017D0C: .4byte gUnknown_02024C08
_08017D10: .4byte gUnknown_02024BEC
_08017D14: .4byte gUnknown_02024D28
_08017D18: .4byte gUnknown_02024C6C
_08017D1C: .4byte gUnknown_02024C10
_08017D20: .4byte gUnknown_081D9595
_08017D24:
	bl b_movescr_stack_push_cursor
	ldr r1, _08017D34 @ =gUnknown_02024C10
	ldr r0, _08017D38 @ =gUnknown_081D95D4
_08017D2C:
	str r0, [r1]
	movs r7, 0x1
	b _08017F8E
	.align 2, 0
_08017D34: .4byte gUnknown_02024C10
_08017D38: .4byte gUnknown_081D95D4
_08017D3C:
	ldr r1, _08017DA0 @ =gBattleMons
	ldr r4, _08017DA4 @ =gUnknown_02024C07
	ldrb r2, [r4]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08017D90
	bl Random
	lsls r0, 16
	movs r1, 0xC0
	lsls r1, 10
	ands r1, r0
	cmp r1, 0
	bne _08017D90
	ldr r0, _08017DA8 @ =gUnknown_02024D28
	ldrb r2, [r4]
	lsls r2, 4
	adds r2, r0
	ldrb r0, [r2]
	movs r1, 0x80
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4]
	bl b_cancel_multi_turn_move_maybe
	ldr r1, _08017DAC @ =gUnknown_02024C10
	ldr r0, _08017DB0 @ =gUnknown_081D9566
_08017D7E:
	str r0, [r1]
	ldr r2, _08017DB4 @ =gUnknown_02024C6C
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 12
	orrs r0, r1
	str r0, [r2]
	movs r1, 0x1
_08017D8E:
	mov r9, r1
_08017D90:
	ldr r2, _08017DB8 @ =0x02000000
	ldr r4, _08017DBC @ =0x000160e7
	adds r1, r2, r4
_08017D96:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	mov r8, r2
	b _08017F9E
	.align 2, 0
_08017DA0: .4byte gBattleMons
_08017DA4: .4byte gUnknown_02024C07
_08017DA8: .4byte gUnknown_02024D28
_08017DAC: .4byte gUnknown_02024C10
_08017DB0: .4byte gUnknown_081D9566
_08017DB4: .4byte gUnknown_02024C6C
_08017DB8: .4byte 0x02000000
_08017DBC: .4byte 0x000160e7
_08017DC0:
	ldr r1, _08017DFC @ =gBattleMons
	ldr r4, _08017E00 @ =gUnknown_02024C07
	ldrb r2, [r4]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r1, [r0]
	movs r0, 0xF0
	lsls r0, 12
	ands r1, r0
	cmp r1, 0
	bne _08017DDC
	b _08017F94
_08017DDC:
	lsrs r0, r1, 16
	bl sub_804114C
	ldr r1, _08017E04 @ =0x02000000
	ldr r7, _08017E08 @ =0x00016003
	adds r1, r7
	strb r0, [r1]
	bl Random
	movs r1, 0x1
	ands r1, r0
	cmp r1, 0
	beq _08017E0C
	bl b_movescr_stack_push_cursor
	b _08017E34
	.align 2, 0
_08017DFC: .4byte gBattleMons
_08017E00: .4byte gUnknown_02024C07
_08017E04: .4byte 0x02000000
_08017E08: .4byte 0x00016003
_08017E0C:
	ldr r0, _08017E44 @ =gUnknown_081D9608
	bl b_movescr_stack_push
	ldr r2, _08017E48 @ =gUnknown_02024C6C
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 12
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08017E4C @ =gUnknown_02024D28
	ldrb r2, [r4]
	lsls r2, 4
	adds r2, r0
	ldrb r0, [r2, 0x1]
	movs r1, 0x40
	orrs r0, r1
	strb r0, [r2, 0x1]
	ldrb r0, [r4]
	bl b_cancel_multi_turn_move_maybe
_08017E34:
	ldr r1, _08017E50 @ =gUnknown_02024C10
	ldr r0, _08017E54 @ =gUnknown_081D95FB
	str r0, [r1]
	movs r0, 0x1
_08017E3C:
	mov r9, r0
	ldr r1, _08017E58 @ =0x02000000
	mov r8, r1
	b _08017F94
	.align 2, 0
_08017E44: .4byte gUnknown_081D9608
_08017E48: .4byte gUnknown_02024C6C
_08017E4C: .4byte gUnknown_02024D28
_08017E50: .4byte gUnknown_02024C10
_08017E54: .4byte gUnknown_081D95FB
_08017E58: .4byte 0x02000000
_08017E5C:
	ldr r1, _08017E98 @ =gBattleMons
	ldr r6, _08017E9C @ =gUnknown_02024C07
	ldrb r0, [r6]
	movs r5, 0x58
	muls r0, r5
	adds r1, 0x50
	adds r3, r0, r1
	ldr r2, [r3]
	movs r4, 0xC0
	lsls r4, 2
	adds r0, r2, 0
	ands r0, r4
	cmp r0, 0
	bne _08017E7A
	b _08017F94
_08017E7A:
	ldr r7, _08017EA0 @ =0xffffff00
	adds r0, r2, r7
	str r0, [r3]
	ldrb r0, [r6]
	muls r0, r5
	adds r1, r0, r1
	ldr r2, [r1]
	adds r0, r2, 0
	ands r0, r4
	cmp r0, 0
	beq _08017EAC
	ldr r1, _08017EA4 @ =gUnknown_02024C10
	ldr r0, _08017EA8 @ =gUnknown_081D90A7
	b _08017F38
	.align 2, 0
_08017E98: .4byte gBattleMons
_08017E9C: .4byte gUnknown_02024C07
_08017EA0: .4byte 0xffffff00
_08017EA4: .4byte gUnknown_02024C10
_08017EA8: .4byte gUnknown_081D90A7
_08017EAC:
	ldr r0, _08017F0C @ =0xffffefff
	ands r2, r0
	str r2, [r1]
	ldr r2, _08017F10 @ =gUnknown_02024BF4
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	cmp r0, 0
	beq _08017F34
	ldr r1, _08017F14 @ =gUnknown_02024BE6
	movs r0, 0x75
	strh r0, [r1]
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	lsls r0, 1
	mov r1, r10
	str r0, [r1]
	ldr r4, _08017F18 @ =gUnknown_02024C08
	ldr r1, _08017F1C @ =gUnknown_02024C74
	ldrb r0, [r6]
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r4]
	ldr r0, _08017F20 @ =gUnknown_02024C0C
	ldrb r1, [r0]
	ldr r2, _08017F24 @ =gBitTable
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _08017EFE
	movs r0, 0x75
	movs r1, 0x1
	bl sub_801B5C0
	strb r0, [r4]
_08017EFE:
	ldr r1, _08017F28 @ =gUnknown_02024C10
	ldr r0, _08017F2C @ =gUnknown_081D90B2
	str r0, [r1]
	ldr r2, _08017F30 @ =0x02000000
	mov r8, r2
	b _08017F3A
	.align 2, 0
_08017F0C: .4byte 0xffffefff
_08017F10: .4byte gUnknown_02024BF4
_08017F14: .4byte gUnknown_02024BE6
_08017F18: .4byte gUnknown_02024C08
_08017F1C: .4byte gUnknown_02024C74
_08017F20: .4byte gUnknown_02024C0C
_08017F24: .4byte gBitTable
_08017F28: .4byte gUnknown_02024C10
_08017F2C: .4byte gUnknown_081D90B2
_08017F30: .4byte 0x02000000
_08017F34:
	ldr r1, _08017F40 @ =gUnknown_02024C10
	ldr r0, _08017F44 @ =gUnknown_081D90F1
_08017F38:
	str r0, [r1]
_08017F3A:
	movs r4, 0x1
	mov r9, r4
	b _08017F94
	.align 2, 0
_08017F40: .4byte gUnknown_02024C10
_08017F44: .4byte gUnknown_081D90F1
_08017F48:
	ldr r1, _08017FEC @ =gBattleMons
	ldr r0, _08017FF0 @ =gUnknown_02024C07
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x4C
	adds r4, r0, r1
	ldr r3, [r4]
	movs r0, 0x20
	ands r0, r3
	cmp r0, 0
	beq _08017F94
	ldr r2, _08017FF4 @ =gBattleMoves
	ldr r0, _08017FF8 @ =gUnknown_02024BE6
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0x7D
	bne _08017F8C
	movs r0, 0x21
	negs r0, r0
	ands r3, r0
	str r3, [r4]
	bl b_movescr_stack_push_cursor
	ldr r1, _08017FFC @ =gUnknown_02024C10
	ldr r0, _08018000 @ =gUnknown_081D9552
	str r0, [r1]
	ldr r1, _08018004 @ =gUnknown_02024D1E
	movs r0, 0x1
	strb r0, [r1, 0x5]
_08017F8C:
	movs r7, 0x2
_08017F8E:
	mov r9, r7
	ldr r0, _08018008 @ =0x02000000
	mov r8, r0
_08017F94:
	ldr r1, _0801800C @ =0x000160e7
	add r1, r8
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_08017F9E:
	ldr r0, _0801800C @ =0x000160e7
	add r0, r8
	ldrb r0, [r0]
	cmp r0, 0xE
	beq _08017FAC
	bl _0801773C
_08017FAC:
	mov r1, r9
	cmp r1, 0x2
	bne _08017FD8
	ldr r4, _08018010 @ =gUnknown_02024A60
	ldr r0, _08017FF0 @ =gUnknown_02024C07
	ldrb r0, [r0]
	strb r0, [r4]
	ldrb r1, [r4]
	movs r0, 0x58
	muls r0, r1
	ldr r1, _08018014 @ =gUnknown_02024ACC
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r2, 0
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_08017FD8:
	mov r0, r9
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_08017FEC: .4byte gBattleMons
_08017FF0: .4byte gUnknown_02024C07
_08017FF4: .4byte gBattleMoves
_08017FF8: .4byte gUnknown_02024BE6
_08017FFC: .4byte gUnknown_02024C10
_08018000: .4byte gUnknown_081D9552
_08018004: .4byte gUnknown_02024D1E
_08018008: .4byte 0x02000000
_0801800C: .4byte 0x000160e7
_08018010: .4byte gUnknown_02024A60
_08018014: .4byte gUnknown_02024ACC
	thumb_func_end sub_8017718

	thumb_func_start sub_8018018
sub_8018018: @ 8018018
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r4, r0, 24
	adds r3, r4, 0
	lsls r1, 24
	lsrs r1, 24
	mov r10, r1
	lsls r2, 24
	lsrs r2, 24
	mov r9, r2
	ldr r0, _08018044 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08018048
	movs r0, 0
	b _08018198
	.align 2, 0
_08018044: .4byte gUnknown_020239F8
_08018048:
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _080180D4
	adds r0, r4, 0
	bl sub_803FC34
	lsls r0, 24
	lsrs r7, r0, 24
	adds r0, r4, 0
	bl battle_side_get_owner
	lsls r0, 24
	ldr r1, _080180CC @ =gEnemyParty
	mov r8, r1
	cmp r0, 0
	bne _0801806E
	ldr r2, _080180D0 @ =gPlayerParty
	mov r8, r2
_0801806E:
	adds r0, r7, 0
	bl sub_803FBFC
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r0, r6, 1
	adds r5, r0, r6
	adds r0, r5, 0x3
	cmp r5, r0
	bge _080180BA
	adds r7, r0, 0
_08018084:
	movs r0, 0x64
	muls r0, r5
	mov r1, r8
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _080180B4
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	cmp r0, 0
	beq _080180B4
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	movs r1, 0xCE
	lsls r1, 1
	cmp r0, r1
	bne _080180BA
_080180B4:
	adds r5, 0x1
	cmp r5, r7
	blt _08018084
_080180BA:
	movs r1, 0
	lsls r0, r6, 1
	adds r0, r6
	adds r0, 0x3
	cmp r5, r0
	bne _080180C8
	movs r1, 0x1
_080180C8:
	adds r0, r1, 0
	b _08018198
	.align 2, 0
_080180CC: .4byte gEnemyParty
_080180D0: .4byte gPlayerParty
_080180D4:
	adds r0, r3, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08018100
	movs r0, 0x1
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r7, r0, 24
	movs r0, 0x3
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r2, _080180FC @ =gEnemyParty
	mov r8, r2
	b _08018118
	.align 2, 0
_080180FC: .4byte gEnemyParty
_08018100:
	movs r0, 0
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r7, r0, 24
	movs r0, 0x2
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r0, _080181A8 @ =gPlayerParty
	mov r8, r0
_08018118:
	mov r1, r10
	cmp r1, 0x6
	bne _08018128
	ldr r1, _080181AC @ =gUnknown_02024A6A
	lsls r0, r7, 1
	adds r0, r1
	ldrb r0, [r0]
	mov r10, r0
_08018128:
	mov r2, r9
	cmp r2, 0x6
	bne _08018138
	ldr r1, _080181AC @ =gUnknown_02024A6A
	lsls r0, r6, 1
	adds r0, r1
	ldrb r0, [r0]
	mov r9, r0
_08018138:
	movs r5, 0
_0801813A:
	movs r0, 0x64
	muls r0, r5
	mov r1, r8
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _0801818A
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	cmp r0, 0
	beq _0801818A
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	movs r1, 0xCE
	lsls r1, 1
	cmp r0, r1
	beq _0801818A
	cmp r5, r10
	beq _0801818A
	cmp r5, r9
	beq _0801818A
	ldr r1, _080181B0 @ =0x02000000
	ldr r2, _080181B4 @ =0x00016068
	adds r0, r7, r2
	adds r0, r1
	ldrb r0, [r0]
	cmp r5, r0
	beq _0801818A
	adds r0, r6, r2
	adds r0, r1
	ldrb r0, [r0]
	cmp r5, r0
	bne _08018190
_0801818A:
	adds r5, 0x1
	cmp r5, 0x5
	ble _0801813A
_08018190:
	movs r0, 0
	cmp r5, 0x6
	bne _08018198
	movs r0, 0x1
_08018198:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_080181A8: .4byte gPlayerParty
_080181AC: .4byte gUnknown_02024A6A
_080181B0: .4byte 0x02000000
_080181B4: .4byte 0x00016068
	thumb_func_end sub_8018018

	thumb_func_start castform_switch
castform_switch: @ 80181B8
	push {r4-r6,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r6, r0, 24
	movs r5, 0
	ldr r1, _08018228 @ =gBattleMons
	movs r0, 0x58
	muls r0, r6
	adds r4, r0, r1
	ldrh r1, [r4]
	ldr r0, _0801822C @ =SPECIES_CASTFORM
	cmp r1, r0
	bne _0801825C
	adds r0, r4, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x3B
	bne _0801825C
	ldrh r0, [r4, 0x28]
	cmp r0, 0
	beq _0801825C
	str r5, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0xD
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	bne _0801820A
	str r5, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0x4D
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	beq _08018230
_0801820A:
	adds r2, r4, 0
	adds r2, 0x21
	ldrb r0, [r2]
	cmp r0, 0
	beq _08018230
	adds r1, r4, 0
	adds r1, 0x22
	ldrb r0, [r1]
	cmp r0, 0
	beq _08018230
	strb r5, [r2]
	strb r5, [r1]
	movs r0, 0x1
	b _08018314
	.align 2, 0
_08018228: .4byte gBattleMons
_0801822C: .4byte SPECIES_CASTFORM
_08018230:
	movs r0, 0
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0xD
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	bne _0801825C
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0x4D
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	beq _08018260
_0801825C:
	movs r0, 0
	b _08018314
_08018260:
	ldr r1, _0801831C @ =word_2024DB8
	ldrh r0, [r1]
	movs r2, 0xE7
	ands r2, r0
	adds r4, r1, 0
	cmp r2, 0
	bne _0801828E
	ldr r1, _08018320 @ =gBattleMons
	movs r0, 0x58
	muls r0, r6
	adds r1, r0, r1
	adds r3, r1, 0
	adds r3, 0x21
	ldrb r0, [r3]
	cmp r0, 0
	beq _0801828E
	adds r1, 0x22
	ldrb r0, [r1]
	cmp r0, 0
	beq _0801828E
	strb r2, [r3]
	strb r2, [r1]
	movs r5, 0x1
_0801828E:
	ldrh r1, [r4]
	movs r0, 0x60
	ands r0, r1
	cmp r0, 0
	beq _080182BA
	ldr r1, _08018320 @ =gBattleMons
	movs r0, 0x58
	muls r0, r6
	adds r1, r0, r1
	adds r2, r1, 0
	adds r2, 0x21
	ldrb r0, [r2]
	cmp r0, 0xA
	beq _080182BA
	adds r1, 0x22
	ldrb r0, [r1]
	cmp r0, 0xA
	beq _080182BA
	movs r0, 0xA
	strb r0, [r2]
	strb r0, [r1]
	movs r5, 0x2
_080182BA:
	ldrh r1, [r4]
	movs r0, 0x7
	ands r0, r1
	cmp r0, 0
	beq _080182E6
	ldr r1, _08018320 @ =gBattleMons
	movs r0, 0x58
	muls r0, r6
	adds r1, r0, r1
	adds r2, r1, 0
	adds r2, 0x21
	ldrb r0, [r2]
	cmp r0, 0xB
	beq _080182E6
	adds r1, 0x22
	ldrb r0, [r1]
	cmp r0, 0xB
	beq _080182E6
	movs r0, 0xB
	strb r0, [r2]
	strb r0, [r1]
	movs r5, 0x3
_080182E6:
	ldrh r1, [r4]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08018312
	ldr r1, _08018320 @ =gBattleMons
	movs r0, 0x58
	muls r0, r6
	adds r1, r0, r1
	adds r2, r1, 0
	adds r2, 0x21
	ldrb r0, [r2]
	cmp r0, 0xF
	beq _08018312
	adds r1, 0x22
	ldrb r0, [r1]
	cmp r0, 0xF
	beq _08018312
	movs r0, 0xF
	strb r0, [r2]
	strb r0, [r1]
	movs r5, 0x4
_08018312:
	adds r0, r5, 0
_08018314:
	add sp, 0x4
	pop {r4-r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801831C: .4byte word_2024DB8
_08018320: .4byte gBattleMons
	thumb_func_end castform_switch

	thumb_func_start sub_8018324
sub_8018324: @ 8018324
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x28
	ldr r4, [sp, 0x48]
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x4]
	lsls r1, 24
	lsrs r1, 24
	mov r10, r1
	lsls r2, 24
	lsrs r6, r2, 24
	lsls r3, 24
	lsrs r3, 24
	mov r8, r3
	lsls r4, 16
	lsrs r4, 16
	movs r0, 0
	mov r9, r0
	ldr r5, _08018380 @ =gUnknown_02024C07
	ldr r1, _08018384 @ =gUnknown_02024A68
	ldrb r0, [r5]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08018360
	mov r1, r10
	strb r1, [r5]
_08018360:
	ldrb r0, [r5]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _08018390
	ldr r1, _08018388 @ =gUnknown_02024A6A
	ldrb r0, [r5]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, _0801838C @ =gPlayerParty
	b _080183A0
	.align 2, 0
_08018380: .4byte gUnknown_02024C07
_08018384: .4byte gUnknown_02024A68
_08018388: .4byte gUnknown_02024A6A
_0801838C: .4byte gPlayerParty
_08018390:
	ldr r1, _080183D0 @ =gUnknown_02024A6A
	ldrb r0, [r5]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, _080183D4 @ =gEnemyParty
_080183A0:
	adds r7, r1, r0
	ldr r5, _080183D8 @ =gUnknown_02024C08
	ldr r1, _080183DC @ =gUnknown_02024A68
	ldrb r0, [r5]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _080183B2
	mov r2, r10
	strb r2, [r5]
_080183B2:
	ldrb r0, [r5]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _080183E4
	ldr r1, _080183D0 @ =gUnknown_02024A6A
	ldrb r0, [r5]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, _080183E0 @ =gPlayerParty
	b _080183F4
	.align 2, 0
_080183D0: .4byte gUnknown_02024A6A
_080183D4: .4byte gEnemyParty
_080183D8: .4byte gUnknown_02024C08
_080183DC: .4byte gUnknown_02024A68
_080183E0: .4byte gPlayerParty
_080183E4:
	ldr r1, _08018444 @ =gUnknown_02024A6A
	ldrb r0, [r5]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, _08018448 @ =gEnemyParty
_080183F4:
	adds r5, r1, r0
	adds r0, r7, 0
	movs r1, 0xB
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	str r0, [sp, 0x8]
	adds r0, r7, 0
	movs r1, 0
	bl GetMonData
	str r0, [sp, 0x10]
	adds r0, r5, 0
	movs r1, 0xB
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	str r0, [sp, 0xC]
	adds r0, r5, 0
	movs r1, 0
	bl GetMonData
	str r0, [sp, 0x14]
	ldr r0, _0801844C @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08018436
	bl _08019F92
_08018436:
	mov r3, r8
	cmp r3, 0
	beq _08018454
	ldr r0, _08018450 @ =byte_2024C06
	strb r3, [r0]
	mov r8, r0
	b _0801846A
	.align 2, 0
_08018444: .4byte gUnknown_02024A6A
_08018448: .4byte gEnemyParty
_0801844C: .4byte gUnknown_020239F8
_08018450: .4byte byte_2024C06
_08018454:
	ldr r2, _08018474 @ =byte_2024C06
	ldr r1, _08018478 @ =gBattleMons
	movs r0, 0x58
	mov r5, r10
	muls r5, r0
	adds r0, r5, 0
	adds r0, r1
	adds r0, 0x20
	ldrb r0, [r0]
	strb r0, [r2]
	mov r8, r2
_0801846A:
	cmp r4, 0
	beq _0801847C
	adds r3, r4, 0
	b _08018480
	.align 2, 0
_08018474: .4byte byte_2024C06
_08018478: .4byte gBattleMons
_0801847C:
	ldr r0, _08018494 @ =gUnknown_02024BE6
	ldrh r3, [r0]
_08018480:
	ldr r1, _08018498 @ =0x02000000
	ldr r2, _0801849C @ =0x0001601c
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r7, r1, 0
	cmp r0, 0
	beq _080184A0
	movs r4, 0x3F
	ands r4, r0
	b _080184AC
	.align 2, 0
_08018494: .4byte gUnknown_02024BE6
_08018498: .4byte 0x02000000
_0801849C: .4byte 0x0001601c
_080184A0:
	ldr r1, _080184C0 @ =gBattleMoves
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r4, [r0, 0x2]
_080184AC:
	ldr r5, [sp, 0x4]
	cmp r5, 0x13
	bls _080184B6
	bl _08019F76
_080184B6:
	lsls r0, r5, 2
	ldr r1, _080184C4 @ =_080184C8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080184C0: .4byte gBattleMoves
_080184C4: .4byte _080184C8
	.align 2, 0
_080184C8:
	.4byte _08018518
	.4byte _08018814
	.4byte _08018A40
	.4byte _08018AD8
	.4byte _08018CF0
	.4byte _08019448
	.4byte _080197B4
	.4byte _08019804
	.4byte _08019880
	.4byte _080198FC
	.4byte _08019B1C
	.4byte _08019940
	.4byte _08019B60
	.4byte _08019BBC
	.4byte _08019C18
	.4byte _08019D18
	.4byte _08019D5C
	.4byte _08019DB8
	.4byte _08019F44
	.4byte _08019CD4
_08018518:
	ldr r2, _0801854C @ =gUnknown_02024C07
	ldr r0, _08018550 @ =gUnknown_02024A68
	ldrb r1, [r2]
	adds r5, r0, 0
	ldrb r0, [r5]
	cmp r1, r0
	bcc _0801852A
	mov r1, r10
	strb r1, [r2]
_0801852A:
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, 0x2D
	bne _08018534
	b _080186B8
_08018534:
	cmp r0, 0x2D
	bgt _08018564
	cmp r0, 0xD
	bne _0801853E
	b _080187DC
_0801853E:
	cmp r0, 0xD
	bgt _08018554
	cmp r0, 0x2
	bne _08018548
	b _08018680
_08018548:
	bl _08019F76
	.align 2, 0
_0801854C: .4byte gUnknown_02024C07
_08018550: .4byte gUnknown_02024A68
_08018554:
	cmp r0, 0x16
	bne _0801855A
	b _08018728
_0801855A:
	cmp r0, 0x24
	bne _08018560
	b _080187A0
_08018560:
	bl _08019F76
_08018564:
	cmp r0, 0x46
	bne _0801856A
	b _080186F0
_0801856A:
	cmp r0, 0x46
	bgt _08018578
	cmp r0, 0x3B
	bne _08018574
	b _0801875C
_08018574:
	bl _08019F76
_08018578:
	cmp r0, 0x4D
	bne _0801857E
	b _080187DC
_0801857E:
	cmp r0, 0xFF
	beq _08018586
	bl _08019F76
_08018586:
	bl weather_get_current
	lsls r0, 24
	lsrs r0, 24
	subs r0, 0x3
	cmp r0, 0xA
	bhi _0801864C
	lsls r0, 2
	ldr r1, _080185A0 @ =_080185A4
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080185A0: .4byte _080185A4
	.align 2, 0
_080185A4:
	.4byte _080185D0
	.4byte _0801864C
	.4byte _080185D0
	.4byte _0801864C
	.4byte _0801864C
	.4byte _080185F8
	.4byte _0801864C
	.4byte _0801864C
	.4byte _0801864C
	.4byte _08018620
	.4byte _080185D0
_080185D0:
	ldr r2, _080185EC @ =word_2024DB8
	ldrh r1, [r2]
	movs r0, 0x7
	ands r0, r1
	cmp r0, 0
	bne _0801864C
	movs r0, 0x5
	strh r0, [r2]
	ldr r0, _080185F0 @ =0x02000000
	ldr r3, _080185F4 @ =0x000160a4
	adds r2, r0, r3
	movs r1, 0xA
	b _08018638
	.align 2, 0
_080185EC: .4byte word_2024DB8
_080185F0: .4byte 0x02000000
_080185F4: .4byte 0x000160a4
_080185F8:
	ldr r3, _08018614 @ =word_2024DB8
	ldrh r1, [r3]
	movs r2, 0x18
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	bne _0801864C
	strh r2, [r3]
	ldr r0, _08018618 @ =0x02000000
	ldr r3, _0801861C @ =0x000160a4
	adds r2, r0, r3
	movs r1, 0xC
	b _08018638
	.align 2, 0
_08018614: .4byte word_2024DB8
_08018618: .4byte 0x02000000
_0801861C: .4byte 0x000160a4
_08018620:
	ldr r3, _08018668 @ =word_2024DB8
	ldrh r1, [r3]
	movs r2, 0x60
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	bne _0801864C
	strh r2, [r3]
	ldr r0, _0801866C @ =0x02000000
	ldr r3, _08018670 @ =0x000160a4
	adds r2, r0, r3
	movs r1, 0xB
_08018638:
	strb r1, [r2]
	ldr r5, _08018674 @ =0x00016003
	adds r0, r5
	mov r1, r10
	strb r1, [r0]
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_0801864C:
	mov r2, r9
	cmp r2, 0
	bne _08018656
	bl _08019F92
_08018656:
	bl weather_get_current
	ldr r1, _08018678 @ =gUnknown_02024D1E
	strb r0, [r1, 0x5]
	ldr r0, _0801867C @ =gUnknown_081D901D
	bl b_push_move_exec
	bl _08019F76
	.align 2, 0
_08018668: .4byte word_2024DB8
_0801866C: .4byte 0x02000000
_08018670: .4byte 0x000160a4
_08018674: .4byte 0x00016003
_08018678: .4byte gUnknown_02024D1E
_0801867C: .4byte gUnknown_081D901D
_08018680:
	ldr r2, _080186A8 @ =word_2024DB8
	ldrh r1, [r2]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _08018690
	bl _08019F76
_08018690:
	movs r0, 0x5
	strh r0, [r2]
	ldr r0, _080186AC @ =gUnknown_081D9704
	bl b_push_move_exec
	ldr r0, _080186B0 @ =0x02000000
	ldr r3, _080186B4 @ =0x00016003
	adds r0, r3
	mov r5, r10
	strb r5, [r0]
	bl _08019F22
	.align 2, 0
_080186A8: .4byte word_2024DB8
_080186AC: .4byte gUnknown_081D9704
_080186B0: .4byte 0x02000000
_080186B4: .4byte 0x00016003
_080186B8:
	ldr r2, _080186E0 @ =word_2024DB8
	ldrh r1, [r2]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _080186C8
	bl _08019F76
_080186C8:
	movs r0, 0x18
	strh r0, [r2]
	ldr r0, _080186E4 @ =gUnknown_081D9744
	bl b_push_move_exec
	ldr r0, _080186E8 @ =0x02000000
	ldr r1, _080186EC @ =0x00016003
	adds r0, r1
	mov r2, r10
	strb r2, [r0]
	bl _08019F22
	.align 2, 0
_080186E0: .4byte word_2024DB8
_080186E4: .4byte gUnknown_081D9744
_080186E8: .4byte 0x02000000
_080186EC: .4byte 0x00016003
_080186F0:
	ldr r2, _08018718 @ =word_2024DB8
	ldrh r1, [r2]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08018700
	bl _08019F76
_08018700:
	movs r0, 0x60
	strh r0, [r2]
	ldr r0, _0801871C @ =gUnknown_081D97FE
	bl b_push_move_exec
	ldr r0, _08018720 @ =0x02000000
	ldr r3, _08018724 @ =0x00016003
	adds r0, r3
	mov r5, r10
	strb r5, [r0]
	bl _08019F22
	.align 2, 0
_08018718: .4byte word_2024DB8
_0801871C: .4byte gUnknown_081D97FE
_08018720: .4byte 0x02000000
_08018724: .4byte 0x00016003
_08018728:
	ldr r0, _08018754 @ =gUnknown_02024D68
	mov r1, r10
	lsls r2, r1, 2
	adds r1, r2, r1
	lsls r1, 2
	adds r3, r1, r0
	ldrb r0, [r3]
	lsls r0, 28
	cmp r0, 0
	bge _08018740
	bl _08019F76
_08018740:
	ldr r1, _08018758 @ =gUnknown_02024C98
	adds r1, r2, r1
	ldr r0, [r1]
	movs r2, 0x80
	lsls r2, 12
	orrs r0, r2
	str r0, [r1]
	ldrb r0, [r3]
	movs r1, 0x8
	b _080187CA
	.align 2, 0
_08018754: .4byte gUnknown_02024D68
_08018758: .4byte gUnknown_02024C98
_0801875C:
	mov r0, r10
	bl castform_switch
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	cmp r0, 0
	bne _08018770
	bl _08019F92
_08018770:
	ldr r0, _08018790 @ =gUnknown_081D977D
	bl b_push_move_exec
	ldr r0, _08018794 @ =0x02000000
	ldr r2, _08018798 @ =0x00016003
	adds r1, r0, r2
	mov r3, r10
	strb r3, [r1]
	mov r1, r9
	subs r1, 0x1
	ldr r5, _0801879C @ =0x0001609b
	adds r0, r5
	strb r1, [r0]
	bl _08019F76
	.align 2, 0
_08018790: .4byte gUnknown_081D977D
_08018794: .4byte 0x02000000
_08018798: .4byte 0x00016003
_0801879C: .4byte 0x0001609b
_080187A0:
	ldr r0, _080187D4 @ =gUnknown_02024D68
	mov r1, r10
	lsls r2, r1, 2
	adds r1, r2, r1
	lsls r1, 2
	adds r3, r1, r0
	ldrb r0, [r3]
	lsls r0, 27
	cmp r0, 0
	bge _080187B8
	bl _08019F76
_080187B8:
	ldr r1, _080187D8 @ =gUnknown_02024C98
	adds r1, r2, r1
	ldr r0, [r1]
	movs r2, 0x80
	lsls r2, 13
	orrs r0, r2
	str r0, [r1]
	ldrb r0, [r3]
	movs r1, 0x10
_080187CA:
	orrs r0, r1
	strb r0, [r3]
	bl _08019F76
	.align 2, 0
_080187D4: .4byte gUnknown_02024D68
_080187D8: .4byte gUnknown_02024C98
_080187DC:
	movs r6, 0
	ldrb r5, [r5]
	cmp r6, r5
	bcc _080187E8
	bl _08019F76
_080187E8:
	adds r0, r6, 0
	bl castform_switch
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	cmp r0, 0
	beq _080187FC
	bl _08019E14
_080187FC:
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r0, _08018810 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r6, r0
	bcc _080187E8
	bl _08019F76
	.align 2, 0
_08018810: .4byte gUnknown_02024A68
_08018814:
	ldr r2, _08018844 @ =gBattleMons
	movs r0, 0x58
	mov r1, r10
	muls r1, r0
	adds r4, r1, r2
	ldrh r0, [r4, 0x28]
	cmp r0, 0
	bne _08018828
	bl _08019F76
_08018828:
	ldr r0, _08018848 @ =gUnknown_02024C07
	mov r3, r10
	strb r3, [r0]
	mov r3, r8
	ldrb r5, [r3]
	cmp r5, 0x2C
	beq _0801885A
	cmp r5, 0x2C
	bgt _0801884C
	cmp r5, 0x3
	bne _08018840
	b _080189B8
_08018840:
	bl _08019F76
	.align 2, 0
_08018844: .4byte gBattleMons
_08018848: .4byte gUnknown_02024C07
_0801884C:
	cmp r5, 0x36
	bne _08018852
	b _08018A18
_08018852:
	cmp r5, 0x3D
	beq _080188DC
	bl _08019F76
_0801885A:
	movs r0, 0
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0xD
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	beq _08018876
	bl _08019F76
_08018876:
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0x4D
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	beq _0801888E
	bl _08019F76
_0801888E:
	ldr r0, _080188D0 @ =word_2024DB8
	ldrh r1, [r0]
	movs r0, 0x7
	ands r0, r1
	cmp r0, 0
	bne _0801889E
	bl _08019F76
_0801889E:
	ldrh r0, [r4, 0x2C]
	ldrh r1, [r4, 0x28]
	cmp r0, r1
	bhi _080188AA
	bl _08019F76
_080188AA:
	mov r2, r8
	strb r5, [r2]
	ldr r0, _080188D4 @ =gUnknown_081D9730
	bl b_push_move_exec
	ldr r1, _080188D8 @ =gUnknown_02024BEC
	ldrh r0, [r4, 0x2C]
	lsrs r0, 4
	str r0, [r1]
	cmp r0, 0
	bne _080188C4
	movs r0, 0x1
	str r0, [r1]
_080188C4:
	ldr r0, [r1]
	negs r0, r0
	str r0, [r1]
	bl _08019F22
	.align 2, 0
_080188D0: .4byte word_2024DB8
_080188D4: .4byte gUnknown_081D9730
_080188D8: .4byte gUnknown_02024BEC
_080188DC:
	adds r0, r2, 0
	adds r0, 0x4C
	adds r5, r1, r0
	ldrb r0, [r5]
	cmp r0, 0
	bne _080188EC
	bl _08019F76
_080188EC:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0
	beq _08018906
	bl _08019F76
_08018906:
	ldr r0, [r5]
	movs r1, 0x88
	ands r0, r1
	cmp r0, 0
	beq _08018918
	ldr r0, _08018990 @ =gUnknown_030041C0
	ldr r1, _08018994 @ =gStatusConditionString_PoisonJpn
	bl StringCopy
_08018918:
	ldr r0, [r5]
	movs r1, 0x7
	ands r0, r1
	cmp r0, 0
	beq _0801892A
	ldr r0, _08018990 @ =gUnknown_030041C0
	ldr r1, _08018998 @ =gStatusConditionString_SleepJpn
	bl StringCopy
_0801892A:
	ldr r0, [r5]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0801893C
	ldr r0, _08018990 @ =gUnknown_030041C0
	ldr r1, _0801899C @ =gStatusConditionString_ParalysisJpn
	bl StringCopy
_0801893C:
	ldr r0, [r5]
	movs r1, 0x10
	ands r0, r1
	cmp r0, 0
	beq _0801894E
	ldr r0, _08018990 @ =gUnknown_030041C0
	ldr r1, _080189A0 @ =gStatusConditionString_BurnJpn
	bl StringCopy
_0801894E:
	ldr r0, [r5]
	movs r1, 0x20
	ands r0, r1
	cmp r0, 0
	beq _08018960
	ldr r0, _08018990 @ =gUnknown_030041C0
	ldr r1, _080189A4 @ =gStatusConditionString_IceJpn
	bl StringCopy
_08018960:
	str r4, [r5]
	ldr r0, _080189A8 @ =0x02000000
	ldr r4, _080189AC @ =gUnknown_02024A60
	mov r3, r10
	strb r3, [r4]
	ldr r1, _080189B0 @ =0x00016003
	adds r0, r1
	strb r3, [r0]
	ldr r0, _080189B4 @ =gUnknown_081D9758
	bl b_push_move_exec
	str r5, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r2, 0
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	bl _08019F22
	.align 2, 0
_08018990: .4byte gUnknown_030041C0
_08018994: .4byte gStatusConditionString_PoisonJpn
_08018998: .4byte gStatusConditionString_SleepJpn
_0801899C: .4byte gStatusConditionString_ParalysisJpn
_080189A0: .4byte gStatusConditionString_BurnJpn
_080189A4: .4byte gStatusConditionString_IceJpn
_080189A8: .4byte 0x02000000
_080189AC: .4byte gUnknown_02024A60
_080189B0: .4byte 0x00016003
_080189B4: .4byte gUnknown_081D9758
_080189B8:
	ldrb r2, [r4, 0x1B]
	movs r0, 0x1B
	ldrsb r0, [r4, r0]
	cmp r0, 0xB
	ble _080189C6
	bl _08019F76
_080189C6:
	ldr r0, _08018A04 @ =gUnknown_02024CA8
	mov r3, r10
	lsls r1, r3, 3
	subs r1, r3
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x16]
	cmp r0, 0x2
	bne _080189DC
	bl _08019F76
_080189DC:
	adds r0, r2, 0x1
	movs r2, 0
	strb r0, [r4, 0x1B]
	ldr r5, _08018A08 @ =0x000160a4
	adds r1, r7, r5
	movs r0, 0x11
	strb r0, [r1]
	ldr r1, _08018A0C @ =0x000160a5
	adds r0, r7, r1
	strb r2, [r0]
	ldr r0, _08018A10 @ =gUnknown_081D9718
	bl b_push_move_exec
	ldr r2, _08018A14 @ =0x00016003
	adds r0, r7, r2
	mov r3, r10
	strb r3, [r0]
	bl _08019F22
	.align 2, 0
_08018A04: .4byte gUnknown_02024CA8
_08018A08: .4byte 0x000160a4
_08018A0C: .4byte 0x000160a5
_08018A10: .4byte gUnknown_081D9718
_08018A14: .4byte 0x00016003
_08018A18:
	ldr r2, _08018A3C @ =gUnknown_02024CA8
	ldrb r0, [r0]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r2
	ldrb r3, [r1, 0x18]
	lsls r0, r3, 31
	lsrs r0, 31
	movs r2, 0x1
	eors r2, r0
	movs r0, 0x2
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, 0x18]
	bl _08019F76
	.align 2, 0
_08018A3C: .4byte gUnknown_02024CA8
_08018A40:
	mov r5, r8
	ldrb r0, [r5]
	cmp r0, 0x2B
	beq _08018A4C
	bl _08019F76
_08018A4C:
	movs r4, 0
	ldr r0, _08018ABC @ =gUnknown_081FA724
	ldrh r2, [r0]
	ldr r5, _08018AC0 @ =0x0000ffff
	adds r1, r0, 0
	cmp r2, r5
	bne _08018A5E
	bl _08019F76
_08018A5E:
	cmp r2, r3
	beq _08018A76
	adds r2, r1, 0
_08018A64:
	adds r2, 0x2
	adds r4, 0x1
	ldrh r0, [r2]
	cmp r0, r5
	bne _08018A72
	bl _08019F76
_08018A72:
	cmp r0, r3
	bne _08018A64
_08018A76:
	lsls r0, r4, 1
	adds r0, r1
	ldrh r1, [r0]
	ldr r0, _08018AC0 @ =0x0000ffff
	cmp r1, r0
	bne _08018A86
	bl _08019F76
_08018A86:
	ldr r1, _08018AC4 @ =gBattleMons
	ldr r0, _08018AC8 @ =gUnknown_02024C07
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 5
	ands r0, r1
	cmp r0, 0
	beq _08018AAC
	ldr r0, _08018ACC @ =gUnknown_02024C6C
	ldr r1, [r0]
	movs r2, 0x80
	lsls r2, 4
	orrs r1, r2
	str r1, [r0]
_08018AAC:
	ldr r1, _08018AD0 @ =gUnknown_02024C10
	ldr r0, _08018AD4 @ =gUnknown_081D98F3
	str r0, [r1]
	movs r0, 0x1
	mov r9, r0
	bl _08019F7C
	.align 2, 0
_08018ABC: .4byte gUnknown_081FA724
_08018AC0: .4byte 0x0000ffff
_08018AC4: .4byte gBattleMons
_08018AC8: .4byte gUnknown_02024C07
_08018ACC: .4byte gUnknown_02024C6C
_08018AD0: .4byte gUnknown_02024C10
_08018AD4: .4byte gUnknown_081D98F3
_08018AD8:
	cmp r3, 0
	bne _08018AE0
	bl _08019F76
_08018AE0:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, 0xB
	beq _08018B50
	cmp r0, 0xB
	bgt _08018AF2
	cmp r0, 0xA
	beq _08018AF8
	b _08018C6A
_08018AF2:
	cmp r0, 0x12
	beq _08018BA8
	b _08018C6A
_08018AF8:
	cmp r4, 0xD
	beq _08018AFE
	b _08018C6A
_08018AFE:
	ldr r0, _08018B28 @ =gBattleMoves
	lsls r1, r3, 1
	adds r1, r3
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x1]
	cmp r0, 0
	bne _08018B10
	b _08018C6A
_08018B10:
	ldr r1, _08018B2C @ =gUnknown_02024D28
	ldr r0, _08018B30 @ =gUnknown_02024C07
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0, 0x2]
	lsls r0, 28
	cmp r0, 0
	bge _08018B3C
	ldr r1, _08018B34 @ =gUnknown_02024C10
	ldr r0, _08018B38 @ =gUnknown_081D9843
	b _08018B40
	.align 2, 0
_08018B28: .4byte gBattleMoves
_08018B2C: .4byte gUnknown_02024D28
_08018B30: .4byte gUnknown_02024C07
_08018B34: .4byte gUnknown_02024C10
_08018B38: .4byte gUnknown_081D9843
_08018B3C:
	ldr r1, _08018B48 @ =gUnknown_02024C10
	ldr r0, _08018B4C @ =gUnknown_081D9842
_08018B40:
	str r0, [r1]
	movs r2, 0x1
	b _08018C68
	.align 2, 0
_08018B48: .4byte gUnknown_02024C10
_08018B4C: .4byte gUnknown_081D9842
_08018B50:
	cmp r4, 0xB
	beq _08018B56
	b _08018C6A
_08018B56:
	ldr r0, _08018B80 @ =gBattleMoves
	lsls r1, r3, 1
	adds r1, r3
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x1]
	cmp r0, 0
	bne _08018B68
	b _08018C6A
_08018B68:
	ldr r1, _08018B84 @ =gUnknown_02024D28
	ldr r0, _08018B88 @ =gUnknown_02024C07
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0, 0x2]
	lsls r0, 28
	cmp r0, 0
	bge _08018B94
	ldr r1, _08018B8C @ =gUnknown_02024C10
	ldr r0, _08018B90 @ =gUnknown_081D9843
	b _08018B98
	.align 2, 0
_08018B80: .4byte gBattleMoves
_08018B84: .4byte gUnknown_02024D28
_08018B88: .4byte gUnknown_02024C07
_08018B8C: .4byte gUnknown_02024C10
_08018B90: .4byte gUnknown_081D9843
_08018B94:
	ldr r1, _08018BA0 @ =gUnknown_02024C10
	ldr r0, _08018BA4 @ =gUnknown_081D9842
_08018B98:
	str r0, [r1]
	movs r3, 0x1
	mov r9, r3
	b _08018C6A
	.align 2, 0
_08018BA0: .4byte gUnknown_02024C10
_08018BA4: .4byte gUnknown_081D9842
_08018BA8:
	cmp r4, 0xA
	bne _08018C6A
	ldr r1, _08018BF4 @ =gBattleMons
	movs r0, 0x58
	mov r5, r10
	muls r5, r0
	adds r0, r5, 0
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x20
	ands r0, r1
	cmp r0, 0
	bne _08018C6A
	ldr r2, _08018BF8 @ =0x02017100
	mov r0, r10
	lsls r1, r0, 2
	adds r0, r1, r2
	ldr r3, [r0]
	movs r4, 0x1
	ands r3, r4
	adds r5, r1, 0
	cmp r3, 0
	bne _08018C30
	ldr r0, _08018BFC @ =gUnknown_02024D1E
	strb r3, [r0, 0x5]
	ldr r1, _08018C00 @ =gUnknown_02024D28
	ldr r0, _08018C04 @ =gUnknown_02024C07
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0, 0x2]
	lsls r0, 28
	cmp r0, 0
	bge _08018C10
	ldr r1, _08018C08 @ =gUnknown_02024C10
	ldr r0, _08018C0C @ =gUnknown_081D987C
	b _08018C14
	.align 2, 0
_08018BF4: .4byte gBattleMons
_08018BF8: .4byte 0x02017100
_08018BFC: .4byte gUnknown_02024D1E
_08018C00: .4byte gUnknown_02024D28
_08018C04: .4byte gUnknown_02024C07
_08018C08: .4byte gUnknown_02024C10
_08018C0C: .4byte gUnknown_081D987C
_08018C10:
	ldr r1, _08018C28 @ =gUnknown_02024C10
	ldr r0, _08018C2C @ =gUnknown_081D987B
_08018C14:
	str r0, [r1]
	adds r0, r5, r2
	ldr r1, [r0]
	movs r2, 0x1
	orrs r1, r2
	str r1, [r0]
	movs r1, 0x2
	mov r9, r1
	b _08018C6A
	.align 2, 0
_08018C28: .4byte gUnknown_02024C10
_08018C2C: .4byte gUnknown_081D987B
_08018C30:
	ldr r0, _08018C4C @ =gUnknown_02024D1E
	strb r4, [r0, 0x5]
	ldr r1, _08018C50 @ =gUnknown_02024D28
	ldr r0, _08018C54 @ =gUnknown_02024C07
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0, 0x2]
	lsls r0, 28
	cmp r0, 0
	bge _08018C60
	ldr r1, _08018C58 @ =gUnknown_02024C10
	ldr r0, _08018C5C @ =gUnknown_081D987C
	b _08018C64
	.align 2, 0
_08018C4C: .4byte gUnknown_02024D1E
_08018C50: .4byte gUnknown_02024D28
_08018C54: .4byte gUnknown_02024C07
_08018C58: .4byte gUnknown_02024C10
_08018C5C: .4byte gUnknown_081D987C
_08018C60:
	ldr r1, _08018CA4 @ =gUnknown_02024C10
	ldr r0, _08018CA8 @ =gUnknown_081D987B
_08018C64:
	str r0, [r1]
	movs r2, 0x2
_08018C68:
	mov r9, r2
_08018C6A:
	mov r3, r9
	cmp r3, 0x1
	beq _08018C74
	bl _08019F76
_08018C74:
	ldr r1, _08018CAC @ =gBattleMons
	movs r0, 0x58
	mov r5, r10
	muls r5, r0
	adds r0, r5, 0
	adds r1, r0, r1
	ldrh r0, [r1, 0x2C]
	ldrh r2, [r1, 0x28]
	cmp r0, r2
	bne _08018CD0
	ldr r1, _08018CB0 @ =gUnknown_02024D28
	ldr r0, _08018CB4 @ =gUnknown_02024C07
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0, 0x2]
	lsls r0, 28
	cmp r0, 0
	bge _08018CBC
	ldr r1, _08018CA4 @ =gUnknown_02024C10
	ldr r0, _08018CB8 @ =gUnknown_081D9866
	str r0, [r1]
	bl _08019F76
	.align 2, 0
_08018CA4: .4byte gUnknown_02024C10
_08018CA8: .4byte gUnknown_081D987B
_08018CAC: .4byte gBattleMons
_08018CB0: .4byte gUnknown_02024D28
_08018CB4: .4byte gUnknown_02024C07
_08018CB8: .4byte gUnknown_081D9866
_08018CBC:
	ldr r1, _08018CC8 @ =gUnknown_02024C10
	ldr r0, _08018CCC @ =gUnknown_081D9865
	str r0, [r1]
	bl _08019F76
	.align 2, 0
_08018CC8: .4byte gUnknown_02024C10
_08018CCC: .4byte gUnknown_081D9865
_08018CD0:
	ldr r2, _08018CEC @ =gUnknown_02024BEC
	ldrh r0, [r1, 0x2C]
	lsrs r0, 2
	str r0, [r2]
	cmp r0, 0
	bne _08018CE0
	mov r3, r9
	str r3, [r2]
_08018CE0:
	ldr r0, [r2]
	negs r0, r0
	str r0, [r2]
	bl _08019F76
	.align 2, 0
_08018CEC: .4byte gUnknown_02024BEC
_08018CF0:
	mov r5, r8
	ldrb r0, [r5]
	subs r0, 0x9
	cmp r0, 0x2F
	bls _08018CFE
	bl _08019F76
_08018CFE:
	lsls r0, 2
	ldr r1, _08018D08 @ =_08018D0C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08018D08: .4byte _08018D0C
	.align 2, 0
_08018D0C:
	.4byte _08019128
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08018DCC
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08018E94
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08018F54
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _0801904C
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019204
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _08019F76
	.4byte _080192E0
_08018DCC:
	ldr r0, _08018E74 @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _08018DDC
	bl _08019F76
_08018DDC:
	cmp r3, 0xA5
	bne _08018DE4
	bl _08019F76
_08018DE4:
	ldr r0, _08018E78 @ =gBattleMoves
	lsls r1, r3, 1
	adds r1, r3
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x1]
	cmp r0, 0
	bne _08018DF8
	bl _08019F76
_08018DF8:
	ldr r2, _08018E7C @ =gUnknown_02024D68
	ldr r0, _08018E80 @ =gUnknown_02024C08
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r1, r0, 2
	adds r0, r2, 0
	adds r0, 0x8
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _08018E20
	adds r0, r2, 0
	adds r0, 0xC
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _08018E20
	bl _08019F76
_08018E20:
	ldr r1, _08018E84 @ =gBattleMons
	movs r0, 0x58
	mov r2, r10
	muls r2, r0
	adds r0, r2, 0
	adds r1, r0, r1
	adds r3, r1, 0
	adds r3, 0x21
	ldrb r0, [r3]
	cmp r0, r4
	bne _08018E3A
	bl _08019F76
_08018E3A:
	adds r2, r1, 0
	adds r2, 0x22
	ldrb r0, [r2]
	cmp r0, r4
	bne _08018E48
	bl _08019F76
_08018E48:
	ldrh r0, [r1, 0x28]
	cmp r0, 0
	bne _08018E52
	bl _08019F76
_08018E52:
	strb r4, [r3]
	strb r4, [r2]
	ldr r1, _08018E88 @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x3
	strb r0, [r1, 0x1]
	strb r4, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	bl b_movescr_stack_push_cursor
	ldr r1, _08018E8C @ =gUnknown_02024C10
	ldr r0, _08018E90 @ =gUnknown_081D9921
	str r0, [r1]
	bl _08019F22
	.align 2, 0
_08018E74: .4byte gUnknown_02024C68
_08018E78: .4byte gBattleMoves
_08018E7C: .4byte gUnknown_02024D68
_08018E80: .4byte gUnknown_02024C08
_08018E84: .4byte gBattleMons
_08018E88: .4byte gUnknown_030041C0
_08018E8C: .4byte gUnknown_02024C10
_08018E90: .4byte gUnknown_081D9921
_08018E94:
	ldr r0, _08018F2C @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _08018EA4
	bl _08019F76
_08018EA4:
	ldr r1, _08018F30 @ =gBattleMons
	ldr r0, _08018F34 @ =gUnknown_02024C07
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r4, r0, r1
	ldrh r0, [r4, 0x28]
	cmp r0, 0
	bne _08018EBA
	bl _08019F76
_08018EBA:
	ldr r0, _08018F38 @ =gUnknown_02024D28
	lsls r1, r2, 4
	adds r1, r0
	ldrb r0, [r1, 0x1]
	lsls r0, 31
	cmp r0, 0
	beq _08018ECC
	bl _08019F76
_08018ECC:
	ldr r2, _08018F3C @ =gUnknown_02024D68
	ldr r0, _08018F40 @ =gUnknown_02024C08
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r1, r0, 2
	adds r0, r2, 0
	adds r0, 0x8
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _08018EF4
	adds r0, r2, 0
	adds r0, 0xC
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _08018EF4
	bl _08019F76
_08018EF4:
	ldr r1, _08018F44 @ =gBattleMoves
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x8]
	movs r2, 0x1
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	bne _08018F0E
	bl _08019F76
_08018F0E:
	ldr r1, _08018F48 @ =gUnknown_02024BEC
	ldrh r0, [r4, 0x2C]
	lsrs r0, 4
	str r0, [r1]
	cmp r0, 0
	bne _08018F1C
	str r2, [r1]
_08018F1C:
	bl b_movescr_stack_push_cursor
	ldr r1, _08018F4C @ =gUnknown_02024C10
	ldr r0, _08018F50 @ =gUnknown_081D9928
	str r0, [r1]
	bl _08019F22
	.align 2, 0
_08018F2C: .4byte gUnknown_02024C68
_08018F30: .4byte gBattleMons
_08018F34: .4byte gUnknown_02024C07
_08018F38: .4byte gUnknown_02024D28
_08018F3C: .4byte gUnknown_02024D68
_08018F40: .4byte gUnknown_02024C08
_08018F44: .4byte gBattleMoves
_08018F48: .4byte gUnknown_02024BEC
_08018F4C: .4byte gUnknown_02024C10
_08018F50: .4byte gUnknown_081D9928
_08018F54:
	ldr r0, _08019020 @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _08018F64
	bl _08019F76
_08018F64:
	ldr r1, _08019024 @ =gBattleMons
	ldr r0, _08019028 @ =gUnknown_02024C07
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _08018F7A
	bl _08019F76
_08018F7A:
	ldr r0, _0801902C @ =gUnknown_02024D28
	lsls r1, r2, 4
	adds r1, r0
	ldrb r0, [r1, 0x1]
	lsls r0, 31
	cmp r0, 0
	beq _08018F8C
	bl _08019F76
_08018F8C:
	ldr r2, _08019030 @ =gUnknown_02024D68
	ldr r0, _08019034 @ =gUnknown_02024C08
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r1, r0, 2
	adds r0, r2, 0
	adds r0, 0x8
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _08018FB4
	adds r0, r2, 0
	adds r0, 0xC
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _08018FB4
	bl _08019F76
_08018FB4:
	ldr r1, _08019038 @ =gBattleMoves
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x8]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08018FCC
	bl _08019F76
_08018FCC:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xA
	bl __umodsi3
	lsls r0, 16
	cmp r0, 0
	beq _08018FE4
	bl _08019F76
_08018FE4:
	ldr r5, _0801903C @ =gUnknown_02024D1E
	movs r4, 0x3
_08018FE8:
	bl Random
	ands r0, r4
	strb r0, [r5, 0x3]
	cmp r0, 0
	beq _08018FE8
	ldr r1, _0801903C @ =gUnknown_02024D1E
	ldrb r0, [r1, 0x3]
	cmp r0, 0x3
	bne _08019000
	adds r0, 0x2
	strb r0, [r1, 0x3]
_08019000:
	ldrb r0, [r1, 0x3]
	adds r0, 0x40
	strb r0, [r1, 0x3]
	bl b_movescr_stack_push_cursor
	ldr r1, _08019040 @ =gUnknown_02024C10
	ldr r0, _08019044 @ =gUnknown_081D9950
	str r0, [r1]
	ldr r2, _08019048 @ =gUnknown_02024C6C
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 6
	orrs r0, r1
	str r0, [r2]
	bl _08019F22
	.align 2, 0
_08019020: .4byte gUnknown_02024C68
_08019024: .4byte gBattleMons
_08019028: .4byte gUnknown_02024C07
_0801902C: .4byte gUnknown_02024D28
_08019030: .4byte gUnknown_02024D68
_08019034: .4byte gUnknown_02024C08
_08019038: .4byte gBattleMoves
_0801903C: .4byte gUnknown_02024D1E
_08019040: .4byte gUnknown_02024C10
_08019044: .4byte gUnknown_081D9950
_08019048: .4byte gUnknown_02024C6C
_0801904C:
	ldr r0, _080190FC @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _0801905C
	bl _08019F76
_0801905C:
	ldr r1, _08019100 @ =gBattleMons
	ldr r0, _08019104 @ =gUnknown_02024C07
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _08019072
	bl _08019F76
_08019072:
	ldr r0, _08019108 @ =gUnknown_02024D28
	lsls r1, r2, 4
	adds r1, r0
	ldrb r0, [r1, 0x1]
	lsls r0, 31
	cmp r0, 0
	beq _08019084
	bl _08019F76
_08019084:
	ldr r2, _0801910C @ =gUnknown_02024D68
	ldr r0, _08019110 @ =gUnknown_02024C08
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r1, r0, 2
	adds r0, r2, 0
	adds r0, 0x8
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _080190AC
	adds r0, r2, 0
	adds r0, 0xC
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _080190AC
	bl _08019F76
_080190AC:
	ldr r1, _08019114 @ =gBattleMoves
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x8]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _080190C4
	bl _08019F76
_080190C4:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 16
	cmp r0, 0
	beq _080190DC
	bl _08019F76
_080190DC:
	ldr r1, _08019118 @ =gUnknown_02024D1E
	movs r0, 0x42
	strb r0, [r1, 0x3]
	bl b_movescr_stack_push_cursor
	ldr r1, _0801911C @ =gUnknown_02024C10
	ldr r0, _08019120 @ =gUnknown_081D9950
	str r0, [r1]
	ldr r2, _08019124 @ =gUnknown_02024C6C
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 6
	orrs r0, r1
	str r0, [r2]
	bl _08019F22
	.align 2, 0
_080190FC: .4byte gUnknown_02024C68
_08019100: .4byte gBattleMons
_08019104: .4byte gUnknown_02024C07
_08019108: .4byte gUnknown_02024D28
_0801910C: .4byte gUnknown_02024D68
_08019110: .4byte gUnknown_02024C08
_08019114: .4byte gBattleMoves
_08019118: .4byte gUnknown_02024D1E
_0801911C: .4byte gUnknown_02024C10
_08019120: .4byte gUnknown_081D9950
_08019124: .4byte gUnknown_02024C6C
_08019128:
	ldr r0, _080191D8 @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _08019138
	bl _08019F76
_08019138:
	ldr r1, _080191DC @ =gBattleMons
	ldr r0, _080191E0 @ =gUnknown_02024C07
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _0801914E
	bl _08019F76
_0801914E:
	ldr r0, _080191E4 @ =gUnknown_02024D28
	lsls r1, r2, 4
	adds r1, r0
	ldrb r0, [r1, 0x1]
	lsls r0, 31
	cmp r0, 0
	beq _08019160
	bl _08019F76
_08019160:
	ldr r2, _080191E8 @ =gUnknown_02024D68
	ldr r0, _080191EC @ =gUnknown_02024C08
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r1, r0, 2
	adds r0, r2, 0
	adds r0, 0x8
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _08019188
	adds r0, r2, 0
	adds r0, 0xC
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _08019188
	bl _08019F76
_08019188:
	ldr r1, _080191F0 @ =gBattleMoves
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x8]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _080191A0
	bl _08019F76
_080191A0:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 16
	cmp r0, 0
	beq _080191B8
	bl _08019F76
_080191B8:
	ldr r1, _080191F4 @ =gUnknown_02024D1E
	movs r0, 0x45
	strb r0, [r1, 0x3]
	bl b_movescr_stack_push_cursor
	ldr r1, _080191F8 @ =gUnknown_02024C10
	ldr r0, _080191FC @ =gUnknown_081D9950
	str r0, [r1]
	ldr r2, _08019200 @ =gUnknown_02024C6C
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 6
	orrs r0, r1
	str r0, [r2]
	bl _08019F22
	.align 2, 0
_080191D8: .4byte gUnknown_02024C68
_080191DC: .4byte gBattleMons
_080191E0: .4byte gUnknown_02024C07
_080191E4: .4byte gUnknown_02024D28
_080191E8: .4byte gUnknown_02024D68
_080191EC: .4byte gUnknown_02024C08
_080191F0: .4byte gBattleMoves
_080191F4: .4byte gUnknown_02024D1E
_080191F8: .4byte gUnknown_02024C10
_080191FC: .4byte gUnknown_081D9950
_08019200: .4byte gUnknown_02024C6C
_08019204:
	ldr r0, _080192B4 @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _08019214
	bl _08019F76
_08019214:
	ldr r1, _080192B8 @ =gBattleMons
	ldr r0, _080192BC @ =gUnknown_02024C07
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _0801922A
	bl _08019F76
_0801922A:
	ldr r0, _080192C0 @ =gUnknown_02024D28
	lsls r1, r2, 4
	adds r1, r0
	ldrb r0, [r1, 0x1]
	lsls r0, 31
	cmp r0, 0
	beq _0801923C
	bl _08019F76
_0801923C:
	ldr r1, _080192C4 @ =gBattleMoves
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x8]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08019254
	bl _08019F76
_08019254:
	ldr r2, _080192C8 @ =gUnknown_02024D68
	ldr r0, _080192CC @ =gUnknown_02024C08
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r1, r0, 2
	adds r0, r2, 0
	adds r0, 0x8
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _0801927C
	adds r0, r2, 0
	adds r0, 0xC
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _0801927C
	bl _08019F76
_0801927C:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 16
	cmp r0, 0
	beq _08019294
	bl _08019F76
_08019294:
	ldr r1, _080192D0 @ =gUnknown_02024D1E
	movs r0, 0x43
	strb r0, [r1, 0x3]
	bl b_movescr_stack_push_cursor
	ldr r1, _080192D4 @ =gUnknown_02024C10
	ldr r0, _080192D8 @ =gUnknown_081D9950
	str r0, [r1]
	ldr r2, _080192DC @ =gUnknown_02024C6C
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 6
	orrs r0, r1
	str r0, [r2]
	bl _08019F22
	.align 2, 0
_080192B4: .4byte gUnknown_02024C68
_080192B8: .4byte gBattleMons
_080192BC: .4byte gUnknown_02024C07
_080192C0: .4byte gUnknown_02024D28
_080192C4: .4byte gBattleMoves
_080192C8: .4byte gUnknown_02024D68
_080192CC: .4byte gUnknown_02024C08
_080192D0: .4byte gUnknown_02024D1E
_080192D4: .4byte gUnknown_02024C10
_080192D8: .4byte gUnknown_081D9950
_080192DC: .4byte gUnknown_02024C6C
_080192E0:
	ldr r0, _08019420 @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _080192F0
	bl _08019F76
_080192F0:
	ldr r5, _08019424 @ =gBattleMons
	ldr r7, _08019428 @ =gUnknown_02024C07
	ldrb r1, [r7]
	movs r6, 0x58
	adds r0, r1, 0
	muls r0, r6
	adds r0, r5
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _08019308
	bl _08019F76
_08019308:
	ldr r0, _0801942C @ =gUnknown_02024D28
	lsls r1, 4
	adds r1, r0
	ldrb r0, [r1, 0x1]
	lsls r0, 31
	cmp r0, 0
	beq _0801931A
	bl _08019F76
_0801931A:
	ldr r1, _08019430 @ =gBattleMoves
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x8]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _08019332
	bl _08019F76
_08019332:
	ldr r3, _08019434 @ =gUnknown_02024D68
	ldr r0, _08019438 @ =gUnknown_02024C08
	mov r8, r0
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r2, r0, 2
	adds r0, r3, 0
	adds r0, 0x8
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _0801935C
	adds r0, r3, 0
	adds r0, 0xC
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _0801935C
	bl _08019F76
_0801935C:
	adds r0, r1, 0
	muls r0, r6
	adds r0, r5
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _0801936C
	bl _08019F76
_0801936C:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 16
	cmp r0, 0
	beq _08019384
	bl _08019F76
_08019384:
	ldrb r0, [r7]
	muls r0, r6
	adds r0, r5
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0xC
	bne _08019396
	bl _08019F76
_08019396:
	ldr r0, [sp, 0x8]
	ldr r1, [sp, 0x10]
	bl GetGenderFromSpeciesAndPersonality
	adds r4, r0, 0
	ldr r0, [sp, 0xC]
	ldr r1, [sp, 0x14]
	bl GetGenderFromSpeciesAndPersonality
	lsls r4, 24
	lsls r0, 24
	cmp r4, r0
	bne _080193B4
	bl _08019F76
_080193B4:
	ldrb r0, [r7]
	muls r0, r6
	adds r4, r5, 0
	adds r4, 0x50
	adds r0, r4
	ldr r0, [r0]
	movs r1, 0xF0
	lsls r1, 12
	ands r0, r1
	cmp r0, 0
	beq _080193CE
	bl _08019F76
_080193CE:
	ldr r0, [sp, 0x8]
	ldr r1, [sp, 0x10]
	bl GetGenderFromSpeciesAndPersonality
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xFF
	bne _080193E2
	bl _08019F76
_080193E2:
	ldr r0, [sp, 0xC]
	ldr r1, [sp, 0x14]
	bl GetGenderFromSpeciesAndPersonality
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xFF
	bne _080193F6
	bl _08019F76
_080193F6:
	ldrb r0, [r7]
	adds r2, r0, 0
	muls r2, r6
	adds r2, r4
	ldr r1, _0801943C @ =gBitTable
	mov r3, r8
	ldrb r0, [r3]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	lsls r1, 16
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	bl b_movescr_stack_push_cursor
	ldr r1, _08019440 @ =gUnknown_02024C10
	ldr r0, _08019444 @ =gUnknown_081D9943
	str r0, [r1]
	bl _08019F22
	.align 2, 0
_08019420: .4byte gUnknown_02024C68
_08019424: .4byte gBattleMons
_08019428: .4byte gUnknown_02024C07
_0801942C: .4byte gUnknown_02024D28
_08019430: .4byte gBattleMoves
_08019434: .4byte gUnknown_02024D68
_08019438: .4byte gUnknown_02024C08
_0801943C: .4byte gBitTable
_08019440: .4byte gUnknown_02024C10
_08019444: .4byte gUnknown_081D9943
_08019448:
	movs r5, 0
	mov r10, r5
	ldr r0, _0801947C @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r10, r0
	bcc _08019458
	bl _08019F76
_08019458:
	ldr r1, _08019480 @ =gBattleMons
	movs r0, 0x58
	mov r2, r10
	muls r2, r0
	adds r0, r2, 0
	adds r0, r1
	adds r0, 0x20
	ldrb r0, [r0]
	subs r0, 0x7
	adds r2, r1, 0
	cmp r0, 0x41
	bls _08019472
	b _080196D6
_08019472:
	lsls r0, 2
	ldr r1, _08019484 @ =_08019488
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801947C: .4byte gUnknown_02024A68
_08019480: .4byte gBattleMons
_08019484: .4byte _08019488
	.align 2, 0
_08019488:
	.4byte _080195EC
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196B0
	.4byte _080196D6
	.4byte _080196D6
	.4byte _08019614
	.4byte _080196D6
	.4byte _08019590
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080195BC
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _08019680
	.4byte _08019650
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _080196D6
	.4byte _08019614
_08019590:
	movs r0, 0x58
	mov r3, r10
	muls r3, r0
	adds r0, r3, 0
	adds r1, r2, 0
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	ldr r1, _080195B0 @ =0x00000f88
	ands r0, r1
	cmp r0, 0
	bne _080195AA
	b _080196D6
_080195AA:
	ldr r0, _080195B4 @ =gUnknown_030041C0
	ldr r1, _080195B8 @ =gStatusConditionString_PoisonJpn
	b _0801969C
	.align 2, 0
_080195B0: .4byte 0x00000f88
_080195B4: .4byte gUnknown_030041C0
_080195B8: .4byte gStatusConditionString_PoisonJpn
_080195BC:
	movs r0, 0x58
	mov r1, r10
	muls r1, r0
	adds r0, r1, 0
	adds r1, r2, 0
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x7
	ands r0, r1
	cmp r0, 0
	bne _080195D6
	b _080196D6
_080195D6:
	ldr r0, _080195E4 @ =gUnknown_030041C0
	ldr r1, _080195E8 @ =gStatusConditionString_ConfusionJpn
	bl StringCopy
	movs r2, 0x2
	mov r9, r2
	b _080196DC
	.align 2, 0
_080195E4: .4byte gUnknown_030041C0
_080195E8: .4byte gStatusConditionString_ConfusionJpn
_080195EC:
	movs r0, 0x58
	mov r3, r10
	muls r3, r0
	adds r0, r3, 0
	adds r1, r2, 0
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _080196D6
	ldr r0, _0801960C @ =gUnknown_030041C0
	ldr r1, _08019610 @ =gStatusConditionString_ParalysisJpn
	b _0801969C
	.align 2, 0
_0801960C: .4byte gUnknown_030041C0
_08019610: .4byte gStatusConditionString_ParalysisJpn
_08019614:
	movs r0, 0x58
	mov r3, r10
	muls r3, r0
	adds r0, r2, 0
	adds r0, 0x4C
	adds r0, r3, r0
	ldr r0, [r0]
	movs r1, 0x7
	ands r0, r1
	cmp r0, 0
	beq _080196D6
	adds r2, 0x50
	adds r2, r3, r2
	ldr r0, [r2]
	ldr r1, _08019644 @ =0xf7ffffff
	ands r0, r1
	str r0, [r2]
	ldr r0, _08019648 @ =gUnknown_030041C0
	ldr r1, _0801964C @ =gStatusConditionString_SleepJpn
	bl StringCopy
	movs r0, 0x1
	mov r9, r0
	b _080196DC
	.align 2, 0
_08019644: .4byte 0xf7ffffff
_08019648: .4byte gUnknown_030041C0
_0801964C: .4byte gStatusConditionString_SleepJpn
_08019650:
	movs r0, 0x58
	mov r1, r10
	muls r1, r0
	adds r0, r1, 0
	adds r1, r2, 0
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x10
	ands r0, r1
	cmp r0, 0
	beq _080196D6
	ldr r0, _08019678 @ =gUnknown_030041C0
	ldr r1, _0801967C @ =gStatusConditionString_BurnJpn
	bl StringCopy
	movs r2, 0x1
	mov r9, r2
	b _080196DC
	.align 2, 0
_08019678: .4byte gUnknown_030041C0
_0801967C: .4byte gStatusConditionString_BurnJpn
_08019680:
	movs r0, 0x58
	mov r3, r10
	muls r3, r0
	adds r0, r3, 0
	adds r1, r2, 0
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x20
	ands r0, r1
	cmp r0, 0
	beq _080196D6
	ldr r0, _080196A8 @ =gUnknown_030041C0
	ldr r1, _080196AC @ =gStatusConditionString_IceJpn
_0801969C:
	bl StringCopy
	movs r5, 0x1
	mov r9, r5
	b _080196DC
	.align 2, 0
_080196A8: .4byte gUnknown_030041C0
_080196AC: .4byte gStatusConditionString_IceJpn
_080196B0:
	movs r0, 0x58
	mov r1, r10
	muls r1, r0
	adds r0, r1, 0
	adds r1, r2, 0
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0xF0
	lsls r1, 12
	ands r0, r1
	cmp r0, 0
	beq _080196D6
	ldr r0, _080196EC @ =gUnknown_030041C0
	ldr r1, _080196F0 @ =gStatusConditionString_LoveJpn
	bl StringCopy
	movs r2, 0x3
	mov r9, r2
_080196D6:
	mov r3, r9
	cmp r3, 0
	beq _08019798
_080196DC:
	mov r5, r9
	cmp r5, 0x2
	beq _08019710
	cmp r5, 0x2
	bgt _080196F4
	cmp r5, 0x1
	beq _080196FC
	b _0801973C
	.align 2, 0
_080196EC: .4byte gUnknown_030041C0
_080196F0: .4byte gStatusConditionString_LoveJpn
_080196F4:
	mov r0, r9
	cmp r0, 0x3
	beq _08019728
	b _0801973C
_080196FC:
	ldr r1, _0801970C @ =gBattleMons
	movs r0, 0x58
	mov r2, r10
	muls r2, r0
	adds r1, 0x4C
	adds r2, r1
	movs r0, 0
	b _0801973A
	.align 2, 0
_0801970C: .4byte gBattleMons
_08019710:
	ldr r1, _08019724 @ =gBattleMons
	movs r0, 0x58
	mov r2, r10
	muls r2, r0
	adds r1, 0x50
	adds r2, r1
	ldr r0, [r2]
	movs r1, 0x8
	negs r1, r1
	b _08019738
	.align 2, 0
_08019724: .4byte gBattleMons
_08019728:
	ldr r1, _08019778 @ =gBattleMons
	movs r0, 0x58
	mov r2, r10
	muls r2, r0
	adds r1, 0x50
	adds r2, r1
	ldr r0, [r2]
	ldr r1, _0801977C @ =0xfff0ffff
_08019738:
	ands r0, r1
_0801973A:
	str r0, [r2]
_0801973C:
	bl b_movescr_stack_push_cursor
	ldr r1, _08019780 @ =gUnknown_02024C10
	ldr r0, _08019784 @ =gUnknown_081D9956
	str r0, [r1]
	ldr r0, _08019788 @ =0x02000000
	ldr r1, _0801978C @ =0x00016003
	adds r0, r1
	mov r2, r10
	strb r2, [r0]
	ldr r4, _08019790 @ =gUnknown_02024A60
	strb r2, [r4]
	ldrb r1, [r4]
	movs r0, 0x58
	muls r0, r1
	ldr r1, _08019794 @ =gUnknown_02024ACC
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r2, 0
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	bl _08019F92
	.align 2, 0
_08019778: .4byte gBattleMons
_0801977C: .4byte 0xfff0ffff
_08019780: .4byte gUnknown_02024C10
_08019784: .4byte gUnknown_081D9956
_08019788: .4byte 0x02000000
_0801978C: .4byte 0x00016003
_08019790: .4byte gUnknown_02024A60
_08019794: .4byte gUnknown_02024ACC
_08019798:
	mov r0, r10
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	ldr r0, _080197B0 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r10, r0
	bcs _080197AC
	b _08019458
_080197AC:
	bl _08019F76
	.align 2, 0
_080197B0: .4byte gUnknown_02024A68
_080197B4:
	movs r3, 0
	mov r10, r3
	ldr r0, _080197FC @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r10, r0
	bcc _080197C2
	b _08019F76
_080197C2:
	ldr r4, _08019800 @ =gBattleMons
_080197C4:
	movs r0, 0x58
	mov r5, r10
	muls r5, r0
	adds r0, r5, 0
	adds r0, r4
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x3B
	bne _080197E8
	mov r0, r10
	bl castform_switch
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	cmp r0, 0
	beq _080197E8
	b _08019E40
_080197E8:
	mov r0, r10
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	ldr r0, _080197FC @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r10, r0
	bcc _080197C4
	b _08019F76
	.align 2, 0
_080197FC: .4byte gUnknown_02024A68
_08019800: .4byte gBattleMons
_08019804:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, 0x1C
	beq _0801980E
	b _08019F76
_0801980E:
	ldr r4, _08019860 @ =gUnknown_02024C6C
	ldr r1, [r4]
	movs r0, 0x80
	lsls r0, 7
	ands r0, r1
	cmp r0, 0
	bne _0801981E
	b _08019F76
_0801981E:
	ldr r0, _08019864 @ =0xffffbfff
	ands r1, r0
	str r1, [r4]
	ldr r3, _08019868 @ =0x000160ca
	adds r2, r7, r3
	ldrb r1, [r2]
	movs r0, 0x3F
	ands r0, r1
	strb r0, [r2]
	cmp r0, 0x6
	bne _08019838
	movs r0, 0x2
	strb r0, [r2]
_08019838:
	ldr r1, _0801986C @ =gUnknown_02024D1E
	ldrb r0, [r2]
	adds r0, 0x40
	strb r0, [r1, 0x3]
	ldr r0, _08019870 @ =gUnknown_02024C08
	ldrb r1, [r0]
	ldr r5, _08019874 @ =0x00016003
	adds r0, r7, r5
	strb r1, [r0]
	bl b_movescr_stack_push_cursor
	ldr r1, _08019878 @ =gUnknown_02024C10
	ldr r0, _0801987C @ =gUnknown_081D9953
	str r0, [r1]
	ldr r0, [r4]
	movs r1, 0x80
	lsls r1, 6
	orrs r0, r1
	str r0, [r4]
	b _08019F22
	.align 2, 0
_08019860: .4byte gUnknown_02024C6C
_08019864: .4byte 0xffffbfff
_08019868: .4byte 0x000160ca
_0801986C: .4byte gUnknown_02024D1E
_08019870: .4byte gUnknown_02024C08
_08019874: .4byte 0x00016003
_08019878: .4byte gUnknown_02024C10
_0801987C: .4byte gUnknown_081D9953
_08019880:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, 0x1C
	beq _0801988A
	b _08019F76
_0801988A:
	ldr r4, _080198DC @ =gUnknown_02024C6C
	ldr r1, [r4]
	movs r0, 0x80
	lsls r0, 7
	ands r0, r1
	cmp r0, 0
	bne _0801989A
	b _08019F76
_0801989A:
	ldr r0, _080198E0 @ =0xffffbfff
	ands r1, r0
	str r1, [r4]
	ldr r3, _080198E4 @ =0x000160ca
	adds r2, r7, r3
	ldrb r1, [r2]
	movs r0, 0x3F
	ands r0, r1
	strb r0, [r2]
	cmp r0, 0x6
	bne _080198B4
	movs r0, 0x2
	strb r0, [r2]
_080198B4:
	ldr r1, _080198E8 @ =gUnknown_02024D1E
	ldrb r0, [r2]
	strb r0, [r1, 0x3]
	ldr r0, _080198EC @ =gUnknown_02024C07
	ldrb r1, [r0]
	ldr r5, _080198F0 @ =0x00016003
	adds r0, r7, r5
	strb r1, [r0]
	bl b_movescr_stack_push_cursor
	ldr r1, _080198F4 @ =gUnknown_02024C10
	ldr r0, _080198F8 @ =gUnknown_081D9953
	str r0, [r1]
	ldr r0, [r4]
	movs r1, 0x80
	lsls r1, 6
	orrs r0, r1
	str r0, [r4]
	b _08019F22
	.align 2, 0
_080198DC: .4byte gUnknown_02024C6C
_080198E0: .4byte 0xffffbfff
_080198E4: .4byte 0x000160ca
_080198E8: .4byte gUnknown_02024D1E
_080198EC: .4byte gUnknown_02024C07
_080198F0: .4byte 0x00016003
_080198F4: .4byte gUnknown_02024C10
_080198F8: .4byte gUnknown_081D9953
_080198FC:
	movs r4, 0
	ldr r0, _08019934 @ =gUnknown_02024A68
	ldrb r1, [r0]
	cmp r4, r1
	blt _08019908
	b _08019F76
_08019908:
	ldr r0, _08019938 @ =gBattleMons
	adds r5, r1, 0
	ldr r2, _0801993C @ =gUnknown_02024C98
	adds r3, r0, 0
	adds r3, 0x20
	movs r6, 0x80
	lsls r6, 12
_08019916:
	ldrb r1, [r3]
	cmp r1, 0x16
	bne _08019926
	ldr r0, [r2]
	ands r0, r6
	cmp r0, 0
	beq _08019926
	b _08019E6C
_08019926:
	adds r2, 0x4
	adds r3, 0x58
	adds r4, 0x1
	cmp r4, r5
	blt _08019916
	b _08019F76
	.align 2, 0
_08019934: .4byte gUnknown_02024A68
_08019938: .4byte gBattleMons
_0801993C: .4byte gUnknown_02024C98
_08019940:
	movs r4, 0
	ldr r0, _08019A1C @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r4, r0
	blt _0801994C
	b _08019F76
_0801994C:
	ldr r0, _08019A20 @ =gUnknown_02024A60
	mov r8, r0
	ldr r1, _08019A24 @ =gBattleMons
	adds r1, 0x20
	str r1, [sp, 0x1C]
	movs r2, 0
	str r2, [sp, 0x20]
_0801995A:
	ldr r3, [sp, 0x1C]
	ldrb r0, [r3]
	cmp r0, 0x24
	beq _08019964
	b _08019AF6
_08019964:
	ldr r0, _08019A28 @ =gUnknown_02024C98
	ldr r5, [sp, 0x20]
	adds r0, r5, r0
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 13
	ands r1, r0
	str r5, [sp, 0x18]
	cmp r1, 0
	bne _0801997A
	b _08019AF6
_0801997A:
	lsls r0, r4, 24
	lsrs r0, 24
	bl battle_get_per_side_status
	movs r1, 0x1
	adds r5, r0, 0
	eors r5, r1
	ands r5, r1
	adds r0, r5, 0
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r6, r0, 24
	adds r0, r5, 0x2
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r0, _08019A2C @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r2, 0x1
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	bne _080199AE
	b _08019ABC
_080199AE:
	movs r1, 0x58
	adds r0, r6, 0
	muls r0, r1
	ldr r3, _08019A24 @ =gBattleMons
	adds r1, r0, r3
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0
	beq _08019A78
	ldrh r0, [r1, 0x28]
	cmp r0, 0
	beq _08019A34
	movs r1, 0x58
	adds r0, r7, 0
	muls r0, r1
	adds r1, r0, r3
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0
	beq _08019A34
	ldrh r0, [r1, 0x28]
	cmp r0, 0
	beq _08019A34
	str r2, [sp, 0x24]
	bl Random
	ldr r2, [sp, 0x24]
	adds r1, r2, 0
	ands r1, r0
	lsls r1, 1
	orrs r5, r1
	adds r0, r5, 0
	bl battle_get_side_with_given_state
	mov r2, r8
	strb r0, [r2]
	ldrb r0, [r2]
	movs r3, 0x58
	muls r0, r3
	ldr r5, _08019A24 @ =gBattleMons
	adds r0, r5
	adds r0, 0x20
	ldrb r0, [r0]
	ldr r1, [sp, 0x1C]
	strb r0, [r1]
	ldrb r0, [r2]
	muls r0, r3
	adds r0, r5
	adds r0, 0x20
	ldrb r0, [r0]
	ldr r2, _08019A30 @ =byte_2024C06
	strb r0, [r2]
	b _08019AE4
	.align 2, 0
_08019A1C: .4byte gUnknown_02024A68
_08019A20: .4byte gUnknown_02024A60
_08019A24: .4byte gBattleMons
_08019A28: .4byte gUnknown_02024C98
_08019A2C: .4byte gUnknown_020239F8
_08019A30: .4byte byte_2024C06
_08019A34:
	ldr r3, _08019A74 @ =gBattleMons
	movs r2, 0x58
	adds r0, r6, 0
	muls r0, r2
	adds r1, r0, r3
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0
	beq _08019A78
	ldrh r0, [r1, 0x28]
	cmp r0, 0
	beq _08019A78
	mov r5, r8
	strb r6, [r5]
	adds r1, r4, 0
	muls r1, r2
	adds r1, r3
	ldrb r0, [r5]
	muls r0, r2
	adds r0, r3
	adds r0, 0x20
	ldrb r0, [r0]
	adds r1, 0x20
	strb r0, [r1]
	ldrb r0, [r5]
	muls r0, r2
	adds r0, r3
	adds r0, 0x20
	ldrb r0, [r0]
	b _08019AE0
	.align 2, 0
_08019A74: .4byte gBattleMons
_08019A78:
	ldr r3, _08019AB8 @ =gBattleMons
	movs r2, 0x58
	adds r0, r7, 0
	muls r0, r2
	adds r1, r0, r3
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0
	beq _08019AEE
	ldrh r0, [r1, 0x28]
	cmp r0, 0
	beq _08019AEE
	mov r5, r8
	strb r7, [r5]
	adds r1, r4, 0
	muls r1, r2
	adds r1, r3
	ldrb r0, [r5]
	muls r0, r2
	adds r0, r3
	adds r0, 0x20
	ldrb r0, [r0]
	adds r1, 0x20
	strb r0, [r1]
	ldrb r0, [r5]
	muls r0, r2
	adds r0, r3
	adds r0, 0x20
	ldrb r0, [r0]
	b _08019AE0
	.align 2, 0
_08019AB8: .4byte gBattleMons
_08019ABC:
	mov r2, r8
	strb r6, [r2]
	movs r3, 0x58
	adds r0, r6, 0
	muls r0, r3
	ldr r5, _08019B10 @ =gBattleMons
	adds r0, r5
	adds r2, r0, 0
	adds r2, 0x20
	ldrb r1, [r2]
	cmp r1, 0
	beq _08019AEE
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _08019AEE
	ldr r0, [sp, 0x1C]
	strb r1, [r0]
	ldrb r0, [r2]
_08019AE0:
	ldr r1, _08019B14 @ =byte_2024C06
	strb r0, [r1]
_08019AE4:
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_08019AEE:
	mov r2, r9
	cmp r2, 0
	beq _08019AF6
	b _08019E88
_08019AF6:
	ldr r3, [sp, 0x1C]
	adds r3, 0x58
	str r3, [sp, 0x1C]
	ldr r5, [sp, 0x20]
	adds r5, 0x4
	str r5, [sp, 0x20]
	adds r4, 0x1
	ldr r0, _08019B18 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r4, r0
	bge _08019B0E
	b _0801995A
_08019B0E:
	b _08019F76
	.align 2, 0
_08019B10: .4byte gBattleMons
_08019B14: .4byte byte_2024C06
_08019B18: .4byte gUnknown_02024A68
_08019B1C:
	movs r4, 0
	ldr r0, _08019B54 @ =gUnknown_02024A68
	ldrb r1, [r0]
	cmp r4, r1
	blt _08019B28
	b _08019F76
_08019B28:
	ldr r0, _08019B58 @ =gBattleMons
	adds r5, r1, 0
	ldr r2, _08019B5C @ =gUnknown_02024C98
	adds r3, r0, 0
	adds r3, 0x20
	movs r6, 0x80
	lsls r6, 12
_08019B36:
	ldrb r1, [r3]
	cmp r1, 0x16
	bne _08019B46
	ldr r0, [r2]
	ands r0, r6
	cmp r0, 0
	beq _08019B46
	b _08019F04
_08019B46:
	adds r2, 0x4
	adds r3, 0x58
	adds r4, 0x1
	cmp r4, r5
	blt _08019B36
	b _08019F76
	.align 2, 0
_08019B54: .4byte gUnknown_02024A68
_08019B58: .4byte gBattleMons
_08019B5C: .4byte gUnknown_02024C98
_08019B60:
	mov r0, r10
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r5, r0, 24
	movs r4, 0
	ldr r0, _08019BB0 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r4, r0
	blt _08019B76
	b _08019F76
_08019B76:
	ldr r7, _08019BB4 @ =gBattleMons
_08019B78:
	lsls r0, r4, 24
	lsrs r0, 24
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	adds r3, r4, 0x1
	cmp r0, r5
	beq _08019BA2
	movs r0, 0x58
	muls r0, r4
	adds r0, r7
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, r6
	bne _08019BA2
	ldr r0, _08019BB8 @ =byte_2024C06
	strb r6, [r0]
	lsls r0, r3, 24
	lsrs r0, 24
	mov r9, r0
_08019BA2:
	adds r4, r3, 0
	ldr r0, _08019BB0 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r4, r0
	blt _08019B78
	b _08019F76
	.align 2, 0
_08019BB0: .4byte gUnknown_02024A68
_08019BB4: .4byte gBattleMons
_08019BB8: .4byte byte_2024C06
_08019BBC:
	mov r0, r10
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r5, r0, 24
	movs r4, 0
	ldr r0, _08019C0C @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r4, r0
	blt _08019BD2
	b _08019F76
_08019BD2:
	ldr r7, _08019C10 @ =gBattleMons
_08019BD4:
	lsls r0, r4, 24
	lsrs r0, 24
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	adds r3, r4, 0x1
	cmp r0, r5
	bne _08019BFE
	movs r0, 0x58
	muls r0, r4
	adds r0, r7
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, r6
	bne _08019BFE
	ldr r0, _08019C14 @ =byte_2024C06
	strb r6, [r0]
	lsls r0, r3, 24
	lsrs r0, 24
	mov r9, r0
_08019BFE:
	adds r4, r3, 0
	ldr r0, _08019C0C @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r4, r0
	blt _08019BD4
	b _08019F76
	.align 2, 0
_08019C0C: .4byte gUnknown_02024A68
_08019C10: .4byte gBattleMons
_08019C14: .4byte byte_2024C06
_08019C18:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, 0xFD
	beq _08019C40
	cmp r0, 0xFE
	beq _08019C78
	movs r4, 0
	ldr r0, _08019C38 @ =gUnknown_02024A68
	adds r5, r0, 0
	ldrb r2, [r5]
	cmp r4, r2
	blt _08019C32
	b _08019F76
_08019C32:
	ldr r2, _08019C3C @ =gBattleMons
	b _08019CB0
	.align 2, 0
_08019C38: .4byte gUnknown_02024A68
_08019C3C: .4byte gBattleMons
_08019C40:
	movs r4, 0
	ldr r0, _08019C70 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r4, r0
	blt _08019C4C
	b _08019F76
_08019C4C:
	ldr r5, _08019C74 @ =gUnknown_02024C98
	movs r2, 0x80
	lsls r2, 9
	adds r1, r0, 0
_08019C54:
	lsls r0, r4, 2
	adds r0, r5
	ldr r0, [r0]
	ands r0, r2
	adds r3, r4, 0x1
	cmp r0, 0
	beq _08019C68
	lsls r0, r3, 24
	lsrs r0, 24
	mov r9, r0
_08019C68:
	adds r4, r3, 0
	cmp r4, r1
	blt _08019C54
	b _08019F76
	.align 2, 0
_08019C70: .4byte gUnknown_02024A68
_08019C74: .4byte gUnknown_02024C98
_08019C78:
	movs r4, 0
	ldr r0, _08019CA8 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r4, r0
	blt _08019C84
	b _08019F76
_08019C84:
	ldr r5, _08019CAC @ =gUnknown_02024C98
	movs r2, 0x80
	lsls r2, 10
	adds r1, r0, 0
_08019C8C:
	lsls r0, r4, 2
	adds r0, r5
	ldr r0, [r0]
	ands r0, r2
	adds r3, r4, 0x1
	cmp r0, 0
	beq _08019CA0
	lsls r0, r3, 24
	lsrs r0, 24
	mov r9, r0
_08019CA0:
	adds r4, r3, 0
	cmp r4, r1
	blt _08019C8C
	b _08019F76
	.align 2, 0
_08019CA8: .4byte gUnknown_02024A68
_08019CAC: .4byte gUnknown_02024C98
_08019CB0:
	movs r0, 0x58
	muls r0, r4
	adds r0, r2
	adds r0, 0x20
	ldrb r0, [r0]
	adds r3, r4, 0x1
	cmp r0, r6
	bne _08019CCA
	mov r0, r8
	strb r6, [r0]
	lsls r0, r3, 24
	lsrs r0, 24
	mov r9, r0
_08019CCA:
	adds r4, r3, 0
	ldrb r1, [r5]
	cmp r4, r1
	blt _08019CB0
	b _08019F76
_08019CD4:
	movs r4, 0
	ldr r0, _08019D10 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r4, r0
	blt _08019CE0
	b _08019F76
_08019CE0:
	ldr r7, _08019D14 @ =gBattleMons
	adds r2, r0, 0
	movs r5, 0x58
_08019CE6:
	adds r0, r4, 0
	muls r0, r5
	adds r1, r0, r7
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	adds r3, r4, 0x1
	cmp r0, r6
	bne _08019D08
	ldrh r0, [r1, 0x28]
	cmp r0, 0
	beq _08019D08
	mov r0, r8
	strb r6, [r0]
	lsls r0, r3, 24
	lsrs r0, 24
	mov r9, r0
_08019D08:
	adds r4, r3, 0
	cmp r4, r2
	blt _08019CE6
	b _08019F76
	.align 2, 0
_08019D10: .4byte gUnknown_02024A68
_08019D14: .4byte gBattleMons
_08019D18:
	movs r4, 0
	ldr r0, _08019D50 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r4, r0
	blt _08019D24
	b _08019F76
_08019D24:
	ldr r7, _08019D54 @ =gBattleMons
	adds r1, r0, 0
	movs r5, 0x58
	ldr r2, _08019D58 @ =byte_2024C06
_08019D2C:
	adds r0, r4, 0
	muls r0, r5
	adds r0, r7
	adds r0, 0x20
	ldrb r0, [r0]
	adds r3, r4, 0x1
	cmp r0, r6
	bne _08019D48
	cmp r4, r10
	beq _08019D48
	strb r6, [r2]
	lsls r0, r3, 24
	lsrs r0, 24
	mov r9, r0
_08019D48:
	adds r4, r3, 0
	cmp r4, r1
	blt _08019D2C
	b _08019F76
	.align 2, 0
_08019D50: .4byte gUnknown_02024A68
_08019D54: .4byte gBattleMons
_08019D58: .4byte byte_2024C06
_08019D5C:
	mov r0, r10
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r5, r0, 24
	movs r4, 0
	ldr r0, _08019DAC @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r4, r0
	blt _08019D72
	b _08019F76
_08019D72:
	ldr r7, _08019DB0 @ =gBattleMons
_08019D74:
	lsls r0, r4, 24
	lsrs r0, 24
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, r5
	beq _08019DA0
	movs r0, 0x58
	muls r0, r4
	adds r0, r7
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, r6
	bne _08019DA0
	ldr r0, _08019DB4 @ =byte_2024C06
	strb r6, [r0]
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_08019DA0:
	adds r4, 0x1
	ldr r0, _08019DAC @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r4, r0
	blt _08019D74
	b _08019F76
	.align 2, 0
_08019DAC: .4byte gUnknown_02024A68
_08019DB0: .4byte gBattleMons
_08019DB4: .4byte byte_2024C06
_08019DB8:
	mov r0, r10
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r5, r0, 24
	movs r4, 0
	ldr r0, _08019E08 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r4, r0
	blt _08019DCE
	b _08019F76
_08019DCE:
	ldr r7, _08019E0C @ =gBattleMons
_08019DD0:
	lsls r0, r4, 24
	lsrs r0, 24
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, r5
	bne _08019DFC
	movs r0, 0x58
	muls r0, r4
	adds r0, r7
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, r6
	bne _08019DFC
	ldr r0, _08019E10 @ =byte_2024C06
	strb r6, [r0]
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_08019DFC:
	adds r4, 0x1
	ldr r0, _08019E08 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r4, r0
	blt _08019DD0
	b _08019F76
	.align 2, 0
_08019E08: .4byte gUnknown_02024A68
_08019E0C: .4byte gBattleMons
_08019E10: .4byte byte_2024C06
_08019E14:
	ldr r0, _08019E30 @ =gUnknown_081D977D
	bl b_push_move_exec
	ldr r0, _08019E34 @ =0x02000000
	ldr r2, _08019E38 @ =0x00016003
	adds r1, r0, r2
	strb r6, [r1]
	mov r1, r9
	subs r1, 0x1
	ldr r3, _08019E3C @ =0x0001609b
	adds r0, r3
	strb r1, [r0]
	b _08019F76
	.align 2, 0
_08019E30: .4byte gUnknown_081D977D
_08019E34: .4byte 0x02000000
_08019E38: .4byte 0x00016003
_08019E3C: .4byte 0x0001609b
_08019E40:
	ldr r0, _08019E5C @ =gUnknown_081D977D
	bl b_push_move_exec
	ldr r0, _08019E60 @ =0x02000000
	ldr r5, _08019E64 @ =0x00016003
	adds r1, r0, r5
	mov r2, r10
	strb r2, [r1]
	mov r1, r9
	subs r1, 0x1
	ldr r3, _08019E68 @ =0x0001609b
	adds r0, r3
	strb r1, [r0]
	b _08019F92
	.align 2, 0
_08019E5C: .4byte gUnknown_081D977D
_08019E60: .4byte 0x02000000
_08019E64: .4byte 0x00016003
_08019E68: .4byte 0x0001609b
_08019E6C:
	mov r5, r8
	strb r1, [r5]
	ldr r0, [r2]
	ldr r1, _08019E80 @ =0xfff7ffff
	ands r0, r1
	str r0, [r2]
	ldr r0, _08019E84 @ =gUnknown_081D978C
	bl b_push_move_exec
	b _08019F1A
	.align 2, 0
_08019E80: .4byte 0xfff7ffff
_08019E84: .4byte gUnknown_081D978C
_08019E88:
	ldr r0, _08019EDC @ =gUnknown_081D9726
	bl b_push_move_exec
	ldr r1, _08019EE0 @ =gUnknown_02024C98
	ldr r2, [sp, 0x18]
	adds r1, r2, r1
	ldr r0, [r1]
	ldr r2, _08019EE4 @ =0xffefffff
	ands r0, r2
	str r0, [r1]
	ldr r0, _08019EE8 @ =0x02000000
	ldr r3, _08019EEC @ =0x00016003
	adds r0, r3
	strb r4, [r0]
	ldr r1, _08019EF0 @ =gUnknown_030041C0
	movs r4, 0xFD
	strb r4, [r1]
	movs r0, 0x4
	strb r0, [r1, 0x1]
	ldr r2, _08019EF4 @ =gUnknown_02024A60
	ldrb r0, [r2]
	strb r0, [r1, 0x2]
	ldr r3, _08019EF8 @ =gUnknown_02024A6A
	ldrb r0, [r2]
	lsls r0, 1
	adds r0, r3
	ldrh r0, [r0]
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r1, _08019EFC @ =gUnknown_03004290
	strb r4, [r1]
	movs r0, 0x9
	strb r0, [r1, 0x1]
	ldr r0, _08019F00 @ =byte_2024C06
	ldrb r0, [r0]
	strb r0, [r1, 0x2]
	movs r0, 0x1
	negs r0, r0
	strb r0, [r1, 0x3]
	b _08019F76
	.align 2, 0
_08019EDC: .4byte gUnknown_081D9726
_08019EE0: .4byte gUnknown_02024C98
_08019EE4: .4byte 0xffefffff
_08019EE8: .4byte 0x02000000
_08019EEC: .4byte 0x00016003
_08019EF0: .4byte gUnknown_030041C0
_08019EF4: .4byte gUnknown_02024A60
_08019EF8: .4byte gUnknown_02024A6A
_08019EFC: .4byte gUnknown_03004290
_08019F00: .4byte byte_2024C06
_08019F04:
	mov r5, r8
	strb r1, [r5]
	ldr r0, [r2]
	ldr r1, _08019F30 @ =0xfff7ffff
	ands r0, r1
	str r0, [r2]
	bl b_movescr_stack_push_cursor
	ldr r1, _08019F34 @ =gUnknown_02024C10
	ldr r0, _08019F38 @ =gUnknown_081D9795
	str r0, [r1]
_08019F1A:
	ldr r0, _08019F3C @ =0x02000000
	ldr r1, _08019F40 @ =0x000160dd
	adds r0, r1
	strb r4, [r0]
_08019F22:
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	b _08019F76
	.align 2, 0
_08019F30: .4byte 0xfff7ffff
_08019F34: .4byte gUnknown_02024C10
_08019F38: .4byte gUnknown_081D9795
_08019F3C: .4byte 0x02000000
_08019F40: .4byte 0x000160dd
_08019F44:
	movs r4, 0
	ldr r0, _08019FA4 @ =gUnknown_02024A68
	ldrb r1, [r0]
	cmp r4, r1
	bge _08019F76
	ldr r0, _08019FA8 @ =gBattleMons
	adds r2, r1, 0
	adds r1, r0, 0
	adds r1, 0x20
	ldr r3, _08019FAC @ =byte_2024C06
_08019F58:
	ldrb r0, [r1]
	cmp r0, r6
	bne _08019F6E
	cmp r4, r10
	beq _08019F6E
	strb r6, [r3]
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_08019F6E:
	adds r1, 0x58
	adds r4, 0x1
	cmp r4, r2
	blt _08019F58
_08019F76:
	mov r2, r9
	cmp r2, 0
	beq _08019F92
_08019F7C:
	ldr r3, [sp, 0x4]
	cmp r3, 0xB
	bhi _08019F92
	ldr r1, _08019FAC @ =byte_2024C06
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _08019F92
	adds r1, r0, 0
	mov r0, r10
	bl sub_81074C4
_08019F92:
	mov r0, r9
	add sp, 0x28
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_08019FA4: .4byte gUnknown_02024A68
_08019FA8: .4byte gBattleMons
_08019FAC: .4byte byte_2024C06
	thumb_func_end sub_8018324

	thumb_func_start b_call_bc_move_exec
b_call_bc_move_exec: @ 8019FB0
	ldr r1, _08019FD8 @ =gUnknown_02024C10
	str r0, [r1]
	ldr r3, _08019FDC @ =0x02017140
	adds r2, r3, 0
	adds r2, 0x20
	ldrb r0, [r2]
	adds r1, r0, 0x1
	strb r1, [r2]
	lsls r0, 24
	lsrs r0, 22
	adds r0, r3
	ldr r2, _08019FE0 @ =gUnknown_030042D4
	ldr r1, [r2]
	str r1, [r0]
	ldr r0, _08019FE4 @ =sub_8013F54
	str r0, [r2]
	ldr r1, _08019FE8 @ =gUnknown_02024A7F
	movs r0, 0
	strb r0, [r1]
	bx lr
	.align 2, 0
_08019FD8: .4byte gUnknown_02024C10
_08019FDC: .4byte 0x02017140
_08019FE0: .4byte gUnknown_030042D4
_08019FE4: .4byte sub_8013F54
_08019FE8: .4byte gUnknown_02024A7F
	thumb_func_end b_call_bc_move_exec

	thumb_func_start b_push_move_exec
b_push_move_exec: @ 8019FEC
	push {r4,lr}
	adds r4, r0, 0
	bl b_movescr_stack_push_cursor
	ldr r0, _0801A01C @ =gUnknown_02024C10
	str r4, [r0]
	ldr r3, _0801A020 @ =0x02017140
	adds r2, r3, 0
	adds r2, 0x20
	ldrb r0, [r2]
	adds r1, r0, 0x1
	strb r1, [r2]
	lsls r0, 24
	lsrs r0, 22
	adds r0, r3
	ldr r2, _0801A024 @ =gUnknown_030042D4
	ldr r1, [r2]
	str r1, [r0]
	ldr r0, _0801A028 @ =sub_8013FBC
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A01C: .4byte gUnknown_02024C10
_0801A020: .4byte 0x02017140
_0801A024: .4byte gUnknown_030042D4
_0801A028: .4byte sub_8013FBC
	thumb_func_end b_push_move_exec

	thumb_func_start sub_801A02C
sub_801A02C: @ 801A02C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x2C
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x8]
	lsls r1, 24
	lsrs r7, r1, 24
	lsls r2, 24
	lsrs r6, r2, 24
	movs r0, 0
	mov r10, r0
	movs r1, 0
	str r1, [sp, 0xC]
	add r0, sp, 0x4
	strb r1, [r0]
	ldr r4, _0801A078 @ =gUnknown_02024C04
	ldr r1, _0801A07C @ =gBattleMons
	movs r0, 0x58
	muls r0, r7
	adds r0, r1
	ldrh r0, [r0, 0x2E]
	strh r0, [r4]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0xAF
	bne _0801A084
	ldr r1, _0801A080 @ =gEnigmaBerries
	lsls r0, r7, 3
	subs r0, r7
	lsls r0, 2
	adds r0, r1
	ldrb r5, [r0, 0x7]
	ldrb r0, [r0, 0x1A]
	b _0801A098
	.align 2, 0
_0801A078: .4byte gUnknown_02024C04
_0801A07C: .4byte gBattleMons
_0801A080: .4byte gEnigmaBerries
_0801A084:
	ldrh r0, [r4]
	bl ItemId_GetHoldEffect
	lsls r0, 24
	lsrs r5, r0, 24
	ldrh r0, [r4]
	bl ItemId_GetHoldEffectParam
	lsls r0, 24
	lsrs r0, 24
_0801A098:
	mov r9, r0
	ldr r1, _0801A0C0 @ =gBattleMons
	ldr r0, _0801A0C4 @ =gUnknown_02024C07
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	ldrh r0, [r0, 0x2E]
	str r0, [sp, 0x14]
	cmp r0, 0xAF
	bne _0801A0CC
	ldr r1, _0801A0C8 @ =gEnigmaBerries
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r3, [r0, 0x7]
	mov r8, r3
	ldrb r0, [r0, 0x1A]
	b _0801A0E2
	.align 2, 0
_0801A0C0: .4byte gBattleMons
_0801A0C4: .4byte gUnknown_02024C07
_0801A0C8: .4byte gEnigmaBerries
_0801A0CC:
	ldr r0, [sp, 0x14]
	bl ItemId_GetHoldEffect
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	ldr r0, [sp, 0x14]
	bl ItemId_GetHoldEffectParam
	lsls r0, 24
	lsrs r0, 24
_0801A0E2:
	str r0, [sp, 0x10]
	ldr r2, _0801A118 @ =gBattleMons
	ldr r0, _0801A11C @ =gUnknown_02024C08
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r4, [r0, 0x2E]
	cmp r4, 0xAF
	beq _0801A102
	adds r0, r4, 0
	bl ItemId_GetHoldEffect
	adds r0, r4, 0
	bl ItemId_GetHoldEffectParam
_0801A102:
	ldr r4, [sp, 0x8]
	cmp r4, 0x4
	bls _0801A10C
	bl _0801B3CA
_0801A10C:
	lsls r0, r4, 2
	ldr r1, _0801A120 @ =_0801A124
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801A118: .4byte gBattleMons
_0801A11C: .4byte gUnknown_02024C08
_0801A120: .4byte _0801A124
	.align 2, 0
_0801A124:
	.4byte _0801A138
	.4byte _0801A1D4
	.4byte _0801B3CA
	.4byte _0801AE0C
	.4byte _0801B26C
_0801A138:
	cmp r5, 0x17
	beq _0801A15C
	cmp r5, 0x20
	beq _0801A144
	bl _0801B3CA
_0801A144:
	ldr r0, _0801A154 @ =0x02000000
	ldr r5, _0801A158 @ =0x00016056
	adds r0, r5
	movs r1, 0x2
	strb r1, [r0]
	bl _0801B3CA
	.align 2, 0
_0801A154: .4byte 0x02000000
_0801A158: .4byte 0x00016056
_0801A15C:
	ldr r0, _0801A1B8 @ =gBattleMons
	mov r8, r0
	movs r0, 0x58
	adds r1, r7, 0
	muls r1, r0
	mov r0, r8
	adds r0, 0x18
	adds r1, r0
	movs r2, 0x6
	movs r3, 0x7
	mov r10, r3
_0801A172:
	movs r0, 0
	ldrsb r0, [r1, r0]
	cmp r0, 0x5
	bgt _0801A180
	strb r2, [r1]
	movs r4, 0x5
	str r4, [sp, 0xC]
_0801A180:
	adds r1, 0x1
	movs r5, 0x1
	negs r5, r5
	add r10, r5
	mov r0, r10
	cmp r0, 0
	bge _0801A172
	ldr r1, [sp, 0xC]
	cmp r1, 0
	bne _0801A198
	bl _0801B3CA
_0801A198:
	ldr r0, _0801A1BC @ =0x02000000
	ldr r2, _0801A1C0 @ =0x00016003
	adds r0, r2
	strb r7, [r0]
	ldr r0, _0801A1C4 @ =gUnknown_02024C0B
	strb r7, [r0]
	ldr r1, _0801A1C8 @ =gUnknown_02024A60
	ldr r0, _0801A1CC @ =gUnknown_02024C07
	strb r7, [r0]
	strb r7, [r1]
	ldr r0, _0801A1D0 @ =gUnknown_081D9A5E
	bl b_call_bc_move_exec
	bl _0801B3CA
	.align 2, 0
_0801A1B8: .4byte gBattleMons
_0801A1BC: .4byte 0x02000000
_0801A1C0: .4byte 0x00016003
_0801A1C4: .4byte gUnknown_02024C0B
_0801A1C8: .4byte gUnknown_02024A60
_0801A1CC: .4byte gUnknown_02024C07
_0801A1D0: .4byte gUnknown_081D9A5E
_0801A1D4:
	ldr r1, _0801A1FC @ =gBattleMons
	movs r0, 0x58
	muls r0, r7
	adds r0, r1
	ldrh r0, [r0, 0x28]
	mov r8, r1
	cmp r0, 0
	bne _0801A1E8
	bl _0801B3CA
_0801A1E8:
	subs r0, r5, 0x1
	cmp r0, 0x2A
	bls _0801A1F2
	bl _0801AD5A
_0801A1F2:
	lsls r0, 2
	ldr r1, _0801A200 @ =_0801A204
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801A1FC: .4byte gBattleMons
_0801A200: .4byte _0801A204
	.align 2, 0
_0801A204:
	.4byte _0801A2B0
	.4byte _0801AAC8
	.4byte _0801AB84
	.4byte _0801AAF8
	.4byte _0801AB2C
	.4byte _0801AB5C
	.4byte _0801A2F8
	.4byte _0801ABC8
	.4byte _0801ABF8
	.4byte _0801A4CC
	.4byte _0801A548
	.4byte _0801A5C4
	.4byte _0801A634
	.4byte _0801A6C8
	.4byte _0801A75C
	.4byte _0801A7D4
	.4byte _0801A838
	.4byte _0801A89C
	.4byte _0801A900
	.4byte _0801A97C
	.4byte _0801A9C8
	.4byte _0801AD5A
	.4byte _0801A3F8
	.4byte _0801AD5A
	.4byte _0801AD5A
	.4byte _0801AD5A
	.4byte _0801AD5A
	.4byte _0801AD24
	.4byte _0801AD5A
	.4byte _0801AD5A
	.4byte _0801AD5A
	.4byte _0801AD5A
	.4byte _0801AD5A
	.4byte _0801AD5A
	.4byte _0801AD5A
	.4byte _0801AD5A
	.4byte _0801AD5A
	.4byte _0801AD5A
	.4byte _0801AD5A
	.4byte _0801AD5A
	.4byte _0801AD5A
	.4byte _0801AD5A
	.4byte _0801A46C
_0801A2B0:
	movs r0, 0x58
	muls r0, r7
	mov r3, r8
	adds r2, r0, r3
	ldrh r0, [r2, 0x2C]
	ldrh r1, [r2, 0x28]
	lsrs r0, 1
	cmp r1, r0
	bls _0801A2C6
	bl _0801AD5A
_0801A2C6:
	cmp r6, 0
	beq _0801A2CE
	bl _0801AD5A
_0801A2CE:
	ldr r4, _0801A2F0 @ =gUnknown_02024BEC
	mov r5, r9
	str r5, [r4]
	ldrh r3, [r2, 0x28]
	adds r0, r3, r5
	ldrh r1, [r2, 0x2C]
	cmp r0, r1
	ble _0801A2E2
	subs r0, r1, r3
	str r0, [r4]
_0801A2E2:
	ldr r0, [r4]
	negs r0, r0
	str r0, [r4]
	ldr r0, _0801A2F4 @ =gUnknown_081D9A74
	bl b_call_bc_move_exec
	b _0801A752
	.align 2, 0
_0801A2F0: .4byte gUnknown_02024BEC
_0801A2F4: .4byte gUnknown_081D9A74
_0801A2F8:
	cmp r6, 0
	beq _0801A300
	bl _0801AD5A
_0801A300:
	adds r0, r7, 0
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _0801A324
	ldr r1, _0801A31C @ =gUnknown_02024A6A
	lsls r0, r7, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, _0801A320 @ =gPlayerParty
	b _0801A332
	.align 2, 0
_0801A31C: .4byte gUnknown_02024A6A
_0801A320: .4byte gPlayerParty
_0801A324:
	ldr r1, _0801A3A0 @ =gUnknown_02024A6A
	lsls r0, r7, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, _0801A3A4 @ =gEnemyParty
_0801A332:
	adds r4, r1, r0
	movs r1, 0
	mov r10, r1
	add r5, sp, 0x4
_0801A33A:
	mov r1, r10
	adds r1, 0xD
	adds r0, r4, 0
	bl GetMonData
	lsls r0, 16
	lsrs r6, r0, 16
	mov r1, r10
	adds r1, 0x11
	adds r0, r4, 0
	bl GetMonData
	strb r0, [r5]
	adds r0, r4, 0
	movs r1, 0x15
	bl GetMonData
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r6, 0
	beq _0801A36A
	ldrb r0, [r5]
	cmp r0, 0
	beq _0801A374
_0801A36A:
	movs r2, 0x1
	add r10, r2
	mov r3, r10
	cmp r3, 0x3
	ble _0801A33A
_0801A374:
	mov r4, r10
	cmp r4, 0x4
	bne _0801A37E
	bl _0801AD5A
_0801A37E:
	lsls r2, r4, 24
	lsrs r2, 24
	adds r0, r6, 0
	bl CalculatePPWithBonus
	lsls r0, 24
	lsrs r2, r0, 24
	add r0, sp, 0x4
	ldrb r0, [r0]
	mov r5, r9
	adds r1, r0, r5
	cmp r1, r2
	ble _0801A3A8
	add r0, sp, 0x4
	strb r2, [r0]
	b _0801A3AC
	.align 2, 0
_0801A3A0: .4byte gUnknown_02024A6A
_0801A3A4: .4byte gEnemyParty
_0801A3A8:
	add r0, sp, 0x4
	strb r1, [r0]
_0801A3AC:
	ldr r1, _0801A3EC @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x2
	strb r0, [r1, 0x1]
	strb r6, [r1, 0x2]
	lsrs r0, r6, 8
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r0, _0801A3F0 @ =gUnknown_081D9A91
	bl b_call_bc_move_exec
	mov r1, r10
	adds r1, 0x9
	lsls r1, 24
	lsrs r1, 24
	add r0, sp, 0x4
	str r0, [sp]
	movs r0, 0
	movs r2, 0
	movs r3, 0x1
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldr r0, _0801A3F4 @ =gUnknown_02024A60
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
	movs r1, 0x3
	str r1, [sp, 0xC]
	bl _0801AD62
	.align 2, 0
_0801A3EC: .4byte gUnknown_030041C0
_0801A3F0: .4byte gUnknown_081D9A91
_0801A3F4: .4byte gUnknown_02024A60
_0801A3F8:
	ldr r0, _0801A450 @ =gBattleMons
	movs r1, 0x58
	muls r1, r7
	adds r0, 0x18
	adds r1, r0
	movs r2, 0x6
	movs r3, 0x7
	mov r10, r3
_0801A408:
	movs r0, 0
	ldrsb r0, [r1, r0]
	cmp r0, 0x5
	bgt _0801A416
	strb r2, [r1]
	movs r4, 0x5
	str r4, [sp, 0xC]
_0801A416:
	adds r1, 0x1
	movs r5, 0x1
	negs r5, r5
	add r10, r5
	mov r0, r10
	cmp r0, 0
	bge _0801A408
	movs r1, 0x8
	mov r10, r1
	ldr r2, [sp, 0xC]
	cmp r2, 0
	bne _0801A432
	bl _0801B3CA
_0801A432:
	ldr r0, _0801A454 @ =0x02000000
	ldr r3, _0801A458 @ =0x00016003
	adds r0, r3
	strb r7, [r0]
	ldr r0, _0801A45C @ =gUnknown_02024C0B
	strb r7, [r0]
	ldr r1, _0801A460 @ =gUnknown_02024A60
	ldr r0, _0801A464 @ =gUnknown_02024C07
	strb r7, [r0]
	strb r7, [r1]
	ldr r0, _0801A468 @ =gUnknown_081D9A5E
	bl b_call_bc_move_exec
	bl _0801AD5A
	.align 2, 0
_0801A450: .4byte gBattleMons
_0801A454: .4byte 0x02000000
_0801A458: .4byte 0x00016003
_0801A45C: .4byte gUnknown_02024C0B
_0801A460: .4byte gUnknown_02024A60
_0801A464: .4byte gUnknown_02024C07
_0801A468: .4byte gUnknown_081D9A5E
_0801A46C:
	movs r0, 0x58
	muls r0, r7
	mov r4, r8
	adds r1, r0, r4
	ldrh r0, [r1, 0x28]
	ldrh r2, [r1, 0x2C]
	cmp r0, r2
	bcc _0801A480
	bl _0801AD5A
_0801A480:
	cmp r6, 0
	beq _0801A488
	bl _0801AD5A
_0801A488:
	ldr r3, _0801A4C4 @ =gUnknown_02024BEC
	ldrh r0, [r1, 0x2C]
	lsrs r0, 4
	str r0, [r3]
	cmp r0, 0
	bne _0801A498
	movs r0, 0x1
	str r0, [r3]
_0801A498:
	ldrh r2, [r1, 0x28]
	ldr r0, [r3]
	adds r0, r2, r0
	ldrh r1, [r1, 0x2C]
	cmp r0, r1
	ble _0801A4A8
	subs r0, r1, r2
	str r0, [r3]
_0801A4A8:
	ldr r0, [r3]
	negs r0, r0
	str r0, [r3]
	ldr r0, _0801A4C8 @ =gUnknown_081D9AA1
	bl b_call_bc_move_exec
	movs r3, 0x4
	str r3, [sp, 0xC]
	adds r0, r7, 0
	adds r1, r5, 0
	bl sub_81074F8
	bl _0801AD5A
	.align 2, 0
_0801A4C4: .4byte gUnknown_02024BEC
_0801A4C8: .4byte gUnknown_081D9AA1
_0801A4CC:
	movs r0, 0x58
	adds r4, r7, 0
	muls r4, r0
	str r4, [sp, 0x18]
	add r4, r8
	ldrh r0, [r4, 0x2C]
	ldrh r1, [r4, 0x28]
	lsrs r0, 1
	cmp r1, r0
	bls _0801A4E4
	bl _0801AD5A
_0801A4E4:
	cmp r6, 0
	beq _0801A4EC
	bl _0801AD5A
_0801A4EC:
	ldr r1, _0801A540 @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x8
	strb r0, [r1, 0x1]
	strb r6, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r5, _0801A544 @ =gUnknown_02024BEC
	ldrh r0, [r4, 0x2C]
	mov r1, r9
	bl __divsi3
	str r0, [r5]
	cmp r0, 0
	bne _0801A510
	movs r0, 0x1
	str r0, [r5]
_0801A510:
	ldrh r2, [r4, 0x28]
	ldr r0, [r5]
	adds r0, r2, r0
	ldrh r1, [r4, 0x2C]
	cmp r0, r1
	ble _0801A520
	subs r0, r1, r2
	str r0, [r5]
_0801A520:
	ldr r0, [r5]
	negs r0, r0
	str r0, [r5]
	mov r0, r8
	adds r0, 0x48
	ldr r5, [sp, 0x18]
	adds r0, r5, r0
	ldr r0, [r0]
	movs r1, 0
_0801A532:
	bl sub_8040A7C
	lsls r0, 24
	cmp r0, 0
	bge _0801A53E
	b _0801A738
_0801A53E:
	b _0801A74C
	.align 2, 0
_0801A540: .4byte gUnknown_030041C0
_0801A544: .4byte gUnknown_02024BEC
_0801A548:
	movs r0, 0x58
	adds r1, r7, 0
	muls r1, r0
	str r1, [sp, 0x1C]
	adds r5, r1, 0
	add r5, r8
	ldrh r0, [r5, 0x2C]
	ldrh r1, [r5, 0x28]
	lsrs r0, 1
	cmp r1, r0
	bls _0801A562
	bl _0801AD5A
_0801A562:
	cmp r6, 0
	beq _0801A56A
	bl _0801AD5A
_0801A56A:
	ldr r1, _0801A5BC @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x8
	strb r0, [r1, 0x1]
	movs r6, 0x1
	strb r6, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r4, _0801A5C0 @ =gUnknown_02024BEC
	ldrh r0, [r5, 0x2C]
	mov r1, r9
	bl __divsi3
	str r0, [r4]
	cmp r0, 0
	bne _0801A58E
	str r6, [r4]
_0801A58E:
	ldrh r2, [r5, 0x28]
	ldr r0, [r4]
	adds r0, r2, r0
	ldrh r1, [r5, 0x2C]
	cmp r0, r1
	ble _0801A59E
	subs r0, r1, r2
	str r0, [r4]
_0801A59E:
	ldr r0, [r4]
	negs r0, r0
	str r0, [r4]
	mov r0, r8
	adds r0, 0x48
	ldr r2, [sp, 0x1C]
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, 0x1
	bl sub_8040A7C
	lsls r0, 24
	cmp r0, 0
	blt _0801A6A4
	b _0801A6B8
	.align 2, 0
_0801A5BC: .4byte gUnknown_030041C0
_0801A5C0: .4byte gUnknown_02024BEC
_0801A5C4:
	movs r0, 0x58
	adds r4, r7, 0
	muls r4, r0
	str r4, [sp, 0x20]
	adds r5, r4, 0
	add r5, r8
	ldrh r0, [r5, 0x2C]
	ldrh r1, [r5, 0x28]
	lsrs r0, 1
	cmp r1, r0
	bls _0801A5DC
	b _0801AD5A
_0801A5DC:
	cmp r6, 0
	beq _0801A5E2
	b _0801AD5A
_0801A5E2:
	ldr r1, _0801A62C @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x8
	strb r0, [r1, 0x1]
	movs r0, 0x2
	strb r0, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r4, _0801A630 @ =gUnknown_02024BEC
	ldrh r0, [r5, 0x2C]
	mov r1, r9
	bl __divsi3
	str r0, [r4]
	cmp r0, 0
	bne _0801A608
	movs r0, 0x1
	str r0, [r4]
_0801A608:
	ldrh r2, [r5, 0x28]
	ldr r0, [r4]
	adds r0, r2, r0
	ldrh r1, [r5, 0x2C]
	cmp r0, r1
	ble _0801A618
	subs r0, r1, r2
	str r0, [r4]
_0801A618:
	ldr r0, [r4]
	negs r0, r0
	str r0, [r4]
	mov r0, r8
	adds r0, 0x48
	ldr r5, [sp, 0x20]
	adds r0, r5, r0
	ldr r0, [r0]
	movs r1, 0x2
	b _0801A532
	.align 2, 0
_0801A62C: .4byte gUnknown_030041C0
_0801A630: .4byte gUnknown_02024BEC
_0801A634:
	movs r0, 0x58
	adds r1, r7, 0
	muls r1, r0
	str r1, [sp, 0x24]
	adds r5, r1, 0
	add r5, r8
	ldrh r0, [r5, 0x2C]
	ldrh r1, [r5, 0x28]
	lsrs r0, 1
	cmp r1, r0
	bls _0801A64C
	b _0801AD5A
_0801A64C:
	cmp r6, 0
	beq _0801A652
	b _0801AD5A
_0801A652:
	ldr r1, _0801A6AC @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x8
	strb r0, [r1, 0x1]
	movs r0, 0x3
	strb r0, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r4, _0801A6B0 @ =gUnknown_02024BEC
	ldrh r0, [r5, 0x2C]
	mov r1, r9
	bl __divsi3
	str r0, [r4]
	cmp r0, 0
	bne _0801A678
	movs r0, 0x1
	str r0, [r4]
_0801A678:
	ldrh r2, [r5, 0x28]
	ldr r0, [r4]
	adds r0, r2, r0
	ldrh r1, [r5, 0x2C]
	cmp r0, r1
	ble _0801A688
	subs r0, r1, r2
	str r0, [r4]
_0801A688:
	ldr r0, [r4]
	negs r0, r0
	str r0, [r4]
	mov r0, r8
	adds r0, 0x48
	ldr r2, [sp, 0x24]
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, 0x3
	bl sub_8040A7C
	lsls r0, 24
	cmp r0, 0
	bge _0801A6B8
_0801A6A4:
	ldr r0, _0801A6B4 @ =gUnknown_081D9AD4
	bl b_call_bc_move_exec
	b _0801A6BE
	.align 2, 0
_0801A6AC: .4byte gUnknown_030041C0
_0801A6B0: .4byte gUnknown_02024BEC
_0801A6B4: .4byte gUnknown_081D9AD4
_0801A6B8:
	ldr r0, _0801A6C4 @ =gUnknown_081D9A74
	bl b_call_bc_move_exec
_0801A6BE:
	movs r3, 0x4
	str r3, [sp, 0xC]
	b _0801AD62
	.align 2, 0
_0801A6C4: .4byte gUnknown_081D9A74
_0801A6C8:
	movs r0, 0x58
	adds r4, r7, 0
	muls r4, r0
	str r4, [sp, 0x28]
	adds r5, r4, 0
	add r5, r8
	ldrh r0, [r5, 0x2C]
	ldrh r1, [r5, 0x28]
	lsrs r0, 1
	cmp r1, r0
	bls _0801A6E0
	b _0801AD5A
_0801A6E0:
	cmp r6, 0
	beq _0801A6E6
	b _0801AD5A
_0801A6E6:
	ldr r1, _0801A740 @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x8
	strb r0, [r1, 0x1]
	movs r0, 0x4
	strb r0, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r4, _0801A744 @ =gUnknown_02024BEC
	ldrh r0, [r5, 0x2C]
	mov r1, r9
	bl __divsi3
	str r0, [r4]
	cmp r0, 0
	bne _0801A70C
	movs r0, 0x1
	str r0, [r4]
_0801A70C:
	ldrh r2, [r5, 0x28]
	ldr r0, [r4]
	adds r0, r2, r0
	ldrh r1, [r5, 0x2C]
	cmp r0, r1
	ble _0801A71C
	subs r0, r1, r2
	str r0, [r4]
_0801A71C:
	ldr r0, [r4]
	negs r0, r0
	str r0, [r4]
	mov r0, r8
	adds r0, 0x48
	ldr r5, [sp, 0x28]
	adds r0, r5, r0
	ldr r0, [r0]
	movs r1, 0x4
	bl sub_8040A7C
	lsls r0, 24
	cmp r0, 0
	bge _0801A74C
_0801A738:
	ldr r0, _0801A748 @ =gUnknown_081D9AD4
	bl b_call_bc_move_exec
	b _0801A752
	.align 2, 0
_0801A740: .4byte gUnknown_030041C0
_0801A744: .4byte gUnknown_02024BEC
_0801A748: .4byte gUnknown_081D9AD4
_0801A74C:
	ldr r0, _0801A758 @ =gUnknown_081D9A74
	bl b_call_bc_move_exec
_0801A752:
	movs r0, 0x4
	str r0, [sp, 0xC]
	b _0801AD62
	.align 2, 0
_0801A758: .4byte gUnknown_081D9A74
_0801A75C:
	movs r0, 0x58
	muls r0, r7
	mov r1, r8
	adds r5, r0, r1
	ldrh r4, [r5, 0x28]
	ldrh r0, [r5, 0x2C]
	mov r1, r9
	bl __divsi3
	cmp r4, r0
	ble _0801A774
	b _0801AD5A
_0801A774:
	cmp r6, 0
	beq _0801A77A
	b _0801AD5A
_0801A77A:
	movs r0, 0x19
	ldrsb r0, [r5, r0]
	cmp r0, 0xB
	ble _0801A784
	b _0801AD5A
_0801A784:
	ldr r1, _0801A7BC @ =gUnknown_030041C0
	movs r2, 0xFD
	strb r2, [r1]
	movs r0, 0x5
	strb r0, [r1, 0x1]
	movs r0, 0x1
	strb r0, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r1, _0801A7C0 @ =gUnknown_03004290
	strb r2, [r1]
	strb r6, [r1, 0x1]
	movs r0, 0xD2
	strb r0, [r1, 0x2]
	strb r6, [r1, 0x3]
	subs r0, 0xD3
	strb r0, [r1, 0x4]
	ldr r0, _0801A7C4 @ =gUnknown_02024C0A
	strb r7, [r0]
	ldr r1, _0801A7C8 @ =0x02000000
	ldr r3, _0801A7CC @ =0x0001601e
	adds r2, r1, r3
	movs r0, 0x11
	strb r0, [r2]
	ldr r4, _0801A7D0 @ =0x000160a4
	adds r2, r1, r4
	movs r0, 0xF
	b _0801A94C
	.align 2, 0
_0801A7BC: .4byte gUnknown_030041C0
_0801A7C0: .4byte gUnknown_03004290
_0801A7C4: .4byte gUnknown_02024C0A
_0801A7C8: .4byte 0x02000000
_0801A7CC: .4byte 0x0001601e
_0801A7D0: .4byte 0x000160a4
_0801A7D4:
	movs r0, 0x58
	muls r0, r7
	mov r1, r8
	adds r5, r0, r1
	ldrh r4, [r5, 0x28]
	ldrh r0, [r5, 0x2C]
	mov r1, r9
	bl __divsi3
	cmp r4, r0
	ble _0801A7EC
	b _0801AD5A
_0801A7EC:
	cmp r6, 0
	beq _0801A7F2
	b _0801AD5A
_0801A7F2:
	movs r0, 0x1A
	ldrsb r0, [r5, r0]
	cmp r0, 0xB
	ble _0801A7FC
	b _0801AD5A
_0801A7FC:
	ldr r1, _0801A824 @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x5
	strb r0, [r1, 0x1]
	movs r0, 0x2
	strb r0, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r0, _0801A828 @ =gUnknown_02024C0A
	strb r7, [r0]
	ldr r1, _0801A82C @ =0x02000000
	ldr r3, _0801A830 @ =0x0001601e
	adds r2, r1, r3
	movs r0, 0x12
	strb r0, [r2]
	ldr r4, _0801A834 @ =0x000160a4
	adds r2, r1, r4
	movs r0, 0x10
	b _0801A94C
	.align 2, 0
_0801A824: .4byte gUnknown_030041C0
_0801A828: .4byte gUnknown_02024C0A
_0801A82C: .4byte 0x02000000
_0801A830: .4byte 0x0001601e
_0801A834: .4byte 0x000160a4
_0801A838:
	movs r0, 0x58
	muls r0, r7
	mov r1, r8
	adds r5, r0, r1
	ldrh r4, [r5, 0x28]
	ldrh r0, [r5, 0x2C]
	mov r1, r9
	bl __divsi3
	cmp r4, r0
	ble _0801A850
	b _0801AD5A
_0801A850:
	cmp r6, 0
	beq _0801A856
	b _0801AD5A
_0801A856:
	movs r0, 0x1B
	ldrsb r0, [r5, r0]
	cmp r0, 0xB
	ble _0801A860
	b _0801AD5A
_0801A860:
	ldr r1, _0801A888 @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x5
	strb r0, [r1, 0x1]
	movs r0, 0x3
	strb r0, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r0, _0801A88C @ =gUnknown_02024C0A
	strb r7, [r0]
	ldr r1, _0801A890 @ =0x02000000
	ldr r3, _0801A894 @ =0x0001601e
	adds r2, r1, r3
	movs r0, 0x13
	strb r0, [r2]
	ldr r4, _0801A898 @ =0x000160a4
	adds r2, r1, r4
	movs r0, 0x11
	b _0801A94C
	.align 2, 0
_0801A888: .4byte gUnknown_030041C0
_0801A88C: .4byte gUnknown_02024C0A
_0801A890: .4byte 0x02000000
_0801A894: .4byte 0x0001601e
_0801A898: .4byte 0x000160a4
_0801A89C:
	movs r0, 0x58
	muls r0, r7
	mov r1, r8
	adds r5, r0, r1
	ldrh r4, [r5, 0x28]
	ldrh r0, [r5, 0x2C]
	mov r1, r9
	bl __divsi3
	cmp r4, r0
	ble _0801A8B4
	b _0801AD5A
_0801A8B4:
	cmp r6, 0
	beq _0801A8BA
	b _0801AD5A
_0801A8BA:
	movs r0, 0x1C
	ldrsb r0, [r5, r0]
	cmp r0, 0xB
	ble _0801A8C4
	b _0801AD5A
_0801A8C4:
	ldr r1, _0801A8EC @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x5
	strb r0, [r1, 0x1]
	movs r0, 0x4
	strb r0, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r0, _0801A8F0 @ =gUnknown_02024C0A
	strb r7, [r0]
	ldr r1, _0801A8F4 @ =0x02000000
	ldr r3, _0801A8F8 @ =0x0001601e
	adds r2, r1, r3
	movs r0, 0x14
	strb r0, [r2]
	ldr r4, _0801A8FC @ =0x000160a4
	adds r2, r1, r4
	movs r0, 0x12
	b _0801A94C
	.align 2, 0
_0801A8EC: .4byte gUnknown_030041C0
_0801A8F0: .4byte gUnknown_02024C0A
_0801A8F4: .4byte 0x02000000
_0801A8F8: .4byte 0x0001601e
_0801A8FC: .4byte 0x000160a4
_0801A900:
	movs r0, 0x58
	muls r0, r7
	mov r1, r8
	adds r5, r0, r1
	ldrh r4, [r5, 0x28]
	ldrh r0, [r5, 0x2C]
	mov r1, r9
	bl __divsi3
	cmp r4, r0
	ble _0801A918
	b _0801AD5A
_0801A918:
	cmp r6, 0
	beq _0801A91E
	b _0801AD5A
_0801A91E:
	movs r0, 0x1D
	ldrsb r0, [r5, r0]
	cmp r0, 0xB
	ble _0801A928
	b _0801AD5A
_0801A928:
	ldr r1, _0801A960 @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x5
	strb r0, [r1, 0x1]
	strb r0, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r0, _0801A964 @ =gUnknown_02024C0A
	strb r7, [r0]
	ldr r1, _0801A968 @ =0x02000000
	ldr r3, _0801A96C @ =0x0001601e
	adds r2, r1, r3
	movs r0, 0x15
	strb r0, [r2]
	ldr r4, _0801A970 @ =0x000160a4
	adds r2, r1, r4
	movs r0, 0x13
_0801A94C:
	strb r0, [r2]
	ldr r5, _0801A974 @ =0x000160a5
	adds r1, r5
	strb r6, [r1]
	ldr r0, _0801A978 @ =gUnknown_081D9AFE
	bl b_call_bc_move_exec
	movs r0, 0x5
	str r0, [sp, 0xC]
	b _0801AD62
	.align 2, 0
_0801A960: .4byte gUnknown_030041C0
_0801A964: .4byte gUnknown_02024C0A
_0801A968: .4byte 0x02000000
_0801A96C: .4byte 0x0001601e
_0801A970: .4byte 0x000160a4
_0801A974: .4byte 0x000160a5
_0801A978: .4byte gUnknown_081D9AFE
_0801A97C:
	movs r0, 0x58
	adds r5, r7, 0
	muls r5, r0
	mov r1, r8
	adds r0, r5, r1
	ldrh r4, [r0, 0x28]
	ldrh r0, [r0, 0x2C]
	mov r1, r9
	bl __divsi3
	cmp r4, r0
	ble _0801A996
	b _0801AD5A
_0801A996:
	cmp r6, 0
	beq _0801A99C
	b _0801AD5A
_0801A99C:
	mov r0, r8
	adds r0, 0x50
	adds r1, r5, r0
	ldr r2, [r1]
	movs r3, 0x80
	lsls r3, 13
	adds r0, r2, 0
	ands r0, r3
	cmp r0, 0
	beq _0801A9B2
	b _0801AD5A
_0801A9B2:
	orrs r2, r3
	str r2, [r1]
	ldr r0, _0801A9C4 @ =gUnknown_081D9B19
	bl b_call_bc_move_exec
	movs r2, 0x2
	str r2, [sp, 0xC]
	b _0801AD62
	.align 2, 0
_0801A9C4: .4byte gUnknown_081D9B19
_0801A9C8:
	cmp r6, 0
	beq _0801A9CE
	b _0801AD5A
_0801A9CE:
	movs r0, 0x58
	adds r5, r7, 0
	muls r5, r0
	mov r3, r8
	adds r0, r5, r3
	ldrh r4, [r0, 0x28]
	ldrh r0, [r0, 0x2C]
	mov r1, r9
	bl __divsi3
	cmp r4, r0
	ble _0801A9E8
	b _0801AD5A
_0801A9E8:
	movs r4, 0
	mov r10, r4
	adds r0, r5, 0x1
	mov r1, r8
	adds r1, 0x18
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0xB
	ble _0801AA18
	mov r0, r8
	adds r0, 0x19
	adds r1, r5, r0
_0801AA04:
	adds r1, 0x1
	movs r5, 0x1
	add r10, r5
	mov r0, r10
	cmp r0, 0x4
	bgt _0801AA18
	movs r0, 0
	ldrsb r0, [r1, r0]
	cmp r0, 0xB
	bgt _0801AA04
_0801AA18:
	mov r1, r10
	cmp r1, 0x5
	bne _0801AA20
	b _0801AD5A
_0801AA20:
	movs r0, 0x58
	muls r0, r7
	adds r4, r0, 0x1
	ldr r5, _0801AAA4 @ =gUnknown_02024A98
_0801AA28:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x5
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	mov r10, r0
	adds r0, r4
	adds r0, r5
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0xC
	beq _0801AA28
	ldr r1, _0801AAA8 @ =gUnknown_030041C0
	movs r3, 0
	movs r2, 0xFD
	strb r2, [r1]
	movs r0, 0x5
	strb r0, [r1, 0x1]
	mov r0, r10
	adds r0, 0x1
	strb r0, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r0, _0801AAAC @ =gUnknown_03004290
	strb r2, [r0]
	strb r3, [r0, 0x1]
	movs r1, 0xD1
	strb r1, [r0, 0x2]
	strb r3, [r0, 0x3]
	strb r3, [r0, 0x4]
	movs r1, 0xD2
	strb r1, [r0, 0x5]
	strb r3, [r0, 0x6]
	subs r1, 0xD3
	strb r1, [r0, 0x7]
	ldr r0, _0801AAB0 @ =gUnknown_02024C0A
	strb r7, [r0]
	ldr r1, _0801AAB4 @ =0x02000000
	mov r2, r10
	adds r2, 0x21
	ldr r4, _0801AAB8 @ =0x0001601e
	adds r0, r1, r4
	strb r2, [r0]
	adds r2, 0x6
	ldr r5, _0801AABC @ =0x000160a4
	adds r0, r1, r5
	strb r2, [r0]
	ldr r0, _0801AAC0 @ =0x000160a5
	adds r1, r0
	strb r3, [r1]
	ldr r0, _0801AAC4 @ =gUnknown_081D9AFE
	bl b_call_bc_move_exec
	movs r1, 0x5
	str r1, [sp, 0xC]
	b _0801AD62
	.align 2, 0
_0801AAA4: .4byte gUnknown_02024A98
_0801AAA8: .4byte gUnknown_030041C0
_0801AAAC: .4byte gUnknown_03004290
_0801AAB0: .4byte gUnknown_02024C0A
_0801AAB4: .4byte 0x02000000
_0801AAB8: .4byte 0x0001601e
_0801AABC: .4byte 0x000160a4
_0801AAC0: .4byte 0x000160a5
_0801AAC4: .4byte gUnknown_081D9AFE
_0801AAC8:
	movs r0, 0x58
	adds r1, r7, 0
	muls r1, r0
	mov r0, r8
	adds r0, 0x4C
	adds r1, r0
	ldr r2, [r1]
	movs r0, 0x40
	ands r0, r2
	cmp r0, 0
	bne _0801AAE0
	b _0801AD5A
_0801AAE0:
	movs r0, 0x41
	negs r0, r0
	ands r2, r0
	str r2, [r1]
	ldr r0, _0801AAF4 @ =gUnknown_081D99B6
	bl b_call_bc_move_exec
	movs r2, 0x1
	str r2, [sp, 0xC]
	b _0801AD62
	.align 2, 0
_0801AAF4: .4byte gUnknown_081D99B6
_0801AAF8:
	movs r0, 0x58
	adds r1, r7, 0
	muls r1, r0
	mov r0, r8
	adds r0, 0x4C
	adds r1, r0
	ldr r2, [r1]
	movs r0, 0x88
	ands r0, r2
	cmp r0, 0
	bne _0801AB10
	b _0801AD5A
_0801AB10:
	ldr r0, _0801AB24 @ =0xfffff077
	ands r2, r0
	str r2, [r1]
	ldr r0, _0801AB28 @ =gUnknown_081D99CE
	bl b_call_bc_move_exec
	movs r3, 0x1
	str r3, [sp, 0xC]
	b _0801AD62
	.align 2, 0
_0801AB24: .4byte 0xfffff077
_0801AB28: .4byte gUnknown_081D99CE
_0801AB2C:
	movs r0, 0x58
	adds r1, r7, 0
	muls r1, r0
	mov r0, r8
	adds r0, 0x4C
	adds r1, r0
	ldr r2, [r1]
	movs r0, 0x10
	ands r0, r2
	cmp r0, 0
	bne _0801AB44
	b _0801AD5A
_0801AB44:
	movs r0, 0x11
	negs r0, r0
	ands r2, r0
	str r2, [r1]
	ldr r0, _0801AB58 @ =gUnknown_081D99E6
	bl b_call_bc_move_exec
	movs r4, 0x1
	str r4, [sp, 0xC]
	b _0801AD62
	.align 2, 0
_0801AB58: .4byte gUnknown_081D99E6
_0801AB5C:
	movs r0, 0x58
	adds r1, r7, 0
	muls r1, r0
	mov r0, r8
	adds r0, 0x4C
	adds r1, r0
	ldr r2, [r1]
	movs r0, 0x20
	ands r0, r2
	cmp r0, 0
	bne _0801AB74
	b _0801AD5A
_0801AB74:
	movs r0, 0x21
	negs r0, r0
	ands r2, r0
	str r2, [r1]
	ldr r0, _0801AB80 @ =gUnknown_081D99FE
	b _0801AD0E
	.align 2, 0
_0801AB80: .4byte gUnknown_081D99FE
_0801AB84:
	movs r0, 0x58
	adds r3, r7, 0
	muls r3, r0
	mov r0, r8
	adds r0, 0x4C
	adds r2, r3, r0
	ldr r1, [r2]
	movs r0, 0x7
	ands r0, r1
	cmp r0, 0
	bne _0801AB9C
	b _0801AD5A
_0801AB9C:
	movs r0, 0x8
	negs r0, r0
	ands r1, r0
	str r1, [r2]
	mov r1, r8
	adds r1, 0x50
	adds r1, r3, r1
	ldr r0, [r1]
	ldr r2, _0801ABC0 @ =0xf7ffffff
	ands r0, r2
	str r0, [r1]
	ldr r0, _0801ABC4 @ =gUnknown_081D9A16
	bl b_call_bc_move_exec
	movs r0, 0x1
	str r0, [sp, 0xC]
	b _0801AD62
	.align 2, 0
_0801ABC0: .4byte 0xf7ffffff
_0801ABC4: .4byte gUnknown_081D9A16
_0801ABC8:
	movs r0, 0x58
	adds r1, r7, 0
	muls r1, r0
	mov r0, r8
	adds r0, 0x50
	adds r1, r0
	ldr r2, [r1]
	movs r0, 0x7
	ands r0, r2
	cmp r0, 0
	bne _0801ABE0
	b _0801AD5A
_0801ABE0:
	movs r0, 0x8
	negs r0, r0
	ands r2, r0
	str r2, [r1]
	ldr r0, _0801ABF4 @ =gUnknown_081D9A2E
	bl b_call_bc_move_exec
	movs r1, 0x2
	str r1, [sp, 0xC]
	b _0801AD62
	.align 2, 0
_0801ABF4: .4byte gUnknown_081D9A2E
_0801ABF8:
	movs r0, 0x58
	adds r5, r7, 0
	muls r5, r0
	mov r0, r8
	adds r0, 0x4C
	adds r4, r5, r0
	ldr r2, [r4]
	ldrb r0, [r4]
	cmp r0, 0
	bne _0801AC1E
	mov r0, r8
	adds r0, 0x50
	adds r0, r5, r0
	ldr r0, [r0]
	movs r1, 0x7
	ands r0, r1
	cmp r0, 0
	bne _0801AC1E
	b _0801AD5A
_0801AC1E:
	movs r3, 0
	mov r10, r3
	movs r0, 0x88
	ands r2, r0
	cmp r2, 0
	beq _0801AC36
	ldr r0, _0801ACC4 @ =gUnknown_030041C0
	ldr r1, _0801ACC8 @ =gStatusConditionString_PoisonJpn
	bl StringCopy
	movs r0, 0x1
	mov r10, r0
_0801AC36:
	ldr r0, [r4]
	movs r1, 0x7
	mov r9, r1
	ands r0, r1
	mov r6, r8
	adds r6, 0x50
	cmp r0, 0
	beq _0801AC5C
	adds r2, r5, r6
	ldr r0, [r2]
	ldr r1, _0801ACCC @ =0xf7ffffff
	ands r0, r1
	str r0, [r2]
	ldr r0, _0801ACC4 @ =gUnknown_030041C0
	ldr r1, _0801ACD0 @ =gStatusConditionString_SleepJpn
	bl StringCopy
	movs r2, 0x1
	add r10, r2
_0801AC5C:
	ldr r0, [r4]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0801AC72
	ldr r0, _0801ACC4 @ =gUnknown_030041C0
	ldr r1, _0801ACD4 @ =gStatusConditionString_ParalysisJpn
	bl StringCopy
	movs r3, 0x1
	add r10, r3
_0801AC72:
	ldr r0, [r4]
	movs r1, 0x10
	ands r0, r1
	cmp r0, 0
	beq _0801AC88
	ldr r0, _0801ACC4 @ =gUnknown_030041C0
	ldr r1, _0801ACD8 @ =gStatusConditionString_BurnJpn
	bl StringCopy
	movs r0, 0x1
	add r10, r0
_0801AC88:
	ldr r0, [r4]
	movs r1, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0801AC9E
	ldr r0, _0801ACC4 @ =gUnknown_030041C0
	ldr r1, _0801ACDC @ =gStatusConditionString_IceJpn
	bl StringCopy
	movs r1, 0x1
	add r10, r1
_0801AC9E:
	adds r0, r5, r6
	ldr r0, [r0]
	mov r2, r9
	ands r0, r2
	cmp r0, 0
	beq _0801ACB6
	ldr r0, _0801ACC4 @ =gUnknown_030041C0
	ldr r1, _0801ACE0 @ =gStatusConditionString_ConfusionJpn
	bl StringCopy
	movs r3, 0x1
	add r10, r3
_0801ACB6:
	mov r4, r10
	cmp r4, 0x1
	bgt _0801ACE8
	ldr r1, _0801ACE4 @ =gUnknown_02024D1E
	movs r0, 0
	b _0801ACEC
	.align 2, 0
_0801ACC4: .4byte gUnknown_030041C0
_0801ACC8: .4byte gStatusConditionString_PoisonJpn
_0801ACCC: .4byte 0xf7ffffff
_0801ACD0: .4byte gStatusConditionString_SleepJpn
_0801ACD4: .4byte gStatusConditionString_ParalysisJpn
_0801ACD8: .4byte gStatusConditionString_BurnJpn
_0801ACDC: .4byte gStatusConditionString_IceJpn
_0801ACE0: .4byte gStatusConditionString_ConfusionJpn
_0801ACE4: .4byte gUnknown_02024D1E
_0801ACE8:
	ldr r1, _0801AD18 @ =gUnknown_02024D1E
	movs r0, 0x1
_0801ACEC:
	strb r0, [r1, 0x5]
	ldr r2, _0801AD1C @ =gBattleMons
	movs r0, 0x58
	adds r3, r7, 0
	muls r3, r0
	adds r0, r2, 0
	adds r0, 0x4C
	adds r0, r3, r0
	movs r1, 0
	str r1, [r0]
	adds r2, 0x50
	adds r3, r2
	ldr r0, [r3]
	subs r1, 0x8
	ands r0, r1
	str r0, [r3]
	ldr r0, _0801AD20 @ =gUnknown_081D9A44
_0801AD0E:
	bl b_call_bc_move_exec
	movs r5, 0x1
	str r5, [sp, 0xC]
	b _0801AD62
	.align 2, 0
_0801AD18: .4byte gUnknown_02024D1E
_0801AD1C: .4byte gBattleMons
_0801AD20: .4byte gUnknown_081D9A44
_0801AD24:
	movs r0, 0x58
	adds r1, r7, 0
	muls r1, r0
	mov r0, r8
	adds r0, 0x50
	adds r1, r0
	ldr r2, [r1]
	movs r0, 0xF0
	lsls r0, 12
	ands r0, r2
	cmp r0, 0
	beq _0801AD5A
	ldr r0, _0801AD84 @ =0xfff0ffff
	ands r2, r0
	str r2, [r1]
	ldr r0, _0801AD88 @ =gUnknown_030041C0
	ldr r1, _0801AD8C @ =gStatusConditionString_LoveJpn
	bl StringCopy
	ldr r0, _0801AD90 @ =gUnknown_081D9A44
	bl b_call_bc_move_exec
	ldr r1, _0801AD94 @ =gUnknown_02024D1E
	movs r0, 0
	strb r0, [r1, 0x5]
	movs r0, 0x2
	str r0, [sp, 0xC]
_0801AD5A:
	ldr r1, [sp, 0xC]
	cmp r1, 0
	bne _0801AD62
	b _0801B3CA
_0801AD62:
	ldr r0, _0801AD98 @ =0x02000000
	ldr r2, _0801AD9C @ =0x00016003
	adds r0, r2
	strb r7, [r0]
	ldr r0, _0801ADA0 @ =gUnknown_02024C0B
	strb r7, [r0]
	ldr r4, _0801ADA4 @ =gUnknown_02024A60
	ldr r0, _0801ADA8 @ =gUnknown_02024C07
	strb r7, [r0]
	strb r7, [r4]
	ldr r3, [sp, 0xC]
	cmp r3, 0x1
	beq _0801ADAC
	cmp r3, 0x3
	beq _0801ADB2
	b _0801B3CA
	.align 2, 0
_0801AD84: .4byte 0xfff0ffff
_0801AD88: .4byte gUnknown_030041C0
_0801AD8C: .4byte gStatusConditionString_LoveJpn
_0801AD90: .4byte gUnknown_081D9A44
_0801AD94: .4byte gUnknown_02024D1E
_0801AD98: .4byte 0x02000000
_0801AD9C: .4byte 0x00016003
_0801ADA0: .4byte gUnknown_02024C0B
_0801ADA4: .4byte gUnknown_02024A60
_0801ADA8: .4byte gUnknown_02024C07
_0801ADAC:
	movs r0, 0x58
	muls r0, r7
	b _0801B224
_0801ADB2:
	ldr r4, _0801AE00 @ =gBattleMons
	movs r0, 0x58
	adds r3, r7, 0
	muls r3, r0
	adds r0, r4, 0
	adds r0, 0x50
	adds r0, r3, r0
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 14
	ands r0, r1
	cmp r0, 0
	beq _0801ADCE
	b _0801B3CA
_0801ADCE:
	ldr r1, _0801AE04 @ =gUnknown_02024CA8
	lsls r0, r7, 3
	subs r0, r7
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x18]
	lsrs r1, 4
	ldr r2, _0801AE08 @ =gBitTable
	mov r5, r10
	lsls r0, r5, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _0801ADEE
	b _0801B3CA
_0801ADEE:
	adds r1, r5, r3
	adds r0, r4, 0
	adds r0, 0x24
	adds r1, r0
	add r0, sp, 0x4
	ldrb r0, [r0]
	strb r0, [r1]
	b _0801B3CA
	.align 2, 0
_0801AE00: .4byte gBattleMons
_0801AE04: .4byte gUnknown_02024CA8
_0801AE08: .4byte gBitTable
_0801AE0C:
	movs r7, 0
	ldr r0, _0801AE3C @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r7, r0
	bcc _0801AE18
	b _0801B3CA
_0801AE18:
	ldr r4, _0801AE40 @ =gUnknown_02024C04
	ldr r1, _0801AE44 @ =gBattleMons
	movs r0, 0x58
	muls r0, r7
	adds r0, r1
	ldrh r0, [r0, 0x2E]
	strh r0, [r4]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0xAF
	bne _0801AE4C
	ldr r1, _0801AE48 @ =gEnigmaBerries
	lsls r0, r7, 3
	subs r0, r7
	lsls r0, 2
	adds r0, r1
	ldrb r5, [r0, 0x7]
	b _0801AE5C
	.align 2, 0
_0801AE3C: .4byte gUnknown_02024A68
_0801AE40: .4byte gUnknown_02024C04
_0801AE44: .4byte gBattleMons
_0801AE48: .4byte gEnigmaBerries
_0801AE4C:
	ldrh r0, [r4]
	bl ItemId_GetHoldEffect
	lsls r0, 24
	lsrs r5, r0, 24
	ldrh r0, [r4]
	bl ItemId_GetHoldEffectParam
_0801AE5C:
	subs r0, r5, 0x2
	cmp r0, 0x1A
	bls _0801AE64
	b _0801B208
_0801AE64:
	lsls r0, 2
	ldr r1, _0801AE70 @ =_0801AE74
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801AE70: .4byte _0801AE74
	.align 2, 0
_0801AE74:
	.4byte _0801AEE0
	.4byte _0801AFC8
	.4byte _0801AF1C
	.4byte _0801AF58
	.4byte _0801AF94
	.4byte _0801B208
	.4byte _0801B018
	.4byte _0801B0AC
	.4byte _0801B208
	.4byte _0801B208
	.4byte _0801B208
	.4byte _0801B208
	.4byte _0801B208
	.4byte _0801B208
	.4byte _0801B208
	.4byte _0801B208
	.4byte _0801B208
	.4byte _0801B208
	.4byte _0801B208
	.4byte _0801B208
	.4byte _0801B208
	.4byte _0801B1A0
	.4byte _0801B208
	.4byte _0801B208
	.4byte _0801B208
	.4byte _0801B208
	.4byte _0801B054
_0801AEE0:
	ldr r1, _0801AF10 @ =gBattleMons
	movs r0, 0x58
	muls r0, r7
	adds r1, 0x4C
	adds r2, r0, r1
	ldr r1, [r2]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	bne _0801AEF6
	b _0801B208
_0801AEF6:
	movs r0, 0x41
	negs r0, r0
	ands r1, r0
	str r1, [r2]
	bl b_movescr_stack_push_cursor
	ldr r1, _0801AF14 @ =gUnknown_02024C10
	ldr r0, _0801AF18 @ =gUnknown_081D99BC
	str r0, [r1]
	movs r0, 0x1
	str r0, [sp, 0xC]
	b _0801B20E
	.align 2, 0
_0801AF10: .4byte gBattleMons
_0801AF14: .4byte gUnknown_02024C10
_0801AF18: .4byte gUnknown_081D99BC
_0801AF1C:
	ldr r1, _0801AF48 @ =gBattleMons
	movs r0, 0x58
	muls r0, r7
	adds r1, 0x4C
	adds r2, r0, r1
	ldr r1, [r2]
	movs r0, 0x88
	ands r0, r1
	cmp r0, 0
	bne _0801AF32
	b _0801B208
_0801AF32:
	ldr r0, _0801AF4C @ =0xfffff077
	ands r1, r0
	str r1, [r2]
	bl b_movescr_stack_push_cursor
	ldr r1, _0801AF50 @ =gUnknown_02024C10
	ldr r0, _0801AF54 @ =gUnknown_081D99D4
	str r0, [r1]
	movs r1, 0x1
	str r1, [sp, 0xC]
	b _0801B20E
	.align 2, 0
_0801AF48: .4byte gBattleMons
_0801AF4C: .4byte 0xfffff077
_0801AF50: .4byte gUnknown_02024C10
_0801AF54: .4byte gUnknown_081D99D4
_0801AF58:
	ldr r1, _0801AF88 @ =gBattleMons
	movs r0, 0x58
	muls r0, r7
	adds r1, 0x4C
	adds r2, r0, r1
	ldr r1, [r2]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	bne _0801AF6E
	b _0801B208
_0801AF6E:
	movs r0, 0x11
	negs r0, r0
	ands r1, r0
	str r1, [r2]
	bl b_movescr_stack_push_cursor
	ldr r1, _0801AF8C @ =gUnknown_02024C10
	ldr r0, _0801AF90 @ =gUnknown_081D99EC
	str r0, [r1]
	movs r2, 0x1
	str r2, [sp, 0xC]
	b _0801B20E
	.align 2, 0
_0801AF88: .4byte gBattleMons
_0801AF8C: .4byte gUnknown_02024C10
_0801AF90: .4byte gUnknown_081D99EC
_0801AF94:
	ldr r1, _0801AFBC @ =gBattleMons
	movs r0, 0x58
	muls r0, r7
	adds r1, 0x4C
	adds r2, r0, r1
	ldr r1, [r2]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _0801AFAA
	b _0801B208
_0801AFAA:
	movs r0, 0x21
	negs r0, r0
	ands r1, r0
	str r1, [r2]
	bl b_movescr_stack_push_cursor
	ldr r1, _0801AFC0 @ =gUnknown_02024C10
	ldr r0, _0801AFC4 @ =gUnknown_081D9A04
	b _0801B168
	.align 2, 0
_0801AFBC: .4byte gBattleMons
_0801AFC0: .4byte gUnknown_02024C10
_0801AFC4: .4byte gUnknown_081D9A04
_0801AFC8:
	ldr r2, _0801B008 @ =gBattleMons
	movs r0, 0x58
	adds r4, r7, 0
	muls r4, r0
	adds r0, r2, 0
	adds r0, 0x4C
	adds r3, r4, r0
	ldr r1, [r3]
	movs r0, 0x7
	ands r0, r1
	cmp r0, 0
	bne _0801AFE2
	b _0801B208
_0801AFE2:
	movs r0, 0x8
	negs r0, r0
	ands r1, r0
	str r1, [r3]
	adds r2, 0x50
	adds r2, r4, r2
	ldr r0, [r2]
	ldr r1, _0801B00C @ =0xf7ffffff
	ands r0, r1
	str r0, [r2]
	bl b_movescr_stack_push_cursor
	ldr r1, _0801B010 @ =gUnknown_02024C10
	ldr r0, _0801B014 @ =gUnknown_081D9A1C
	str r0, [r1]
	movs r4, 0x1
	str r4, [sp, 0xC]
	b _0801B20E
	.align 2, 0
_0801B008: .4byte gBattleMons
_0801B00C: .4byte 0xf7ffffff
_0801B010: .4byte gUnknown_02024C10
_0801B014: .4byte gUnknown_081D9A1C
_0801B018:
	ldr r1, _0801B048 @ =gBattleMons
	movs r0, 0x58
	muls r0, r7
	adds r1, 0x50
	adds r2, r0, r1
	ldr r1, [r2]
	movs r0, 0x7
	ands r0, r1
	cmp r0, 0
	bne _0801B02E
	b _0801B208
_0801B02E:
	movs r0, 0x8
	negs r0, r0
	ands r1, r0
	str r1, [r2]
	bl b_movescr_stack_push_cursor
	ldr r1, _0801B04C @ =gUnknown_02024C10
	ldr r0, _0801B050 @ =gUnknown_081D9A34
	str r0, [r1]
	movs r5, 0x2
	str r5, [sp, 0xC]
	b _0801B20E
	.align 2, 0
_0801B048: .4byte gBattleMons
_0801B04C: .4byte gUnknown_02024C10
_0801B050: .4byte gUnknown_081D9A34
_0801B054:
	ldr r1, _0801B090 @ =gBattleMons
	movs r0, 0x58
	muls r0, r7
	adds r1, 0x50
	adds r2, r0, r1
	ldr r1, [r2]
	movs r0, 0xF0
	lsls r0, 12
	ands r0, r1
	cmp r0, 0
	bne _0801B06C
	b _0801B208
_0801B06C:
	ldr r0, _0801B094 @ =0xfff0ffff
	ands r1, r0
	str r1, [r2]
	ldr r0, _0801B098 @ =gUnknown_030041C0
	ldr r1, _0801B09C @ =gStatusConditionString_LoveJpn
	bl StringCopy
	bl b_movescr_stack_push_cursor
	ldr r1, _0801B0A0 @ =gUnknown_02024D1E
	movs r0, 0
	strb r0, [r1, 0x5]
	ldr r1, _0801B0A4 @ =gUnknown_02024C10
	ldr r0, _0801B0A8 @ =gUnknown_081D9A4A
	str r0, [r1]
	movs r0, 0x2
	str r0, [sp, 0xC]
	b _0801B20E
	.align 2, 0
_0801B090: .4byte gBattleMons
_0801B094: .4byte 0xfff0ffff
_0801B098: .4byte gUnknown_030041C0
_0801B09C: .4byte gStatusConditionString_LoveJpn
_0801B0A0: .4byte gUnknown_02024D1E
_0801B0A4: .4byte gUnknown_02024C10
_0801B0A8: .4byte gUnknown_081D9A4A
_0801B0AC:
	ldr r4, _0801B170 @ =gBattleMons
	movs r0, 0x58
	adds r5, r7, 0
	muls r5, r0
	adds r0, r4, 0
	adds r0, 0x4C
	adds r6, r5, r0
	ldr r2, [r6]
	ldrb r0, [r6]
	cmp r0, 0
	bne _0801B0D4
	adds r0, r4, 0
	adds r0, 0x50
	adds r0, r5, r0
	ldr r0, [r0]
	movs r1, 0x7
	ands r0, r1
	cmp r0, 0
	bne _0801B0D4
	b _0801B208
_0801B0D4:
	movs r0, 0x88
	ands r2, r0
	cmp r2, 0
	beq _0801B0E4
	ldr r0, _0801B174 @ =gUnknown_030041C0
	ldr r1, _0801B178 @ =gStatusConditionString_PoisonJpn
	bl StringCopy
_0801B0E4:
	ldr r0, [r6]
	movs r1, 0x7
	mov r8, r1
	ands r0, r1
	adds r4, 0x50
	cmp r0, 0
	beq _0801B104
	adds r2, r5, r4
	ldr r0, [r2]
	ldr r1, _0801B17C @ =0xf7ffffff
	ands r0, r1
	str r0, [r2]
	ldr r0, _0801B174 @ =gUnknown_030041C0
	ldr r1, _0801B180 @ =gStatusConditionString_SleepJpn
	bl StringCopy
_0801B104:
	ldr r0, [r6]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0801B116
	ldr r0, _0801B174 @ =gUnknown_030041C0
	ldr r1, _0801B184 @ =gStatusConditionString_ParalysisJpn
	bl StringCopy
_0801B116:
	ldr r0, [r6]
	movs r1, 0x10
	ands r0, r1
	cmp r0, 0
	beq _0801B128
	ldr r0, _0801B174 @ =gUnknown_030041C0
	ldr r1, _0801B188 @ =gStatusConditionString_BurnJpn
	bl StringCopy
_0801B128:
	ldr r0, [r6]
	movs r1, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0801B13A
	ldr r0, _0801B174 @ =gUnknown_030041C0
	ldr r1, _0801B18C @ =gStatusConditionString_IceJpn
	bl StringCopy
_0801B13A:
	adds r5, r4
	ldr r0, [r5]
	mov r2, r8
	ands r0, r2
	cmp r0, 0
	beq _0801B14E
	ldr r0, _0801B174 @ =gUnknown_030041C0
	ldr r1, _0801B190 @ =gStatusConditionString_ConfusionJpn
	bl StringCopy
_0801B14E:
	movs r4, 0
	str r4, [r6]
	ldr r0, [r5]
	movs r1, 0x8
	negs r1, r1
	ands r0, r1
	str r0, [r5]
	bl b_movescr_stack_push_cursor
	ldr r0, _0801B194 @ =gUnknown_02024D1E
	strb r4, [r0, 0x5]
	ldr r1, _0801B198 @ =gUnknown_02024C10
	ldr r0, _0801B19C @ =gUnknown_081D9A4A
_0801B168:
	str r0, [r1]
	movs r3, 0x1
	str r3, [sp, 0xC]
	b _0801B20E
	.align 2, 0
_0801B170: .4byte gBattleMons
_0801B174: .4byte gUnknown_030041C0
_0801B178: .4byte gStatusConditionString_PoisonJpn
_0801B17C: .4byte 0xf7ffffff
_0801B180: .4byte gStatusConditionString_SleepJpn
_0801B184: .4byte gStatusConditionString_ParalysisJpn
_0801B188: .4byte gStatusConditionString_BurnJpn
_0801B18C: .4byte gStatusConditionString_IceJpn
_0801B190: .4byte gStatusConditionString_ConfusionJpn
_0801B194: .4byte gUnknown_02024D1E
_0801B198: .4byte gUnknown_02024C10
_0801B19C: .4byte gUnknown_081D9A4A
_0801B1A0:
	ldr r4, _0801B1F0 @ =gBattleMons
	mov r8, r4
	movs r0, 0x58
	adds r1, r7, 0
	muls r1, r0
	mov r0, r8
	adds r0, 0x18
	adds r1, r0
	movs r2, 0x6
	movs r5, 0x7
	mov r10, r5
_0801B1B6:
	movs r0, 0
	ldrsb r0, [r1, r0]
	cmp r0, 0x5
	bgt _0801B1C4
	strb r2, [r1]
	movs r0, 0x5
	str r0, [sp, 0xC]
_0801B1C4:
	adds r1, 0x1
	movs r3, 0x1
	negs r3, r3
	add r10, r3
	mov r4, r10
	cmp r4, 0
	bge _0801B1B6
	ldr r5, [sp, 0xC]
	cmp r5, 0
	beq _0801B254
	ldr r0, _0801B1F4 @ =0x02000000
	ldr r1, _0801B1F8 @ =0x00016003
	adds r0, r1
	strb r7, [r0]
	ldr r0, _0801B1FC @ =gUnknown_02024C0B
	strb r7, [r0]
	bl b_movescr_stack_push_cursor
	ldr r1, _0801B200 @ =gUnknown_02024C10
	ldr r0, _0801B204 @ =gUnknown_081D9A64
	str r0, [r1]
	b _0801B3CA
	.align 2, 0
_0801B1F0: .4byte gBattleMons
_0801B1F4: .4byte 0x02000000
_0801B1F8: .4byte 0x00016003
_0801B1FC: .4byte gUnknown_02024C0B
_0801B200: .4byte gUnknown_02024C10
_0801B204: .4byte gUnknown_081D9A64
_0801B208:
	ldr r2, [sp, 0xC]
	cmp r2, 0
	beq _0801B254
_0801B20E:
	ldr r0, _0801B240 @ =0x02000000
	ldr r3, _0801B244 @ =0x00016003
	adds r0, r3
	strb r7, [r0]
	ldr r0, _0801B248 @ =gUnknown_02024C0B
	strb r7, [r0]
	ldr r4, _0801B24C @ =gUnknown_02024A60
	strb r7, [r4]
	ldrb r1, [r4]
	movs r0, 0x58
	muls r0, r1
_0801B224:
	ldr r1, _0801B250 @ =gUnknown_02024ACC
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r2, 0
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	b _0801B3CA
	.align 2, 0
_0801B240: .4byte 0x02000000
_0801B244: .4byte 0x00016003
_0801B248: .4byte gUnknown_02024C0B
_0801B24C: .4byte gUnknown_02024A60
_0801B250: .4byte gUnknown_02024ACC
_0801B254:
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r0, _0801B268 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r7, r0
	bcs _0801B264
	b _0801AE18
_0801B264:
	b _0801B3CA
	.align 2, 0
_0801B268: .4byte gUnknown_02024A68
_0801B26C:
	ldr r7, _0801B284 @ =gUnknown_02024BEC
	ldr r0, [r7]
	cmp r0, 0
	bne _0801B276
	b _0801B3CA
_0801B276:
	mov r4, r8
	cmp r4, 0x1E
	beq _0801B288
	cmp r4, 0x3E
	beq _0801B330
	b _0801B3CA
	.align 2, 0
_0801B284: .4byte gUnknown_02024BEC
_0801B288:
	ldr r0, _0801B314 @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _0801B296
	b _0801B3CA
_0801B296:
	ldr r2, _0801B318 @ =gUnknown_02024D68
	ldr r4, _0801B31C @ =gUnknown_02024C08
	ldrb r1, [r4]
	lsls r0, r1, 2
	adds r0, r1
	lsls r1, r0, 2
	adds r0, r2, 0
	adds r0, 0x8
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _0801B2BC
	adds r0, r2, 0
	adds r0, 0xC
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _0801B2BC
	b _0801B3CA
_0801B2BC:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, r9
	bcs _0801B3CA
	ldr r2, _0801B320 @ =gBattleMoves
	ldr r0, _0801B324 @ =gUnknown_02024BE6
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x8]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0801B3CA
	ldr r2, _0801B328 @ =gBattleMons
	ldrb r1, [r4]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _0801B3CA
	ldr r1, _0801B32C @ =gUnknown_02024D1E
	movs r0, 0x8
	strb r0, [r1, 0x3]
	bl b_movescr_stack_push_cursor
	movs r0, 0
	movs r1, 0
	bl sub_801E3EC
	bl b_movescr_stack_pop_cursor
	b _0801B3CA
	.align 2, 0
_0801B314: .4byte gUnknown_02024C68
_0801B318: .4byte gUnknown_02024D68
_0801B31C: .4byte gUnknown_02024C08
_0801B320: .4byte gBattleMoves
_0801B324: .4byte gUnknown_02024BE6
_0801B328: .4byte gBattleMons
_0801B32C: .4byte gUnknown_02024D1E
_0801B330:
	ldr r0, _0801B3DC @ =gUnknown_02024C68
	ldrb r0, [r0]
	movs r4, 0x29
	ands r4, r0
	cmp r4, 0
	bne _0801B3CA
	ldr r1, _0801B3E0 @ =gUnknown_02024D68
	ldr r5, _0801B3E4 @ =gUnknown_02024C08
	ldrb r2, [r5]
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 2
	adds r6, r1, 0x4
	adds r0, r6
	ldr r1, [r0]
	cmp r1, 0
	beq _0801B3CA
	ldr r0, _0801B3E8 @ =0x0000ffff
	cmp r1, r0
	beq _0801B3CA
	ldr r0, _0801B3EC @ =gUnknown_02024C07
	ldrb r3, [r0]
	cmp r3, r2
	beq _0801B3CA
	ldr r2, _0801B3F0 @ =gBattleMons
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r1, [r0, 0x28]
	ldrh r0, [r0, 0x2C]
	cmp r1, r0
	beq _0801B3CA
	cmp r1, 0
	beq _0801B3CA
	ldr r0, _0801B3F4 @ =gUnknown_02024C04
	mov r1, sp
	ldrh r1, [r1, 0x14]
	strh r1, [r0]
	ldr r0, _0801B3F8 @ =gUnknown_02024C0B
	strb r3, [r0]
	ldr r0, _0801B3FC @ =0x02000000
	ldr r2, _0801B400 @ =0x00016003
	adds r0, r2
	strb r3, [r0]
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	ldr r1, [sp, 0x10]
	bl __divsi3
	negs r0, r0
	str r0, [r7]
	ldrb r1, [r5]
	cmp r0, 0
	bne _0801B3AC
	movs r0, 0x1
	negs r0, r0
	str r0, [r7]
_0801B3AC:
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	str r4, [r0]
	bl b_movescr_stack_push_cursor
	ldr r1, _0801B404 @ =gUnknown_02024C10
	ldr r0, _0801B408 @ =gUnknown_081D9AA7
	str r0, [r1]
	ldr r0, [sp, 0xC]
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0xC]
_0801B3CA:
	ldr r0, [sp, 0xC]
	add sp, 0x2C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801B3DC: .4byte gUnknown_02024C68
_0801B3E0: .4byte gUnknown_02024D68
_0801B3E4: .4byte gUnknown_02024C08
_0801B3E8: .4byte 0x0000ffff
_0801B3EC: .4byte gUnknown_02024C07
_0801B3F0: .4byte gBattleMons
_0801B3F4: .4byte gUnknown_02024C04
_0801B3F8: .4byte gUnknown_02024C0B
_0801B3FC: .4byte 0x02000000
_0801B400: .4byte 0x00016003
_0801B404: .4byte gUnknown_02024C10
_0801B408: .4byte gUnknown_081D9AA7
	thumb_func_end sub_801A02C

	thumb_func_start unref_sub_801B40C
unref_sub_801B40C: @ 801B40C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	movs r0, 0
	str r0, [sp]
	ldr r0, _0801B464 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _0801B42A
	b _0801B56E
_0801B42A:
	movs r1, 0x1
	mov r9, r1
_0801B42E:
	movs r5, 0
	ldr r4, _0801B468 @ =gUnknown_081FC1D0
	ldr r2, [sp]
	adds r2, 0x1
	str r2, [sp, 0x4]
_0801B438:
	ldr r0, _0801B46C @ =gUnknown_02024C0C
	ldrb r2, [r0]
	ldr r3, _0801B470 @ =gBitTable
	lsls r0, r5, 2
	adds r0, r3
	ldr r0, [r0]
	ands r0, r2
	cmp r0, 0
	bne _0801B45A
	adds r0, r5, 0x2
	lsls r1, r0, 2
	adds r1, r3
	ldr r1, [r1]
	ands r2, r1
	adds r7, r0, 0
	cmp r2, 0
	beq _0801B474
_0801B45A:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	b _0801B556
	.align 2, 0
_0801B464: .4byte gUnknown_020239F8
_0801B468: .4byte gUnknown_081FC1D0
_0801B46C: .4byte gUnknown_02024C0C
_0801B470: .4byte gBitTable
_0801B474:
	ldr r0, _0801B580 @ =gUnknown_081FC1D0
	ldr r2, [sp]
	lsls r1, r2, 3
	adds r6, r1, r0
	ldr r4, _0801B584 @ =gUnknown_02024C60
	lsls r0, r5, 1
	adds r3, r0, r4
	ldrh r2, [r6]
	mov r8, r1
	mov r10, r0
	ldrh r3, [r3]
	cmp r2, r3
	bne _0801B4E4
	lsls r0, r7, 1
	adds r0, r4
	ldrh r1, [r6, 0x2]
	ldrh r0, [r0]
	cmp r1, r0
	bne _0801B4E4
	adds r0, r5, 0
	bl battle_get_per_side_status
	mov r2, r9
	ands r2, r0
	lsls r1, r2, 1
	adds r1, r2
	lsls r1, 2
	ldr r0, _0801B588 @ =gUnknown_02024C80
	adds r1, r0
	lsls r0, r7, 4
	orrs r0, r5
	strb r0, [r1, 0x3]
	adds r0, r5, 0
	bl battle_get_per_side_status
	mov r1, r9
	ands r1, r0
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	ldr r1, _0801B588 @ =gUnknown_02024C80
	adds r0, r1
	ldrh r1, [r6, 0x4]
	strh r1, [r0, 0x4]
	adds r0, r5, 0
	bl battle_get_per_side_status
	mov r1, r9
	ands r1, r0
	lsls r1, 1
	ldr r2, _0801B58C @ =gUnknown_02024C7A
	adds r1, r2
	ldrh r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strh r0, [r1]
_0801B4E4:
	ldr r0, _0801B580 @ =gUnknown_081FC1D0
	mov r1, r8
	adds r4, r1, r0
	ldr r2, _0801B584 @ =gUnknown_02024C60
	lsls r0, r7, 1
	adds r0, r2
	ldrh r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	bne _0801B54E
	mov r0, r10
	adds r1, r0, r2
	ldrh r0, [r4, 0x2]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0801B54E
	adds r0, r5, 0
	bl battle_get_per_side_status
	mov r2, r9
	ands r2, r0
	lsls r1, r2, 1
	adds r1, r2
	lsls r1, 2
	ldr r2, _0801B588 @ =gUnknown_02024C80
	adds r1, r2
	lsls r0, r5, 4
	orrs r0, r7
	strb r0, [r1, 0x3]
	adds r0, r5, 0
	bl battle_get_per_side_status
	mov r1, r9
	ands r1, r0
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	ldr r1, _0801B588 @ =gUnknown_02024C80
	adds r0, r1
	ldrh r1, [r4, 0x4]
	strh r1, [r0, 0x4]
	adds r0, r5, 0
	bl battle_get_per_side_status
	mov r1, r9
	ands r1, r0
	lsls r1, 1
	ldr r2, _0801B58C @ =gUnknown_02024C7A
	adds r1, r2
	ldrh r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strh r0, [r1]
_0801B54E:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r4, _0801B580 @ =gUnknown_081FC1D0
_0801B556:
	cmp r5, 0x1
	bhi _0801B55C
	b _0801B438
_0801B55C:
	ldr r0, [sp, 0x4]
	str r0, [sp]
	lsls r0, 3
	adds r0, r4
	ldrh r1, [r0]
	ldr r0, _0801B590 @ =0x0000ffff
	cmp r1, r0
	beq _0801B56E
	b _0801B42E
_0801B56E:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B580: .4byte gUnknown_081FC1D0
_0801B584: .4byte gUnknown_02024C60
_0801B588: .4byte gUnknown_02024C80
_0801B58C: .4byte gUnknown_02024C7A
_0801B590: .4byte 0x0000ffff
	thumb_func_end unref_sub_801B40C

	thumb_func_start sub_801B594
sub_801B594: @ 801B594
	push {lr}
	ldr r0, _0801B5B4 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _0801B5B0
	ldr r1, _0801B5B8 @ =gUnknown_081FA73C
	ldr r0, _0801B5BC @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
_0801B5B0:
	pop {r0}
	bx r0
	.align 2, 0
_0801B5B4: .4byte gUnknown_02024A64
_0801B5B8: .4byte gUnknown_081FA73C
_0801B5BC: .4byte gUnknown_02024C10
	thumb_func_end sub_801B594

	thumb_func_start sub_801B5C0
sub_801B5C0: @ 801B5C0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	lsls r0, 16
	lsrs r7, r0, 16
	lsls r1, 24
	lsrs r0, r1, 24
	movs r5, 0
	cmp r0, 0
	beq _0801B5DE
	subs r0, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	b _0801B5EA
_0801B5DE:
	ldr r1, _0801B5FC @ =gBattleMoves
	lsls r0, r7, 1
	adds r0, r7
	lsls r0, 2
	adds r0, r1
	ldrb r6, [r0, 0x6]
_0801B5EA:
	cmp r6, 0x40
	bls _0801B5F0
	b _0801B900
_0801B5F0:
	lsls r0, r6, 2
	ldr r1, _0801B600 @ =_0801B604
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801B5FC: .4byte gBattleMoves
_0801B600: .4byte _0801B604
	.align 2, 0
_0801B604:
	.4byte _0801B708
	.4byte _0801B808
	.4byte _0801B8FC
	.4byte _0801B900
	.4byte _0801B820
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B808
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B8FC
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B808
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B900
	.4byte _0801B808
_0801B708:
	ldr r0, _0801B7E8 @ =gUnknown_02024C07
	ldrb r0, [r0]
	bl battle_side_get_owner
	movs r1, 0x1
	eors r0, r1
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, _0801B7EC @ =gUnknown_02024C80
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 2
	adds r2, r0, r1
	ldrb r0, [r2, 0x8]
	cmp r0, 0
	beq _0801B73A
	ldr r1, _0801B7F0 @ =gBattleMons
	ldrb r4, [r2, 0x9]
	movs r0, 0x58
	muls r0, r4
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _0801B73A
	b _0801B850
_0801B73A:
	ldr r0, _0801B7E8 @ =gUnknown_02024C07
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r0, r7, 1
	mov r8, r0
_0801B74A:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	ldr r1, _0801B7F4 @ =gUnknown_02024A68
	ldrb r1, [r1]
	bl __modsi3
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r6, _0801B7E8 @ =gUnknown_02024C07
	ldrb r2, [r6]
	cmp r5, r2
	beq _0801B74A
	adds r0, r5, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r4, r0
	beq _0801B74A
	ldr r0, _0801B7F8 @ =gUnknown_02024C0C
	ldrb r2, [r0]
	ldr r1, _0801B7FC @ =gBitTable
	lsls r0, r5, 2
	adds r0, r1
	ldr r0, [r0]
	ands r2, r0
	cmp r2, 0
	bne _0801B74A
	ldr r0, _0801B800 @ =gBattleMoves
	mov r3, r8
	adds r1, r3, r7
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x2]
	cmp r0, 0xD
	beq _0801B798
	b _0801B900
_0801B798:
	ldrb r1, [r6]
	str r2, [sp]
	movs r0, 0x10
	movs r2, 0x1F
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	bne _0801B7AE
	b _0801B900
_0801B7AE:
	ldr r2, _0801B7F0 @ =gBattleMons
	movs r1, 0x58
	adds r0, r5, 0
	muls r0, r1
	adds r0, r2
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x1F
	bne _0801B7C2
	b _0801B900
_0801B7C2:
	movs r4, 0x2
	eors r5, r4
	adds r0, r5, 0
	muls r0, r1
	adds r0, r2
	adds r0, 0x20
	ldrb r1, [r0]
	adds r0, r5, 0
	bl sub_81074C4
	ldr r1, _0801B804 @ =gUnknown_02024D68
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0]
	orrs r1, r4
	strb r1, [r0]
	b _0801B900
	.align 2, 0
_0801B7E8: .4byte gUnknown_02024C07
_0801B7EC: .4byte gUnknown_02024C80
_0801B7F0: .4byte gBattleMons
_0801B7F4: .4byte gUnknown_02024A68
_0801B7F8: .4byte gUnknown_02024C0C
_0801B7FC: .4byte gBitTable
_0801B800: .4byte gBattleMoves
_0801B804: .4byte gUnknown_02024D68
_0801B808:
	ldr r0, _0801B81C @ =gUnknown_02024C07
	ldrb r0, [r0]
	bl battle_get_per_side_status
	adds r1, r0, 0
	movs r2, 0x1
	movs r0, 0x1
	ands r0, r1
	eors r0, r2
	b _0801B8B2
	.align 2, 0
_0801B81C: .4byte gUnknown_02024C07
_0801B820:
	ldr r0, _0801B854 @ =gUnknown_02024C07
	ldrb r0, [r0]
	bl battle_side_get_owner
	movs r1, 0x1
	eors r0, r1
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, _0801B858 @ =gUnknown_02024C80
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 2
	adds r2, r0, r1
	ldrb r0, [r2, 0x8]
	cmp r0, 0
	beq _0801B860
	ldr r1, _0801B85C @ =gBattleMons
	ldrb r4, [r2, 0x9]
	movs r0, 0x58
	muls r0, r4
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _0801B860
_0801B850:
	adds r5, r4, 0
	b _0801B900
	.align 2, 0
_0801B854: .4byte gUnknown_02024C07
_0801B858: .4byte gUnknown_02024C80
_0801B85C: .4byte gBattleMons
_0801B860:
	ldr r0, _0801B894 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r4, 0x1
	adds r0, r4, 0
	ands r0, r1
	cmp r0, 0
	beq _0801B8DC
	movs r0, 0x4
	ands r6, r0
	cmp r6, 0
	beq _0801B8DC
	ldr r0, _0801B898 @ =gUnknown_02024C07
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _0801B8A0
	bl Random
	adds r1, r4, 0
	ands r1, r0
	cmp r1, 0
	beq _0801B89C
	movs r0, 0x1
	b _0801B8B2
	.align 2, 0
_0801B894: .4byte gUnknown_020239F8
_0801B898: .4byte gUnknown_02024C07
_0801B89C:
	movs r0, 0x3
	b _0801B8B2
_0801B8A0:
	bl Random
	adds r1, r4, 0
	ands r1, r0
	cmp r1, 0
	beq _0801B8B0
	movs r0, 0
	b _0801B8B2
_0801B8B0:
	movs r0, 0x2
_0801B8B2:
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r0, _0801B8D4 @ =gUnknown_02024C0C
	ldrb r1, [r0]
	ldr r2, _0801B8D8 @ =gBitTable
	lsls r0, r5, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _0801B900
	movs r0, 0x2
	eors r5, r0
	b _0801B900
	.align 2, 0
_0801B8D4: .4byte gUnknown_02024C0C
_0801B8D8: .4byte gBitTable
_0801B8DC:
	ldr r0, _0801B8F8 @ =gUnknown_02024C07
	ldrb r0, [r0]
	bl battle_get_per_side_status
	adds r1, r0, 0
	movs r2, 0x1
	movs r0, 0x1
	ands r0, r1
	eors r0, r2
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r5, r0, 24
	b _0801B900
	.align 2, 0
_0801B8F8: .4byte gUnknown_02024C07
_0801B8FC:
	ldr r0, _0801B91C @ =gUnknown_02024C07
	ldrb r5, [r0]
_0801B900:
	ldr r1, _0801B920 @ =0x02000000
	ldr r0, _0801B91C @ =gUnknown_02024C07
	ldrb r0, [r0]
	ldr r2, _0801B924 @ =0x00016010
	adds r0, r2
	adds r0, r1
	strb r5, [r0]
	adds r0, r5, 0
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801B91C: .4byte gUnknown_02024C07
_0801B920: .4byte 0x02000000
_0801B924: .4byte 0x00016010
	thumb_func_end sub_801B5C0

	thumb_func_start sub_801B928
sub_801B928: @ 801B928
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x10
	ldr r0, _0801B9E0 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _0801B9DA
	ldr r7, _0801B9E4 @ =gUnknown_02024C07
	ldrb r0, [r7]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _0801B9DA
	ldr r5, _0801B9E8 @ =gBattleMons
	ldrb r0, [r7]
	movs r1, 0x58
	mov r8, r1
	mov r1, r8
	muls r1, r0
	adds r0, r5, 0
	adds r0, 0x54
	adds r0, r1, r0
	ldr r0, [r0]
	adds r2, r5, 0
	adds r2, 0x3C
	adds r1, r2
	bl sub_8040AD0
	lsls r0, 24
	cmp r0, 0
	beq _0801B9DA
	ldr r0, _0801B9EC @ =0x0000080e
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	bne _0801B9DA
	movs r6, 0xA
	ldr r0, _0801B9F0 @ =0x00000808
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _0801B98E
	movs r6, 0x1E
_0801B98E:
	ldr r0, _0801B9F4 @ =0x0000080a
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _0801B99C
	movs r6, 0x32
_0801B99C:
	ldr r0, _0801B9F8 @ =0x0000080c
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _0801B9AA
	movs r6, 0x46
_0801B9AA:
	ldrb r0, [r7]
	mov r2, r8
	muls r2, r0
	adds r0, r2, 0
	adds r0, r5
	adds r0, 0x2A
	ldrb r0, [r0]
	cmp r0, r6
	bls _0801B9DA
	bl Random
	movs r1, 0xFF
	ands r1, r0
	ldrb r0, [r7]
	mov r2, r8
	muls r2, r0
	adds r0, r2, r5
	adds r0, 0x2A
	ldrb r0, [r0]
	adds r0, r6
	muls r0, r1
	asrs r4, r0, 8
	cmp r4, r6
	bge _0801B9FC
_0801B9DA:
	movs r0, 0
	b _0801BC24
	.align 2, 0
_0801B9E0: .4byte gUnknown_020239F8
_0801B9E4: .4byte gUnknown_02024C07
_0801B9E8: .4byte gBattleMons
_0801B9EC: .4byte 0x0000080e
_0801B9F0: .4byte 0x00000808
_0801B9F4: .4byte 0x0000080a
_0801B9F8: .4byte 0x0000080c
_0801B9FC:
	ldr r3, _0801BA3C @ =gUnknown_02024BE6
	ldrh r0, [r3]
	cmp r0, 0x63
	bne _0801BA12
	adds r0, r5, 0
	adds r0, 0x50
	adds r0, r2, r0
	ldr r1, [r0]
	ldr r2, _0801BA40 @ =0xff7fffff
	ands r1, r2
	str r1, [r0]
_0801BA12:
	ldrb r0, [r7]
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	adds r1, r5, 0
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x7
	ands r0, r1
	cmp r0, 0
	beq _0801BA4C
	ldrh r0, [r3]
	cmp r0, 0xAD
	beq _0801BA34
	cmp r0, 0xD6
	bne _0801BA4C
_0801BA34:
	ldr r1, _0801BA44 @ =gUnknown_02024C10
	ldr r0, _0801BA48 @ =gUnknown_081D995F
	b _0801BBCE
	.align 2, 0
_0801BA3C: .4byte gUnknown_02024BE6
_0801BA40: .4byte 0xff7fffff
_0801BA44: .4byte gUnknown_02024C10
_0801BA48: .4byte gUnknown_081D995F
_0801BA4C:
	bl Random
	movs r5, 0xFF
	adds r1, r5, 0
	ands r1, r0
	ldr r7, _0801BB04 @ =gBattleMons
	ldr r2, _0801BB08 @ =gUnknown_02024C07
	mov r9, r2
	ldrb r3, [r2]
	movs r0, 0x58
	mov r8, r0
	mov r0, r8
	muls r0, r3
	adds r0, r7
	adds r0, 0x2A
	ldrb r2, [r0]
	adds r0, r2, r6
	muls r0, r1
	asrs r4, r0, 8
	cmp r4, r6
	bge _0801BB3C
	ldr r7, _0801BB0C @ =gBitTable
	ldr r5, _0801BB10 @ =gUnknown_02024BE4
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r7
	ldrb r1, [r0]
	adds r0, r3, 0
	movs r2, 0xFF
	bl sub_8015A98
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0xF
	bne _0801BA94
	b _0801BBBE
_0801BA94:
	adds r6, r5, 0
	ldr r1, _0801BB14 @ =gUnknown_02024BE5
	mov r9, r1
	movs r2, 0x3
	mov r8, r2
_0801BA9E:
	bl Random
	mov r1, r8
	ands r0, r1
	mov r2, r9
	strb r0, [r2]
	strb r0, [r6]
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r7
	ldr r5, [r0]
	ands r5, r4
	cmp r5, 0
	bne _0801BA9E
	ldr r4, _0801BB18 @ =gUnknown_02024BEA
	ldr r3, _0801BB04 @ =gBattleMons
	ldr r0, _0801BB10 @ =gUnknown_02024BE4
	ldrb r0, [r0]
	lsls r0, 1
	ldr r1, _0801BB08 @ =gUnknown_02024C07
	ldrb r2, [r1]
	movs r1, 0x58
	muls r1, r2
	adds r0, r1
	adds r3, 0xC
	adds r0, r3
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _0801BB1C @ =gUnknown_02024D1E
	strb r5, [r0, 0x3]
	ldr r0, _0801BB20 @ =gUnknown_02024DEC
	movs r1, 0
	strh r5, [r0]
	ldr r0, _0801BB24 @ =0x02000000
	ldr r2, _0801BB28 @ =0x0001601c
	adds r0, r2
	strb r1, [r0]
	ldr r1, _0801BB2C @ =gUnknown_02024C10
	ldr r0, _0801BB30 @ =gUnknown_081D996F
	str r0, [r1]
	ldrh r0, [r4]
	movs r1, 0
	bl sub_801B5C0
	ldr r1, _0801BB34 @ =gUnknown_02024C08
	strb r0, [r1]
	ldr r2, _0801BB38 @ =gUnknown_02024C6C
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 14
	b _0801BC1E
	.align 2, 0
_0801BB04: .4byte gBattleMons
_0801BB08: .4byte gUnknown_02024C07
_0801BB0C: .4byte gBitTable
_0801BB10: .4byte gUnknown_02024BE4
_0801BB14: .4byte gUnknown_02024BE5
_0801BB18: .4byte gUnknown_02024BEA
_0801BB1C: .4byte gUnknown_02024D1E
_0801BB20: .4byte gUnknown_02024DEC
_0801BB24: .4byte 0x02000000
_0801BB28: .4byte 0x0001601c
_0801BB2C: .4byte gUnknown_02024C10
_0801BB30: .4byte gUnknown_081D996F
_0801BB34: .4byte gUnknown_02024C08
_0801BB38: .4byte gUnknown_02024C6C
_0801BB3C:
	subs r0, r2, r6
	lsls r0, 24
	lsrs r6, r0, 24
	bl Random
	adds r4, r5, 0
	ands r4, r0
	cmp r4, r6
	bge _0801BBB8
	mov r1, r9
	ldrb r0, [r1]
	mov r1, r8
	muls r1, r0
	adds r0, r7, 0
	adds r0, 0x4C
	adds r0, r1, r0
	ldr r0, [r0]
	ands r0, r5
	cmp r0, 0
	bne _0801BBB8
	adds r0, r1, r7
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x48
	beq _0801BBB8
	cmp r0, 0xF
	beq _0801BBB8
	movs r2, 0
	ldr r0, _0801BBAC @ =gUnknown_02024A68
	ldrb r3, [r0]
	mov r8, r0
	cmp r2, r3
	bge _0801BB9E
	ldr r0, [r7, 0x50]
	movs r1, 0x70
	ands r0, r1
	cmp r0, 0
	bne _0801BB9E
	adds r1, r7, 0
	adds r1, 0x50
	movs r5, 0x70
_0801BB8E:
	adds r1, 0x58
	adds r2, 0x1
	cmp r2, r3
	bge _0801BB9E
	ldr r0, [r1]
	ands r0, r5
	cmp r0, 0
	beq _0801BB8E
_0801BB9E:
	mov r0, r8
	ldrb r0, [r0]
	cmp r2, r0
	bne _0801BBB8
	ldr r1, _0801BBB0 @ =gUnknown_02024C10
	ldr r0, _0801BBB4 @ =gUnknown_081D9989
	b _0801BBCE
	.align 2, 0
_0801BBAC: .4byte gUnknown_02024A68
_0801BBB0: .4byte gUnknown_02024C10
_0801BBB4: .4byte gUnknown_081D9989
_0801BBB8:
	subs r4, r6
	cmp r4, r6
	blt _0801BBE0
_0801BBBE:
	bl Random
	ldr r2, _0801BBD4 @ =gUnknown_02024D1E
	movs r1, 0x3
	ands r1, r0
	strb r1, [r2, 0x5]
	ldr r1, _0801BBD8 @ =gUnknown_02024C10
	ldr r0, _0801BBDC @ =gUnknown_081D9977
_0801BBCE:
	str r0, [r1]
	movs r0, 0x1
	b _0801BC24
	.align 2, 0
_0801BBD4: .4byte gUnknown_02024D1E
_0801BBD8: .4byte gUnknown_02024C10
_0801BBDC: .4byte gUnknown_081D9977
_0801BBE0:
	ldr r4, _0801BC34 @ =gUnknown_02024C07
	ldrb r1, [r4]
	movs r0, 0x58
	muls r1, r0
	ldr r0, _0801BC38 @ =gBattleMons
	adds r1, r0
	movs r0, 0x28
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	ldrb r0, [r4]
	str r0, [sp, 0x8]
	ldrb r0, [r4]
	str r0, [sp, 0xC]
	adds r0, r1, 0
	movs r2, 0x1
	movs r3, 0
	bl CalculateBaseDamage
	ldr r1, _0801BC3C @ =gUnknown_02024BEC
	str r0, [r1]
	ldr r1, _0801BC40 @ =gUnknown_02024C08
	ldrb r0, [r4]
	strb r0, [r1]
	ldr r1, _0801BC44 @ =gUnknown_02024C10
	ldr r0, _0801BC48 @ =gUnknown_081D99A0
	str r0, [r1]
	ldr r2, _0801BC4C @ =gUnknown_02024C6C
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 12
_0801BC1E:
	orrs r0, r1
	str r0, [r2]
	movs r0, 0x2
_0801BC24:
	add sp, 0x10
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801BC34: .4byte gUnknown_02024C07
_0801BC38: .4byte gBattleMons
_0801BC3C: .4byte gUnknown_02024BEC
_0801BC40: .4byte gUnknown_02024C08
_0801BC44: .4byte gUnknown_02024C10
_0801BC48: .4byte gUnknown_081D99A0
_0801BC4C: .4byte gUnknown_02024C6C
	thumb_func_end sub_801B928

	thumb_func_start atk00_attackcanceler
atk00_attackcanceler: @ 801BC50
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x4
	ldr r0, _0801BC6C @ =gUnknown_02024D26
	ldrb r0, [r0]
	cmp r0, 0
	beq _0801BC74
	ldr r1, _0801BC70 @ =gUnknown_02024A7F
	movs r0, 0xC
	strb r0, [r1]
	b _0801BFF4
	.align 2, 0
_0801BC6C: .4byte gUnknown_02024D26
_0801BC70: .4byte gUnknown_02024A7F
_0801BC74:
	ldr r2, _0801BCA4 @ =gBattleMons
	ldr r0, _0801BCA8 @ =gUnknown_02024C07
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _0801BCB8
	ldr r2, _0801BCAC @ =gUnknown_02024C6C
	ldr r1, [r2]
	movs r0, 0x80
	lsls r0, 2
	ands r0, r1
	cmp r0, 0
	bne _0801BCB8
	movs r0, 0x80
	lsls r0, 12
	orrs r1, r0
	str r1, [r2]
	ldr r1, _0801BCB0 @ =gUnknown_02024C10
	ldr r0, _0801BCB4 @ =BattleScript_1D6F62
	b _0801BFF2
	.align 2, 0
_0801BCA4: .4byte gBattleMons
_0801BCA8: .4byte gUnknown_02024C07
_0801BCAC: .4byte gUnknown_02024C6C
_0801BCB0: .4byte gUnknown_02024C10
_0801BCB4: .4byte BattleScript_1D6F62
_0801BCB8:
	bl sub_8017718
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0
	beq _0801BCC6
	b _0801BFF4
_0801BCC6:
	ldr r0, _0801BD34 @ =gUnknown_02024C08
	ldrb r1, [r0]
	str r2, [sp]
	movs r0, 0x2
	movs r2, 0
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	beq _0801BCDE
	b _0801BFF4
_0801BCDE:
	ldr r4, _0801BD38 @ =gBattleMons
	ldr r0, _0801BD3C @ =gUnknown_02024BE4
	ldrb r1, [r0]
	ldr r3, _0801BD40 @ =gUnknown_02024C07
	ldrb r2, [r3]
	movs r0, 0x58
	muls r2, r0
	adds r1, r2
	adds r0, r4, 0
	adds r0, 0x24
	adds r1, r0
	ldrb r0, [r1]
	ldr r5, _0801BD44 @ =gUnknown_02024C6C
	cmp r0, 0
	bne _0801BD5C
	ldr r0, _0801BD48 @ =gUnknown_02024BE6
	ldrh r0, [r0]
	cmp r0, 0xA5
	beq _0801BD5C
	ldr r0, [r5]
	ldr r1, _0801BD4C @ =0x00800200
	ands r0, r1
	cmp r0, 0
	bne _0801BD5C
	adds r0, r4, 0
	adds r0, 0x50
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 5
	ands r0, r1
	cmp r0, 0
	bne _0801BD5C
	ldr r1, _0801BD50 @ =gUnknown_02024C10
	ldr r0, _0801BD54 @ =gUnknown_081D936D
	str r0, [r1]
	ldr r2, _0801BD58 @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	b _0801BFF4
	.align 2, 0
_0801BD34: .4byte gUnknown_02024C08
_0801BD38: .4byte gBattleMons
_0801BD3C: .4byte gUnknown_02024BE4
_0801BD40: .4byte gUnknown_02024C07
_0801BD44: .4byte gUnknown_02024C6C
_0801BD48: .4byte gUnknown_02024BE6
_0801BD4C: .4byte 0x00800200
_0801BD50: .4byte gUnknown_02024C10
_0801BD54: .4byte gUnknown_081D936D
_0801BD58: .4byte gUnknown_02024C68
_0801BD5C:
	ldr r0, [r5]
	ldr r1, _0801BDA0 @ =0xff7fffff
	ands r0, r1
	str r0, [r5]
	movs r6, 0x80
	lsls r6, 18
	ands r0, r6
	cmp r0, 0
	bne _0801BDB4
	ldrb r1, [r3]
	movs r0, 0x58
	muls r0, r1
	adds r1, r4, 0
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 5
	ands r0, r1
	cmp r0, 0
	bne _0801BDB4
	bl sub_801B928
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0
	beq _0801BDB4
	cmp r2, 0x2
	bne _0801BDA4
	ldr r0, [r5]
	orrs r0, r6
	str r0, [r5]
	b _0801BFF4
	.align 2, 0
_0801BDA0: .4byte 0xff7fffff
_0801BDA4:
	ldr r0, _0801BDB0 @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r2, 0x1
	orrs r1, r2
	strb r1, [r0]
	b _0801BFF4
	.align 2, 0
_0801BDB0: .4byte gUnknown_02024C68
_0801BDB4:
	ldr r2, _0801BE18 @ =gUnknown_02024C6C
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 18
	orrs r0, r1
	str r0, [r2]
	ldr r2, _0801BE1C @ =gUnknown_02024D28
	ldr r1, _0801BE20 @ =gUnknown_02024C08
	ldrb r3, [r1]
	lsls r0, r3, 4
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 27
	mov r8, r1
	mov r9, r2
	cmp r0, 0
	bge _0801BE3C
	ldr r2, _0801BE24 @ =gBattleMoves
	ldr r0, _0801BE28 @ =gUnknown_02024BE6
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x8]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _0801BE3C
	ldr r0, _0801BE2C @ =gUnknown_02024C07
	ldrb r0, [r0]
	ldr r2, _0801BE30 @ =0x00000115
	adds r1, r3, 0
	bl sub_80151D4
	mov r0, r8
	ldrb r1, [r0]
	lsls r1, 4
	add r1, r9
	ldrb r2, [r1]
	movs r0, 0x11
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	bl b_movescr_stack_push_cursor
	ldr r1, _0801BE34 @ =gUnknown_02024C10
	ldr r0, _0801BE38 @ =gUnknown_081D946F
	b _0801BFF2
	.align 2, 0
_0801BE18: .4byte gUnknown_02024C6C
_0801BE1C: .4byte gUnknown_02024D28
_0801BE20: .4byte gUnknown_02024C08
_0801BE24: .4byte gBattleMoves
_0801BE28: .4byte gUnknown_02024BE6
_0801BE2C: .4byte gUnknown_02024C07
_0801BE30: .4byte 0x00000115
_0801BE34: .4byte gUnknown_02024C10
_0801BE38: .4byte gUnknown_081D946F
_0801BE3C:
	movs r2, 0
	ldr r0, _0801BEB8 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r2, r0
	bge _0801BE7E
	ldr r6, _0801BEBC @ =gUnknown_02024D28
	ldr r1, _0801BEC0 @ =gBattleMoves
	mov r12, r1
	adds r5, r0, 0
	ldr r7, _0801BEC4 @ =gUnknown_02024A7A
_0801BE50:
	adds r4, r2, r7
	ldrb r3, [r4]
	lsls r0, r3, 4
	adds r0, r6
	ldrb r0, [r0]
	lsls r0, 26
	cmp r0, 0
	bge _0801BE78
	ldr r0, _0801BEC8 @ =gUnknown_02024BE6
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	add r0, r12
	ldrb r1, [r0, 0x8]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _0801BE78
	b _0801BFA4
_0801BE78:
	adds r2, 0x1
	cmp r2, r5
	blt _0801BE50
_0801BE7E:
	ldr r0, _0801BECC @ =gUnknown_02024D68
	mov r1, r8
	ldrb r2, [r1]
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r3, [r1]
	lsls r0, r3, 30
	cmp r0, 0
	bge _0801BEDC
	movs r0, 0x3
	negs r0, r0
	ands r0, r3
	strb r0, [r1]
	ldr r4, _0801BED0 @ =byte_2024C06
	movs r0, 0x1F
	strb r0, [r4]
	bl b_movescr_stack_push_cursor
	ldr r1, _0801BED4 @ =gUnknown_02024C10
	ldr r0, _0801BED8 @ =gUnknown_081D9812
	str r0, [r1]
	mov r2, r8
	ldrb r0, [r2]
	ldrb r1, [r4]
	bl sub_81074C4
	b _0801BFF4
	.align 2, 0
_0801BEB8: .4byte gUnknown_02024A68
_0801BEBC: .4byte gUnknown_02024D28
_0801BEC0: .4byte gBattleMoves
_0801BEC4: .4byte gUnknown_02024A7A
_0801BEC8: .4byte gUnknown_02024BE6
_0801BECC: .4byte gUnknown_02024D68
_0801BED0: .4byte byte_2024C06
_0801BED4: .4byte gUnknown_02024C10
_0801BED8: .4byte gUnknown_081D9812
_0801BEDC:
	lsls r0, r2, 4
	add r0, r9
	ldrb r0, [r0]
	lsls r0, 31
	cmp r0, 0
	bne _0801BEEA
	b _0801BFEC
_0801BEEA:
	ldr r1, _0801BF80 @ =gBattleMoves
	ldr r2, _0801BF84 @ =gUnknown_02024BE6
	ldrh r3, [r2]
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x8]
	movs r0, 0x2
	ands r0, r1
	adds r4, r2, 0
	cmp r0, 0
	beq _0801BFEC
	cmp r3, 0xAE
	bne _0801BF28
	ldr r2, _0801BF88 @ =gBattleMons
	ldr r0, _0801BF8C @ =gUnknown_02024C07
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r1, r0, r2
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0x7
	beq _0801BF28
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0x7
	bne _0801BFEC
_0801BF28:
	ldrh r0, [r4]
	bl sub_8028350
	lsls r0, 24
	cmp r0, 0
	beq _0801BF4E
	ldr r1, _0801BF88 @ =gBattleMons
	ldr r0, _0801BF8C @ =gUnknown_02024C07
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 5
	ands r0, r1
	cmp r0, 0
	beq _0801BFEC
_0801BF4E:
	ldr r0, _0801BF8C @ =gUnknown_02024C07
	ldrb r0, [r0]
	bl b_cancel_multi_turn_move_maybe
	ldr r2, _0801BF90 @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0801BF94 @ =gUnknown_02024C3C
	ldr r3, _0801BF98 @ =gUnknown_02024C08
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r1
	movs r2, 0
	strh r2, [r0]
	ldr r1, _0801BF9C @ =gUnknown_02024C44
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r1
	strh r2, [r0]
	ldr r1, _0801BFA0 @ =gUnknown_02024D1E
	movs r0, 0x1
	strb r0, [r1, 0x6]
	b _0801BFEC
	.align 2, 0
_0801BF80: .4byte gBattleMoves
_0801BF84: .4byte gUnknown_02024BE6
_0801BF88: .4byte gBattleMons
_0801BF8C: .4byte gUnknown_02024C07
_0801BF90: .4byte gUnknown_02024C68
_0801BF94: .4byte gUnknown_02024C3C
_0801BF98: .4byte gUnknown_02024C08
_0801BF9C: .4byte gUnknown_02024C44
_0801BFA0: .4byte gUnknown_02024D1E
_0801BFA4:
	ldr r0, _0801BFD4 @ =gUnknown_02024C07
	ldrb r0, [r0]
	ldr r2, _0801BFD8 @ =0x00000121
	adds r1, r3, 0
	bl sub_80151D4
	ldrb r1, [r4]
	lsls r1, 4
	adds r1, r6
	ldrb r2, [r1]
	movs r0, 0x21
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r0, _0801BFDC @ =0x02000000
	ldrb r1, [r4]
	ldr r2, _0801BFE0 @ =0x00016003
	adds r0, r2
	strb r1, [r0]
	bl b_movescr_stack_push_cursor
	ldr r1, _0801BFE4 @ =gUnknown_02024C10
	ldr r0, _0801BFE8 @ =gUnknown_081D9487
	b _0801BFF2
	.align 2, 0
_0801BFD4: .4byte gUnknown_02024C07
_0801BFD8: .4byte 0x00000121
_0801BFDC: .4byte 0x02000000
_0801BFE0: .4byte 0x00016003
_0801BFE4: .4byte gUnknown_02024C10
_0801BFE8: .4byte gUnknown_081D9487
_0801BFEC:
	ldr r1, _0801C004 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
_0801BFF2:
	str r0, [r1]
_0801BFF4:
	add sp, 0x4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C004: .4byte gUnknown_02024C10
	thumb_func_end atk00_attackcanceler

	thumb_func_start mcmd_jump_if_move_not_executed
mcmd_jump_if_move_not_executed: @ 801C008
	push {r4-r6,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 16
	lsrs r6, r1, 16
	ldr r1, _0801C054 @ =gUnknown_02024C10
	ldr r5, [r1]
	adds r4, r5, r0
	ldr r0, _0801C058 @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _0801C068
	ldr r1, _0801C05C @ =gUnknown_02024C3C
	ldr r3, _0801C060 @ =gUnknown_02024C08
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r1
	movs r2, 0
	strh r2, [r0]
	ldr r1, _0801C064 @ =gUnknown_02024C44
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r1
	strh r2, [r0]
	ldrb r4, [r5, 0x1]
	ldrb r0, [r5, 0x2]
	lsls r0, 8
	orrs r4, r0
	ldrb r0, [r5, 0x3]
	lsls r0, 16
	orrs r4, r0
	ldrb r0, [r5, 0x4]
	lsls r0, 24
	orrs r4, r0
	b _0801C082
	.align 2, 0
_0801C054: .4byte gUnknown_02024C10
_0801C058: .4byte gUnknown_02024C68
_0801C05C: .4byte gUnknown_02024C3C
_0801C060: .4byte gUnknown_02024C08
_0801C064: .4byte gUnknown_02024C44
_0801C068:
	bl b_feature_update_destiny_bond
	ldr r0, _0801C090 @ =gUnknown_02024C08
	ldrb r1, [r0]
	str r6, [sp]
	movs r0, 0x3
	movs r2, 0
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	bne _0801C086
_0801C082:
	ldr r0, _0801C094 @ =gUnknown_02024C10
	str r4, [r0]
_0801C086:
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801C090: .4byte gUnknown_02024C08
_0801C094: .4byte gUnknown_02024C10
	thumb_func_end mcmd_jump_if_move_not_executed

	thumb_func_start atk40_801DBA0
atk40_801DBA0: @ 801C098
	push {lr}
	ldr r1, _0801C0E0 @ =gUnknown_02024D28
	ldr r0, _0801C0E4 @ =gUnknown_02024C08
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 31
	cmp r0, 0
	beq _0801C0F8
	ldr r2, _0801C0E8 @ =gBattleMoves
	ldr r0, _0801C0EC @ =gUnknown_02024BE6
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x8]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0801C0F8
	ldr r2, _0801C0F0 @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	movs r0, 0x5
	movs r1, 0
	bl mcmd_jump_if_move_not_executed
	ldr r1, _0801C0F4 @ =gUnknown_02024D1E
	movs r0, 0x1
	strb r0, [r1, 0x6]
	b _0801C100
	.align 2, 0
_0801C0E0: .4byte gUnknown_02024D28
_0801C0E4: .4byte gUnknown_02024C08
_0801C0E8: .4byte gBattleMoves
_0801C0EC: .4byte gUnknown_02024BE6
_0801C0F0: .4byte gUnknown_02024C68
_0801C0F4: .4byte gUnknown_02024D1E
_0801C0F8:
	ldr r1, _0801C104 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_0801C100:
	pop {r0}
	bx r0
	.align 2, 0
_0801C104: .4byte gUnknown_02024C10
	thumb_func_end atk40_801DBA0

	thumb_func_start sub_801C108
sub_801C108: @ 801C108
	push {r4,lr}
	lsls r0, 16
	lsrs r3, r0, 16
	movs r4, 0
	ldr r1, _0801C15C @ =gUnknown_02024D28
	ldr r0, _0801C160 @ =gUnknown_02024C08
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 31
	cmp r0, 0
	beq _0801C154
	ldr r2, _0801C164 @ =gBattleMoves
	ldr r0, _0801C168 @ =gUnknown_02024BE6
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x8]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0801C154
	ldr r2, _0801C16C @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	movs r0, 0x7
	adds r1, r3, 0
	bl mcmd_jump_if_move_not_executed
	ldr r1, _0801C170 @ =gUnknown_02024D1E
	movs r0, 0x1
	strb r0, [r1, 0x6]
	movs r4, 0x1
_0801C154:
	adds r0, r4, 0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801C15C: .4byte gUnknown_02024D28
_0801C160: .4byte gUnknown_02024C08
_0801C164: .4byte gBattleMoves
_0801C168: .4byte gUnknown_02024BE6
_0801C16C: .4byte gUnknown_02024C68
_0801C170: .4byte gUnknown_02024D1E
	thumb_func_end sub_801C108

	thumb_func_start sub_801C174
sub_801C174: @ 801C174
	push {r4-r6,lr}
	sub sp, 0x4
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r2, _0801C1D4 @ =gUnknown_02024C98
	ldr r3, _0801C1D8 @ =gUnknown_02024C08
	ldrb r4, [r3]
	lsls r0, r4, 2
	adds r0, r2
	ldr r1, [r0]
	movs r0, 0x18
	ands r1, r0
	adds r6, r2, 0
	cmp r1, 0
	beq _0801C1A6
	ldr r1, _0801C1DC @ =gUnknown_02024CA8
	lsls r0, r4, 3
	subs r0, r4
	lsls r0, 2
	adds r0, r1
	ldr r1, _0801C1E0 @ =gUnknown_02024C07
	ldrb r0, [r0, 0x15]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0801C290
_0801C1A6:
	ldr r0, _0801C1E4 @ =gUnknown_02024C6C
	ldr r1, [r0]
	movs r2, 0x80
	lsls r2, 9
	ands r1, r2
	adds r2, r0, 0
	cmp r1, 0
	bne _0801C1EC
	ldrb r0, [r3]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0801C1EC
_0801C1C6:
	ldr r0, _0801C1E8 @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r2, 0x1
	orrs r1, r2
	strb r1, [r0]
	b _0801C290
	.align 2, 0
_0801C1D4: .4byte gUnknown_02024C98
_0801C1D8: .4byte gUnknown_02024C08
_0801C1DC: .4byte gUnknown_02024CA8
_0801C1E0: .4byte gUnknown_02024C07
_0801C1E4: .4byte gUnknown_02024C6C
_0801C1E8: .4byte gUnknown_02024C68
_0801C1EC:
	ldr r0, [r2]
	ldr r1, _0801C29C @ =0xfffeffff
	ands r0, r1
	str r0, [r2]
	movs r1, 0x80
	lsls r1, 10
	ands r0, r1
	cmp r0, 0
	bne _0801C20E
	ldrb r0, [r3]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	movs r1, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0801C1C6
_0801C20E:
	ldr r0, [r2]
	ldr r1, _0801C2A0 @ =0xfffdffff
	ands r0, r1
	str r0, [r2]
	movs r1, 0x80
	lsls r1, 11
	ands r0, r1
	cmp r0, 0
	bne _0801C22E
	ldrb r0, [r3]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	ands r0, r1
	cmp r0, 0
	bne _0801C1C6
_0801C22E:
	ldr r0, [r2]
	ldr r1, _0801C2A4 @ =0xfffbffff
	ands r0, r1
	str r0, [r2]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0xD
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	lsrs r0, 24
	lsls r4, r5, 1
	cmp r0, 0
	bne _0801C27E
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0x4D
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	bne _0801C27E
	ldr r0, _0801C2A8 @ =word_2024DB8
	ldrh r1, [r0]
	movs r0, 0x7
	ands r0, r1
	cmp r0, 0
	beq _0801C27E
	ldr r0, _0801C2AC @ =gBattleMoves
	adds r1, r4, r5
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0x98
	beq _0801C290
_0801C27E:
	ldr r1, _0801C2AC @ =gBattleMoves
	adds r0, r4, r5
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x11
	beq _0801C290
	cmp r0, 0x4E
	bne _0801C2B0
_0801C290:
	movs r0, 0x7
	adds r1, r5, 0
	bl mcmd_jump_if_move_not_executed
	movs r0, 0x1
	b _0801C2B2
	.align 2, 0
_0801C29C: .4byte 0xfffeffff
_0801C2A0: .4byte 0xfffdffff
_0801C2A4: .4byte 0xfffbffff
_0801C2A8: .4byte word_2024DB8
_0801C2AC: .4byte gBattleMoves
_0801C2B0:
	movs r0, 0
_0801C2B2:
	add sp, 0x4
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_801C174

	thumb_func_start atk01_accuracycheck
atk01_accuracycheck: @ 801C2BC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	ldr r0, _0801C314 @ =gUnknown_02024C10
	ldr r5, [r0]
	ldrb r6, [r5, 0x5]
	ldrb r1, [r5, 0x6]
	lsls r1, 8
	orrs r6, r1
	adds r1, r6, 0x2
	lsls r1, 16
	lsrs r1, 16
	adds r7, r0, 0
	cmp r1, 0x1
	bhi _0801C378
	ldr r2, _0801C318 @ =gUnknown_02024C98
	ldr r3, _0801C31C @ =gUnknown_02024C08
	ldrb r4, [r3]
	lsls r0, r4, 2
	adds r0, r2
	ldr r1, [r0]
	movs r0, 0x18
	ands r1, r0
	cmp r1, 0
	beq _0801C32C
	ldr r0, _0801C320 @ =0x0000ffff
	cmp r6, r0
	bne _0801C32C
	ldr r1, _0801C324 @ =gUnknown_02024CA8
	lsls r0, r4, 3
	subs r0, r4
	lsls r0, 2
	adds r0, r1
	ldr r1, _0801C328 @ =gUnknown_02024C07
	ldrb r0, [r0, 0x15]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0801C32C
	adds r0, r5, 0x7
	str r0, [r7]
	b _0801C632
	.align 2, 0
_0801C314: .4byte gUnknown_02024C10
_0801C318: .4byte gUnknown_02024C98
_0801C31C: .4byte gUnknown_02024C08
_0801C320: .4byte 0x0000ffff
_0801C324: .4byte gUnknown_02024CA8
_0801C328: .4byte gUnknown_02024C07
_0801C32C:
	ldrb r0, [r3]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	ldr r1, _0801C358 @ =0x000400c0
	ands r0, r1
	cmp r0, 0
	beq _0801C35C
	ldr r2, [r7]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r7]
	b _0801C632
	.align 2, 0
_0801C358: .4byte 0x000400c0
_0801C35C:
	movs r0, 0
	bl sub_801C108
	lsls r0, 24
	cmp r0, 0
	beq _0801C36A
	b _0801C632
_0801C36A:
	ldr r1, _0801C374 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x7
	str r0, [r1]
	b _0801C632
	.align 2, 0
_0801C374: .4byte gUnknown_02024C10
_0801C378:
	cmp r6, 0
	bne _0801C380
	ldr r0, _0801C398 @ =gUnknown_02024BE6
	ldrh r6, [r0]
_0801C380:
	ldr r0, _0801C39C @ =0x02000000
	ldr r1, _0801C3A0 @ =0x0001601c
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _0801C3A4
	movs r2, 0x3F
	mov r10, r2
	mov r3, r10
	ands r3, r0
	mov r10, r3
	b _0801C3B2
	.align 2, 0
_0801C398: .4byte gUnknown_02024BE6
_0801C39C: .4byte 0x02000000
_0801C3A0: .4byte 0x0001601c
_0801C3A4:
	ldr r1, _0801C3F8 @ =gBattleMoves
	lsls r0, r6, 1
	adds r0, r6
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0, 0x2]
	mov r10, r0
_0801C3B2:
	adds r0, r6, 0
	bl sub_801C108
	lsls r0, 24
	cmp r0, 0
	beq _0801C3C0
	b _0801C632
_0801C3C0:
	adds r0, r6, 0
	bl sub_801C174
	lsls r0, 24
	cmp r0, 0
	beq _0801C3CE
	b _0801C632
_0801C3CE:
	ldr r3, _0801C3FC @ =gBattleMons
	ldr r0, _0801C400 @ =gUnknown_02024C08
	ldrb r0, [r0]
	movs r2, 0x58
	adds r4, r0, 0
	muls r4, r2
	adds r0, r3, 0
	adds r0, 0x50
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 22
	ands r0, r1
	cmp r0, 0
	beq _0801C408
	ldr r0, _0801C404 @ =gUnknown_02024C07
	ldrb r0, [r0]
	muls r0, r2
	adds r0, r3
	ldrb r5, [r0, 0x1E]
	b _0801C41E
	.align 2, 0
_0801C3F8: .4byte gBattleMoves
_0801C3FC: .4byte gBattleMons
_0801C400: .4byte gUnknown_02024C08
_0801C404: .4byte gUnknown_02024C07
_0801C408:
	ldr r0, _0801C56C @ =gUnknown_02024C07
	ldrb r0, [r0]
	muls r0, r2
	adds r0, r3
	ldrb r0, [r0, 0x1E]
	adds r0, 0x6
	adds r1, r4, r3
	ldrb r1, [r1, 0x1F]
	subs r0, r1
	lsls r0, 24
	lsrs r5, r0, 24
_0801C41E:
	lsls r0, r5, 24
	cmp r0, 0
	bge _0801C426
	movs r5, 0
_0801C426:
	lsls r0, r5, 24
	asrs r0, 24
	cmp r0, 0xC
	ble _0801C430
	movs r5, 0xC
_0801C430:
	ldr r1, _0801C570 @ =gBattleMoves
	lsls r4, r6, 1
	adds r0, r4, r6
	lsls r0, 2
	adds r7, r0, r1
	ldrb r0, [r7, 0x3]
	mov r8, r0
	movs r0, 0
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0xD
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	lsrs r0, 24
	str r4, [sp, 0x4]
	cmp r0, 0
	bne _0801C482
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0x4D
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	bne _0801C482
	ldr r0, _0801C574 @ =word_2024DB8
	ldrh r1, [r0]
	movs r0, 0x60
	ands r0, r1
	cmp r0, 0
	beq _0801C482
	ldrb r0, [r7]
	cmp r0, 0x98
	bne _0801C482
	movs r1, 0x32
	mov r8, r1
_0801C482:
	ldr r1, _0801C578 @ =gAccuracyStageRatios
	lsls r0, r5, 24
	asrs r0, 22
	adds r0, r1
	ldrb r1, [r0]
	mov r4, r8
	muls r4, r1
	ldrb r1, [r0, 0x1]
	adds r0, r4, 0
	bl __divsi3
	lsls r0, 16
	lsrs r4, r0, 16
	ldr r7, _0801C57C @ =gBattleMons
	ldr r0, _0801C56C @ =gUnknown_02024C07
	ldrb r0, [r0]
	movs r5, 0x58
	muls r0, r5
	adds r0, r7
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0xE
	bne _0801C4C0
	lsls r0, r4, 6
	adds r0, r4
	lsls r0, 1
	movs r1, 0x64
	bl __divsi3
	lsls r0, 16
	lsrs r4, r0, 16
_0801C4C0:
	movs r0, 0
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0xD
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	bne _0801C518
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0x4D
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	bne _0801C518
	ldr r0, _0801C580 @ =gUnknown_02024C08
	ldrb r0, [r0]
	muls r0, r5
	adds r0, r7
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x8
	bne _0801C518
	ldr r0, _0801C574 @ =word_2024DB8
	ldrh r1, [r0]
	movs r0, 0x18
	ands r0, r1
	cmp r0, 0
	beq _0801C518
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 4
	movs r1, 0x64
	bl __divsi3
	lsls r0, 16
	lsrs r4, r0, 16
_0801C518:
	ldr r2, _0801C57C @ =gBattleMons
	ldr r0, _0801C56C @ =gUnknown_02024C07
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x20
	ldrb r0, [r0]
	mov r9, r2
	cmp r0, 0x37
	bne _0801C544
	mov r2, r10
	cmp r2, 0x8
	bhi _0801C544
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 4
	movs r1, 0x64
	bl __divsi3
	lsls r0, 16
	lsrs r4, r0, 16
_0801C544:
	ldr r3, _0801C580 @ =gUnknown_02024C08
	mov r8, r3
	ldrb r2, [r3]
	movs r7, 0x58
	adds r0, r2, 0
	muls r0, r7
	mov r3, r9
	adds r1, r0, r3
	ldrh r0, [r1, 0x2E]
	cmp r0, 0xAF
	bne _0801C588
	ldr r1, _0801C584 @ =gEnigmaBerries
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r5, [r0, 0x7]
	ldrb r2, [r0, 0x1A]
	b _0801C5A4
	.align 2, 0
_0801C56C: .4byte gUnknown_02024C07
_0801C570: .4byte gBattleMoves
_0801C574: .4byte word_2024DB8
_0801C578: .4byte gAccuracyStageRatios
_0801C57C: .4byte gBattleMons
_0801C580: .4byte gUnknown_02024C08
_0801C584: .4byte gEnigmaBerries
_0801C588:
	ldrh r0, [r1, 0x2E]
	bl ItemId_GetHoldEffect
	lsls r0, 24
	lsrs r5, r0, 24
	mov r1, r8
	ldrb r0, [r1]
	muls r0, r7
	add r0, r9
	ldrh r0, [r0, 0x2E]
	bl ItemId_GetHoldEffectParam
	lsls r0, 24
	lsrs r2, r0, 24
_0801C5A4:
	ldr r0, _0801C608 @ =gUnknown_02024C0B
	ldr r1, _0801C60C @ =gUnknown_02024C08
	ldrb r1, [r1]
	strb r1, [r0]
	cmp r5, 0x16
	bne _0801C5C0
	movs r0, 0x64
	subs r0, r2
	muls r0, r4
	movs r1, 0x64
	bl __divsi3
	lsls r0, 16
	lsrs r4, r0, 16
_0801C5C0:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	adds r0, 0x1
	cmp r0, r4
	ble _0801C62A
	ldr r2, _0801C610 @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0801C614 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0801C620
	ldr r1, _0801C618 @ =gBattleMoves
	ldr r2, [sp, 0x4]
	adds r0, r2, r6
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0, 0x6]
	cmp r0, 0x8
	beq _0801C602
	cmp r0, 0x20
	bne _0801C620
_0801C602:
	ldr r1, _0801C61C @ =gUnknown_02024D1E
	movs r0, 0x2
	b _0801C624
	.align 2, 0
_0801C608: .4byte gUnknown_02024C0B
_0801C60C: .4byte gUnknown_02024C08
_0801C610: .4byte gUnknown_02024C68
_0801C614: .4byte gUnknown_020239F8
_0801C618: .4byte gBattleMoves
_0801C61C: .4byte gUnknown_02024D1E
_0801C620:
	ldr r1, _0801C644 @ =gUnknown_02024D1E
	movs r0, 0
_0801C624:
	strb r0, [r1, 0x6]
	bl b_wonderguard_and_levitate
_0801C62A:
	movs r0, 0x7
	adds r1, r6, 0
	bl mcmd_jump_if_move_not_executed
_0801C632:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C644: .4byte gUnknown_02024D1E
	thumb_func_end atk01_accuracycheck

	thumb_func_start atk02_attackstring
atk02_attackstring: @ 801C648
	push {r4,r5,lr}
	ldr r0, _0801C688 @ =gUnknown_02024A64
	ldr r5, [r0]
	cmp r5, 0
	bne _0801C680
	ldr r4, _0801C68C @ =gUnknown_02024C6C
	ldr r0, [r4]
	movs r1, 0xC0
	lsls r1, 3
	ands r0, r1
	cmp r0, 0
	bne _0801C674
	ldr r0, _0801C690 @ =gUnknown_02024C07
	ldrb r1, [r0]
	movs r0, 0x4
	bl b_std_message
	ldr r0, [r4]
	movs r1, 0x80
	lsls r1, 3
	orrs r0, r1
	str r0, [r4]
_0801C674:
	ldr r0, _0801C694 @ =gUnknown_02024C10
	ldr r1, [r0]
	adds r1, 0x1
	str r1, [r0]
	ldr r0, _0801C698 @ =gUnknown_02024D1E
	strb r5, [r0, 0x7]
_0801C680:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801C688: .4byte gUnknown_02024A64
_0801C68C: .4byte gUnknown_02024C6C
_0801C690: .4byte gUnknown_02024C07
_0801C694: .4byte gUnknown_02024C10
_0801C698: .4byte gUnknown_02024D1E
	thumb_func_end atk02_attackstring

	thumb_func_start atk03_ppreduce
atk03_ppreduce: @ 801C69C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	movs r6, 0x1
	ldr r0, _0801C6EC @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	beq _0801C6B4
	b _0801C84E
_0801C6B4:
	ldr r1, _0801C6F0 @ =gUnknown_02024D68
	ldr r2, _0801C6F4 @ =gUnknown_02024C07
	ldrb r3, [r2]
	lsls r0, r3, 2
	adds r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r4, r0, 31
	mov r9, r2
	cmp r4, 0
	bne _0801C756
	ldr r2, _0801C6F8 @ =gBattleMoves
	ldr r0, _0801C6FC @ =gUnknown_02024BE6
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x6]
	cmp r0, 0x20
	beq _0801C706
	cmp r0, 0x20
	bgt _0801C700
	cmp r0, 0x8
	beq _0801C71C
	b _0801C736
	.align 2, 0
_0801C6EC: .4byte gUnknown_02024A64
_0801C6F0: .4byte gUnknown_02024D68
_0801C6F4: .4byte gUnknown_02024C07
_0801C6F8: .4byte gBattleMoves
_0801C6FC: .4byte gUnknown_02024BE6
_0801C700:
	cmp r0, 0x40
	beq _0801C71C
	b _0801C736
_0801C706:
	str r4, [sp]
	movs r0, 0x12
	adds r1, r3, 0
	movs r2, 0x2E
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	lsrs r0, 24
	adds r6, r0, 0x1
	b _0801C756
_0801C71C:
	mov r0, r9
	ldrb r1, [r0]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x10
	movs r2, 0x2E
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	lsrs r0, 24
	adds r6, r0
	b _0801C756
_0801C736:
	ldr r1, _0801C7B8 @ =gUnknown_02024C08
	mov r2, r9
	ldrb r0, [r2]
	ldrb r7, [r1]
	cmp r0, r7
	beq _0801C756
	ldr r2, _0801C7BC @ =gBattleMons
	ldrb r1, [r1]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x2E
	bne _0801C756
	adds r6, 0x1
_0801C756:
	ldr r0, _0801C7C0 @ =gUnknown_02024C6C
	ldr r4, [r0]
	movs r0, 0xA0
	lsls r0, 4
	ands r4, r0
	cmp r4, 0
	bne _0801C83C
	ldr r2, _0801C7BC @ =gBattleMons
	ldr r3, _0801C7C4 @ =gUnknown_02024BE4
	ldr r1, _0801C7C8 @ =gUnknown_02024C07
	ldrb r5, [r1]
	movs r0, 0x58
	mov r8, r0
	mov r0, r8
	muls r0, r5
	ldrb r7, [r3]
	adds r0, r7
	movs r7, 0x24
	adds r7, r2
	mov r12, r7
	add r0, r12
	ldrb r0, [r0]
	mov r9, r1
	mov r10, r2
	adds r7, r3, 0
	cmp r0, 0
	beq _0801C83C
	ldr r0, _0801C7CC @ =gUnknown_02024D28
	lsls r1, r5, 4
	adds r1, r0
	ldrb r0, [r1, 0x2]
	movs r2, 0x8
	orrs r0, r2
	strb r0, [r1, 0x2]
	mov r1, r9
	ldrb r0, [r1]
	mov r2, r8
	muls r2, r0
	adds r0, r2, 0
	ldrb r1, [r7]
	adds r0, r1
	mov r1, r12
	adds r2, r0, r1
	ldrb r0, [r2]
	cmp r0, r6
	ble _0801C7D0
	subs r0, r6
	strb r0, [r2]
	b _0801C7D2
	.align 2, 0
_0801C7B8: .4byte gUnknown_02024C08
_0801C7BC: .4byte gBattleMons
_0801C7C0: .4byte gUnknown_02024C6C
_0801C7C4: .4byte gUnknown_02024BE4
_0801C7C8: .4byte gUnknown_02024C07
_0801C7CC: .4byte gUnknown_02024D28
_0801C7D0:
	strb r4, [r2]
_0801C7D2:
	mov r2, r9
	ldrb r3, [r2]
	movs r4, 0x58
	adds r0, r3, 0
	muls r0, r4
	mov r1, r10
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 14
	ands r0, r1
	cmp r0, 0
	bne _0801C83C
	ldr r1, _0801C860 @ =gUnknown_02024CA8
	lsls r0, r3, 3
	subs r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x18]
	lsrs r1, 4
	ldr r2, _0801C864 @ =gBitTable
	ldrb r0, [r7]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _0801C83C
	ldr r0, _0801C868 @ =gUnknown_02024A60
	strb r3, [r0]
	ldrb r1, [r7]
	adds r1, 0x9
	lsls r1, 24
	lsrs r1, 24
	mov r2, r9
	ldrb r0, [r2]
	muls r0, r4
	mov r2, r10
	adds r2, 0x24
	adds r0, r2
	ldrb r7, [r7]
	adds r0, r7
	str r0, [sp]
	movs r0, 0
	movs r2, 0
	movs r3, 0x1
	bl dp01_build_cmdbuf_x02_a_b_varargs
	mov r7, r9
	ldrb r0, [r7]
	bl dp01_battle_side_mark_buffer_for_execution
_0801C83C:
	ldr r2, _0801C86C @ =gUnknown_02024C6C
	ldr r0, [r2]
	ldr r1, _0801C870 @ =0xfffff7ff
	ands r0, r1
	str r0, [r2]
	ldr r1, _0801C874 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
_0801C84E:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C860: .4byte gUnknown_02024CA8
_0801C864: .4byte gBitTable
_0801C868: .4byte gUnknown_02024A60
_0801C86C: .4byte gUnknown_02024C6C
_0801C870: .4byte 0xfffff7ff
_0801C874: .4byte gUnknown_02024C10
	thumb_func_end atk03_ppreduce

	thumb_func_start atk04_critcalc
atk04_critcalc: @ 801C878
	push {r4-r7,lr}
	ldr r1, _0801C89C @ =gBattleMons
	ldr r0, _0801C8A0 @ =gUnknown_02024C07
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	ldrh r0, [r0, 0x2E]
	cmp r0, 0xAF
	bne _0801C8A8
	ldr r1, _0801C8A4 @ =gEnigmaBerries
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r6, [r0, 0x7]
	b _0801C8B0
	.align 2, 0
_0801C89C: .4byte gBattleMons
_0801C8A0: .4byte gUnknown_02024C07
_0801C8A4: .4byte gEnigmaBerries
_0801C8A8:
	bl ItemId_GetHoldEffect
	lsls r0, 24
	lsrs r6, r0, 24
_0801C8B0:
	ldr r1, _0801C93C @ =gUnknown_02024C0B
	ldr r3, _0801C940 @ =gUnknown_02024C07
	ldrb r0, [r3]
	strb r0, [r1]
	ldr r4, _0801C944 @ =gBattleMons
	ldrb r1, [r3]
	movs r0, 0x58
	adds r7, r1, 0
	muls r7, r0
	adds r0, r4, 0
	adds r0, 0x50
	adds r0, r7, r0
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 13
	ands r0, r1
	negs r0, r0
	asrs r5, r0, 31
	movs r0, 0x2
	ands r5, r0
	ldr r2, _0801C948 @ =gBattleMoves
	ldr r0, _0801C94C @ =gUnknown_02024BE6
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	mov r12, r3
	cmp r1, 0x2B
	bne _0801C8F0
	adds r5, 0x1
_0801C8F0:
	adds r0, r5, 0
	cmp r1, 0x4B
	bne _0801C8F8
	adds r0, 0x1
_0801C8F8:
	cmp r1, 0xC8
	bne _0801C8FE
	adds r0, 0x1
_0801C8FE:
	adds r2, r0, 0
	cmp r1, 0xD1
	bne _0801C906
	adds r2, 0x1
_0801C906:
	movs r1, 0
	cmp r6, 0x3F
	bne _0801C916
	adds r0, r7, r4
	ldrh r0, [r0]
	cmp r0, 0x71
	bne _0801C916
	movs r1, 0x1
_0801C916:
	lsls r5, r1, 1
	movs r3, 0
	cmp r6, 0x42
	bne _0801C930
	mov r0, r12
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r4
	ldrh r0, [r0]
	cmp r0, 0x53
	bne _0801C930
	movs r3, 0x1
_0801C930:
	lsls r1, r3, 1
	cmp r6, 0x29
	bne _0801C950
	adds r0, r5, 0x1
	adds r0, r2, r0
	b _0801C952
	.align 2, 0
_0801C93C: .4byte gUnknown_02024C0B
_0801C940: .4byte gUnknown_02024C07
_0801C944: .4byte gBattleMons
_0801C948: .4byte gBattleMoves
_0801C94C: .4byte gUnknown_02024BE6
_0801C950:
	adds r0, r2, r5
_0801C952:
	adds r0, r1
	lsls r0, 16
	lsrs r0, 16
	adds r5, r0, 0
	cmp r5, 0x4
	bls _0801C960
	movs r5, 0x4
_0801C960:
	ldr r0, _0801C9BC @ =gUnknown_02024C08
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r4
	adds r0, 0x20
	ldrb r4, [r0]
	cmp r4, 0x4
	beq _0801C9D0
	cmp r4, 0x4B
	beq _0801C9D0
	ldr r1, _0801C9C0 @ =gUnknown_02024C98
	mov r2, r12
	ldrb r0, [r2]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 8
	ands r0, r1
	cmp r0, 0
	bne _0801C9D0
	ldr r0, _0801C9C4 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x84
	lsls r0, 2
	ands r0, r1
	cmp r0, 0
	bne _0801C9D0
	bl Random
	ldr r2, _0801C9C8 @ =gCriticalHitChance
	lsls r1, r5, 1
	adds r1, r2
	lsls r0, 16
	lsrs r0, 16
	ldrh r1, [r1]
	bl __umodsi3
	lsls r0, 16
	cmp r0, 0
	bne _0801C9D0
	ldr r1, _0801C9CC @ =gCritMultiplier
	movs r0, 0x2
	b _0801C9D4
	.align 2, 0
_0801C9BC: .4byte gUnknown_02024C08
_0801C9C0: .4byte gUnknown_02024C98
_0801C9C4: .4byte gUnknown_020239F8
_0801C9C8: .4byte gCriticalHitChance
_0801C9CC: .4byte gCritMultiplier
_0801C9D0:
	ldr r1, _0801C9E4 @ =gCritMultiplier
	movs r0, 0x1
_0801C9D4:
	strb r0, [r1]
	ldr r1, _0801C9E8 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C9E4: .4byte gCritMultiplier
_0801C9E8: .4byte gUnknown_02024C10
	thumb_func_end atk04_critcalc

	thumb_func_start atk05_damagecalc1
atk05_damagecalc1: @ 801C9EC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x10
	ldr r4, _0801CABC @ =gUnknown_02024C7A
	ldr r6, _0801CAC0 @ =gUnknown_02024C08
	ldrb r0, [r6]
	bl battle_get_per_side_status
	movs r1, 0x1
	ands r1, r0
	lsls r1, 1
	adds r1, r4
	ldrh r3, [r1]
	ldr r0, _0801CAC4 @ =gUnknown_02024C07
	mov r8, r0
	ldrb r0, [r0]
	movs r4, 0x58
	muls r0, r4
	ldr r2, _0801CAC8 @ =gBattleMons
	adds r0, r2
	ldrb r1, [r6]
	muls r1, r4
	adds r1, r2
	ldr r2, _0801CACC @ =gUnknown_02024BE6
	mov r9, r2
	ldrh r2, [r2]
	ldr r4, _0801CAD0 @ =gUnknown_02024DEC
	ldrh r4, [r4]
	str r4, [sp]
	ldr r5, _0801CAD4 @ =0x02000000
	ldr r7, _0801CAD8 @ =0x0001601c
	adds r4, r5, r7
	ldrb r4, [r4]
	str r4, [sp, 0x4]
	mov r7, r8
	ldrb r4, [r7]
	str r4, [sp, 0x8]
	ldrb r4, [r6]
	str r4, [sp, 0xC]
	bl CalculateBaseDamage
	ldr r4, _0801CADC @ =gUnknown_02024BEC
	ldr r1, _0801CAE0 @ =gCritMultiplier
	ldrb r1, [r1]
	muls r1, r0
	ldr r0, _0801CAE4 @ =0x0001601f
	adds r5, r0
	ldrb r0, [r5]
	adds r3, r1, 0
	muls r3, r0
	str r3, [r4]
	ldr r1, _0801CAE8 @ =gUnknown_02024C98
	ldrb r0, [r7]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 2
	ands r0, r1
	cmp r0, 0
	beq _0801CA82
	ldr r2, _0801CAEC @ =gBattleMoves
	mov r7, r9
	ldrh r1, [r7]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x2]
	cmp r0, 0xD
	bne _0801CA82
	lsls r0, r3, 1
	str r0, [r4]
_0801CA82:
	ldr r1, _0801CAF0 @ =gUnknown_02024D28
	ldr r0, _0801CAC4 @ =gUnknown_02024C07
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 28
	cmp r0, 0
	bge _0801CAA4
	ldr r4, _0801CADC @ =gUnknown_02024BEC
	ldr r1, [r4]
	lsls r0, r1, 4
	subs r0, r1
	movs r1, 0xA
	bl __divsi3
	str r0, [r4]
_0801CAA4:
	ldr r1, _0801CAF4 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	add sp, 0x10
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CABC: .4byte gUnknown_02024C7A
_0801CAC0: .4byte gUnknown_02024C08
_0801CAC4: .4byte gUnknown_02024C07
_0801CAC8: .4byte gBattleMons
_0801CACC: .4byte gUnknown_02024BE6
_0801CAD0: .4byte gUnknown_02024DEC
_0801CAD4: .4byte 0x02000000
_0801CAD8: .4byte 0x0001601c
_0801CADC: .4byte gUnknown_02024BEC
_0801CAE0: .4byte gCritMultiplier
_0801CAE4: .4byte 0x0001601f
_0801CAE8: .4byte gUnknown_02024C98
_0801CAEC: .4byte gBattleMoves
_0801CAF0: .4byte gUnknown_02024D28
_0801CAF4: .4byte gUnknown_02024C10
	thumb_func_end atk05_damagecalc1

	thumb_func_start sub_801CAF8
sub_801CAF8: @ 801CAF8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x10
	adds r5, r1, 0
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r5, 24
	lsrs r5, 24
	ldr r4, _0801CBBC @ =gUnknown_02024C7A
	adds r0, r5, 0
	bl battle_get_per_side_status
	movs r1, 0x1
	ands r1, r0
	lsls r1, 1
	adds r1, r4
	ldrh r3, [r1]
	movs r1, 0x58
	adds r0, r7, 0
	muls r0, r1
	ldr r2, _0801CBC0 @ =gBattleMons
	adds r0, r2
	muls r1, r5
	adds r1, r2
	ldr r2, _0801CBC4 @ =gUnknown_02024BE6
	mov r9, r2
	ldrh r2, [r2]
	ldr r4, _0801CBC8 @ =gUnknown_02024DEC
	mov r8, r4
	ldrh r4, [r4]
	str r4, [sp]
	ldr r6, _0801CBCC @ =0x02000000
	ldr r4, _0801CBD0 @ =0x0001601c
	ldrb r4, [r4, r6]
	str r4, [sp, 0x4]
	str r7, [sp, 0x8]
	str r5, [sp, 0xC]
	bl CalculateBaseDamage
	ldr r4, _0801CBD4 @ =gUnknown_02024BEC
	movs r1, 0
	mov r2, r8
	strh r1, [r2]
	ldr r1, _0801CBD8 @ =gCritMultiplier
	ldrb r1, [r1]
	muls r1, r0
	ldr r0, _0801CBDC @ =0x0001601f
	adds r6, r0
	ldrb r0, [r6]
	adds r3, r1, 0
	muls r3, r0
	str r3, [r4]
	ldr r1, _0801CBE0 @ =gUnknown_02024C98
	lsls r0, r7, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 2
	ands r0, r1
	cmp r0, 0
	beq _0801CB8E
	ldr r2, _0801CBE4 @ =gBattleMoves
	mov r6, r9
	ldrh r1, [r6]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x2]
	cmp r0, 0xD
	bne _0801CB8E
	lsls r0, r3, 1
	str r0, [r4]
_0801CB8E:
	ldr r0, _0801CBE8 @ =gUnknown_02024D28
	lsls r1, r7, 4
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 28
	cmp r0, 0
	bge _0801CBAC
	ldr r4, _0801CBD4 @ =gUnknown_02024BEC
	ldr r1, [r4]
	lsls r0, r1, 4
	subs r0, r1
	movs r1, 0xA
	bl __divsi3
	str r0, [r4]
_0801CBAC:
	add sp, 0x10
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CBBC: .4byte gUnknown_02024C7A
_0801CBC0: .4byte gBattleMons
_0801CBC4: .4byte gUnknown_02024BE6
_0801CBC8: .4byte gUnknown_02024DEC
_0801CBCC: .4byte 0x02000000
_0801CBD0: .4byte 0x0001601c
_0801CBD4: .4byte gUnknown_02024BEC
_0801CBD8: .4byte gCritMultiplier
_0801CBDC: .4byte 0x0001601f
_0801CBE0: .4byte gUnknown_02024C98
_0801CBE4: .4byte gBattleMoves
_0801CBE8: .4byte gUnknown_02024D28
	thumb_func_end sub_801CAF8

	thumb_func_start battle_attack_damage_modulate_by_effectivity
battle_attack_damage_modulate_by_effectivity: @ 801CBEC
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r5, _0801CC1C @ =gUnknown_02024BEC
	ldr r0, [r5]
	muls r0, r4
	movs r1, 0xA
	bl __divsi3
	str r0, [r5]
	cmp r0, 0
	bne _0801CC0C
	cmp r4, 0
	beq _0801CC0C
	movs r0, 0x1
	str r0, [r5]
_0801CC0C:
	cmp r4, 0x5
	beq _0801CC3C
	cmp r4, 0x5
	bgt _0801CC20
	cmp r4, 0
	beq _0801CC26
	b _0801CCBE
	.align 2, 0
_0801CC1C: .4byte gUnknown_02024BEC
_0801CC20:
	cmp r4, 0x14
	beq _0801CC7C
	b _0801CCBE
_0801CC26:
	ldr r2, _0801CC38 @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x8
	orrs r0, r1
	movs r1, 0xFB
	ands r0, r1
	movs r1, 0xFD
	ands r0, r1
	b _0801CCBC
	.align 2, 0
_0801CC38: .4byte gUnknown_02024C68
_0801CC3C:
	ldr r2, _0801CC6C @ =gBattleMoves
	ldr r0, _0801CC70 @ =gUnknown_02024BE6
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	beq _0801CCBE
	ldr r2, _0801CC74 @ =gUnknown_02024C68
	ldrb r1, [r2]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _0801CCBE
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0801CC78
	movs r0, 0xFD
	ands r0, r1
	b _0801CCBC
	.align 2, 0
_0801CC6C: .4byte gBattleMoves
_0801CC70: .4byte gUnknown_02024BE6
_0801CC74: .4byte gUnknown_02024C68
_0801CC78:
	movs r0, 0x4
	b _0801CCBA
_0801CC7C:
	ldr r2, _0801CCAC @ =gBattleMoves
	ldr r0, _0801CCB0 @ =gUnknown_02024BE6
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	beq _0801CCBE
	ldr r2, _0801CCB4 @ =gUnknown_02024C68
	ldrb r1, [r2]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _0801CCBE
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _0801CCB8
	movs r0, 0xFB
	ands r0, r1
	b _0801CCBC
	.align 2, 0
_0801CCAC: .4byte gBattleMoves
_0801CCB0: .4byte gUnknown_02024BE6
_0801CCB4: .4byte gUnknown_02024C68
_0801CCB8:
	movs r0, 0x2
_0801CCBA:
	orrs r0, r1
_0801CCBC:
	strb r0, [r2]
_0801CCBE:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end battle_attack_damage_modulate_by_effectivity

	thumb_func_start atk06_damagecalc2
atk06_damagecalc2: @ 801CCC4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x8
	movs r3, 0
	ldr r1, _0801CCF0 @ =gUnknown_02024BE6
	ldrh r0, [r1]
	cmp r0, 0xA5
	bne _0801CCD8
	b _0801CEF4
_0801CCD8:
	ldr r0, _0801CCF4 @ =0x02000000
	ldr r2, _0801CCF8 @ =0x0001601c
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0
	beq _0801CCFC
	movs r1, 0x3F
	mov r8, r1
	mov r2, r8
	ands r2, r0
	mov r8, r2
	b _0801CD0C
	.align 2, 0
_0801CCF0: .4byte gUnknown_02024BE6
_0801CCF4: .4byte 0x02000000
_0801CCF8: .4byte 0x0001601c
_0801CCFC:
	ldr r2, _0801CD94 @ =gBattleMoves
	ldrh r1, [r1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x2]
	mov r8, r0
_0801CD0C:
	ldr r2, _0801CD98 @ =gBattleMons
	ldr r0, _0801CD9C @ =gUnknown_02024C07
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r1, r0, r2
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	adds r5, r2, 0
	cmp r0, r8
	beq _0801CD2E
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, r8
	bne _0801CD44
_0801CD2E:
	ldr r4, _0801CDA0 @ =gUnknown_02024BEC
	ldr r1, [r4]
	lsls r0, r1, 4
	subs r0, r1
	str r0, [r4]
	movs r1, 0xA
	str r3, [sp, 0x4]
	bl __divsi3
	str r0, [r4]
	ldr r3, [sp, 0x4]
_0801CD44:
	ldr r2, _0801CDA4 @ =gUnknown_02024C08
	ldrb r1, [r2]
	movs r0, 0x58
	muls r0, r1
	adds r0, r5
	adds r0, 0x20
	ldrb r0, [r0]
	adds r4, r2, 0
	cmp r0, 0x1A
	bne _0801CDBC
	mov r1, r8
	cmp r1, 0x4
	bne _0801CDBC
	ldr r3, _0801CDA8 @ =byte_2024C06
	strb r0, [r3]
	ldr r2, _0801CDAC @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x9
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0801CDB0 @ =gUnknown_02024C3C
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r1
	movs r2, 0
	strh r2, [r0]
	ldr r1, _0801CDB4 @ =gUnknown_02024C44
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r1
	strh r2, [r0]
	ldr r0, _0801CDB8 @ =gUnknown_02024D1E
	mov r2, r8
	strb r2, [r0, 0x6]
	ldrb r0, [r4]
	ldrb r1, [r3]
	bl sub_81074C4
	b _0801CE58
	.align 2, 0
_0801CD94: .4byte gBattleMoves
_0801CD98: .4byte gBattleMons
_0801CD9C: .4byte gUnknown_02024C07
_0801CDA0: .4byte gUnknown_02024BEC
_0801CDA4: .4byte gUnknown_02024C08
_0801CDA8: .4byte byte_2024C06
_0801CDAC: .4byte gUnknown_02024C68
_0801CDB0: .4byte gUnknown_02024C3C
_0801CDB4: .4byte gUnknown_02024C44
_0801CDB8: .4byte gUnknown_02024D1E
_0801CDBC:
	ldr r1, _0801CDC8 @ =gTypeEffectiveness
	adds r0, r3, r1
	ldrb r0, [r0]
	adds r2, r1, 0
	b _0801CE38
	.align 2, 0
_0801CDC8: .4byte gTypeEffectiveness
_0801CDCC:
	adds r3, 0x3
	b _0801CE34
_0801CDD0:
	ldr r5, _0801CF08 @ =gTypeEffectiveness
	adds r0, r3, r5
	ldrb r0, [r0]
	cmp r0, r8
	bne _0801CE2C
	adds r1, r3, 0x1
	adds r1, r5
	ldr r2, _0801CF0C @ =gBattleMons
	ldr r7, _0801CF10 @ =gUnknown_02024C08
	ldrb r0, [r7]
	movs r6, 0x58
	muls r0, r6
	adds r0, r2
	adds r0, 0x21
	ldrb r4, [r1]
	ldrb r0, [r0]
	cmp r4, r0
	bne _0801CE06
	adds r0, r3, 0x2
	adds r0, r5
	ldrb r0, [r0]
	str r2, [sp]
	str r3, [sp, 0x4]
	bl battle_attack_damage_modulate_by_effectivity
	ldr r3, [sp, 0x4]
	ldr r2, [sp]
_0801CE06:
	ldrb r0, [r7]
	muls r0, r6
	adds r0, r2
	adds r1, r0, 0
	adds r1, 0x22
	ldrb r1, [r1]
	cmp r4, r1
	bne _0801CE2C
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, r4
	beq _0801CE2C
	adds r0, r3, 0x2
	adds r0, r5
	ldrb r0, [r0]
	str r3, [sp, 0x4]
	bl battle_attack_damage_modulate_by_effectivity
	ldr r3, [sp, 0x4]
_0801CE2C:
	adds r3, 0x3
	ldr r5, _0801CF0C @ =gBattleMons
	ldr r4, _0801CF10 @ =gUnknown_02024C08
	ldr r2, _0801CF08 @ =gTypeEffectiveness
_0801CE34:
	adds r0, r3, r2
	ldrb r0, [r0]
_0801CE38:
	cmp r0, 0xFF
	beq _0801CE58
	cmp r0, 0xFE
	bne _0801CDD0
	ldrb r1, [r4]
	movs r0, 0x58
	muls r0, r1
	adds r1, r5, 0
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 22
	ands r0, r1
	cmp r0, 0
	beq _0801CDCC
_0801CE58:
	ldr r2, _0801CF0C @ =gBattleMons
	ldr r5, _0801CF10 @ =gUnknown_02024C08
	ldrb r1, [r5]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x20
	ldrb r6, [r0]
	cmp r6, 0x19
	bne _0801CED6
	ldr r0, _0801CF14 @ =gUnknown_02024C07
	ldrb r0, [r0]
	ldr r7, _0801CF18 @ =gUnknown_02024BE6
	ldrh r1, [r7]
	bl move_weather_interaction
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _0801CED6
	ldr r1, _0801CF1C @ =gUnknown_02024C68
	mov r8, r1
	ldrb r4, [r1]
	ands r0, r4
	cmp r0, 0
	beq _0801CE94
	movs r0, 0x6
	ands r0, r4
	cmp r0, 0x6
	bne _0801CED6
_0801CE94:
	ldr r2, _0801CF20 @ =gBattleMoves
	ldrh r1, [r7]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	beq _0801CED6
	ldr r3, _0801CF24 @ =byte_2024C06
	strb r6, [r3]
	movs r0, 0x1
	orrs r0, r4
	mov r2, r8
	strb r0, [r2]
	ldr r1, _0801CF28 @ =gUnknown_02024C3C
	ldrb r0, [r5]
	lsls r0, 1
	adds r0, r1
	movs r2, 0
	strh r2, [r0]
	ldr r1, _0801CF2C @ =gUnknown_02024C44
	ldrb r0, [r5]
	lsls r0, 1
	adds r0, r1
	strh r2, [r0]
	ldr r1, _0801CF30 @ =gUnknown_02024D1E
	movs r0, 0x3
	strb r0, [r1, 0x6]
	ldrb r0, [r5]
	ldrb r1, [r3]
	bl sub_81074C4
_0801CED6:
	ldr r0, _0801CF1C @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _0801CEF4
	ldr r2, _0801CF34 @ =gUnknown_02024D28
	ldr r0, _0801CF14 @ =gUnknown_02024C07
	ldrb r1, [r0]
	lsls r1, 4
	adds r1, r2
	ldrb r0, [r1, 0x1]
	movs r2, 0x2
	orrs r0, r2
	strb r0, [r1, 0x1]
_0801CEF4:
	ldr r1, _0801CF38 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	add sp, 0x8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CF08: .4byte gTypeEffectiveness
_0801CF0C: .4byte gBattleMons
_0801CF10: .4byte gUnknown_02024C08
_0801CF14: .4byte gUnknown_02024C07
_0801CF18: .4byte gUnknown_02024BE6
_0801CF1C: .4byte gUnknown_02024C68
_0801CF20: .4byte gBattleMoves
_0801CF24: .4byte byte_2024C06
_0801CF28: .4byte gUnknown_02024C3C
_0801CF2C: .4byte gUnknown_02024C44
_0801CF30: .4byte gUnknown_02024D1E
_0801CF34: .4byte gUnknown_02024D28
_0801CF38: .4byte gUnknown_02024C10
	thumb_func_end atk06_damagecalc2

	thumb_func_start b_wonderguard_and_levitate
b_wonderguard_and_levitate: @ 801CF3C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	movs r6, 0
	movs r5, 0
	ldr r0, _0801CF80 @ =gUnknown_02024BE6
	ldrh r1, [r0]
	mov r9, r0
	cmp r1, 0xA5
	bne _0801CF54
	b _0801D1A4
_0801CF54:
	ldr r2, _0801CF84 @ =gBattleMoves
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r1, r0, r2
	ldrb r0, [r1, 0x1]
	cmp r0, 0
	bne _0801CF66
	b _0801D1A4
_0801CF66:
	ldr r0, _0801CF88 @ =0x02000000
	ldr r2, _0801CF8C @ =0x0001601c
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0
	beq _0801CF90
	movs r1, 0x3F
	mov r12, r1
	mov r2, r12
	ands r2, r0
	mov r12, r2
	b _0801CF94
	.align 2, 0
_0801CF80: .4byte gUnknown_02024BE6
_0801CF84: .4byte gBattleMoves
_0801CF88: .4byte 0x02000000
_0801CF8C: .4byte 0x0001601c
_0801CF90:
	ldrb r1, [r1, 0x2]
	mov r12, r1
_0801CF94:
	ldr r2, _0801CFC8 @ =gBattleMons
	ldr r3, _0801CFCC @ =gUnknown_02024C08
	ldrb r1, [r3]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x20
	ldrb r1, [r0]
	adds r7, r2, 0
	mov r8, r3
	cmp r1, 0x1A
	bne _0801CFD8
	mov r0, r12
	cmp r0, 0x4
	bne _0801CFD8
	ldr r0, _0801CFD0 @ =byte_2024C06
	strb r1, [r0]
	ldr r0, _0801CFD4 @ =gUnknown_02024D1E
	mov r1, r12
	strb r1, [r0, 0x6]
	ldrb r0, [r3]
	movs r1, 0x1A
	bl sub_81074C4
	b _0801D1A4
	.align 2, 0
_0801CFC8: .4byte gBattleMons
_0801CFCC: .4byte gUnknown_02024C08
_0801CFD0: .4byte byte_2024C06
_0801CFD4: .4byte gUnknown_02024D1E
_0801CFD8:
	ldr r1, _0801CFE4 @ =gTypeEffectiveness
	adds r0, r5, r1
	ldrb r0, [r0]
	adds r4, r1, 0
	b _0801D12A
	.align 2, 0
_0801CFE4: .4byte gTypeEffectiveness
_0801CFE8:
	adds r0, r5, r4
	ldrb r0, [r0]
	cmp r0, r12
	beq _0801CFF2
	b _0801D124
_0801CFF2:
	adds r2, r5, 0x1
	adds r3, r2, r4
	mov r0, r8
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r7
	adds r0, 0x21
	ldrb r1, [r3]
	adds r3, r2, 0
	ldrb r0, [r0]
	cmp r1, r0
	bne _0801D032
	adds r0, r5, 0x2
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0
	bne _0801D032
	ldr r2, _0801D1B0 @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x8
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0801D1B4 @ =gUnknown_02024D28
	ldr r0, _0801D1B8 @ =gUnknown_02024C07
	ldrb r2, [r0]
	lsls r2, 4
	adds r2, r1
	ldrb r0, [r2, 0x1]
	movs r1, 0x2
	orrs r0, r1
	strb r0, [r2, 0x1]
_0801D032:
	adds r2, r3, r4
	mov r0, r8
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r7
	adds r1, r0, 0
	adds r1, 0x22
	ldrb r2, [r2]
	ldrb r1, [r1]
	cmp r2, r1
	bne _0801D078
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, r2
	beq _0801D078
	adds r0, r5, 0x2
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0
	bne _0801D078
	ldr r2, _0801D1B0 @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x8
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0801D1B4 @ =gUnknown_02024D28
	ldr r0, _0801D1B8 @ =gUnknown_02024C07
	ldrb r2, [r0]
	lsls r2, 4
	adds r2, r1
	ldrb r0, [r2, 0x1]
	movs r1, 0x2
	orrs r0, r1
	strb r0, [r2, 0x1]
_0801D078:
	adds r2, r3, r4
	mov r0, r8
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r7
	adds r0, 0x21
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bne _0801D09C
	adds r0, r5, 0x2
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0x14
	bne _0801D09C
	movs r0, 0x1
	orrs r6, r0
_0801D09C:
	adds r2, r3, r4
	mov r0, r8
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r7
	adds r1, r0, 0
	adds r1, 0x22
	ldrb r2, [r2]
	ldrb r1, [r1]
	cmp r2, r1
	bne _0801D0CA
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, r2
	beq _0801D0CA
	adds r0, r5, 0x2
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0x14
	bne _0801D0CA
	movs r0, 0x1
	orrs r6, r0
_0801D0CA:
	adds r2, r3, r4
	mov r0, r8
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r7
	adds r0, 0x21
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bne _0801D0F2
	adds r0, r5, 0x2
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0x5
	bne _0801D0F2
	movs r0, 0x2
	orrs r6, r0
	lsls r0, r6, 24
	lsrs r6, r0, 24
_0801D0F2:
	adds r2, r3, r4
	mov r0, r8
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r7
	adds r1, r0, 0
	adds r1, 0x22
	ldrb r2, [r2]
	ldrb r1, [r1]
	cmp r2, r1
	bne _0801D124
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, r2
	beq _0801D124
	adds r0, r5, 0x2
	adds r0, r4
	ldrb r0, [r0]
	cmp r0, 0x5
	bne _0801D124
	movs r0, 0x2
	orrs r6, r0
	lsls r0, r6, 24
	lsrs r6, r0, 24
_0801D124:
	adds r5, 0x3
	adds r0, r5, r4
	ldrb r0, [r0]
_0801D12A:
	cmp r0, 0xFF
	beq _0801D14E
	cmp r0, 0xFE
	beq _0801D134
	b _0801CFE8
_0801D134:
	mov r2, r8
	ldrb r1, [r2]
	movs r0, 0x58
	muls r0, r1
	adds r1, r7, 0
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 22
	ands r0, r1
	cmp r0, 0
	beq _0801D124
_0801D14E:
	mov r0, r8
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r7
	adds r0, 0x20
	ldrb r4, [r0]
	cmp r4, 0x19
	bne _0801D1A4
	ldr r0, _0801D1B8 @ =gUnknown_02024C07
	ldrb r0, [r0]
	mov r2, r9
	ldrh r1, [r2]
	bl move_weather_interaction
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _0801D1A4
	movs r0, 0x3
	ands r6, r0
	cmp r6, 0x1
	beq _0801D1A4
	ldr r2, _0801D1BC @ =gBattleMoves
	mov r0, r9
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	beq _0801D1A4
	ldr r0, _0801D1C0 @ =byte_2024C06
	strb r4, [r0]
	ldr r1, _0801D1C4 @ =gUnknown_02024D1E
	movs r0, 0x3
	strb r0, [r1, 0x6]
	mov r1, r8
	ldrb r0, [r1]
	movs r1, 0x19
	bl sub_81074C4
_0801D1A4:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D1B0: .4byte gUnknown_02024C68
_0801D1B4: .4byte gUnknown_02024D28
_0801D1B8: .4byte gUnknown_02024C07
_0801D1BC: .4byte gBattleMoves
_0801D1C0: .4byte byte_2024C06
_0801D1C4: .4byte gUnknown_02024D1E
	thumb_func_end b_wonderguard_and_levitate

	thumb_func_start b_attack_effectivity_adapt
b_attack_effectivity_adapt: @ 801D1C8
	push {r4-r7,lr}
	adds r6, r2, 0
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 16
	lsrs r5, r1, 16
	ldr r7, _0801D1FC @ =gUnknown_02024BEC
	ldr r0, [r7]
	muls r0, r4
	movs r1, 0xA
	bl __divsi3
	str r0, [r7]
	cmp r0, 0
	bne _0801D1EE
	cmp r4, 0
	beq _0801D1EE
	movs r0, 0x1
	str r0, [r7]
_0801D1EE:
	cmp r4, 0x5
	beq _0801D216
	cmp r4, 0x5
	bgt _0801D200
	cmp r4, 0
	beq _0801D206
	b _0801D27A
	.align 2, 0
_0801D1FC: .4byte gUnknown_02024BEC
_0801D200:
	cmp r4, 0x14
	beq _0801D248
	b _0801D27A
_0801D206:
	ldrb r0, [r6]
	movs r1, 0x8
	orrs r0, r1
	movs r1, 0xFB
	ands r0, r1
	movs r1, 0xFD
	ands r0, r1
	b _0801D278
_0801D216:
	ldr r0, _0801D240 @ =gBattleMoves
	lsls r1, r5, 1
	adds r1, r5
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x1]
	cmp r0, 0
	beq _0801D27A
	ldrb r1, [r6]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _0801D27A
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0801D244
	movs r0, 0xFD
	ands r0, r1
	b _0801D278
	.align 2, 0
_0801D240: .4byte gBattleMoves
_0801D244:
	movs r0, 0x4
	b _0801D276
_0801D248:
	ldr r0, _0801D270 @ =gBattleMoves
	lsls r1, r5, 1
	adds r1, r5
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x1]
	cmp r0, 0
	beq _0801D27A
	ldrb r1, [r6]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _0801D27A
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _0801D274
	movs r0, 0xFB
	ands r0, r1
	b _0801D278
	.align 2, 0
_0801D270: .4byte gBattleMoves
_0801D274:
	movs r0, 0x2
_0801D276:
	orrs r0, r1
_0801D278:
	strb r0, [r6]
_0801D27A:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end b_attack_effectivity_adapt

	thumb_func_start move_effectiveness_something
move_effectiveness_something: @ 801D280
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x14
	lsls r0, 16
	lsrs r0, 16
	mov r10, r0
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0x4]
	lsls r2, 24
	lsrs r2, 24
	mov r9, r2
	movs r7, 0
	mov r0, sp
	strb r7, [r0]
	mov r0, r10
	cmp r0, 0xA5
	bne _0801D2AE
	movs r0, 0
	b _0801D43A
_0801D2AE:
	ldr r1, _0801D31C @ =gBattleMoves
	mov r3, r10
	lsls r2, r3, 1
	adds r0, r2, r3
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0, 0x2]
	str r0, [sp, 0x8]
	ldr r1, _0801D320 @ =gBattleMons
	movs r0, 0x58
	ldr r3, [sp, 0x4]
	muls r0, r3
	adds r3, r0, r1
	adds r0, r3, 0
	adds r0, 0x21
	ldrb r0, [r0]
	str r2, [sp, 0xC]
	adds r5, r1, 0
	ldr r1, [sp, 0x8]
	cmp r0, r1
	beq _0801D2E2
	adds r0, r3, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, r1
	bne _0801D2F4
_0801D2E2:
	ldr r4, _0801D324 @ =gUnknown_02024BEC
	ldr r1, [r4]
	lsls r0, r1, 4
	subs r0, r1
	str r0, [r4]
	movs r1, 0xA
	bl __divsi3
	str r0, [r4]
_0801D2F4:
	movs r0, 0x58
	mov r2, r9
	muls r2, r0
	adds r0, r2, 0
	adds r0, r5
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x1A
	bne _0801D328
	ldr r3, [sp, 0x8]
	cmp r3, 0x4
	bne _0801D328
	movs r1, 0x9
	mov r0, sp
	ldrb r0, [r0]
	orrs r0, r1
	mov r1, sp
	strb r0, [r1]
	b _0801D3DC
	.align 2, 0
_0801D31C: .4byte gBattleMoves
_0801D320: .4byte gBattleMons
_0801D324: .4byte gUnknown_02024BEC
_0801D328:
	ldr r1, _0801D344 @ =gTypeEffectiveness
	adds r0, r7, r1
	ldrb r0, [r0]
	adds r2, r1, 0
	cmp r0, 0xFF
	beq _0801D3DC
	cmp r0, 0xFE
	bne _0801D34C
	movs r0, 0x58
	mov r1, r9
	muls r1, r0
	adds r0, r1, 0
	b _0801D3CA
	.align 2, 0
_0801D344: .4byte gTypeEffectiveness
_0801D348:
	adds r7, 0x3
	b _0801D3B6
_0801D34C:
	ldr r6, _0801D44C @ =gTypeEffectiveness
	adds r0, r7, r6
	ldrb r0, [r0]
	ldr r2, [sp, 0x8]
	cmp r0, r2
	bne _0801D3B0
	adds r1, r7, 0x1
	adds r1, r6
	ldr r3, _0801D450 @ =gBattleMons
	mov r8, r3
	movs r3, 0x58
	mov r0, r9
	muls r0, r3
	mov r2, r8
	adds r5, r0, r2
	adds r0, r5, 0
	adds r0, 0x21
	ldrb r4, [r1]
	ldrb r0, [r0]
	cmp r4, r0
	bne _0801D388
	adds r0, r7, 0x2
	adds r0, r6
	ldrb r0, [r0]
	mov r1, r10
	mov r2, sp
	str r3, [sp, 0x10]
	bl b_attack_effectivity_adapt
	ldr r3, [sp, 0x10]
_0801D388:
	adds r0, r5, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r4, r0
	bne _0801D3B0
	ldr r0, _0801D454 @ =gUnknown_02024C08
	ldrb r0, [r0]
	muls r0, r3
	add r0, r8
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, r4
	beq _0801D3B0
	adds r0, r7, 0x2
	adds r0, r6
	ldrb r0, [r0]
	mov r1, r10
	mov r2, sp
	bl b_attack_effectivity_adapt
_0801D3B0:
	adds r7, 0x3
	ldr r5, _0801D450 @ =gBattleMons
	ldr r2, _0801D44C @ =gTypeEffectiveness
_0801D3B6:
	adds r0, r7, r2
	ldrb r0, [r0]
	cmp r0, 0xFF
	beq _0801D3DC
	cmp r0, 0xFE
	bne _0801D34C
	movs r0, 0x58
	mov r3, r9
	muls r3, r0
	adds r0, r3, 0
_0801D3CA:
	adds r1, r5, 0
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 22
	ands r0, r1
	cmp r0, 0
	beq _0801D348
_0801D3DC:
	movs r0, 0x58
	mov r1, r9
	muls r1, r0
	adds r0, r1, 0
	adds r0, r5
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x19
	bne _0801D436
	mov r0, sp
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _0801D436
	ldr r0, [sp, 0x4]
	mov r1, r10
	bl move_weather_interaction
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x2
	bne _0801D436
	mov r0, sp
	ldrb r3, [r0]
	adds r0, r1, 0
	ands r0, r3
	cmp r0, 0
	beq _0801D41E
	movs r0, 0x6
	ands r0, r3
	cmp r0, 0x6
	bne _0801D436
_0801D41E:
	ldr r0, _0801D458 @ =gBattleMoves
	ldr r1, [sp, 0xC]
	add r1, r10
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x1]
	cmp r0, 0
	beq _0801D436
	mov r0, sp
	movs r1, 0x1
	orrs r1, r3
	strb r1, [r0]
_0801D436:
	mov r0, sp
	ldrb r0, [r0]
_0801D43A:
	add sp, 0x14
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801D44C: .4byte gTypeEffectiveness
_0801D450: .4byte gBattleMons
_0801D454: .4byte gUnknown_02024C08
_0801D458: .4byte gBattleMoves
	thumb_func_end move_effectiveness_something

	thumb_func_start ai_rate_move
ai_rate_move: @ 801D45C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	lsls r0, 16
	lsrs r6, r0, 16
	lsls r1, 16
	lsrs r1, 16
	lsls r2, 24
	lsrs r2, 24
	str r2, [sp, 0x4]
	movs r7, 0
	mov r0, sp
	strb r7, [r0]
	ldr r2, _0801D498 @ =gBaseStats
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x6]
	str r1, [sp, 0x8]
	ldrb r0, [r0, 0x7]
	mov r8, r0
	cmp r6, 0xA5
	bne _0801D49C
	movs r0, 0
	b _0801D554
	.align 2, 0
_0801D498: .4byte gBaseStats
_0801D49C:
	ldr r2, _0801D4C0 @ =gBattleMoves
	lsls r1, r6, 1
	adds r0, r1, r6
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x2]
	mov r9, r0
	str r1, [sp, 0xC]
	ldr r3, [sp, 0x4]
	cmp r3, 0x1A
	bne _0801D4C4
	cmp r0, 0x4
	bne _0801D4C4
	movs r1, 0x9
	mov r0, sp
	strb r1, [r0]
	b _0801D51E
	.align 2, 0
_0801D4C0: .4byte gBattleMoves
_0801D4C4:
	ldr r0, _0801D564 @ =gTypeEffectiveness
	mov r10, r0
	adds r1, r7, r0
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _0801D51E
	adds r4, r1, 0
_0801D4D2:
	ldrb r0, [r4]
	cmp r0, 0xFE
	beq _0801D510
	cmp r0, r9
	bne _0801D510
	ldrb r5, [r4, 0x1]
	ldr r1, [sp, 0x8]
	cmp r5, r1
	bne _0801D4EE
	ldrb r0, [r4, 0x2]
	adds r1, r6, 0
	mov r2, sp
	bl b_attack_effectivity_adapt
_0801D4EE:
	cmp r5, r8
	bne _0801D510
	ldr r0, _0801D568 @ =gUnknown_02024C08
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	ldr r3, _0801D56C @ =gBattleMons
	adds r0, r3
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, r8
	beq _0801D510
	ldrb r0, [r4, 0x2]
	adds r1, r6, 0
	mov r2, sp
	bl b_attack_effectivity_adapt
_0801D510:
	adds r4, 0x3
	adds r7, 0x3
	mov r1, r10
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, 0xFF
	bne _0801D4D2
_0801D51E:
	ldr r3, [sp, 0x4]
	cmp r3, 0x19
	bne _0801D550
	mov r0, sp
	ldrb r2, [r0]
	movs r0, 0x2
	ands r0, r2
	cmp r0, 0
	beq _0801D538
	movs r0, 0x6
	ands r0, r2
	cmp r0, 0x6
	bne _0801D550
_0801D538:
	ldr r0, _0801D570 @ =gBattleMoves
	ldr r3, [sp, 0xC]
	adds r1, r3, r6
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x1]
	cmp r0, 0
	beq _0801D550
	mov r0, sp
	movs r1, 0x8
	orrs r1, r2
	strb r1, [r0]
_0801D550:
	mov r0, sp
	ldrb r0, [r0]
_0801D554:
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801D564: .4byte gTypeEffectiveness
_0801D568: .4byte gUnknown_02024C08
_0801D56C: .4byte gBattleMons
_0801D570: .4byte gBattleMoves
	thumb_func_end ai_rate_move

	thumb_func_start unref_sub_801D574
unref_sub_801D574: @ 801D574
	push {r4,lr}
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xF
	ands r0, r1
	movs r1, 0x64
	subs r1, r0
	lsls r1, 16
	lsrs r1, 16
	ldr r4, _0801D5AC @ =gUnknown_02024BEC
	ldr r0, [r4]
	cmp r0, 0
	beq _0801D5A6
	muls r0, r1
	str r0, [r4]
	movs r1, 0x64
	bl __divsi3
	str r0, [r4]
	cmp r0, 0
	bne _0801D5A6
	movs r0, 0x1
	str r0, [r4]
_0801D5A6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D5AC: .4byte gUnknown_02024BEC
	thumb_func_end unref_sub_801D574

	thumb_func_start atk07_damagecalc3
atk07_damagecalc3: @ 801D5B0
	push {r4-r7,lr}
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xF
	ands r0, r1
	movs r1, 0x64
	subs r1, r0
	lsls r1, 16
	lsrs r1, 16
	ldr r4, _0801D608 @ =gUnknown_02024BEC
	ldr r0, [r4]
	cmp r0, 0
	beq _0801D5E2
	muls r0, r1
	str r0, [r4]
	movs r1, 0x64
	bl __divsi3
	str r0, [r4]
	cmp r0, 0
	bne _0801D5E2
	movs r0, 0x1
	str r0, [r4]
_0801D5E2:
	ldr r7, _0801D60C @ =gBattleMons
	ldr r6, _0801D610 @ =gUnknown_02024C08
	ldrb r2, [r6]
	movs r5, 0x58
	adds r0, r2, 0
	muls r0, r5
	adds r1, r0, r7
	ldrh r0, [r1, 0x2E]
	cmp r0, 0xAF
	bne _0801D618
	ldr r1, _0801D614 @ =gEnigmaBerries
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r4, [r0, 0x7]
	ldrb r6, [r0, 0x1A]
	b _0801D632
	.align 2, 0
_0801D608: .4byte gUnknown_02024BEC
_0801D60C: .4byte gBattleMons
_0801D610: .4byte gUnknown_02024C08
_0801D614: .4byte gEnigmaBerries
_0801D618:
	ldrh r0, [r1, 0x2E]
	bl ItemId_GetHoldEffect
	lsls r0, 24
	lsrs r4, r0, 24
	ldrb r0, [r6]
	muls r0, r5
	adds r0, r7
	ldrh r0, [r0, 0x2E]
	bl ItemId_GetHoldEffectParam
	lsls r0, 24
	lsrs r6, r0, 24
_0801D632:
	ldr r1, _0801D6F4 @ =gUnknown_02024C0B
	ldr r5, _0801D6F8 @ =gUnknown_02024C08
	ldrb r0, [r5]
	strb r0, [r1]
	cmp r4, 0x27
	bne _0801D670
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, r6
	bcs _0801D670
	ldrb r0, [r5]
	movs r1, 0x27
	bl sub_81074F8
	ldr r2, _0801D6FC @ =gUnknown_02024D68
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r2, 0x80
	orrs r1, r2
	strb r1, [r0]
_0801D670:
	ldr r2, _0801D700 @ =gBattleMons
	ldr r3, _0801D6F8 @ =gUnknown_02024C08
	ldrb r4, [r3]
	movs r0, 0x58
	muls r0, r4
	adds r1, r2, 0
	adds r1, 0x50
	adds r0, r1
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 17
	ands r1, r0
	adds r5, r2, 0
	cmp r1, 0
	bne _0801D740
	ldr r2, _0801D704 @ =gBattleMoves
	ldr r0, _0801D708 @ =gUnknown_02024BE6
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0x65
	beq _0801D6C2
	ldr r0, _0801D70C @ =gUnknown_02024D28
	lsls r1, r4, 4
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 30
	cmp r0, 0
	blt _0801D6C2
	ldr r0, _0801D6FC @ =gUnknown_02024D68
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1]
	lsrs r0, 7
	cmp r0, 0
	beq _0801D740
_0801D6C2:
	ldrb r0, [r3]
	movs r4, 0x58
	muls r0, r4
	adds r0, r5
	ldrh r1, [r0, 0x28]
	ldr r2, _0801D710 @ =gUnknown_02024BEC
	ldr r0, [r2]
	cmp r1, r0
	bgt _0801D740
	subs r0, r1, 0x1
	str r0, [r2]
	ldr r1, _0801D70C @ =gUnknown_02024D28
	ldrb r3, [r3]
	lsls r0, r3, 4
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	cmp r0, 0
	bge _0801D718
	ldr r0, _0801D714 @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r2, 0x40
	orrs r1, r2
	strb r1, [r0]
	b _0801D740
	.align 2, 0
_0801D6F4: .4byte gUnknown_02024C0B
_0801D6F8: .4byte gUnknown_02024C08
_0801D6FC: .4byte gUnknown_02024D68
_0801D700: .4byte gBattleMons
_0801D704: .4byte gBattleMoves
_0801D708: .4byte gUnknown_02024BE6
_0801D70C: .4byte gUnknown_02024D28
_0801D710: .4byte gUnknown_02024BEC
_0801D714: .4byte gUnknown_02024C68
_0801D718:
	ldr r0, _0801D750 @ =gUnknown_02024D68
	lsls r1, r3, 2
	adds r1, r3
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1]
	lsrs r0, 7
	cmp r0, 0
	beq _0801D740
	ldr r2, _0801D754 @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0801D758 @ =gUnknown_02024C04
	adds r0, r3, 0
	muls r0, r4
	adds r0, r5
	ldrh r0, [r0, 0x2E]
	strh r0, [r1]
_0801D740:
	ldr r1, _0801D75C @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D750: .4byte gUnknown_02024D68
_0801D754: .4byte gUnknown_02024C68
_0801D758: .4byte gUnknown_02024C04
_0801D75C: .4byte gUnknown_02024C10
	thumb_func_end atk07_damagecalc3

	thumb_func_start atk08_cmd8
atk08_cmd8: @ 801D760
	push {r4-r7,lr}
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xF
	ands r0, r1
	movs r1, 0x64
	subs r1, r0
	lsls r1, 16
	lsrs r1, 16
	ldr r4, _0801D7B8 @ =gUnknown_02024BEC
	ldr r0, [r4]
	cmp r0, 0
	beq _0801D792
	muls r0, r1
	str r0, [r4]
	movs r1, 0x64
	bl __divsi3
	str r0, [r4]
	cmp r0, 0
	bne _0801D792
	movs r0, 0x1
	str r0, [r4]
_0801D792:
	ldr r7, _0801D7BC @ =gBattleMons
	ldr r6, _0801D7C0 @ =gUnknown_02024C08
	ldrb r2, [r6]
	movs r5, 0x58
	adds r0, r2, 0
	muls r0, r5
	adds r1, r0, r7
	ldrh r0, [r1, 0x2E]
	cmp r0, 0xAF
	bne _0801D7C8
	ldr r1, _0801D7C4 @ =gEnigmaBerries
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r4, [r0, 0x7]
	ldrb r6, [r0, 0x1A]
	b _0801D7E2
	.align 2, 0
_0801D7B8: .4byte gUnknown_02024BEC
_0801D7BC: .4byte gBattleMons
_0801D7C0: .4byte gUnknown_02024C08
_0801D7C4: .4byte gEnigmaBerries
_0801D7C8:
	ldrh r0, [r1, 0x2E]
	bl ItemId_GetHoldEffect
	lsls r0, 24
	lsrs r4, r0, 24
	ldrb r0, [r6]
	muls r0, r5
	adds r0, r7
	ldrh r0, [r0, 0x2E]
	bl ItemId_GetHoldEffectParam
	lsls r0, 24
	lsrs r6, r0, 24
_0801D7E2:
	ldr r1, _0801D888 @ =gUnknown_02024C0B
	ldr r5, _0801D88C @ =gUnknown_02024C08
	ldrb r0, [r5]
	strb r0, [r1]
	cmp r4, 0x27
	bne _0801D820
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, r6
	bcs _0801D820
	ldrb r0, [r5]
	movs r1, 0x27
	bl sub_81074F8
	ldr r2, _0801D890 @ =gUnknown_02024D68
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r2, 0x80
	orrs r1, r2
	strb r1, [r0]
_0801D820:
	ldr r4, _0801D894 @ =gBattleMons
	ldr r6, _0801D88C @ =gUnknown_02024C08
	ldrb r2, [r6]
	movs r7, 0x58
	adds r3, r2, 0
	muls r3, r7
	adds r0, r4, 0
	adds r0, 0x50
	adds r0, r3, r0
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	bne _0801D8CC
	ldr r5, _0801D898 @ =gUnknown_02024D28
	lsls r0, r2, 4
	adds r0, r5
	ldrb r0, [r0]
	lsls r0, 30
	cmp r0, 0
	blt _0801D85E
	ldr r0, _0801D890 @ =gUnknown_02024D68
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1]
	lsrs r0, 7
	cmp r0, 0
	beq _0801D8CC
_0801D85E:
	adds r0, r3, r4
	ldrh r1, [r0, 0x28]
	ldr r2, _0801D89C @ =gUnknown_02024BEC
	ldr r0, [r2]
	cmp r1, r0
	bgt _0801D8CC
	subs r0, r1, 0x1
	str r0, [r2]
	ldrb r3, [r6]
	lsls r0, r3, 4
	adds r0, r5
	ldrb r0, [r0]
	lsls r0, 30
	cmp r0, 0
	bge _0801D8A4
	ldr r0, _0801D8A0 @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r2, 0x40
	orrs r1, r2
	strb r1, [r0]
	b _0801D8CC
	.align 2, 0
_0801D888: .4byte gUnknown_02024C0B
_0801D88C: .4byte gUnknown_02024C08
_0801D890: .4byte gUnknown_02024D68
_0801D894: .4byte gBattleMons
_0801D898: .4byte gUnknown_02024D28
_0801D89C: .4byte gUnknown_02024BEC
_0801D8A0: .4byte gUnknown_02024C68
_0801D8A4:
	ldr r0, _0801D8DC @ =gUnknown_02024D68
	lsls r1, r3, 2
	adds r1, r3
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1]
	lsrs r0, 7
	cmp r0, 0
	beq _0801D8CC
	ldr r2, _0801D8E0 @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0801D8E4 @ =gUnknown_02024C04
	adds r0, r3, 0
	muls r0, r7
	adds r0, r4
	ldrh r0, [r0, 0x2E]
	strh r0, [r1]
_0801D8CC:
	ldr r1, _0801D8E8 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D8DC: .4byte gUnknown_02024D68
_0801D8E0: .4byte gUnknown_02024C68
_0801D8E4: .4byte gUnknown_02024C04
_0801D8E8: .4byte gUnknown_02024C10
	thumb_func_end atk08_cmd8

	thumb_func_start sub_801D8EC
sub_801D8EC: @ 801D8EC
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, 0xC
	ldr r0, _0801D940 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	beq _0801D900
	b _0801DA4A
_0801D900:
	ldr r0, _0801D944 @ =gUnknown_02024C6C
	ldr r0, [r0]
	movs r1, 0x80
	ands r0, r1
	ldr r3, _0801D948 @ =gUnknown_02024BE6
	cmp r0, 0
	beq _0801D960
	ldrh r0, [r3]
	cmp r0, 0x90
	beq _0801D960
	cmp r0, 0xA4
	beq _0801D960
	ldr r4, _0801D94C @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, _0801D950 @ =gUnknown_081D8EEF
	str r0, [r4]
	ldr r1, _0801D954 @ =0x02000000
	ldr r0, _0801D958 @ =0x00016002
	adds r2, r1, r0
	ldrb r0, [r2]
	adds r0, 0x1
	strb r0, [r2]
	ldr r2, _0801D95C @ =0x000160a1
	adds r1, r2
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _0801DA4A
	.align 2, 0
_0801D940: .4byte gUnknown_02024A64
_0801D944: .4byte gUnknown_02024C6C
_0801D948: .4byte gUnknown_02024BE6
_0801D94C: .4byte gUnknown_02024C10
_0801D950: .4byte gUnknown_081D8EEF
_0801D954: .4byte 0x02000000
_0801D958: .4byte 0x00016002
_0801D95C: .4byte 0x000160a1
_0801D960:
	ldr r2, _0801DA0C @ =gBattleMoves
	ldrh r1, [r3]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x6]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	bne _0801D986
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _0801D986
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0801D992
_0801D986:
	ldr r0, _0801DA10 @ =0x02000000
	ldr r1, _0801DA14 @ =0x000160a1
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _0801DA00
_0801D992:
	ldr r0, _0801DA18 @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _0801DA3C
	ldr r1, _0801DA1C @ =gUnknown_02024A60
	ldr r2, _0801DA20 @ =gUnknown_02024C07
	mov r9, r2
	ldrb r0, [r2]
	strb r0, [r1]
	ldrh r1, [r3]
	ldr r6, _0801DA10 @ =0x02000000
	ldr r0, _0801DA24 @ =0x00016002
	adds r0, r6
	mov r8, r0
	ldrb r2, [r0]
	ldr r0, _0801DA28 @ =gBattleMovePower
	ldrh r3, [r0]
	ldr r0, _0801DA2C @ =gUnknown_02024BEC
	ldr r0, [r0]
	str r0, [sp]
	ldr r5, _0801DA30 @ =gBattleMons
	mov r0, r9
	ldrb r4, [r0]
	movs r0, 0x58
	muls r0, r4
	adds r0, r5
	adds r0, 0x2B
	ldrb r0, [r0]
	str r0, [sp, 0x4]
	mov r0, r9
	ldrb r4, [r0]
	lsls r0, r4, 3
	subs r0, r4
	lsls r0, 2
	ldr r4, _0801DA34 @ =gUnknown_02024CA8
	adds r0, r4
	str r0, [sp, 0x8]
	movs r0, 0
	bl dp01_build_cmdbuf_x0F_aa_b_cc_dddd_e_mlc_weather_00_x1Cbytes
	mov r1, r8
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r2, _0801DA14 @ =0x000160a1
	adds r6, r2
	ldrb r0, [r6]
	adds r0, 0x1
	strb r0, [r6]
	mov r1, r9
	ldrb r0, [r1]
	bl dp01_battle_side_mark_buffer_for_execution
_0801DA00:
	ldr r1, _0801DA38 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	b _0801DA4A
	.align 2, 0
_0801DA0C: .4byte gBattleMoves
_0801DA10: .4byte 0x02000000
_0801DA14: .4byte 0x000160a1
_0801DA18: .4byte gUnknown_02024C68
_0801DA1C: .4byte gUnknown_02024A60
_0801DA20: .4byte gUnknown_02024C07
_0801DA24: .4byte 0x00016002
_0801DA28: .4byte gBattleMovePower
_0801DA2C: .4byte gUnknown_02024BEC
_0801DA30: .4byte gBattleMons
_0801DA34: .4byte gUnknown_02024CA8
_0801DA38: .4byte gUnknown_02024C10
_0801DA3C:
	ldr r4, _0801DA58 @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, _0801DA5C @ =gUnknown_081D8EEF
	str r0, [r4]
_0801DA4A:
	add sp, 0xC
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801DA58: .4byte gUnknown_02024C10
_0801DA5C: .4byte gUnknown_081D8EEF
	thumb_func_end sub_801D8EC

	thumb_func_start sub_801DA60
sub_801DA60: @ 801DA60
	push {lr}
	ldr r0, _0801DA78 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _0801DA72
	ldr r1, _0801DA7C @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
_0801DA72:
	pop {r0}
	bx r0
	.align 2, 0
_0801DA78: .4byte gUnknown_02024A64
_0801DA7C: .4byte gUnknown_02024C10
	thumb_func_end sub_801DA60

	thumb_func_start sub_801DA80
sub_801DA80: @ 801DA80
	push {r4,r5,lr}
	ldr r0, _0801DAE4 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _0801DB36
	ldr r0, _0801DAE8 @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _0801DB2E
	ldr r0, _0801DAEC @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r2, _0801DAF0 @ =gUnknown_02024A60
	strb r0, [r2]
	ldr r1, _0801DAF4 @ =gBattleMons
	ldrb r2, [r2]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	beq _0801DB00
	ldr r0, _0801DAF8 @ =gUnknown_02024CA8
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0xA]
	cmp r0, 0
	beq _0801DB00
	ldr r0, _0801DAFC @ =gUnknown_02024C6C
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 1
	ands r0, r1
	cmp r0, 0
	bne _0801DB00
	movs r0, 0x80
	adds r1, r2, 0
	bl b_std_message
	b _0801DB2E
	.align 2, 0
_0801DAE4: .4byte gUnknown_02024A64
_0801DAE8: .4byte gUnknown_02024C68
_0801DAEC: .4byte gUnknown_02024C10
_0801DAF0: .4byte gUnknown_02024A60
_0801DAF4: .4byte gBattleMons
_0801DAF8: .4byte gUnknown_02024CA8
_0801DAFC: .4byte gUnknown_02024C6C
_0801DB00:
	ldr r5, _0801DB3C @ =gUnknown_02024BEC
	ldrh r1, [r5]
	movs r0, 0
	bl dp01_build_cmdbuf_x18_0_aa_health_bar_update
	ldr r4, _0801DB40 @ =gUnknown_02024A60
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _0801DB2E
	ldr r0, [r5]
	cmp r0, 0
	ble _0801DB2E
	ldr r0, _0801DB44 @ =gUnknown_030042E0
	ldrb r1, [r0, 0x5]
	movs r2, 0x1
	orrs r1, r2
	strb r1, [r0, 0x5]
_0801DB2E:
	ldr r1, _0801DB48 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
_0801DB36:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801DB3C: .4byte gUnknown_02024BEC
_0801DB40: .4byte gUnknown_02024A60
_0801DB44: .4byte gUnknown_030042E0
_0801DB48: .4byte gUnknown_02024C10
	thumb_func_end sub_801DA80

	thumb_func_start atk0C_datahpupdate
atk0C_datahpupdate: @ 801DB4C
	push {r4-r7,lr}
	sub sp, 0x4
	ldr r0, _0801DB74 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	beq _0801DB5A
	b _0801DF2E
_0801DB5A:
	ldr r0, _0801DB78 @ =0x02000000
	ldr r1, _0801DB7C @ =0x0001601c
	adds r0, r1
	ldrb r1, [r0]
	cmp r1, 0
	beq _0801DB80
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	bne _0801DB80
	movs r6, 0x3F
	ands r6, r1
	b _0801DB90
	.align 2, 0
_0801DB74: .4byte gUnknown_02024A64
_0801DB78: .4byte 0x02000000
_0801DB7C: .4byte 0x0001601c
_0801DB80:
	ldr r2, _0801DC1C @ =gBattleMoves
	ldr r0, _0801DC20 @ =gUnknown_02024BE6
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r6, [r0, 0x2]
_0801DB90:
	ldr r0, _0801DC24 @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _0801DB9E
	b _0801DF00
_0801DB9E:
	ldr r0, _0801DC28 @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r7, _0801DC2C @ =gUnknown_02024A60
	strb r0, [r7]
	ldr r1, _0801DC30 @ =gBattleMons
	ldrb r2, [r7]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	beq _0801DCB4
	ldr r0, _0801DC34 @ =gUnknown_02024CA8
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r4, r1, r0
	ldrb r1, [r4, 0xA]
	mov r12, r0
	cmp r1, 0
	beq _0801DCB4
	ldr r0, _0801DC38 @ =gUnknown_02024C6C
	ldr r3, [r0]
	movs r0, 0x80
	lsls r0, 1
	ands r3, r0
	cmp r3, 0
	bne _0801DCB4
	adds r5, r1, 0
	ldr r6, _0801DC3C @ =gUnknown_02024BEC
	ldr r4, [r6]
	cmp r5, r4
	blt _0801DC48
	ldr r0, _0801DC40 @ =gUnknown_02024D68
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 2
	adds r0, 0x4
	adds r1, r0
	ldr r0, [r1]
	cmp r0, 0
	bne _0801DC02
	str r4, [r1]
_0801DC02:
	ldrb r0, [r7]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	add r1, r12
	ldr r2, [r6]
	ldrb r0, [r1, 0xA]
	subs r0, r2
	strb r0, [r1, 0xA]
	ldr r1, _0801DC44 @ =gUnknown_02024BF0
	ldr r0, [r6]
	str r0, [r1]
	b _0801DC78
	.align 2, 0
_0801DC1C: .4byte gBattleMoves
_0801DC20: .4byte gUnknown_02024BE6
_0801DC24: .4byte gUnknown_02024C68
_0801DC28: .4byte gUnknown_02024C10
_0801DC2C: .4byte gUnknown_02024A60
_0801DC30: .4byte gBattleMons
_0801DC34: .4byte gUnknown_02024CA8
_0801DC38: .4byte gUnknown_02024C6C
_0801DC3C: .4byte gUnknown_02024BEC
_0801DC40: .4byte gUnknown_02024D68
_0801DC44: .4byte gUnknown_02024BF0
_0801DC48:
	ldr r0, _0801DCA0 @ =gUnknown_02024D68
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 2
	adds r0, 0x4
	adds r1, r0
	ldr r0, [r1]
	cmp r0, 0
	bne _0801DC5C
	str r5, [r1]
_0801DC5C:
	ldr r2, _0801DCA4 @ =gUnknown_02024BF0
	ldrb r1, [r7]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r12
	ldrb r0, [r0, 0xA]
	str r0, [r2]
	ldrb r1, [r7]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r12
	strb r3, [r0, 0xA]
_0801DC78:
	ldr r0, _0801DCA8 @ =gUnknown_02024A60
	ldrb r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r12
	ldrb r0, [r0, 0xA]
	cmp r0, 0
	beq _0801DC8C
	b _0801DF26
_0801DC8C:
	ldr r4, _0801DCAC @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x2
	str r0, [r4]
	bl b_movescr_stack_push_cursor
	ldr r0, _0801DCB0 @ =gUnknown_081D99AB
	str r0, [r4]
	b _0801DF2E
	.align 2, 0
_0801DCA0: .4byte gUnknown_02024D68
_0801DCA4: .4byte gUnknown_02024BF0
_0801DCA8: .4byte gUnknown_02024A60
_0801DCAC: .4byte gUnknown_02024C10
_0801DCB0: .4byte gUnknown_081D99AB
_0801DCB4:
	ldr r0, _0801DCF4 @ =gUnknown_02024C6C
	ldr r2, [r0]
	ldr r1, _0801DCF8 @ =0xfffffeff
	ands r2, r1
	str r2, [r0]
	ldr r1, _0801DCFC @ =gUnknown_02024BEC
	ldr r5, [r1]
	mov r12, r0
	adds r7, r1, 0
	cmp r5, 0
	bge _0801DD08
	ldr r4, _0801DD00 @ =gBattleMons
	ldr r2, _0801DD04 @ =gUnknown_02024A60
	ldrb r0, [r2]
	movs r3, 0x58
	adds r1, r0, 0
	muls r1, r3
	adds r1, r4
	ldrh r0, [r1, 0x28]
	subs r0, r5
	strh r0, [r1, 0x28]
	ldrb r0, [r2]
	muls r0, r3
	adds r1, r0, r4
	ldrh r3, [r1, 0x2C]
	ldrh r0, [r1, 0x28]
	adds r5, r2, 0
	cmp r0, r3
	bhi _0801DCF0
	b _0801DEC6
_0801DCF0:
	strh r3, [r1, 0x28]
	b _0801DEC6
	.align 2, 0
_0801DCF4: .4byte gUnknown_02024C6C
_0801DCF8: .4byte 0xfffffeff
_0801DCFC: .4byte gUnknown_02024BEC
_0801DD00: .4byte gBattleMons
_0801DD04: .4byte gUnknown_02024A60
_0801DD08:
	movs r0, 0x20
	ands r0, r2
	cmp r0, 0
	beq _0801DD24
	movs r0, 0x21
	negs r0, r0
	ands r2, r0
	mov r0, r12
	str r2, [r0]
	ldr r5, _0801DD20 @ =gUnknown_02024A60
	b _0801DD6C
	.align 2, 0
_0801DD20: .4byte gUnknown_02024A60
_0801DD24:
	ldr r0, _0801DD4C @ =gUnknown_02024BF4
	ldr r2, _0801DD50 @ =gUnknown_02024A60
	ldrb r1, [r2]
	lsls r1, 2
	adds r1, r0
	ldr r0, [r1]
	adds r0, r5
	str r0, [r1]
	ldr r0, _0801DD54 @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	adds r5, r2, 0
	cmp r0, 0
	bne _0801DD60
	ldr r1, _0801DD58 @ =gUnknown_02024C74
	ldrb r0, [r5]
	adds r0, r1
	ldr r1, _0801DD5C @ =gUnknown_02024C07
	b _0801DD68
	.align 2, 0
_0801DD4C: .4byte gUnknown_02024BF4
_0801DD50: .4byte gUnknown_02024A60
_0801DD54: .4byte gUnknown_02024C10
_0801DD58: .4byte gUnknown_02024C74
_0801DD5C: .4byte gUnknown_02024C07
_0801DD60:
	ldr r1, _0801DD8C @ =gUnknown_02024C74
	ldrb r0, [r5]
	adds r0, r1
	ldr r1, _0801DD90 @ =gUnknown_02024C08
_0801DD68:
	ldrb r1, [r1]
	strb r1, [r0]
_0801DD6C:
	ldr r4, _0801DD94 @ =gBattleMons
	ldrb r0, [r5]
	movs r3, 0x58
	muls r0, r3
	adds r2, r0, r4
	ldrh r0, [r2, 0x28]
	ldr r1, [r7]
	cmp r0, r1
	ble _0801DD9C
	subs r0, r1
	strh r0, [r2, 0x28]
	ldr r0, _0801DD98 @ =gUnknown_02024BF0
	str r1, [r0]
	adds r7, r0, 0
	b _0801DDAC
	.align 2, 0
_0801DD8C: .4byte gUnknown_02024C74
_0801DD90: .4byte gUnknown_02024C08
_0801DD94: .4byte gBattleMons
_0801DD98: .4byte gUnknown_02024BF0
_0801DD9C:
	ldr r2, _0801DE20 @ =gUnknown_02024BF0
	str r0, [r2]
	ldrb r0, [r5]
	muls r0, r3
	adds r0, r4
	movs r1, 0
	strh r1, [r0, 0x28]
	adds r7, r2, 0
_0801DDAC:
	ldr r2, _0801DE24 @ =gUnknown_02024D68
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r1, r2, 0x4
	adds r3, r0, r1
	ldr r0, [r3]
	adds r4, r2, 0
	cmp r0, 0
	bne _0801DDD4
	mov r1, r12
	ldr r0, [r1]
	movs r1, 0x80
	lsls r1, 13
	ands r0, r1
	cmp r0, 0
	bne _0801DDD4
	ldr r0, [r7]
	str r0, [r3]
_0801DDD4:
	cmp r6, 0x8
	bhi _0801DE5C
	mov r1, r12
	ldr r0, [r1]
	movs r1, 0x80
	lsls r1, 13
	ands r0, r1
	cmp r0, 0
	bne _0801DE58
	ldr r0, _0801DE28 @ =gUnknown_02024BE6
	ldrh r0, [r0]
	cmp r0, 0xDC
	beq _0801DE58
	ldr r3, _0801DE2C @ =gUnknown_02024D28
	ldrb r0, [r5]
	lsls r0, 4
	adds r1, r3, 0x4
	adds r0, r1
	ldr r2, [r7]
	str r2, [r0]
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r1, r4, 0
	adds r1, 0x8
	adds r0, r1
	str r2, [r0]
	ldr r0, _0801DE30 @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	bne _0801DE38
	ldrb r0, [r5]
	lsls r0, 4
	adds r0, r3
	ldr r2, _0801DE34 @ =gUnknown_02024C07
	b _0801DE40
	.align 2, 0
_0801DE20: .4byte gUnknown_02024BF0
_0801DE24: .4byte gUnknown_02024D68
_0801DE28: .4byte gUnknown_02024BE6
_0801DE2C: .4byte gUnknown_02024D28
_0801DE30: .4byte gUnknown_02024C10
_0801DE34: .4byte gUnknown_02024C07
_0801DE38:
	ldrb r0, [r5]
	lsls r0, 4
	adds r0, r3
	ldr r2, _0801DE54 @ =gUnknown_02024C08
_0801DE40:
	ldrb r1, [r2]
	strb r1, [r0, 0xC]
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrb r1, [r2]
	strb r1, [r0, 0x10]
	b _0801DEC6
	.align 2, 0
_0801DE54: .4byte gUnknown_02024C08
_0801DE58:
	cmp r6, 0x8
	bls _0801DEC6
_0801DE5C:
	mov r1, r12
	ldr r0, [r1]
	movs r1, 0x80
	lsls r1, 13
	ands r0, r1
	cmp r0, 0
	bne _0801DEC6
	ldr r3, _0801DEA0 @ =gUnknown_02024D28
	ldrb r0, [r5]
	lsls r0, 4
	adds r1, r3, 0
	adds r1, 0x8
	adds r0, r1
	ldr r2, [r7]
	str r2, [r0]
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r1, r4, 0
	adds r1, 0xC
	adds r0, r1
	str r2, [r0]
	ldr r0, _0801DEA4 @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	bne _0801DEAC
	ldrb r0, [r5]
	lsls r0, 4
	adds r0, r3
	ldr r2, _0801DEA8 @ =gUnknown_02024C07
	b _0801DEB4
	.align 2, 0
_0801DEA0: .4byte gUnknown_02024D28
_0801DEA4: .4byte gUnknown_02024C10
_0801DEA8: .4byte gUnknown_02024C07
_0801DEAC:
	ldrb r0, [r5]
	lsls r0, 4
	adds r0, r3
	ldr r2, _0801DEF4 @ =gUnknown_02024C08
_0801DEB4:
	ldrb r1, [r2]
	strb r1, [r0, 0xD]
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrb r1, [r2]
	strb r1, [r0, 0x11]
_0801DEC6:
	mov r1, r12
	ldr r0, [r1]
	ldr r1, _0801DEF8 @ =0xffefffff
	ands r0, r1
	mov r1, r12
	str r0, [r1]
	ldrb r1, [r5]
	movs r0, 0x58
	muls r0, r1
	ldr r1, _0801DEFC @ =gUnknown_02024AA8
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0x2A
	movs r2, 0
	movs r3, 0x2
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r5]
	bl dp01_battle_side_mark_buffer_for_execution
	b _0801DF26
	.align 2, 0
_0801DEF4: .4byte gUnknown_02024C08
_0801DEF8: .4byte 0xffefffff
_0801DEFC: .4byte gUnknown_02024AA8
_0801DF00:
	ldr r0, _0801DF38 @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r1, _0801DF3C @ =gUnknown_02024A60
	strb r0, [r1]
	ldr r2, _0801DF40 @ =gUnknown_02024D68
	ldrb r1, [r1]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r2, 0x4
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r0, 0
	bne _0801DF26
	ldr r0, _0801DF44 @ =0x0000ffff
	str r0, [r1]
_0801DF26:
	ldr r1, _0801DF38 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
_0801DF2E:
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DF38: .4byte gUnknown_02024C10
_0801DF3C: .4byte gUnknown_02024A60
_0801DF40: .4byte gUnknown_02024D68
_0801DF44: .4byte 0x0000ffff
	thumb_func_end atk0C_datahpupdate

	thumb_func_start atk0D_critmessage
atk0D_critmessage: @ 801DF48
	push {lr}
	ldr r0, _0801DF84 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _0801DF7E
	ldr r0, _0801DF88 @ =gCritMultiplier
	ldrb r0, [r0]
	cmp r0, 0x2
	bne _0801DF76
	ldr r0, _0801DF8C @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _0801DF76
	ldr r0, _0801DF90 @ =gUnknown_02024C07
	ldrb r1, [r0]
	movs r0, 0xD9
	bl b_std_message
	ldr r1, _0801DF94 @ =gUnknown_02024D1E
	movs r0, 0x1
	strb r0, [r1, 0x7]
_0801DF76:
	ldr r1, _0801DF98 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
_0801DF7E:
	pop {r0}
	bx r0
	.align 2, 0
_0801DF84: .4byte gUnknown_02024A64
_0801DF88: .4byte gCritMultiplier
_0801DF8C: .4byte gUnknown_02024C68
_0801DF90: .4byte gUnknown_02024C07
_0801DF94: .4byte gUnknown_02024D1E
_0801DF98: .4byte gUnknown_02024C10
	thumb_func_end atk0D_critmessage

	thumb_func_start atk0E_missmessage
atk0E_missmessage: @ 801DF9C
	push {r4,lr}
	ldr r0, _0801DFD4 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _0801E05C
	ldr r4, _0801DFD8 @ =gUnknown_02024A60
	ldr r0, _0801DFDC @ =gUnknown_02024C08
	ldrb r0, [r0]
	strb r0, [r4]
	ldr r1, _0801DFE0 @ =gUnknown_02024C68
	ldrb r2, [r1]
	movs r0, 0x1
	ands r0, r2
	cmp r0, 0
	bne _0801E054
	movs r0, 0xFE
	ands r0, r2
	cmp r0, 0x10
	beq _0801E00E
	cmp r0, 0x10
	bgt _0801DFEA
	cmp r0, 0x4
	beq _0801DFFE
	cmp r0, 0x4
	bgt _0801DFE4
	cmp r0, 0x2
	beq _0801DFF8
	b _0801E00E
	.align 2, 0
_0801DFD4: .4byte gUnknown_02024A64
_0801DFD8: .4byte gUnknown_02024A60
_0801DFDC: .4byte gUnknown_02024C08
_0801DFE0: .4byte gUnknown_02024C68
_0801DFE4:
	cmp r0, 0x8
	beq _0801E054
	b _0801E00E
_0801DFEA:
	cmp r0, 0x40
	beq _0801E00E
	cmp r0, 0x40
	bgt _0801E00E
	cmp r0, 0x20
	beq _0801E054
	b _0801E00E
_0801DFF8:
	movs r0, 0
	movs r1, 0xE
	b _0801E002
_0801DFFE:
	movs r0, 0
	movs r1, 0xC
_0801E002:
	bl dp01_build_cmdbuf_x2B_aa_0
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	b _0801E054
_0801E00E:
	ldrb r1, [r1]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0801E01E
	movs r0, 0
	movs r1, 0xE
	b _0801E02A
_0801E01E:
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _0801E03C
	movs r0, 0
	movs r1, 0xC
_0801E02A:
	bl dp01_build_cmdbuf_x2B_aa_0
	ldr r0, _0801E038 @ =gUnknown_02024A60
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
	b _0801E054
	.align 2, 0
_0801E038: .4byte gUnknown_02024A60
_0801E03C:
	movs r0, 0x28
	ands r0, r1
	cmp r0, 0
	bne _0801E054
	movs r0, 0
	movs r1, 0xD
	bl dp01_build_cmdbuf_x2B_aa_0
	ldr r0, _0801E064 @ =gUnknown_02024A60
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
_0801E054:
	ldr r1, _0801E068 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
_0801E05C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801E064: .4byte gUnknown_02024A60
_0801E068: .4byte gUnknown_02024C10
	thumb_func_end atk0E_missmessage

	thumb_func_start atk0F_resultmessage
atk0F_resultmessage: @ 801E06C
	push {r4-r7,lr}
	movs r3, 0
	ldr r0, _0801E0A8 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	beq _0801E07A
	b _0801E20C
_0801E07A:
	ldr r1, _0801E0AC @ =gUnknown_02024C68
	ldrb r2, [r1]
	movs r4, 0x1
	adds r0, r4, 0
	ands r0, r2
	adds r6, r1, 0
	ldr r7, _0801E0B0 @ =gUnknown_02024D1E
	cmp r0, 0
	beq _0801E0B8
	movs r0, 0x8
	ands r0, r2
	cmp r0, 0
	beq _0801E09A
	ldrb r0, [r7, 0x6]
	cmp r0, 0x2
	bls _0801E0B8
_0801E09A:
	ldr r1, _0801E0B4 @ =gUnknown_08401508
	ldrb r0, [r7, 0x6]
	lsls r0, 1
	adds r0, r1
	ldrh r3, [r0]
	strb r4, [r7, 0x7]
	b _0801E1F6
	.align 2, 0
_0801E0A8: .4byte gUnknown_02024A64
_0801E0AC: .4byte gUnknown_02024C68
_0801E0B0: .4byte gUnknown_02024D1E
_0801E0B4: .4byte gUnknown_08401508
_0801E0B8:
	movs r0, 0x1
	strb r0, [r7, 0x7]
	ldrb r5, [r6]
	movs r0, 0xFE
	ands r0, r5
	cmp r0, 0x10
	beq _0801E0FC
	cmp r0, 0x10
	bgt _0801E0DE
	cmp r0, 0x4
	beq _0801E0F8
	cmp r0, 0x4
	bgt _0801E0D8
	cmp r0, 0x2
	beq _0801E0F4
	b _0801E144
_0801E0D8:
	cmp r0, 0x8
	beq _0801E150
	b _0801E144
_0801E0DE:
	cmp r0, 0x40
	beq _0801E100
	cmp r0, 0x40
	bgt _0801E0EE
	cmp r0, 0x20
	bne _0801E0EC
	b _0801E1F0
_0801E0EC:
	b _0801E144
_0801E0EE:
	cmp r0, 0x80
	beq _0801E104
	b _0801E144
_0801E0F4:
	movs r3, 0xDE
	b _0801E1FA
_0801E0F8:
	movs r3, 0xDD
	b _0801E1FA
_0801E0FC:
	movs r3, 0xDA
	b _0801E1FA
_0801E100:
	movs r3, 0x99
	b _0801E1FA
_0801E104:
	ldr r4, _0801E12C @ =gUnknown_02024C04
	ldr r2, _0801E130 @ =gBattleMons
	ldr r3, _0801E134 @ =gUnknown_02024C08
	ldrb r1, [r3]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r0, [r0, 0x2E]
	strh r0, [r4]
	ldr r1, _0801E138 @ =gUnknown_02024C0B
	ldrb r0, [r3]
	strb r0, [r1]
	movs r0, 0x3F
	ands r0, r5
	strb r0, [r6]
	bl b_movescr_stack_push_cursor
	ldr r1, _0801E13C @ =gUnknown_02024C10
	ldr r0, _0801E140 @ =gUnknown_081D9AC6
	b _0801E20A
	.align 2, 0
_0801E12C: .4byte gUnknown_02024C04
_0801E130: .4byte gBattleMons
_0801E134: .4byte gUnknown_02024C08
_0801E138: .4byte gUnknown_02024C0B
_0801E13C: .4byte gUnknown_02024C10
_0801E140: .4byte gUnknown_081D9AC6
_0801E144:
	adds r2, r6, 0
	ldrb r5, [r2]
	movs r0, 0x8
	ands r0, r5
	cmp r0, 0
	beq _0801E154
_0801E150:
	movs r3, 0x1B
	b _0801E1FA
_0801E154:
	movs r0, 0x10
	ands r0, r5
	cmp r0, 0
	beq _0801E17C
	movs r0, 0xEF
	ands r0, r5
	movs r1, 0xFD
	ands r0, r1
	movs r1, 0xFB
	ands r0, r1
	strb r0, [r2]
	bl b_movescr_stack_push_cursor
	ldr r1, _0801E174 @ =gUnknown_02024C10
	ldr r0, _0801E178 @ =gUnknown_081D94A9
	b _0801E20A
	.align 2, 0
_0801E174: .4byte gUnknown_02024C10
_0801E178: .4byte gUnknown_081D94A9
_0801E17C:
	movs r0, 0x40
	ands r0, r5
	cmp r0, 0
	beq _0801E19C
	movs r0, 0x3F
	ands r0, r5
	strb r0, [r2]
	bl b_movescr_stack_push_cursor
	ldr r1, _0801E194 @ =gUnknown_02024C10
	ldr r0, _0801E198 @ =gUnknown_081D94A2
	b _0801E20A
	.align 2, 0
_0801E194: .4byte gUnknown_02024C10
_0801E198: .4byte gUnknown_081D94A2
_0801E19C:
	movs r0, 0x80
	ands r0, r5
	cmp r0, 0
	beq _0801E1E4
	ldr r4, _0801E1CC @ =gUnknown_02024C04
	ldr r2, _0801E1D0 @ =gBattleMons
	ldr r3, _0801E1D4 @ =gUnknown_02024C08
	ldrb r1, [r3]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r0, [r0, 0x2E]
	strh r0, [r4]
	ldr r1, _0801E1D8 @ =gUnknown_02024C0B
	ldrb r0, [r3]
	strb r0, [r1]
	movs r0, 0x3F
	ands r0, r5
	strb r0, [r6]
	bl b_movescr_stack_push_cursor
	ldr r1, _0801E1DC @ =gUnknown_02024C10
	ldr r0, _0801E1E0 @ =gUnknown_081D9AC6
	b _0801E20A
	.align 2, 0
_0801E1CC: .4byte gUnknown_02024C04
_0801E1D0: .4byte gBattleMons
_0801E1D4: .4byte gUnknown_02024C08
_0801E1D8: .4byte gUnknown_02024C0B
_0801E1DC: .4byte gUnknown_02024C10
_0801E1E0: .4byte gUnknown_081D9AC6
_0801E1E4:
	movs r0, 0x20
	ands r0, r5
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	beq _0801E1F4
_0801E1F0:
	movs r3, 0xE5
	b _0801E1FA
_0801E1F4:
	strb r0, [r7, 0x7]
_0801E1F6:
	cmp r3, 0
	beq _0801E204
_0801E1FA:
	adds r0, r3, 0
	ldr r1, _0801E214 @ =gUnknown_02024C07
	ldrb r1, [r1]
	bl b_std_message
_0801E204:
	ldr r1, _0801E218 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
_0801E20A:
	str r0, [r1]
_0801E20C:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E214: .4byte gUnknown_02024C07
_0801E218: .4byte gUnknown_02024C10
	thumb_func_end atk0F_resultmessage

	thumb_func_start atk10_printstring
atk10_printstring: @ 801E21C
	push {r4,lr}
	ldr r0, _0801E24C @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _0801E246
	ldr r4, _0801E250 @ =gUnknown_02024C10
	ldr r1, [r4]
	ldrb r0, [r1, 0x1]
	ldrb r1, [r1, 0x2]
	lsls r1, 8
	orrs r0, r1
	ldr r1, _0801E254 @ =gUnknown_02024C07
	ldrb r1, [r1]
	bl b_std_message
	ldr r0, [r4]
	adds r0, 0x3
	str r0, [r4]
	ldr r1, _0801E258 @ =gUnknown_02024D1E
	movs r0, 0x1
	strb r0, [r1, 0x7]
_0801E246:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801E24C: .4byte gUnknown_02024A64
_0801E250: .4byte gUnknown_02024C10
_0801E254: .4byte gUnknown_02024C07
_0801E258: .4byte gUnknown_02024D1E
	thumb_func_end atk10_printstring

	thumb_func_start atk11_printstring2
atk11_printstring2: @ 801E25C
	push {r4,r5,lr}
	ldr r5, _0801E290 @ =gUnknown_02024A60
	ldr r0, _0801E294 @ =gUnknown_02024C07
	ldrb r0, [r0]
	strb r0, [r5]
	ldr r4, _0801E298 @ =gUnknown_02024C10
	ldr r0, [r4]
	ldrb r1, [r0, 0x1]
	ldrb r0, [r0, 0x2]
	lsls r0, 8
	orrs r1, r0
	movs r0, 0
	bl dp01_build_cmdbuf_x11_TODO
	ldrb r0, [r5]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r4]
	adds r0, 0x3
	str r0, [r4]
	ldr r1, _0801E29C @ =gUnknown_02024D1E
	movs r0, 0x1
	strb r0, [r1, 0x7]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E290: .4byte gUnknown_02024A60
_0801E294: .4byte gUnknown_02024C07
_0801E298: .4byte gUnknown_02024C10
_0801E29C: .4byte gUnknown_02024D1E
	thumb_func_end atk11_printstring2

	thumb_func_start atk12_waitmessage
atk12_waitmessage: @ 801E2A0
	push {r4-r6,lr}
	ldr r0, _0801E2BC @ =gUnknown_02024A64
	ldr r4, [r0]
	cmp r4, 0
	bne _0801E2EE
	ldr r6, _0801E2C0 @ =gUnknown_02024D1E
	ldrb r0, [r6, 0x7]
	cmp r0, 0
	bne _0801E2C8
	ldr r1, _0801E2C4 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x3
	str r0, [r1]
	b _0801E2EE
	.align 2, 0
_0801E2BC: .4byte gUnknown_02024A64
_0801E2C0: .4byte gUnknown_02024D1E
_0801E2C4: .4byte gUnknown_02024C10
_0801E2C8:
	ldr r5, _0801E2F4 @ =gUnknown_02024C10
	ldr r2, [r5]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldr r3, _0801E2F8 @ =gUnknown_02024D18
	ldrh r0, [r3]
	adds r0, 0x1
	strh r0, [r3]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, r1
	bcc _0801E2EE
	movs r1, 0
	strh r4, [r3]
	adds r0, r2, 0x3
	str r0, [r5]
	strb r1, [r6, 0x7]
_0801E2EE:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801E2F4: .4byte gUnknown_02024C10
_0801E2F8: .4byte gUnknown_02024D18
	thumb_func_end atk12_waitmessage

	thumb_func_start atk13_printfromtable
atk13_printfromtable: @ 801E2FC
	push {r4,r5,lr}
	ldr r0, _0801E340 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _0801E33A
	ldr r4, _0801E344 @ =gUnknown_02024C10
	ldr r2, [r4]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	ldr r5, _0801E348 @ =gUnknown_02024D1E
	ldrb r0, [r5, 0x5]
	lsls r0, 1
	adds r1, r0
	ldrh r0, [r1]
	ldr r1, _0801E34C @ =gUnknown_02024C07
	ldrb r1, [r1]
	bl b_std_message
	ldr r0, [r4]
	adds r0, 0x5
	str r0, [r4]
	movs r0, 0x1
	strb r0, [r5, 0x7]
_0801E33A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E340: .4byte gUnknown_02024A64
_0801E344: .4byte gUnknown_02024C10
_0801E348: .4byte gUnknown_02024D1E
_0801E34C: .4byte gUnknown_02024C07
	thumb_func_end atk13_printfromtable

	thumb_func_start atk14_printfromtable2
atk14_printfromtable2: @ 801E350
	push {r4-r6,lr}
	ldr r0, _0801E3A0 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _0801E39A
	ldr r5, _0801E3A4 @ =gUnknown_02024C10
	ldr r2, [r5]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	ldr r6, _0801E3A8 @ =gUnknown_02024D1E
	ldrb r0, [r6, 0x5]
	lsls r0, 1
	adds r1, r0
	ldr r4, _0801E3AC @ =gUnknown_02024A60
	ldr r0, _0801E3B0 @ =gUnknown_02024C07
	ldrb r0, [r0]
	strb r0, [r4]
	ldrh r1, [r1]
	movs r0, 0
	bl dp01_build_cmdbuf_x11_TODO
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r5]
	adds r0, 0x5
	str r0, [r5]
	movs r0, 0x1
	strb r0, [r6, 0x7]
_0801E39A:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801E3A0: .4byte gUnknown_02024A64
_0801E3A4: .4byte gUnknown_02024C10
_0801E3A8: .4byte gUnknown_02024D1E
_0801E3AC: .4byte gUnknown_02024A60
_0801E3B0: .4byte gUnknown_02024C07
	thumb_func_end atk14_printfromtable2

	thumb_func_start sub_801E3B4
sub_801E3B4: @ 801E3B4
	push {r4,lr}
	lsls r0, 24
	lsrs r2, r0, 24
	movs r1, 0
	ldr r0, _0801E3E4 @ =gUnknown_02024A68
	ldrb r3, [r0]
	cmp r1, r3
	bge _0801E3DA
	ldr r4, _0801E3E8 @ =gUnknown_02024A7A
	ldrb r0, [r4]
	cmp r0, r2
	beq _0801E3DA
_0801E3CC:
	adds r1, 0x1
	cmp r1, r3
	bge _0801E3DA
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, r2
	bne _0801E3CC
_0801E3DA:
	lsls r0, r1, 24
	lsrs r0, 24
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801E3E4: .4byte gUnknown_02024A68
_0801E3E8: .4byte gUnknown_02024A7A
	thumb_func_end sub_801E3B4

	thumb_func_start sub_801E3EC
sub_801E3EC: @ 801E3EC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 24
	lsrs r5, r1, 24
	movs r0, 0
	mov r10, r0
	movs r6, 0
	movs r1, 0x1
	str r1, [sp, 0x4]
	ldr r1, _0801E430 @ =gUnknown_02024D1E
	ldrb r3, [r1, 0x3]
	movs r0, 0x40
	ands r0, r3
	adds r7, r1, 0
	cmp r0, 0
	beq _0801E444
	ldr r2, _0801E434 @ =gUnknown_02024C0A
	ldr r0, _0801E438 @ =gUnknown_02024C07
	ldrb r0, [r0]
	strb r0, [r2]
	movs r0, 0xBF
	ands r0, r3
	strb r0, [r7, 0x3]
	movs r6, 0x40
	ldr r0, _0801E43C @ =0x02000000
	ldr r1, _0801E440 @ =gUnknown_02024C08
	b _0801E450
	.align 2, 0
_0801E430: .4byte gUnknown_02024D1E
_0801E434: .4byte gUnknown_02024C0A
_0801E438: .4byte gUnknown_02024C07
_0801E43C: .4byte 0x02000000
_0801E440: .4byte gUnknown_02024C08
_0801E444:
	ldr r2, _0801E538 @ =gUnknown_02024C0A
	ldr r0, _0801E53C @ =gUnknown_02024C08
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r0, _0801E540 @ =0x02000000
	ldr r1, _0801E544 @ =gUnknown_02024C07
_0801E450:
	ldrb r1, [r1]
	ldr r3, _0801E548 @ =0x00016003
	adds r0, r3
	strb r1, [r0]
	mov r8, r2
	ldr r2, _0801E54C @ =gBattleMons
	mov r0, r8
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x13
	bne _0801E48A
	ldr r0, _0801E550 @ =gUnknown_02024C6C
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 6
	ands r0, r1
	cmp r0, 0
	bne _0801E48A
	cmp r4, 0
	bne _0801E48A
	ldrb r0, [r7, 0x3]
	cmp r0, 0x9
	bhi _0801E48A
	bl _0801F5DC
_0801E48A:
	mov r1, r8
	ldrb r0, [r1]
	bl battle_get_per_side_status
	ldr r2, _0801E554 @ =gUnknown_02024C7A
	movs r1, 0x1
	ands r1, r0
	lsls r1, 1
	adds r1, r2
	ldrh r1, [r1]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0801E4C4
	ldr r0, _0801E550 @ =gUnknown_02024C6C
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 6
	ands r0, r1
	cmp r0, 0
	bne _0801E4C4
	cmp r4, 0
	bne _0801E4C4
	ldr r0, _0801E558 @ =gUnknown_02024D1E
	ldrb r0, [r0, 0x3]
	cmp r0, 0x7
	bhi _0801E4C4
	bl _0801F5DC
_0801E4C4:
	ldr r3, _0801E54C @ =gBattleMons
	ldr r2, _0801E538 @ =gUnknown_02024C0A
	ldrb r1, [r2]
	movs r0, 0x58
	muls r0, r1
	adds r0, r3
	ldrh r0, [r0, 0x28]
	mov r8, r2
	mov r9, r3
	cmp r0, 0
	bne _0801E4EA
	ldr r0, _0801E558 @ =gUnknown_02024D1E
	ldrb r0, [r0, 0x3]
	cmp r0, 0xB
	beq _0801E4EA
	cmp r0, 0x1F
	beq _0801E4EA
	bl _0801F5DC
_0801E4EA:
	mov r2, r8
	ldrb r1, [r2]
	movs r0, 0x58
	muls r0, r1
	mov r1, r9
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	beq _0801E50C
	cmp r6, 0x40
	beq _0801E50C
	bl _0801F5DC
_0801E50C:
	ldr r0, _0801E558 @ =gUnknown_02024D1E
	ldrb r1, [r0, 0x3]
	adds r7, r0, 0
	cmp r1, 0x6
	bls _0801E518
	b _0801EB4A
_0801E518:
	ldr r1, _0801E55C @ =gUnknown_081FAB5C
	ldrb r0, [r7, 0x3]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	cmp r0, 0x10
	bne _0801E528
	b _0801E714
_0801E528:
	cmp r0, 0x10
	bhi _0801E560
	cmp r0, 0x7
	beq _0801E57A
	cmp r0, 0x8
	bne _0801E536
	b _0801E630
_0801E536:
	b _0801EA14
	.align 2, 0
_0801E538: .4byte gUnknown_02024C0A
_0801E53C: .4byte gUnknown_02024C08
_0801E540: .4byte 0x02000000
_0801E544: .4byte gUnknown_02024C07
_0801E548: .4byte 0x00016003
_0801E54C: .4byte gBattleMons
_0801E550: .4byte gUnknown_02024C6C
_0801E554: .4byte gUnknown_02024C7A
_0801E558: .4byte gUnknown_02024D1E
_0801E55C: .4byte gUnknown_081FAB5C
_0801E560:
	cmp r0, 0x40
	bne _0801E566
	b _0801E888
_0801E566:
	cmp r0, 0x40
	bhi _0801E572
	cmp r0, 0x20
	bne _0801E570
	b _0801E7EA
_0801E570:
	b _0801EA14
_0801E572:
	cmp r0, 0x80
	bne _0801E578
	b _0801E8E4
_0801E578:
	b _0801EA14
_0801E57A:
	mov r3, r8
	ldrb r1, [r3]
	movs r0, 0x58
	muls r0, r1
	add r0, r9
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x2B
	beq _0801E5DC
	ldr r0, _0801E5D4 @ =gUnknown_02024A60
	movs r1, 0
	strb r1, [r0]
	ldr r1, _0801E5D8 @ =gUnknown_02024A68
	ldrb r3, [r1]
	adds r7, r0, 0
	mov r12, r1
	cmp r3, 0
	beq _0801E5E8
	mov r4, r9
	ldr r0, [r4, 0x50]
	movs r1, 0x70
	ands r0, r1
	cmp r0, 0
	bne _0801E5E8
	adds r1, r7, 0
	mov r6, r9
	adds r6, 0x50
	movs r5, 0x58
	movs r4, 0x70
_0801E5B4:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, r3
	bcs _0801E5E8
	ldrb r0, [r7]
	muls r0, r5
	adds r0, r6
	ldr r0, [r0]
	ands r0, r4
	cmp r0, 0
	beq _0801E5B4
	b _0801E5E8
	.align 2, 0
_0801E5D4: .4byte gUnknown_02024A60
_0801E5D8: .4byte gUnknown_02024A68
_0801E5DC:
	ldr r0, _0801E628 @ =gUnknown_02024A60
	ldr r2, _0801E62C @ =gUnknown_02024A68
	ldrb r1, [r2]
	strb r1, [r0]
	adds r7, r0, 0
	mov r12, r2
_0801E5E8:
	mov r0, r8
	ldrb r2, [r0]
	movs r0, 0x58
	adds r1, r2, 0
	muls r1, r0
	mov r0, r9
	adds r0, 0x4C
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	beq _0801E600
	b _0801EA14
_0801E600:
	ldrb r0, [r7]
	mov r3, r12
	ldrb r3, [r3]
	cmp r0, r3
	beq _0801E60C
	b _0801EA14
_0801E60C:
	mov r4, r9
	adds r0, r1, r4
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x48
	bne _0801E61A
	b _0801EA14
_0801E61A:
	cmp r0, 0xF
	bne _0801E620
	b _0801EA14
_0801E620:
	adds r0, r2, 0
	bl b_cancel_multi_turn_move_maybe
	b _0801EA04
	.align 2, 0
_0801E628: .4byte gUnknown_02024A60
_0801E62C: .4byte gUnknown_02024A68
_0801E630:
	mov r2, r8
	ldrb r1, [r2]
	movs r0, 0x58
	muls r0, r1
	add r0, r9
	adds r0, 0x20
	ldrb r1, [r0]
	cmp r1, 0x11
	bne _0801E688
	cmp r4, 0x1
	beq _0801E64A
	cmp r5, 0x80
	bne _0801E688
_0801E64A:
	ldr r0, _0801E678 @ =byte_2024C06
	strb r1, [r0]
	mov r3, r8
	ldrb r0, [r3]
	movs r1, 0x11
	bl sub_81074C4
	ldr r4, _0801E67C @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, _0801E680 @ =BattleScript_1D98BD
_0801E664:
	str r0, [r4]
	ldr r2, _0801E684 @ =gUnknown_02024C6C
	ldr r1, [r2]
	movs r0, 0x80
	lsls r0, 6
	ands r0, r1
	cmp r0, 0
	beq _0801E676
	b _0801E928
_0801E676:
	b _0801E94C
	.align 2, 0
_0801E678: .4byte byte_2024C06
_0801E67C: .4byte gUnknown_02024C10
_0801E680: .4byte BattleScript_1D98BD
_0801E684: .4byte gUnknown_02024C6C
_0801E688:
	mov r1, r8
	ldrb r0, [r1]
	movs r1, 0x58
	muls r0, r1
	add r0, r9
	adds r1, r0, 0
	adds r1, 0x21
	ldrb r1, [r1]
	cmp r1, 0x3
	beq _0801E6AC
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0x3
	beq _0801E6AC
	cmp r1, 0x8
	beq _0801E6AC
	cmp r0, 0x8
	bne _0801E6C6
_0801E6AC:
	ldr r0, _0801E710 @ =gUnknown_02024C6C
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 6
	ands r0, r1
	cmp r0, 0
	beq _0801E6C6
	cmp r4, 0x1
	bne _0801E6C0
	b _0801E98C
_0801E6C0:
	cmp r5, 0x80
	bne _0801E6C6
	b _0801E98C
_0801E6C6:
	mov r2, r8
	ldrb r1, [r2]
	movs r0, 0x58
	muls r1, r0
	mov r4, r9
	adds r3, r1, r4
	adds r0, r3, 0
	adds r0, 0x21
	ldrb r4, [r0]
	cmp r4, 0x3
	bne _0801E6DE
	b _0801EA14
_0801E6DE:
	adds r0, 0x1
	ldrb r0, [r0]
	cmp r0, 0x3
	bne _0801E6E8
	b _0801EA14
_0801E6E8:
	cmp r4, 0x8
	bne _0801E6EE
	b _0801EA14
_0801E6EE:
	cmp r0, 0x8
	bne _0801E6F4
	b _0801EA14
_0801E6F4:
	mov r0, r9
	adds r0, 0x4C
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	beq _0801E702
	b _0801EA14
_0801E702:
	adds r0, r3, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x11
	bne _0801E70E
	b _0801EA14
_0801E70E:
	b _0801EA04
	.align 2, 0
_0801E710: .4byte gUnknown_02024C6C
_0801E714:
	mov r2, r8
	ldrb r1, [r2]
	movs r0, 0x58
	muls r0, r1
	add r0, r9
	adds r0, 0x20
	ldrb r1, [r0]
	cmp r1, 0x29
	bne _0801E758
	cmp r4, 0x1
	beq _0801E72E
	cmp r5, 0x80
	bne _0801E758
_0801E72E:
	ldr r0, _0801E74C @ =byte_2024C06
	strb r1, [r0]
	mov r3, r8
	ldrb r0, [r3]
	movs r1, 0x29
	bl sub_81074C4
	ldr r4, _0801E750 @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, _0801E754 @ =BattleScript_1D98A5
	b _0801E664
	.align 2, 0
_0801E74C: .4byte byte_2024C06
_0801E750: .4byte gUnknown_02024C10
_0801E754: .4byte BattleScript_1D98A5
_0801E758:
	mov r0, r8
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	mov r2, r9
	adds r1, r0, r2
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0xA
	beq _0801E778
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0xA
	bne _0801E7A8
_0801E778:
	ldr r0, _0801E79C @ =gUnknown_02024C6C
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 6
	ands r0, r1
	cmp r0, 0
	beq _0801E7A8
	cmp r4, 0x1
	beq _0801E78E
	cmp r5, 0x80
	bne _0801E7A8
_0801E78E:
	ldr r4, _0801E7A0 @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, _0801E7A4 @ =BattleScript_1D98A5
	b _0801E998
	.align 2, 0
_0801E79C: .4byte gUnknown_02024C6C
_0801E7A0: .4byte gUnknown_02024C10
_0801E7A4: .4byte BattleScript_1D98A5
_0801E7A8:
	mov r3, r8
	ldrb r0, [r3]
	movs r1, 0x58
	adds r2, r0, 0
	muls r2, r1
	mov r4, r9
	adds r1, r2, r4
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0xA
	bne _0801E7C2
	b _0801EA14
_0801E7C2:
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0xA
	bne _0801E7CE
	b _0801EA14
_0801E7CE:
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x29
	bne _0801E7DA
	b _0801EA14
_0801E7DA:
	mov r0, r9
	adds r0, 0x4C
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, 0
	beq _0801E7E8
	b _0801EA14
_0801E7E8:
	b _0801EA04
_0801E7EA:
	movs r0, 0
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0xD
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	bne _0801E826
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0x4D
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	bne _0801E826
	ldr r0, _0801E87C @ =word_2024DB8
	ldrh r1, [r0]
	movs r0, 0x60
	ands r0, r1
	cmp r0, 0
	beq _0801E826
	movs r1, 0
	str r1, [sp, 0x4]
_0801E826:
	ldr r4, _0801E880 @ =gBattleMons
	ldr r0, _0801E884 @ =gUnknown_02024C0A
	ldrb r3, [r0]
	movs r0, 0x58
	adds r2, r3, 0
	muls r2, r0
	adds r1, r2, r4
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0xF
	bne _0801E840
	b _0801EA14
_0801E840:
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0xF
	bne _0801E84C
	b _0801EA14
_0801E84C:
	adds r0, r4, 0
	adds r0, 0x4C
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, 0
	beq _0801E85A
	b _0801EA14
_0801E85A:
	ldr r2, [sp, 0x4]
	cmp r2, 0
	bne _0801E862
	b _0801EA14
_0801E862:
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x28
	bne _0801E86E
	b _0801EA14
_0801E86E:
	adds r0, r3, 0
	bl b_cancel_multi_turn_move_maybe
	movs r3, 0x1
	mov r10, r3
	b _0801EA14
	.align 2, 0
_0801E87C: .4byte word_2024DB8
_0801E880: .4byte gBattleMons
_0801E884: .4byte gUnknown_02024C0A
_0801E888:
	mov r0, r8
	ldrb r1, [r0]
	movs r0, 0x58
	muls r1, r0
	mov r2, r9
	adds r0, r1, r2
	adds r0, 0x20
	ldrb r2, [r0]
	cmp r2, 0x7
	bne _0801E8D0
	cmp r4, 0x1
	beq _0801E8A6
	cmp r5, 0x80
	beq _0801E8A6
	b _0801EA14
_0801E8A6:
	ldr r0, _0801E8C4 @ =byte_2024C06
	strb r2, [r0]
	mov r3, r8
	ldrb r0, [r3]
	movs r1, 0x7
	bl sub_81074C4
	ldr r4, _0801E8C8 @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, _0801E8CC @ =BattleScript_1D98B1
	b _0801E664
	.align 2, 0
_0801E8C4: .4byte byte_2024C06
_0801E8C8: .4byte gUnknown_02024C10
_0801E8CC: .4byte BattleScript_1D98B1
_0801E8D0:
	mov r0, r9
	adds r0, 0x4C
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	beq _0801E8DE
	b _0801EA14
_0801E8DE:
	movs r4, 0x1
	mov r10, r4
	b _0801EA14
_0801E8E4:
	mov r0, r8
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	add r0, r9
	adds r0, 0x20
	ldrb r1, [r0]
	cmp r1, 0x11
	bne _0801E952
	cmp r4, 0x1
	beq _0801E8FE
	cmp r5, 0x80
	bne _0801E952
_0801E8FE:
	ldr r0, _0801E938 @ =byte_2024C06
	strb r1, [r0]
	mov r1, r8
	ldrb r0, [r1]
	movs r1, 0x11
	bl sub_81074C4
	ldr r4, _0801E93C @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, _0801E940 @ =BattleScript_1D98BD
	str r0, [r4]
	ldr r2, _0801E944 @ =gUnknown_02024C6C
	ldr r1, [r2]
	movs r0, 0x80
	lsls r0, 6
	ands r0, r1
	cmp r0, 0
	beq _0801E94C
_0801E928:
	movs r0, 0x1
	strb r0, [r7, 0x5]
	ldr r0, _0801E948 @ =0xffffdfff
	ands r1, r0
	str r1, [r2]
	bl _0801F5FA
	.align 2, 0
_0801E938: .4byte byte_2024C06
_0801E93C: .4byte gUnknown_02024C10
_0801E940: .4byte BattleScript_1D98BD
_0801E944: .4byte gUnknown_02024C6C
_0801E948: .4byte 0xffffdfff
_0801E94C:
	strb r0, [r7, 0x5]
	bl _0801F5FA
_0801E952:
	mov r2, r8
	ldrb r0, [r2]
	movs r1, 0x58
	muls r0, r1
	add r0, r9
	adds r1, r0, 0
	adds r1, 0x21
	ldrb r1, [r1]
	cmp r1, 0x3
	beq _0801E976
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0x3
	beq _0801E976
	cmp r1, 0x8
	beq _0801E976
	cmp r0, 0x8
	bne _0801E9B4
_0801E976:
	ldr r0, _0801E9A4 @ =gUnknown_02024C6C
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 6
	ands r0, r1
	cmp r0, 0
	beq _0801E9B4
	cmp r4, 0x1
	beq _0801E98C
	cmp r5, 0x80
	bne _0801E9B4
_0801E98C:
	ldr r4, _0801E9A8 @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, _0801E9AC @ =BattleScript_1D98BD
_0801E998:
	str r0, [r4]
	ldr r1, _0801E9B0 @ =gUnknown_02024D1E
	movs r0, 0x2
	strb r0, [r1, 0x5]
	bl _0801F5FA
	.align 2, 0
_0801E9A4: .4byte gUnknown_02024C6C
_0801E9A8: .4byte gUnknown_02024C10
_0801E9AC: .4byte BattleScript_1D98BD
_0801E9B0: .4byte gUnknown_02024D1E
_0801E9B4:
	mov r3, r8
	ldrb r0, [r3]
	movs r6, 0x58
	muls r0, r6
	mov r2, r9
	adds r2, 0x4C
	adds r5, r0, r2
	ldr r4, [r5]
	cmp r4, 0
	bne _0801EA14
	mov r3, r9
	adds r1, r0, r3
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r3, [r0]
	cmp r3, 0x3
	beq _0801EA0A
	adds r0, 0x1
	ldrb r0, [r0]
	cmp r0, 0x3
	beq _0801EA0A
	cmp r3, 0x8
	beq _0801EA0A
	cmp r0, 0x8
	beq _0801EA0A
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x11
	beq _0801EA14
	mov r4, r8
	ldrb r0, [r4]
	adds r1, r0, 0
	muls r1, r6
	adds r1, r2
	ldr r0, [r1]
	movs r2, 0x9
	negs r2, r2
	ands r0, r2
	str r0, [r1]
_0801EA04:
	movs r0, 0x1
	mov r10, r0
	b _0801EA14
_0801EA0A:
	ldr r0, _0801EA58 @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r2, 0x8
	orrs r1, r2
	strb r1, [r0]
_0801EA14:
	mov r1, r10
	cmp r1, 0x1
	beq _0801EA1C
	b _0801EB3C
_0801EA1C:
	ldr r0, _0801EA5C @ =gUnknown_02024C10
	ldr r0, [r0]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r1, _0801EA60 @ =gUnknown_081FAB5C
	ldr r0, _0801EA64 @ =gUnknown_02024D1E
	ldrb r0, [r0, 0x3]
	lsls r0, 2
	adds r0, r1
	ldr r3, [r0]
	cmp r3, 0x7
	bne _0801EA70
	bl Random
	ldr r2, _0801EA68 @ =gBattleMons
	ldr r1, _0801EA6C @ =gUnknown_02024C0A
	ldrb r3, [r1]
	movs r1, 0x58
	muls r3, r1
	adds r2, 0x4C
	adds r3, r2
	movs r1, 0x3
	ands r1, r0
	adds r1, 0x2
	ldr r0, [r3]
	orrs r0, r1
	str r0, [r3]
	b _0801EA84
	.align 2, 0
_0801EA58: .4byte gUnknown_02024C68
_0801EA5C: .4byte gUnknown_02024C10
_0801EA60: .4byte gUnknown_081FAB5C
_0801EA64: .4byte gUnknown_02024D1E
_0801EA68: .4byte gBattleMons
_0801EA6C: .4byte gUnknown_02024C0A
_0801EA70:
	ldr r2, _0801EAD4 @ =gBattleMons
	ldr r0, _0801EAD8 @ =gUnknown_02024C0A
	ldrb r1, [r0]
	movs r0, 0x58
	muls r1, r0
	adds r2, 0x4C
	adds r1, r2
	ldr r0, [r1]
	orrs r0, r3
	str r0, [r1]
_0801EA84:
	ldr r2, _0801EADC @ =gUnknown_02024C10
	ldr r1, _0801EAE0 @ =gUnknown_081FAC4C
	ldr r5, _0801EAE4 @ =gUnknown_02024D1E
	ldrb r0, [r5, 0x3]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r4, _0801EAE8 @ =gUnknown_02024A60
	ldr r1, _0801EAD8 @ =gUnknown_02024C0A
	ldrb r0, [r1]
	strb r0, [r4]
	ldrb r1, [r1]
	movs r0, 0x58
	muls r0, r1
	ldr r1, _0801EAEC @ =gUnknown_02024ACC
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r2, 0
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r2, _0801EAF0 @ =gUnknown_02024C6C
	ldr r1, [r2]
	movs r0, 0x80
	lsls r0, 6
	ands r0, r1
	cmp r0, 0
	beq _0801EAF8
	movs r0, 0x1
	strb r0, [r5, 0x5]
	ldr r0, _0801EAF4 @ =0xffffdfff
	ands r1, r0
	str r1, [r2]
	b _0801EAFA
	.align 2, 0
_0801EAD4: .4byte gBattleMons
_0801EAD8: .4byte gUnknown_02024C0A
_0801EADC: .4byte gUnknown_02024C10
_0801EAE0: .4byte gUnknown_081FAC4C
_0801EAE4: .4byte gUnknown_02024D1E
_0801EAE8: .4byte gUnknown_02024A60
_0801EAEC: .4byte gUnknown_02024ACC
_0801EAF0: .4byte gUnknown_02024C6C
_0801EAF4: .4byte 0xffffdfff
_0801EAF8:
	strb r0, [r5, 0x5]
_0801EAFA:
	ldr r0, _0801EB2C @ =gUnknown_02024D1E
	ldrb r2, [r0, 0x3]
	adds r7, r0, 0
	cmp r2, 0x2
	beq _0801EB14
	cmp r2, 0x6
	beq _0801EB14
	cmp r2, 0x5
	beq _0801EB14
	cmp r2, 0x3
	beq _0801EB14
	bl _0801F5FA
_0801EB14:
	ldr r0, _0801EB30 @ =0x02000000
	ldrb r1, [r7, 0x3]
	ldr r2, _0801EB34 @ =0x000160ca
	adds r0, r2
	strb r1, [r0]
	ldr r2, _0801EB38 @ =gUnknown_02024C6C
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 7
	bl _0801F4F2
	.align 2, 0
_0801EB2C: .4byte gUnknown_02024D1E
_0801EB30: .4byte 0x02000000
_0801EB34: .4byte 0x000160ca
_0801EB38: .4byte gUnknown_02024C6C
_0801EB3C:
	mov r3, r10
	cmp r3, 0
	beq _0801EB46
	bl _0801F5FA
_0801EB46:
	bl _0801F5DC
_0801EB4A:
	mov r0, r8
	ldrb r1, [r0]
	movs r0, 0x58
	muls r1, r0
	mov r0, r9
	adds r0, 0x50
	adds r1, r0
	ldr r2, _0801EB84 @ =gUnknown_081FAB5C
	ldrb r3, [r7, 0x3]
	lsls r0, r3, 2
	adds r0, r2
	ldr r1, [r1]
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _0801EB6E
	bl _0801F5DC
_0801EB6E:
	subs r0, r3, 0x7
	cmp r0, 0x34
	bls _0801EB78
	bl _0801F5FA
_0801EB78:
	lsls r0, 2
	ldr r1, _0801EB88 @ =_0801EB8C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801EB84: .4byte gUnknown_081FAB5C
_0801EB88: .4byte _0801EB8C
	.align 2, 0
_0801EB8C:
	.4byte _0801EC60
	.4byte _0801ECD4
	.4byte _0801EE4C
	.4byte _0801ED60
	.4byte _0801EDDC
	.4byte _0801EE84
	.4byte _0801EECC
	.4byte _0801EFA8
	.4byte _0801EFEC
	.4byte _0801EFEC
	.4byte _0801EFEC
	.4byte _0801EFEC
	.4byte _0801EFEC
	.4byte _0801EFEC
	.4byte _0801EFEC
	.4byte _0801F040
	.4byte _0801F040
	.4byte _0801F040
	.4byte _0801F040
	.4byte _0801F040
	.4byte _0801F040
	.4byte _0801F040
	.4byte _0801F13C
	.4byte _0801F184
	.4byte _0801F1A4
	.4byte _0801F364
	.4byte _0801F3A0
	.4byte _0801F3BC
	.4byte _0801F3D4
	.4byte _0801F3EC
	.4byte _0801F44C
	.4byte _0801F464
	.4byte _0801F094
	.4byte _0801F094
	.4byte _0801F094
	.4byte _0801F094
	.4byte _0801F094
	.4byte _0801F094
	.4byte _0801F094
	.4byte _0801F0E8
	.4byte _0801F0E8
	.4byte _0801F0E8
	.4byte _0801F0E8
	.4byte _0801F0E8
	.4byte _0801F0E8
	.4byte _0801F0E8
	.4byte _0801F4A8
	.4byte _0801F500
	.4byte _0801F5FA
	.4byte _0801F5FA
	.4byte _0801F5FA
	.4byte _0801F5FA
	.4byte _0801F5EC
_0801EC60:
	mov r1, r8
	ldrb r0, [r1]
	movs r5, 0x58
	adds r1, r0, 0
	muls r1, r5
	mov r2, r9
	adds r0, r1, r2
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x14
	bne _0801EC7A
	bl _0801F5DC
_0801EC7A:
	mov r4, r9
	adds r4, 0x50
	adds r0, r1, r4
	ldr r0, [r0]
	movs r1, 0x7
	ands r0, r1
	cmp r0, 0
	beq _0801EC8E
	bl _0801F5DC
_0801EC8E:
	bl Random
	mov r3, r8
	ldrb r1, [r3]
	adds r2, r1, 0
	muls r2, r5
	adds r2, r4
	lsls r0, 16
	movs r1, 0xC0
	lsls r1, 10
	ands r1, r0
	lsrs r1, 16
	adds r1, 0x2
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	ldr r4, _0801ECC8 @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r1, _0801ECCC @ =gUnknown_081FAC4C
	ldr r0, _0801ECD0 @ =gUnknown_02024D1E
	ldrb r0, [r0, 0x3]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _0801F5F8
	.align 2, 0
_0801ECC8: .4byte gUnknown_02024C10
_0801ECCC: .4byte gUnknown_081FAC4C
_0801ECD0: .4byte gUnknown_02024D1E
_0801ECD4:
	mov r0, r8
	ldrb r2, [r0]
	movs r6, 0x58
	adds r0, r2, 0
	muls r0, r6
	add r0, r9
	adds r0, 0x20
	ldrb r1, [r0]
	cmp r1, 0x27
	bne _0801ED18
	cmp r4, 0x1
	beq _0801ECF4
	cmp r5, 0x80
	beq _0801ECF4
	bl _0801F5DC
_0801ECF4:
	ldr r0, _0801ED0C @ =byte_2024C06
	strb r1, [r0]
	mov r1, r8
	ldrb r0, [r1]
	movs r1, 0x27
	bl sub_81074C4
	ldr r1, _0801ED10 @ =gUnknown_02024C10
	ldr r0, _0801ED14 @ =gUnknown_081D98D7
	str r0, [r1]
	bl _0801F5FA
	.align 2, 0
_0801ED0C: .4byte byte_2024C06
_0801ED10: .4byte gUnknown_02024C10
_0801ED14: .4byte gUnknown_081D98D7
_0801ED18:
	adds r0, r2, 0
	bl sub_801E3B4
	ldr r1, _0801ED54 @ =gUnknown_02024A7E
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bhi _0801ED2E
	bl _0801F5DC
_0801ED2E:
	mov r2, r8
	ldrb r0, [r2]
	adds r2, r0, 0
	muls r2, r6
	mov r0, r9
	adds r0, 0x50
	adds r2, r0
	ldr r1, _0801ED58 @ =gUnknown_081FAB5C
	ldr r0, _0801ED5C @ =gUnknown_02024D1E
	ldrb r0, [r0, 0x3]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	orrs r1, r0
	str r1, [r2]
	bl _0801F5DC
	.align 2, 0
_0801ED54: .4byte gUnknown_02024A7E
_0801ED58: .4byte gUnknown_081FAB5C
_0801ED5C: .4byte gUnknown_02024D1E
_0801ED60:
	mov r3, r8
	ldrb r0, [r3]
	movs r5, 0x58
	muls r0, r5
	mov r4, r9
	adds r4, 0x50
	adds r2, r0, r4
	ldr r1, [r2]
	movs r0, 0x70
	ands r0, r1
	cmp r0, 0
	beq _0801ED7C
	bl _0801F5DC
_0801ED7C:
	movs r0, 0x80
	lsls r0, 5
	orrs r1, r0
	str r1, [r2]
	ldr r1, _0801EDC8 @ =gUnknown_02024C54
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r1
	ldr r1, _0801EDCC @ =gUnknown_02024BE6
	ldrh r1, [r1]
	strh r1, [r0]
	bl Random
	mov r2, r8
	ldrb r1, [r2]
	adds r2, r1, 0
	muls r2, r5
	adds r2, r4
	movs r1, 0x3
	ands r1, r0
	adds r1, 0x2
	lsls r1, 4
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	ldr r4, _0801EDD0 @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r1, _0801EDD4 @ =gUnknown_081FAC4C
	ldr r0, _0801EDD8 @ =gUnknown_02024D1E
	ldrb r0, [r0, 0x3]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _0801F5F8
	.align 2, 0
_0801EDC8: .4byte gUnknown_02024C54
_0801EDCC: .4byte gUnknown_02024BE6
_0801EDD0: .4byte gUnknown_02024C10
_0801EDD4: .4byte gUnknown_081FAC4C
_0801EDD8: .4byte gUnknown_02024D1E
_0801EDDC:
	ldr r5, _0801EE30 @ =gUnknown_02024C07
	ldrb r0, [r5]
	bl battle_get_per_side_status
	movs r1, 0x1
	ands r1, r0
	cmp r1, 0
	bne _0801EE14
	ldr r4, _0801EE34 @ =gUnknown_02024D1A
	ldrh r3, [r4]
	ldr r2, _0801EE38 @ =gBattleMons
	ldrb r1, [r5]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x2A
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	adds r0, r3, r0
	strh r0, [r4]
	lsls r0, 16
	lsrs r0, 16
	cmp r3, r0
	bls _0801EE14
	ldr r3, _0801EE3C @ =0x0000ffff
	adds r0, r3, 0
	strh r0, [r4]
_0801EE14:
	ldr r4, _0801EE40 @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r1, _0801EE44 @ =gUnknown_081FAC4C
	ldr r0, _0801EE48 @ =gUnknown_02024D1E
	ldrb r0, [r0, 0x3]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _0801F5F8
	.align 2, 0
_0801EE30: .4byte gUnknown_02024C07
_0801EE34: .4byte gUnknown_02024D1A
_0801EE38: .4byte gBattleMons
_0801EE3C: .4byte 0x0000ffff
_0801EE40: .4byte gUnknown_02024C10
_0801EE44: .4byte gUnknown_081FAC4C
_0801EE48: .4byte gUnknown_02024D1E
_0801EE4C:
	mov r4, r8
	ldrb r1, [r4]
	movs r0, 0x58
	muls r0, r1
	mov r1, r9
	adds r1, 0x4C
	adds r0, r1
	ldr r0, [r0]
	cmp r0, 0
	beq _0801EE62
	b _0801F5DC
_0801EE62:
	bl Random
	ldr r4, _0801EE80 @ =gUnknown_02024D1E
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	adds r0, 0x3
	strb r0, [r4, 0x3]
	movs r0, 0
	movs r1, 0
	bl sub_801E3EC
	b _0801F5FA
	.align 2, 0
_0801EE80: .4byte gUnknown_02024D1E
_0801EE84:
	mov r0, r8
	ldrb r1, [r0]
	movs r0, 0x58
	adds r2, r1, 0
	muls r2, r0
	mov r0, r9
	adds r0, 0x50
	adds r2, r0
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 5
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0801EEC0 @ =gUnknown_02024C54
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, 1
	adds r0, r1
	ldr r1, _0801EEC4 @ =gUnknown_02024BE6
	ldrh r1, [r1]
	strh r1, [r0]
	ldr r0, _0801EEC8 @ =gUnknown_02024D28
	ldrb r1, [r2]
	lsls r1, 4
	adds r1, r0
	ldrb r0, [r1, 0x1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1, 0x1]
	b _0801F5DC
	.align 2, 0
_0801EEC0: .4byte gUnknown_02024C54
_0801EEC4: .4byte gUnknown_02024BE6
_0801EEC8: .4byte gUnknown_02024D28
_0801EECC:
	mov r3, r8
	ldrb r0, [r3]
	movs r6, 0x58
	muls r0, r6
	mov r4, r9
	adds r4, 0x50
	adds r0, r4
	ldr r5, [r0]
	movs r0, 0xE0
	lsls r0, 8
	ands r5, r0
	cmp r5, 0
	beq _0801EEE8
	b _0801F5DC
_0801EEE8:
	bl Random
	mov r2, r8
	ldrb r1, [r2]
	adds r2, r1, 0
	muls r2, r6
	adds r2, r4
	movs r1, 0x3
	ands r1, r0
	adds r1, 0x3
	lsls r1, 13
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	ldr r2, _0801EF80 @ =0x02000000
	mov r3, r8
	ldrb r0, [r3]
	lsls r0, 1
	ldr r4, _0801EF84 @ =0x00016004
	adds r0, r4
	adds r0, r2
	ldr r6, _0801EF88 @ =gUnknown_02024BE6
	ldrh r1, [r6]
	strb r1, [r0]
	ldrb r0, [r3]
	lsls r0, 1
	ldr r1, _0801EF8C @ =0x00016005
	adds r0, r1
	adds r0, r2
	ldrh r1, [r6]
	lsrs r1, 8
	strb r1, [r0]
	ldrb r0, [r3]
	ldr r3, _0801EF90 @ =0x00016020
	adds r0, r3
	adds r0, r2
	ldr r1, _0801EF94 @ =gUnknown_02024C07
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r4, _0801EF98 @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r1, _0801EF9C @ =gUnknown_081FAC4C
	ldr r2, _0801EFA0 @ =gUnknown_02024D1E
	ldrb r0, [r2, 0x3]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	str r0, [r4]
	strb r5, [r2, 0x5]
	ldr r1, _0801EFA4 @ =gUnknown_0840164C
	ldrh r0, [r1]
	ldrh r4, [r6]
	cmp r0, r4
	bne _0801EF5C
	b _0801F5FA
_0801EF5C:
	adds r3, r1, 0
	adds r1, r6, 0
_0801EF60:
	ldrb r0, [r2, 0x5]
	adds r0, 0x1
	strb r0, [r2, 0x5]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x4
	bls _0801EF70
	b _0801F5FA
_0801EF70:
	ldrb r0, [r2, 0x5]
	lsls r0, 1
	adds r0, r3
	ldrh r0, [r0]
	ldrh r4, [r1]
	cmp r0, r4
	bne _0801EF60
	b _0801F5FA
	.align 2, 0
_0801EF80: .4byte 0x02000000
_0801EF84: .4byte 0x00016004
_0801EF88: .4byte gUnknown_02024BE6
_0801EF8C: .4byte 0x00016005
_0801EF90: .4byte 0x00016020
_0801EF94: .4byte gUnknown_02024C07
_0801EF98: .4byte gUnknown_02024C10
_0801EF9C: .4byte gUnknown_081FAC4C
_0801EFA0: .4byte gUnknown_02024D1E
_0801EFA4: .4byte gUnknown_0840164C
_0801EFA8:
	ldr r1, _0801EFD8 @ =gUnknown_02024BEC
	ldr r0, _0801EFDC @ =gUnknown_02024BF0
	ldr r0, [r0]
	cmp r0, 0
	bge _0801EFB4
	adds r0, 0x3
_0801EFB4:
	asrs r0, 2
	str r0, [r1]
	cmp r0, 0
	bne _0801EFC0
	movs r0, 0x1
	str r0, [r1]
_0801EFC0:
	ldr r4, _0801EFE0 @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r1, _0801EFE4 @ =gUnknown_081FAC4C
	ldr r0, _0801EFE8 @ =gUnknown_02024D1E
	ldrb r0, [r0, 0x3]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	b _0801F5F8
	.align 2, 0
_0801EFD8: .4byte gUnknown_02024BEC
_0801EFDC: .4byte gUnknown_02024BF0
_0801EFE0: .4byte gUnknown_02024C10
_0801EFE4: .4byte gUnknown_081FAC4C
_0801EFE8: .4byte gUnknown_02024D1E
_0801EFEC:
	ldrb r1, [r7, 0x3]
	adds r1, 0xF2
	lsls r1, 24
	lsrs r1, 24
	movs r0, 0x10
	adds r2, r6, 0
	movs r3, 0
	bl sub_8025E20
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0
	beq _0801F008
	b _0801F5DC
_0801F008:
	ldr r2, _0801F02C @ =0x02000000
	ldrb r1, [r7, 0x3]
	movs r0, 0x3F
	ands r0, r1
	ldr r4, _0801F030 @ =0x000160a4
	adds r1, r2, r4
	strb r0, [r1]
	ldr r0, _0801F034 @ =0x000160a5
	adds r2, r0
	strb r3, [r2]
	ldr r4, _0801F038 @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, _0801F03C @ =gUnknown_081D71E5
	b _0801F5F8
	.align 2, 0
_0801F02C: .4byte 0x02000000
_0801F030: .4byte 0x000160a4
_0801F034: .4byte 0x000160a5
_0801F038: .4byte gUnknown_02024C10
_0801F03C: .4byte gUnknown_081D71E5
_0801F040:
	movs r0, 0x70
	negs r0, r0
	ldrb r1, [r7, 0x3]
	adds r1, 0xEB
	lsls r1, 24
	lsrs r1, 24
	adds r2, r6, 0
	movs r3, 0
	bl sub_8025E20
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0
	beq _0801F05E
	b _0801F5DC
_0801F05E:
	ldr r2, _0801F080 @ =0x02000000
	ldrb r1, [r7, 0x3]
	movs r0, 0x3F
	ands r0, r1
	ldr r4, _0801F084 @ =0x000160a4
	adds r1, r2, r4
	strb r0, [r1]
	ldr r0, _0801F088 @ =0x000160a5
	adds r2, r0
	strb r3, [r2]
	ldr r4, _0801F08C @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, _0801F090 @ =gUnknown_081D7276
	b _0801F5F8
	.align 2, 0
_0801F080: .4byte 0x02000000
_0801F084: .4byte 0x000160a4
_0801F088: .4byte 0x000160a5
_0801F08C: .4byte gUnknown_02024C10
_0801F090: .4byte gUnknown_081D7276
_0801F094:
	ldrb r1, [r7, 0x3]
	adds r1, 0xDA
	lsls r1, 24
	lsrs r1, 24
	movs r0, 0x20
	adds r2, r6, 0
	movs r3, 0
	bl sub_8025E20
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0
	beq _0801F0B0
	b _0801F5DC
_0801F0B0:
	ldr r2, _0801F0D4 @ =0x02000000
	ldrb r1, [r7, 0x3]
	movs r0, 0x3F
	ands r0, r1
	ldr r4, _0801F0D8 @ =0x000160a4
	adds r1, r2, r4
	strb r0, [r1]
	ldr r0, _0801F0DC @ =0x000160a5
	adds r2, r0
	strb r3, [r2]
	ldr r4, _0801F0E0 @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, _0801F0E4 @ =gUnknown_081D71E5
	b _0801F5F8
	.align 2, 0
_0801F0D4: .4byte 0x02000000
_0801F0D8: .4byte 0x000160a4
_0801F0DC: .4byte 0x000160a5
_0801F0E0: .4byte gUnknown_02024C10
_0801F0E4: .4byte gUnknown_081D71E5
_0801F0E8:
	movs r0, 0x60
	negs r0, r0
	ldrb r1, [r7, 0x3]
	adds r1, 0xD3
	lsls r1, 24
	lsrs r1, 24
	adds r2, r6, 0
	movs r3, 0
	bl sub_8025E20
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0
	beq _0801F106
	b _0801F5DC
_0801F106:
	ldr r2, _0801F128 @ =0x02000000
	ldrb r1, [r7, 0x3]
	movs r0, 0x3F
	ands r0, r1
	ldr r4, _0801F12C @ =0x000160a4
	adds r1, r2, r4
	strb r0, [r1]
	ldr r0, _0801F130 @ =0x000160a5
	adds r2, r0
	strb r3, [r2]
	ldr r4, _0801F134 @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, _0801F138 @ =gUnknown_081D7276
	b _0801F5F8
	.align 2, 0
_0801F128: .4byte 0x02000000
_0801F12C: .4byte 0x000160a4
_0801F130: .4byte 0x000160a5
_0801F134: .4byte gUnknown_02024C10
_0801F138: .4byte gUnknown_081D7276
_0801F13C:
	mov r2, r8
	ldrb r1, [r2]
	movs r0, 0x58
	adds r2, r1, 0
	muls r2, r0
	mov r0, r9
	adds r0, 0x50
	adds r2, r0
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 15
	orrs r0, r1
	str r0, [r2]
	ldr r2, _0801F178 @ =gUnknown_02024CA8
	mov r3, r8
	ldrb r1, [r3]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0x2
	strb r1, [r0, 0x19]
	ldr r1, _0801F17C @ =gUnknown_02024C54
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r1
	ldr r1, _0801F180 @ =gUnknown_02024BE6
	ldrh r1, [r1]
	strh r1, [r0]
	b _0801F5DC
	.align 2, 0
_0801F178: .4byte gUnknown_02024CA8
_0801F17C: .4byte gUnknown_02024C54
_0801F180: .4byte gUnknown_02024BE6
_0801F184:
	ldr r0, _0801F1A0 @ =gUnknown_02024C07
	ldrb r1, [r0]
	movs r0, 0x58
	adds r2, r1, 0
	muls r2, r0
	mov r0, r9
	adds r0, 0x50
	adds r2, r0
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 16
_0801F19A:
	orrs r0, r1
	str r0, [r2]
	b _0801F5DC
	.align 2, 0
_0801F1A0: .4byte gUnknown_02024C07
_0801F1A4:
	ldr r4, _0801F254 @ =gUnknown_02024C07
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r6, r0, 24
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0801F1D8
	ldr r0, _0801F258 @ =gUnknown_020239F8
	ldrh r1, [r0]
	ldr r0, _0801F25C @ =0x00000902
	ands r0, r1
	cmp r0, 0
	bne _0801F214
	ldr r0, _0801F260 @ =gTrainerBattleOpponent
	ldrh r1, [r0]
	movs r0, 0x80
	lsls r0, 3
	cmp r1, r0
	beq _0801F1D8
	b _0801F5DC
_0801F1D8:
	ldr r0, _0801F258 @ =gUnknown_020239F8
	ldrh r1, [r0]
	ldr r0, _0801F25C @ =0x00000902
	ands r0, r1
	cmp r0, 0
	bne _0801F214
	ldr r0, _0801F260 @ =gTrainerBattleOpponent
	ldrh r1, [r0]
	movs r0, 0x80
	lsls r0, 3
	cmp r1, r0
	beq _0801F214
	ldr r0, _0801F264 @ =gUnknown_02024DBC
	adds r0, 0x29
	adds r0, r6, r0
	ldrb r1, [r0]
	ldr r3, _0801F268 @ =gBitTable
	ldr r2, _0801F26C @ =gUnknown_02024A6A
	ldr r0, _0801F254 @ =gUnknown_02024C07
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _0801F214
	b _0801F5DC
_0801F214:
	ldr r2, _0801F270 @ =gBattleMons
	ldr r1, _0801F274 @ =gUnknown_02024C08
	ldrb r0, [r1]
	movs r3, 0x58
	muls r0, r3
	adds r4, r0, r2
	ldrh r0, [r4, 0x2E]
	adds r7, r1, 0
	mov r9, r2
	cmp r0, 0
	beq _0801F284
	adds r0, r4, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x3C
	bne _0801F284
	ldr r1, _0801F278 @ =gUnknown_02024C10
	ldr r0, _0801F27C @ =gUnknown_081D9913
	str r0, [r1]
	ldr r1, _0801F280 @ =byte_2024C06
	ldrb r0, [r7]
	muls r0, r3
	add r0, r9
	adds r0, 0x20
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r7]
	ldrb r1, [r1]
	bl sub_81074C4
	b _0801F5FA
	.align 2, 0
_0801F254: .4byte gUnknown_02024C07
_0801F258: .4byte gUnknown_020239F8
_0801F25C: .4byte 0x00000902
_0801F260: .4byte gTrainerBattleOpponent
_0801F264: .4byte gUnknown_02024DBC
_0801F268: .4byte gBitTable
_0801F26C: .4byte gUnknown_02024A6A
_0801F270: .4byte gBattleMons
_0801F274: .4byte gUnknown_02024C08
_0801F278: .4byte gUnknown_02024C10
_0801F27C: .4byte gUnknown_081D9913
_0801F280: .4byte byte_2024C06
_0801F284:
	ldr r4, _0801F340 @ =gUnknown_02024C07
	mov r10, r4
	ldrb r1, [r4]
	movs r0, 0x58
	mov r8, r0
	mov r0, r8
	muls r0, r1
	add r0, r9
	ldrh r3, [r0, 0x2E]
	cmp r3, 0
	beq _0801F29C
	b _0801F5DC
_0801F29C:
	ldrb r0, [r7]
	mov r2, r8
	muls r2, r0
	adds r0, r2, 0
	add r0, r9
	ldrh r2, [r0, 0x2E]
	adds r0, r2, 0
	cmp r0, 0xAF
	bne _0801F2B0
	b _0801F5DC
_0801F2B0:
	cmp r0, 0
	bne _0801F2B6
	b _0801F5DC
_0801F2B6:
	lsls r0, r1, 1
	ldr r5, _0801F344 @ =0x020160f0
	adds r0, r5
	ldr r1, _0801F348 @ =gUnknown_02024C04
	strh r2, [r0]
	strh r2, [r1]
	ldrb r0, [r7]
	mov r4, r8
	muls r4, r0
	adds r0, r4, 0
	add r0, r9
	movs r6, 0
	strh r3, [r0, 0x2E]
	ldr r4, _0801F34C @ =gUnknown_02024A60
	mov r2, r10
	ldrb r0, [r2]
	strb r0, [r4]
	str r1, [sp]
	movs r0, 0
	movs r1, 0x2
	movs r2, 0
	movs r3, 0x2
	bl dp01_build_cmdbuf_x02_a_b_varargs
	mov r3, r10
	ldrb r0, [r3]
	bl dp01_battle_side_mark_buffer_for_execution
	ldrb r0, [r7]
	strb r0, [r4]
	ldrb r0, [r7]
	mov r4, r8
	muls r4, r0
	adds r0, r4, 0
	mov r1, r9
	adds r1, 0x2E
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0x2
	movs r2, 0
	movs r3, 0x2
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r7]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r4, _0801F350 @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, _0801F354 @ =gUnknown_081D96F6
	str r0, [r4]
	ldr r0, _0801F358 @ =0xfffe9f10
	adds r5, r0
	ldrb r0, [r7]
	lsls r0, 1
	ldr r1, _0801F35C @ =0x000160e8
	adds r0, r1
	adds r0, r5
	strb r6, [r0]
	ldrb r0, [r7]
	lsls r0, 1
	ldr r2, _0801F360 @ =0x000160e9
	adds r0, r2
	adds r0, r5
	strb r6, [r0]
	b _0801F5FA
	.align 2, 0
_0801F340: .4byte gUnknown_02024C07
_0801F344: .4byte 0x020160f0
_0801F348: .4byte gUnknown_02024C04
_0801F34C: .4byte gUnknown_02024A60
_0801F350: .4byte gUnknown_02024C10
_0801F354: .4byte gUnknown_081D96F6
_0801F358: .4byte 0xfffe9f10
_0801F35C: .4byte 0x000160e8
_0801F360: .4byte 0x000160e9
_0801F364:
	ldr r3, _0801F394 @ =gUnknown_02024C08
	ldrb r1, [r3]
	movs r0, 0x58
	adds r2, r1, 0
	muls r2, r0
	mov r0, r9
	adds r0, 0x50
	adds r2, r0
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 19
	orrs r0, r1
	str r0, [r2]
	ldr r2, _0801F398 @ =gUnknown_02024CA8
	ldrb r1, [r3]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldr r1, _0801F39C @ =gUnknown_02024C07
	ldrb r1, [r1]
	strb r1, [r0, 0x14]
	b _0801F5DC
	.align 2, 0
_0801F394: .4byte gUnknown_02024C08
_0801F398: .4byte gUnknown_02024CA8
_0801F39C: .4byte gUnknown_02024C07
_0801F3A0:
	ldr r0, _0801F3B8 @ =gUnknown_02024C08
	ldrb r1, [r0]
	movs r0, 0x58
	adds r2, r1, 0
	muls r2, r0
	mov r0, r9
	adds r0, 0x50
	adds r2, r0
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 20
	b _0801F19A
	.align 2, 0
_0801F3B8: .4byte gUnknown_02024C08
_0801F3BC:
	ldr r4, _0801F3CC @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, _0801F3D0 @ =gUnknown_081D9224
	b _0801F5F8
	.align 2, 0
_0801F3CC: .4byte gUnknown_02024C10
_0801F3D0: .4byte gUnknown_081D9224
_0801F3D4:
	ldr r4, _0801F3E4 @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, _0801F3E8 @ =gUnknown_081D92C0
	b _0801F5F8
	.align 2, 0
_0801F3E4: .4byte gUnknown_02024C10
_0801F3E8: .4byte gUnknown_081D92C0
_0801F3EC:
	ldr r6, _0801F43C @ =gUnknown_02024C08
	ldrb r0, [r6]
	movs r2, 0x58
	muls r0, r2
	mov r1, r9
	adds r1, 0x4C
	adds r5, r0, r1
	ldr r4, [r5]
	movs r0, 0x40
	ands r0, r4
	cmp r0, 0
	bne _0801F406
	b _0801F5DC
_0801F406:
	movs r0, 0x41
	negs r0, r0
	ands r4, r0
	str r4, [r5]
	ldr r4, _0801F440 @ =gUnknown_02024A60
	ldrb r0, [r6]
	strb r0, [r4]
	ldrb r0, [r4]
	muls r0, r2
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r2, 0
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r4, _0801F444 @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, _0801F448 @ =gUnknown_081D9635
	b _0801F5F8
	.align 2, 0
_0801F43C: .4byte gUnknown_02024C08
_0801F440: .4byte gUnknown_02024A60
_0801F444: .4byte gUnknown_02024C10
_0801F448: .4byte gUnknown_081D9635
_0801F44C:
	ldr r4, _0801F45C @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, _0801F460 @ =gUnknown_081D93FA
	b _0801F5F8
	.align 2, 0
_0801F45C: .4byte gUnknown_02024C10
_0801F460: .4byte gUnknown_081D93FA
_0801F464:
	ldr r4, _0801F494 @ =gUnknown_02024BEC
	ldr r0, _0801F498 @ =gUnknown_02024BF0
	ldr r0, [r0]
	movs r1, 0x3
	bl __divsi3
	str r0, [r4]
	cmp r0, 0
	bne _0801F47A
	movs r0, 0x1
	str r0, [r4]
_0801F47A:
	ldr r4, _0801F49C @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r1, _0801F4A0 @ =gUnknown_081FAC4C
	ldr r0, _0801F4A4 @ =gUnknown_02024D1E
	ldrb r0, [r0, 0x3]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	b _0801F5F8
	.align 2, 0
_0801F494: .4byte gUnknown_02024BEC
_0801F498: .4byte gUnknown_02024BF0
_0801F49C: .4byte gUnknown_02024C10
_0801F4A0: .4byte gUnknown_081FAC4C
_0801F4A4: .4byte gUnknown_02024D1E
_0801F4A8:
	mov r3, r8
	ldrb r0, [r3]
	movs r5, 0x58
	muls r0, r5
	mov r4, r9
	adds r4, 0x50
	adds r2, r0, r4
	ldr r1, [r2]
	movs r0, 0xC0
	lsls r0, 4
	ands r0, r1
	cmp r0, 0
	beq _0801F4C4
	b _0801F5DC
_0801F4C4:
	movs r0, 0x80
	lsls r0, 5
	orrs r1, r0
	str r1, [r2]
	ldr r1, _0801F4F8 @ =gUnknown_02024C54
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r1
	ldr r1, _0801F4FC @ =gUnknown_02024BE6
	ldrh r1, [r1]
	strh r1, [r0]
	bl Random
	mov r2, r8
	ldrb r1, [r2]
	adds r2, r1, 0
	muls r2, r5
	adds r2, r4
	movs r1, 0x1
	ands r1, r0
	adds r1, 0x2
	lsls r1, 10
	ldr r0, [r2]
_0801F4F2:
	orrs r0, r1
	str r0, [r2]
	b _0801F5FA
	.align 2, 0
_0801F4F8: .4byte gUnknown_02024C54
_0801F4FC: .4byte gUnknown_02024BE6
_0801F500:
	mov r5, r8
	ldrb r3, [r5]
	movs r4, 0x58
	adds r0, r3, 0
	muls r0, r4
	mov r2, r9
	adds r1, r0, r2
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r2, [r0]
	cmp r2, 0x3C
	bne _0801F540
	ldrh r0, [r1, 0x2E]
	cmp r0, 0
	beq _0801F5DC
	ldr r0, _0801F534 @ =byte_2024C06
	strb r2, [r0]
	ldr r1, _0801F538 @ =gUnknown_02024C10
	ldr r0, _0801F53C @ =gUnknown_081D9913
	str r0, [r1]
	ldrb r0, [r5]
	movs r1, 0x3C
	bl sub_81074C4
	b _0801F5FA
	.align 2, 0
_0801F534: .4byte byte_2024C06
_0801F538: .4byte gUnknown_02024C10
_0801F53C: .4byte gUnknown_081D9913
_0801F540:
	ldrh r0, [r1, 0x2E]
	cmp r0, 0
	beq _0801F5DC
	adds r0, r3, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, _0801F5B8 @ =gUnknown_02024C04
	mov r3, r8
	ldrb r0, [r3]
	muls r0, r4
	add r0, r9
	ldrh r0, [r0, 0x2E]
	strh r0, [r1]
	ldrb r0, [r3]
	muls r0, r4
	add r0, r9
	movs r5, 0
	movs r1, 0
	strh r1, [r0, 0x2E]
	ldr r2, _0801F5BC @ =gUnknown_02024DBC
	adds r2, 0x29
	adds r2, r6, r2
	ldr r3, _0801F5C0 @ =gBitTable
	ldr r1, _0801F5C4 @ =gUnknown_02024A6A
	mov r4, r8
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r1
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r4, _0801F5C8 @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, _0801F5CC @ =gUnknown_081D944B
	str r0, [r4]
	ldr r1, _0801F5D0 @ =0x02000000
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, 1
	ldr r3, _0801F5D4 @ =0x000160e8
	adds r0, r3
	adds r0, r1
	strb r5, [r0]
	ldrb r0, [r2]
	lsls r0, 1
	ldr r4, _0801F5D8 @ =0x000160e9
	adds r0, r4
	adds r0, r1
	strb r5, [r0]
	b _0801F5FA
	.align 2, 0
_0801F5B8: .4byte gUnknown_02024C04
_0801F5BC: .4byte gUnknown_02024DBC
_0801F5C0: .4byte gBitTable
_0801F5C4: .4byte gUnknown_02024A6A
_0801F5C8: .4byte gUnknown_02024C10
_0801F5CC: .4byte gUnknown_081D944B
_0801F5D0: .4byte 0x02000000
_0801F5D4: .4byte 0x000160e8
_0801F5D8: .4byte 0x000160e9
_0801F5DC:
	ldr r1, _0801F5E8 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	b _0801F5FA
	.align 2, 0
_0801F5E8: .4byte gUnknown_02024C10
_0801F5EC:
	ldr r4, _0801F60C @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, _0801F610 @ =gUnknown_081D94B0
_0801F5F8:
	str r0, [r4]
_0801F5FA:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F60C: .4byte gUnknown_02024C10
_0801F610: .4byte gUnknown_081D94B0
	thumb_func_end sub_801E3EC

	thumb_func_start atk15_seteffectwithchancetarget
atk15_seteffectwithchancetarget: @ 801F614
	push {r4,lr}
	ldr r2, _0801F640 @ =gBattleMons
	ldr r0, _0801F644 @ =gUnknown_02024C07
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x20
	bne _0801F650
	ldr r2, _0801F648 @ =gBattleMoves
	ldr r0, _0801F64C @ =gUnknown_02024BE6
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x5]
	lsls r4, r0, 1
	b _0801F660
	.align 2, 0
_0801F640: .4byte gBattleMons
_0801F644: .4byte gUnknown_02024C07
_0801F648: .4byte gBattleMoves
_0801F64C: .4byte gUnknown_02024BE6
_0801F650:
	ldr r2, _0801F680 @ =gBattleMoves
	ldr r0, _0801F684 @ =gUnknown_02024BE6
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r4, [r0, 0x5]
_0801F660:
	ldr r3, _0801F688 @ =gUnknown_02024D1E
	ldrb r2, [r3, 0x3]
	movs r0, 0x80
	ands r0, r2
	cmp r0, 0
	beq _0801F690
	ldr r0, _0801F68C @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _0801F690
	movs r0, 0x7F
	ands r0, r2
	strb r0, [r3, 0x3]
	b _0801F6BE
	.align 2, 0
_0801F680: .4byte gBattleMoves
_0801F684: .4byte gUnknown_02024BE6
_0801F688: .4byte gUnknown_02024D1E
_0801F68C: .4byte gUnknown_02024C68
_0801F690:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, r4
	bhi _0801F6DA
	ldr r0, _0801F6C8 @ =gUnknown_02024D1E
	ldrb r0, [r0, 0x3]
	cmp r0, 0
	beq _0801F6DA
	ldr r0, _0801F6CC @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _0801F6DA
	cmp r4, 0x63
	bls _0801F6D0
_0801F6BE:
	movs r0, 0
	movs r1, 0x80
	bl sub_801E3EC
	b _0801F6E2
	.align 2, 0
_0801F6C8: .4byte gUnknown_02024D1E
_0801F6CC: .4byte gUnknown_02024C68
_0801F6D0:
	movs r0, 0
	movs r1, 0
	bl sub_801E3EC
	b _0801F6E2
_0801F6DA:
	ldr r1, _0801F6F8 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
_0801F6E2:
	ldr r0, _0801F6FC @ =gUnknown_02024D1E
	movs r1, 0
	strb r1, [r0, 0x3]
	ldr r0, _0801F700 @ =0x02000000
	ldr r2, _0801F704 @ =0x00016112
	adds r0, r2
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F6F8: .4byte gUnknown_02024C10
_0801F6FC: .4byte gUnknown_02024D1E
_0801F700: .4byte 0x02000000
_0801F704: .4byte 0x00016112
	thumb_func_end atk15_seteffectwithchancetarget

	thumb_func_start sub_801F708
sub_801F708: @ 801F708
	push {lr}
	movs r0, 0x1
	movs r1, 0
	bl sub_801E3EC
	pop {r0}
	bx r0
	thumb_func_end sub_801F708

	thumb_func_start sub_801F718
sub_801F718: @ 801F718
	push {lr}
	movs r0, 0
	movs r1, 0
	bl sub_801E3EC
	pop {r0}
	bx r0
	thumb_func_end sub_801F718

	thumb_func_start sub_801F728
sub_801F728: @ 801F728
	push {lr}
	ldr r0, _0801F74C @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r2, _0801F750 @ =gUnknown_02024A60
	strb r0, [r2]
	ldr r3, _0801F754 @ =gUnknown_02024D1E
	ldrb r0, [r3, 0x3]
	cmp r0, 0x6
	bhi _0801F75C
	ldr r1, _0801F758 @ =gBattleMons
	ldrb r2, [r2]
	movs r0, 0x58
	muls r2, r0
	adds r1, 0x4C
	b _0801F766
	.align 2, 0
_0801F74C: .4byte gUnknown_02024C10
_0801F750: .4byte gUnknown_02024A60
_0801F754: .4byte gUnknown_02024D1E
_0801F758: .4byte gBattleMons
_0801F75C:
	ldr r1, _0801F794 @ =gBattleMons
	ldrb r2, [r2]
	movs r0, 0x58
	muls r2, r0
	adds r1, 0x50
_0801F766:
	adds r2, r1
	ldr r1, _0801F798 @ =gUnknown_081FAB5C
	ldrb r0, [r3, 0x3]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	ldr r0, _0801F79C @ =gUnknown_02024D1E
	movs r2, 0
	strb r2, [r0, 0x3]
	ldr r1, _0801F7A0 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
	ldr r0, _0801F7A4 @ =0x02000000
	ldr r1, _0801F7A8 @ =0x00016112
	adds r0, r1
	strb r2, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_0801F794: .4byte gBattleMons
_0801F798: .4byte gUnknown_081FAB5C
_0801F79C: .4byte gUnknown_02024D1E
_0801F7A0: .4byte gUnknown_02024C10
_0801F7A4: .4byte 0x02000000
_0801F7A8: .4byte 0x00016112
	thumb_func_end sub_801F728

	thumb_func_start sub_801F7AC
sub_801F7AC: @ 801F7AC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	ldr r0, _0801F81C @ =gUnknown_02024C10
	ldr r2, [r0]
	ldrb r1, [r2, 0x2]
	adds r6, r0, 0
	cmp r1, 0
	beq _0801F834
	ldrb r0, [r2, 0x1]
	bl sub_8015150
	ldr r5, _0801F820 @ =gUnknown_02024A60
	strb r0, [r5]
	ldr r2, _0801F824 @ =gUnknown_02024C6C
	ldr r1, _0801F828 @ =gBitTable
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	lsls r1, 28
	ldr r0, [r2]
	ands r0, r1
	cmp r0, 0
	bne _0801F7E6
	b _0801FB1C
_0801F7E6:
	ldr r1, [r6]
	ldrb r4, [r1, 0x3]
	ldrb r0, [r1, 0x4]
	lsls r0, 8
	orrs r4, r0
	ldrb r0, [r1, 0x5]
	lsls r0, 16
	orrs r4, r0
	ldrb r0, [r1, 0x6]
	lsls r0, 24
	orrs r4, r0
	bl b_movescr_stack_pop_cursor
	str r4, [r6]
	ldrb r0, [r5]
	bl battle_side_get_owner
	ldr r1, _0801F82C @ =gUnknown_02024C7A
	lsls r0, 24
	lsrs r0, 23
	adds r0, r1
	ldrh r2, [r0]
	ldr r1, _0801F830 @ =0x0000fdff
	ands r1, r2
	strh r1, [r0]
	b _0801FB22
	.align 2, 0
_0801F81C: .4byte gUnknown_02024C10
_0801F820: .4byte gUnknown_02024A60
_0801F824: .4byte gUnknown_02024C6C
_0801F828: .4byte gBitTable
_0801F82C: .4byte gUnknown_02024C7A
_0801F830: .4byte 0x0000fdff
_0801F834:
	ldrb r0, [r2, 0x1]
	cmp r0, 0x1
	bne _0801F85C
	ldr r1, _0801F84C @ =gUnknown_02024A60
	ldr r0, _0801F850 @ =gUnknown_02024C07
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0801F854 @ =gUnknown_02024C08
	ldrb r7, [r0]
	ldr r4, _0801F858 @ =gUnknown_081D8C58
	b _0801F86A
	.align 2, 0
_0801F84C: .4byte gUnknown_02024A60
_0801F850: .4byte gUnknown_02024C07
_0801F854: .4byte gUnknown_02024C08
_0801F858: .4byte gUnknown_081D8C58
_0801F85C:
	ldr r1, _0801F954 @ =gUnknown_02024A60
	ldr r0, _0801F958 @ =gUnknown_02024C08
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0801F95C @ =gUnknown_02024C07
	ldrb r7, [r0]
	ldr r4, _0801F960 @ =gUnknown_081D8C65
_0801F86A:
	ldr r0, _0801F964 @ =gUnknown_02024C0C
	ldrb r1, [r0]
	ldr r0, _0801F968 @ =gBitTable
	mov r12, r0
	ldr r2, _0801F954 @ =gUnknown_02024A60
	mov r8, r2
	ldrb r2, [r2]
	lsls r0, r2, 2
	add r0, r12
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _0801F886
	b _0801FB1C
_0801F886:
	ldr r3, _0801F96C @ =gBattleMons
	mov r10, r3
	movs r5, 0x58
	mov r9, r5
	mov r0, r9
	muls r0, r2
	add r0, r10
	ldrh r3, [r0, 0x28]
	cmp r3, 0
	beq _0801F89C
	b _0801FB1C
_0801F89C:
	ldr r2, _0801F970 @ =0x02000000
	lsls r1, r7, 1
	ldr r5, _0801F974 @ =0x000160ac
	adds r0, r1, r5
	adds r0, r2
	strb r3, [r0]
	ldr r0, _0801F978 @ =0x000160ad
	adds r1, r0
	adds r1, r2
	strb r3, [r1]
	lsls r1, r7, 2
	adds r5, 0x54
	adds r0, r1, r5
	adds r0, r2
	strb r3, [r0]
	adds r5, 0x1
	adds r0, r1, r5
	adds r0, r2
	strb r3, [r0]
	adds r5, 0x1
	adds r0, r1, r5
	adds r0, r2
	strb r3, [r0]
	ldr r0, _0801F97C @ =0x00016103
	adds r1, r0
	adds r1, r2
	strb r3, [r1]
	ldr r5, _0801F980 @ =gUnknown_02024C6C
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, 2
	add r0, r12
	ldr r1, [r0]
	lsls r1, 28
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r6]
	adds r0, 0x7
	bl b_movescr_stack_push
	str r4, [r6]
	mov r2, r8
	ldrb r0, [r2]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _0801F9B0
	ldr r0, [r5]
	movs r1, 0x80
	lsls r1, 15
	orrs r0, r1
	str r0, [r5]
	ldr r1, _0801F984 @ =gUnknown_030042E0
	ldrb r0, [r1]
	cmp r0, 0xFE
	bhi _0801F914
	adds r0, 0x1
	strb r0, [r1]
_0801F914:
	mov r0, r9
	muls r0, r7
	add r0, r10
	adds r3, r0, 0
	adds r3, 0x2A
	mov r4, r8
	ldrb r2, [r4]
	mov r0, r9
	muls r0, r2
	add r0, r10
	adds r1, r0, 0
	adds r1, 0x2A
	ldrb r0, [r3]
	ldrb r5, [r1]
	cmp r0, r5
	bls _0801F9CC
	ldrb r1, [r1]
	subs r0, r1
	cmp r0, 0x1D
	ble _0801F990
	ldr r1, _0801F988 @ =gUnknown_02024A6A
	lsls r0, r2, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, _0801F98C @ =gPlayerParty
	adds r0, r1
	movs r1, 0x8
	bl AdjustFriendship
	b _0801F9CC
	.align 2, 0
_0801F954: .4byte gUnknown_02024A60
_0801F958: .4byte gUnknown_02024C08
_0801F95C: .4byte gUnknown_02024C07
_0801F960: .4byte gUnknown_081D8C65
_0801F964: .4byte gUnknown_02024C0C
_0801F968: .4byte gBitTable
_0801F96C: .4byte gBattleMons
_0801F970: .4byte 0x02000000
_0801F974: .4byte 0x000160ac
_0801F978: .4byte 0x000160ad
_0801F97C: .4byte 0x00016103
_0801F980: .4byte gUnknown_02024C6C
_0801F984: .4byte gUnknown_030042E0
_0801F988: .4byte gUnknown_02024A6A
_0801F98C: .4byte gPlayerParty
_0801F990:
	ldr r1, _0801F9A8 @ =gUnknown_02024A6A
	lsls r0, r2, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, _0801F9AC @ =gPlayerParty
	adds r0, r1
	movs r1, 0x6
	bl AdjustFriendship
	b _0801F9CC
	.align 2, 0
_0801F9A8: .4byte gUnknown_02024A6A
_0801F9AC: .4byte gPlayerParty
_0801F9B0:
	ldr r1, _0801FAE0 @ =gUnknown_030042E0
	ldrb r0, [r1, 0x1]
	cmp r0, 0xFE
	bhi _0801F9BC
	adds r0, 0x1
	strb r0, [r1, 0x1]
_0801F9BC:
	ldr r2, _0801FAE4 @ =gUnknown_02024A60
	ldrb r0, [r2]
	mov r3, r9
	muls r3, r0
	adds r0, r3, 0
	add r0, r10
	ldrh r0, [r0]
	strh r0, [r1, 0x20]
_0801F9CC:
	ldr r0, _0801FAE8 @ =gUnknown_02024C6C
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0801FA02
	ldr r6, _0801FAEC @ =gBattleMons
	ldr r0, _0801FAF0 @ =gUnknown_02024C07
	ldrb r0, [r0]
	movs r5, 0x58
	muls r0, r5
	adds r0, r6
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _0801FA02
	ldr r4, _0801FAF4 @ =gUnknown_02024C10
	ldr r0, [r4]
	bl b_movescr_stack_push
	ldr r1, _0801FAF8 @ =gUnknown_02024BEC
	adds r0, r7, 0
	muls r0, r5
	adds r0, r6
	ldrh r0, [r0, 0x28]
	str r0, [r1]
	ldr r0, _0801FAFC @ =gUnknown_081D9156
	str r0, [r4]
_0801FA02:
	ldr r1, _0801FB00 @ =gUnknown_02024C98
	ldr r6, _0801FB04 @ =gUnknown_02024C08
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 7
	ands r0, r1
	cmp r0, 0
	bne _0801FA1A
	b _0801FB22
_0801FA1A:
	ldr r0, _0801FAE8 @ =gUnknown_02024C6C
	ldr r5, [r0]
	movs r0, 0x80
	lsls r0, 17
	ands r5, r0
	cmp r5, 0
	bne _0801FB22
	ldr r4, _0801FAF0 @ =gUnknown_02024C07
	mov r8, r4
	ldrb r0, [r4]
	bl battle_side_get_owner
	adds r4, r0, 0
	ldrb r0, [r6]
	bl battle_side_get_owner
	lsls r4, 24
	lsls r0, 24
	cmp r4, r0
	beq _0801FB22
	ldr r0, _0801FAEC @ =gBattleMons
	mov r9, r0
	mov r1, r8
	ldrb r2, [r1]
	movs r7, 0x58
	adds r3, r2, 0
	muls r3, r7
	adds r0, r3, r0
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _0801FB22
	ldr r0, _0801FB08 @ =gUnknown_02024BE6
	ldrh r0, [r0]
	cmp r0, 0xA5
	beq _0801FB22
	ldr r1, _0801FB0C @ =0x02000000
	ldr r4, _0801FB10 @ =0x0001608c
	adds r0, r2, r4
	adds r0, r1
	ldrb r4, [r0]
	adds r0, r4, r3
	mov r6, r9
	adds r6, 0x24
	adds r0, r6
	strb r5, [r0]
	ldr r5, _0801FAF4 @ =gUnknown_02024C10
	ldr r0, [r5]
	bl b_movescr_stack_push
	ldr r0, _0801FB14 @ =gUnknown_081D9468
	str r0, [r5]
	ldr r5, _0801FAE4 @ =gUnknown_02024A60
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r5]
	adds r1, r4, 0
	adds r1, 0x9
	lsls r1, 24
	lsrs r1, 24
	ldrb r0, [r5]
	muls r0, r7
	adds r0, r6
	adds r0, r4
	str r0, [sp]
	movs r0, 0
	movs r2, 0
	movs r3, 0x1
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r5]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, _0801FB18 @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x2
	strb r0, [r1, 0x1]
	lsls r4, 1
	mov r2, r8
	ldrb r0, [r2]
	muls r0, r7
	adds r0, r4, r0
	mov r2, r9
	adds r2, 0xC
	adds r0, r2
	ldrh r0, [r0]
	strb r0, [r1, 0x2]
	mov r3, r8
	ldrb r0, [r3]
	muls r0, r7
	adds r4, r0
	adds r4, r2
	ldrh r0, [r4]
	lsrs r0, 8
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	b _0801FB22
	.align 2, 0
_0801FAE0: .4byte gUnknown_030042E0
_0801FAE4: .4byte gUnknown_02024A60
_0801FAE8: .4byte gUnknown_02024C6C
_0801FAEC: .4byte gBattleMons
_0801FAF0: .4byte gUnknown_02024C07
_0801FAF4: .4byte gUnknown_02024C10
_0801FAF8: .4byte gUnknown_02024BEC
_0801FAFC: .4byte gUnknown_081D9156
_0801FB00: .4byte gUnknown_02024C98
_0801FB04: .4byte gUnknown_02024C08
_0801FB08: .4byte gUnknown_02024BE6
_0801FB0C: .4byte 0x02000000
_0801FB10: .4byte 0x0001608c
_0801FB14: .4byte gUnknown_081D9468
_0801FB18: .4byte gUnknown_030041C0
_0801FB1C:
	ldr r0, [r6]
	adds r0, 0x7
	str r0, [r6]
_0801FB22:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_801F7AC

	thumb_func_start sub_801FB34
sub_801FB34: @ 801FB34
	push {r4,r5,lr}
	ldr r0, _0801FB64 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _0801FB5E
	ldr r5, _0801FB68 @ =gUnknown_02024C10
	ldr r0, [r5]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r4, _0801FB6C @ =gUnknown_02024A60
	strb r0, [r4]
	movs r0, 0
	bl dp01_build_cmdbuf_x0A_A_A_A
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r5]
	adds r0, 0x2
	str r0, [r5]
_0801FB5E:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801FB64: .4byte gUnknown_02024A64
_0801FB68: .4byte gUnknown_02024C10
_0801FB6C: .4byte gUnknown_02024A60
	thumb_func_end sub_801FB34

	thumb_func_start atkE2_cmde2
atkE2_cmde2: @ 801FB70
	push {r4-r6,lr}
	sub sp, 0x4
	ldr r0, _0801FBC4 @ =gUnknown_02024A64
	ldr r6, [r0]
	cmp r6, 0
	bne _0801FBBC
	ldr r5, _0801FBC8 @ =gUnknown_02024C10
	ldr r0, [r5]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r4, _0801FBCC @ =gUnknown_02024A60
	strb r0, [r4]
	ldr r1, _0801FBD0 @ =gBattleMons
	ldrb r0, [r4]
	movs r2, 0x58
	muls r0, r2
	adds r1, 0x4C
	adds r0, r1
	str r6, [r0]
	ldrb r0, [r4]
	muls r0, r2
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r2, 0
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	bl sub_8010F48
	ldr r0, [r5]
	adds r0, 0x2
	str r0, [r5]
_0801FBBC:
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801FBC4: .4byte gUnknown_02024A64
_0801FBC8: .4byte gUnknown_02024C10
_0801FBCC: .4byte gUnknown_02024A60
_0801FBD0: .4byte gBattleMons
	thumb_func_end atkE2_cmde2

	thumb_func_start atk1C_jumpifstatus
atk1C_jumpifstatus: @ 801FBD4
	push {r4,r5,lr}
	ldr r5, _0801FC30 @ =gUnknown_02024C10
	ldr r0, [r5]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	lsls r0, 24
	lsrs r0, 24
	ldr r2, [r5]
	ldrb r4, [r2, 0x2]
	ldrb r1, [r2, 0x3]
	lsls r1, 8
	adds r4, r1
	ldrb r1, [r2, 0x4]
	lsls r1, 16
	adds r4, r1
	ldrb r1, [r2, 0x5]
	lsls r1, 24
	adds r4, r1
	ldrb r3, [r2, 0x6]
	ldrb r1, [r2, 0x7]
	lsls r1, 8
	adds r3, r1
	ldrb r1, [r2, 0x8]
	lsls r1, 16
	adds r3, r1
	ldrb r1, [r2, 0x9]
	lsls r1, 24
	adds r3, r1
	ldr r2, _0801FC34 @ =gBattleMons
	movs r1, 0x58
	muls r1, r0
	adds r0, r2, 0
	adds r0, 0x4C
	adds r0, r1, r0
	ldr r0, [r0]
	ands r0, r4
	cmp r0, 0
	beq _0801FC38
	adds r0, r1, r2
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _0801FC38
	str r3, [r5]
	b _0801FC40
	.align 2, 0
_0801FC30: .4byte gUnknown_02024C10
_0801FC34: .4byte gBattleMons
_0801FC38:
	ldr r1, _0801FC48 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0xA
	str r0, [r1]
_0801FC40:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801FC48: .4byte gUnknown_02024C10
	thumb_func_end atk1C_jumpifstatus

	thumb_func_start atk1D_jumpifsecondarystatus
atk1D_jumpifsecondarystatus: @ 801FC4C
	push {r4,r5,lr}
	ldr r5, _0801FCA8 @ =gUnknown_02024C10
	ldr r0, [r5]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	lsls r0, 24
	lsrs r0, 24
	ldr r2, [r5]
	ldrb r4, [r2, 0x2]
	ldrb r1, [r2, 0x3]
	lsls r1, 8
	adds r4, r1
	ldrb r1, [r2, 0x4]
	lsls r1, 16
	adds r4, r1
	ldrb r1, [r2, 0x5]
	lsls r1, 24
	adds r4, r1
	ldrb r3, [r2, 0x6]
	ldrb r1, [r2, 0x7]
	lsls r1, 8
	adds r3, r1
	ldrb r1, [r2, 0x8]
	lsls r1, 16
	adds r3, r1
	ldrb r1, [r2, 0x9]
	lsls r1, 24
	adds r3, r1
	ldr r2, _0801FCAC @ =gBattleMons
	movs r1, 0x58
	muls r1, r0
	adds r0, r2, 0
	adds r0, 0x50
	adds r0, r1, r0
	ldr r0, [r0]
	ands r0, r4
	cmp r0, 0
	beq _0801FCB0
	adds r0, r1, r2
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _0801FCB0
	str r3, [r5]
	b _0801FCB8
	.align 2, 0
_0801FCA8: .4byte gUnknown_02024C10
_0801FCAC: .4byte gBattleMons
_0801FCB0:
	ldr r1, _0801FCC0 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0xA
	str r0, [r1]
_0801FCB8:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801FCC0: .4byte gUnknown_02024C10
	thumb_func_end atk1D_jumpifsecondarystatus

	thumb_func_start atk1E_jumpifability
atk1E_jumpifability: @ 801FCC4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	ldr r6, _0801FD18 @ =gUnknown_02024C10
	ldr r2, [r6]
	ldrb r5, [r2, 0x2]
	mov r8, r5
	ldrb r1, [r2, 0x3]
	ldrb r0, [r2, 0x4]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x5]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x6]
	lsls r0, 24
	adds r7, r1, r0
	ldrb r0, [r2, 0x1]
	cmp r0, 0x8
	bne _0801FD24
	ldr r0, _0801FD1C @ =gUnknown_02024C07
	ldrb r1, [r0]
	movs r0, 0
	str r0, [sp]
	movs r0, 0xD
	adds r2, r5, 0
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	beq _0801FDA0
	ldr r1, _0801FD20 @ =byte_2024C06
	strb r5, [r1]
	str r7, [r6]
	subs r4, 0x1
	lsls r0, r4, 24
	lsrs r0, 24
	ldrb r1, [r1]
	b _0801FD80
	.align 2, 0
_0801FD18: .4byte gUnknown_02024C10
_0801FD1C: .4byte gUnknown_02024C07
_0801FD20: .4byte byte_2024C06
_0801FD24:
	cmp r0, 0x9
	bne _0801FD5C
	ldr r0, _0801FD54 @ =gUnknown_02024C07
	ldrb r1, [r0]
	movs r0, 0
	str r0, [sp]
	movs r0, 0xC
	adds r2, r5, 0
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	beq _0801FDA0
	ldr r1, _0801FD58 @ =byte_2024C06
	strb r5, [r1]
	str r7, [r6]
	subs r4, 0x1
	lsls r0, r4, 24
	lsrs r0, 24
	ldrb r1, [r1]
	b _0801FD80
	.align 2, 0
_0801FD54: .4byte gUnknown_02024C07
_0801FD58: .4byte byte_2024C06
_0801FD5C:
	ldrb r0, [r2, 0x1]
	bl sub_8015150
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, _0801FD90 @ =gBattleMons
	movs r0, 0x58
	muls r0, r4
	adds r0, r1
	adds r0, 0x20
	ldrb r1, [r0]
	cmp r1, r8
	bne _0801FDA0
	ldr r0, _0801FD94 @ =byte_2024C06
	strb r1, [r0]
	str r7, [r6]
	ldrb r1, [r0]
	adds r0, r4, 0
_0801FD80:
	bl sub_81074C4
	ldr r0, _0801FD98 @ =0x02000000
	ldr r1, _0801FD9C @ =0x000160f8
	adds r0, r1
	strb r4, [r0]
	b _0801FDA6
	.align 2, 0
_0801FD90: .4byte gBattleMons
_0801FD94: .4byte byte_2024C06
_0801FD98: .4byte 0x02000000
_0801FD9C: .4byte 0x000160f8
_0801FDA0:
	ldr r0, [r6]
	adds r0, 0x7
	str r0, [r6]
_0801FDA6:
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end atk1E_jumpifability

	thumb_func_start sub_801FDB4
sub_801FDB4: @ 801FDB4
	push {r4-r6,lr}
	ldr r0, _0801FDCC @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r4, [r0, 0x1]
	cmp r4, 0x1
	bne _0801FDD4
	ldr r0, _0801FDD0 @ =gUnknown_02024C07
	ldrb r0, [r0]
	bl battle_get_per_side_status
	b _0801FDDE
	.align 2, 0
_0801FDCC: .4byte gUnknown_02024C10
_0801FDD0: .4byte gUnknown_02024C07
_0801FDD4:
	ldr r0, _0801FE14 @ =gUnknown_02024C08
	ldrb r0, [r0]
	bl battle_get_per_side_status
	movs r4, 0x1
_0801FDDE:
	ands r4, r0
	ldr r6, _0801FE18 @ =gUnknown_02024C10
	ldr r3, [r6]
	ldrb r2, [r3, 0x2]
	ldrb r0, [r3, 0x3]
	lsls r0, 8
	orrs r2, r0
	ldrb r1, [r3, 0x4]
	ldrb r0, [r3, 0x5]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r3, 0x6]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r3, 0x7]
	lsls r0, 24
	adds r5, r1, r0
	ldr r1, _0801FE1C @ =gUnknown_02024C7A
	lsls r0, r4, 1
	adds r0, r1
	ldrh r0, [r0]
	ands r2, r0
	cmp r2, 0
	beq _0801FE20
	str r5, [r6]
	b _0801FE26
	.align 2, 0
_0801FE14: .4byte gUnknown_02024C08
_0801FE18: .4byte gUnknown_02024C10
_0801FE1C: .4byte gUnknown_02024C7A
_0801FE20:
	adds r0, r3, 0
	adds r0, 0x8
	str r0, [r6]
_0801FE26:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_801FDB4

	thumb_func_start sub_801FE2C
sub_801FE2C: @ 801FE2C
	push {r4,r5,lr}
	movs r5, 0
	ldr r4, _0801FE60 @ =gUnknown_02024C10
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _0801FE64 @ =gBattleMons
	ldr r3, [r4]
	movs r1, 0x58
	muls r0, r1
	ldrb r1, [r3, 0x3]
	adds r0, r1
	adds r2, 0x18
	adds r0, r2
	ldrb r2, [r0]
	ldrb r0, [r3, 0x2]
	cmp r0, 0x5
	bhi _0801FEEA
	lsls r0, 2
	ldr r1, _0801FE68 @ =_0801FE6C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801FE60: .4byte gUnknown_02024C10
_0801FE64: .4byte gBattleMons
_0801FE68: .4byte _0801FE6C
	.align 2, 0
_0801FE6C:
	.4byte _0801FE84
	.4byte _0801FE94
	.4byte _0801FEA4
	.4byte _0801FEB4
	.4byte _0801FEC4
	.4byte _0801FED8
_0801FE84:
	ldr r0, _0801FE90 @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0, 0x4]
	cmp r2, r0
	bne _0801FEEA
	b _0801FEE4
	.align 2, 0
_0801FE90: .4byte gUnknown_02024C10
_0801FE94:
	ldr r0, _0801FEA0 @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0, 0x4]
	cmp r2, r0
	beq _0801FEEA
	b _0801FEE4
	.align 2, 0
_0801FEA0: .4byte gUnknown_02024C10
_0801FEA4:
	ldr r0, _0801FEB0 @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0, 0x4]
	cmp r2, r0
	bls _0801FEEA
	b _0801FEE4
	.align 2, 0
_0801FEB0: .4byte gUnknown_02024C10
_0801FEB4:
	ldr r0, _0801FEC0 @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0, 0x4]
	cmp r2, r0
	bcs _0801FEEA
	b _0801FEE4
	.align 2, 0
_0801FEC0: .4byte gUnknown_02024C10
_0801FEC4:
	ldr r0, _0801FED4 @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0, 0x4]
	ands r2, r0
	cmp r2, 0
	beq _0801FEEA
	b _0801FEE4
	.align 2, 0
_0801FED4: .4byte gUnknown_02024C10
_0801FED8:
	ldr r0, _0801FF0C @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0, 0x4]
	ands r2, r0
	cmp r2, 0
	bne _0801FEEA
_0801FEE4:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
_0801FEEA:
	cmp r5, 0
	beq _0801FF10
	ldr r3, _0801FF0C @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x5]
	ldrb r0, [r2, 0x6]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x7]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x8]
	lsls r0, 24
	adds r1, r0
	str r1, [r3]
	b _0801FF18
	.align 2, 0
_0801FF0C: .4byte gUnknown_02024C10
_0801FF10:
	ldr r1, _0801FF20 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x9
	str r0, [r1]
_0801FF18:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801FF20: .4byte gUnknown_02024C10
	thumb_func_end sub_801FE2C

	thumb_func_start atk21_jumpifspecialstatusflag
atk21_jumpifspecialstatusflag: @ 801FF24
	push {r4-r6,lr}
	ldr r4, _0801FF78 @ =gUnknown_02024C10
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r5, _0801FF7C @ =gUnknown_02024A60
	strb r0, [r5]
	ldr r2, [r4]
	ldrb r1, [r2, 0x2]
	ldrb r0, [r2, 0x3]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x5]
	lsls r0, 24
	adds r6, r1, r0
	ldrb r1, [r2, 0x7]
	ldrb r0, [r2, 0x8]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x9]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0xA]
	lsls r0, 24
	adds r3, r1, r0
	ldrb r0, [r2, 0x6]
	cmp r0, 0
	beq _0801FF84
	ldr r0, _0801FF80 @ =gUnknown_02024C98
	ldrb r1, [r5]
	lsls r1, 2
	adds r1, r0
	ldr r0, [r1]
	ands r0, r6
	cmp r0, 0
	bne _0801FF9C
	b _0801FF94
	.align 2, 0
_0801FF78: .4byte gUnknown_02024C10
_0801FF7C: .4byte gUnknown_02024A60
_0801FF80: .4byte gUnknown_02024C98
_0801FF84:
	ldr r0, _0801FF98 @ =gUnknown_02024C98
	ldrb r1, [r5]
	lsls r1, 2
	adds r1, r0
	ldr r0, [r1]
	ands r0, r6
	cmp r0, 0
	beq _0801FF9C
_0801FF94:
	str r3, [r4]
	b _0801FFA2
	.align 2, 0
_0801FF98: .4byte gUnknown_02024C98
_0801FF9C:
	adds r0, r2, 0
	adds r0, 0xB
	str r0, [r4]
_0801FFA2:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end atk21_jumpifspecialstatusflag

	thumb_func_start sub_801FFA8
sub_801FFA8: @ 801FFA8
	push {r4-r6,lr}
	ldr r4, _0801FFF0 @ =gUnknown_02024C10
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	lsls r0, 24
	lsrs r0, 24
	ldr r3, [r4]
	ldrb r5, [r3, 0x2]
	ldrb r2, [r3, 0x3]
	ldrb r1, [r3, 0x4]
	lsls r1, 8
	adds r2, r1
	ldrb r1, [r3, 0x5]
	lsls r1, 16
	adds r2, r1
	ldrb r1, [r3, 0x6]
	lsls r1, 24
	adds r6, r2, r1
	ldr r2, _0801FFF4 @ =gBattleMons
	movs r1, 0x58
	muls r0, r1
	adds r1, r0, r2
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, r5
	beq _0801FFEC
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, r5
	bne _0801FFF8
_0801FFEC:
	str r6, [r4]
	b _0801FFFC
	.align 2, 0
_0801FFF0: .4byte gUnknown_02024C10
_0801FFF4: .4byte gBattleMons
_0801FFF8:
	adds r0, r3, 0x7
	str r0, [r4]
_0801FFFC:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_801FFA8

	thumb_func_start sub_8020004
sub_8020004: @ 8020004
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	movs r6, 0
	ldr r0, _0802004C @ =0x0201605c
	mov r10, r0
	ldr r0, _08020050 @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r1, _08020054 @ =gUnknown_02024C09
	strb r0, [r1]
	ldr r2, _08020058 @ =gUnknown_02024DEA
	movs r1, 0x2
	ands r1, r0
	lsls r1, 24
	lsrs r1, 25
	adds r1, r2
	ldrb r1, [r1]
	mov r8, r1
	mov r0, r10
	subs r0, 0x4D
	ldrb r0, [r0]
	cmp r0, 0x6
	bls _08020040
	bl _08020996
_08020040:
	lsls r0, 2
	ldr r1, _0802005C @ =_08020060
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802004C: .4byte 0x0201605c
_08020050: .4byte gUnknown_02024C10
_08020054: .4byte gUnknown_02024C09
_08020058: .4byte gUnknown_02024DEA
_0802005C: .4byte _08020060
	.align 2, 0
_08020060:
	.4byte _0802007C
	.4byte _080200FC
	.4byte _08020216
	.4byte _0802055C
	.4byte _08020648
	.4byte _08020910
	.4byte _0802096C
_0802007C:
	ldr r4, _080200A8 @ =gUnknown_02024C09
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08020098
	ldr r0, _080200AC @ =gUnknown_020239F8
	ldrh r1, [r0]
	ldr r0, _080200B0 @ =0x00000982
	ands r0, r1
	cmp r0, 0
	beq _080200BC
_08020098:
	ldr r0, _080200B4 @ =0x02000000
	ldr r1, _080200B8 @ =0x0001600f
	adds r0, r1
	movs r1, 0x6
	strb r1, [r0]
	bl _08020996
	.align 2, 0
_080200A8: .4byte gUnknown_02024C09
_080200AC: .4byte gUnknown_020239F8
_080200B0: .4byte 0x00000982
_080200B4: .4byte 0x02000000
_080200B8: .4byte 0x0001600f
_080200BC:
	ldr r2, _080200E8 @ =0x02000000
	ldr r3, _080200EC @ =0x0001600f
	adds r1, r2, r3
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r0, _080200F0 @ =0x00016113
	adds r2, r0
	ldr r3, _080200F4 @ =gBitTable
	ldr r1, _080200F8 @ =gUnknown_02024A6A
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r1
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	bl _08020996
	.align 2, 0
_080200E8: .4byte 0x02000000
_080200EC: .4byte 0x0001600f
_080200F0: .4byte 0x00016113
_080200F4: .4byte gBitTable
_080200F8: .4byte gUnknown_02024A6A
_080200FC:
	movs r5, 0
	movs r7, 0
	ldr r1, _08020150 @ =gSaveBlock1 + 0x3688
	mov r9, r1
_08020104:
	movs r0, 0x64
	adds r1, r7, 0
	muls r1, r0
	ldr r0, _08020154 @ =gPlayerParty
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _0802016A
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _0802016A
	ldr r0, _08020158 @ =gBitTable
	lsls r1, r7, 2
	adds r1, r0
	ldr r0, [r1]
	mov r2, r8
	ands r0, r2
	cmp r0, 0
	beq _08020138
	adds r5, 0x1
_08020138:
	adds r0, r4, 0
	movs r1, 0xC
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0xAF
	bne _0802015C
	mov r3, r9
	ldrb r4, [r3]
	b _08020164
	.align 2, 0
_08020150: .4byte gSaveBlock1 + 0x3688
_08020154: .4byte gPlayerParty
_08020158: .4byte gBitTable
_0802015C:
	bl ItemId_GetHoldEffect
	lsls r0, 24
	lsrs r4, r0, 24
_08020164:
	cmp r4, 0x19
	bne _0802016A
	adds r6, 0x1
_0802016A:
	adds r7, 0x1
	cmp r7, 0x5
	ble _08020104
	ldr r3, _080201D0 @ =gBaseStats
	ldr r2, _080201D4 @ =gBattleMons
	ldr r0, _080201D8 @ =gUnknown_02024C09
	ldrb r1, [r0]
	movs r0, 0x58
	muls r1, r0
	adds r1, r2
	ldrh r2, [r1]
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r3
	ldrb r2, [r0, 0x9]
	adds r1, 0x2A
	ldrb r0, [r1]
	muls r0, r2
	movs r1, 0x7
	bl __divsi3
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r6, 0
	beq _080201E0
	lsrs r4, r0, 17
	adds r0, r4, 0
	adds r1, r5, 0
	bl __divsi3
	mov r1, r10
	strh r0, [r1]
	lsls r0, 16
	cmp r0, 0
	bne _080201B6
	movs r0, 0x1
	strh r0, [r1]
_080201B6:
	ldr r5, _080201DC @ =gUnknown_02024DEE
	adds r0, r4, 0
	adds r1, r6, 0
	bl __divsi3
	strh r0, [r5]
	lsls r0, 16
	cmp r0, 0
	bne _080201FA
	movs r0, 0x1
	strh r0, [r5]
	b _080201FA
	.align 2, 0
_080201D0: .4byte gBaseStats
_080201D4: .4byte gBattleMons
_080201D8: .4byte gUnknown_02024C09
_080201DC: .4byte gUnknown_02024DEE
_080201E0:
	adds r0, r1, 0
	adds r1, r5, 0
	bl __divsi3
	mov r2, r10
	strh r0, [r2]
	lsls r0, 16
	cmp r0, 0
	bne _080201F6
	movs r0, 0x1
	strh r0, [r2]
_080201F6:
	ldr r0, _08020248 @ =gUnknown_02024DEE
	strh r6, [r0]
_080201FA:
	ldr r1, _0802024C @ =0x02000000
	ldr r3, _08020250 @ =0x0001600f
	adds r2, r1, r3
	ldrb r0, [r2]
	adds r0, 0x1
	movs r3, 0
	strb r0, [r2]
	ldr r2, _08020254 @ =0x00016018
	adds r0, r1, r2
	strb r3, [r0]
	ldr r3, _08020258 @ =0x0001605f
	adds r1, r3
	mov r0, r8
	strb r0, [r1]
_08020216:
	ldr r0, _0802025C @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	beq _08020220
	b _08020996
_08020220:
	ldr r0, _0802024C @ =0x02000000
	ldr r1, _08020254 @ =0x00016018
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, _08020260 @ =gPlayerParty
	adds r0, r1
	movs r1, 0xC
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0xAF
	bne _0802026C
	ldr r0, _08020264 @ =gSaveBlock1
	ldr r2, _08020268 @ =0x00003688
	adds r0, r2
	ldrb r4, [r0]
	b _08020274
	.align 2, 0
_08020248: .4byte gUnknown_02024DEE
_0802024C: .4byte 0x02000000
_08020250: .4byte 0x0001600f
_08020254: .4byte 0x00016018
_08020258: .4byte 0x0001605f
_0802025C: .4byte gUnknown_02024A64
_08020260: .4byte gPlayerParty
_08020264: .4byte gSaveBlock1
_08020268: .4byte 0x00003688
_0802026C:
	bl ItemId_GetHoldEffect
	lsls r0, 24
	lsrs r4, r0, 24
_08020274:
	ldr r5, _08020294 @ =0x02000000
	cmp r4, 0x19
	beq _080202A0
	ldr r3, _08020298 @ =0x0001605f
	adds r1, r5, r3
	ldrb r0, [r1]
	movs r2, 0x1
	ands r2, r0
	cmp r2, 0
	bne _080202A0
	lsrs r0, 1
	strb r0, [r1]
	ldr r0, _0802029C @ =0x0001600f
	adds r1, r5, r0
	b _080202C8
	.align 2, 0
_08020294: .4byte 0x02000000
_08020298: .4byte 0x0001605f
_0802029C: .4byte 0x0001600f
_080202A0:
	ldr r1, _080202D4 @ =0x00016018
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, _080202D8 @ =gPlayerParty
	adds r0, r1
	movs r1, 0x38
	bl GetMonData
	cmp r0, 0x64
	bne _080202E8
	ldr r2, _080202DC @ =0x0001605f
	adds r1, r5, r2
	ldrb r0, [r1]
	lsrs r0, 1
	movs r2, 0
	strb r0, [r1]
	ldr r3, _080202E0 @ =0x0001600f
	adds r1, r5, r3
_080202C8:
	movs r0, 0x5
	strb r0, [r1]
	ldr r0, _080202E4 @ =gUnknown_02024BEC
	str r2, [r0]
	b _08020996
	.align 2, 0
_080202D4: .4byte 0x00016018
_080202D8: .4byte gPlayerParty
_080202DC: .4byte 0x0001605f
_080202E0: .4byte 0x0001600f
_080202E4: .4byte gUnknown_02024BEC
_080202E8:
	ldr r0, _0802034C @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	bne _08020316
	ldr r0, _08020350 @ =gBattleMons
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _08020316
	ldr r0, _08020354 @ =0x0001601b
	adds r5, r0
	ldrb r0, [r5]
	cmp r0, 0
	bne _08020316
	bl sub_80325B8
	ldr r0, _08020358 @ =0x00000161
	bl PlayBGM
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
_08020316:
	ldr r5, _0802035C @ =0x02000000
	ldr r1, _08020360 @ =0x00016018
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, _08020364 @ =gPlayerParty
	adds r0, r1
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	bne _08020332
	b _0802051E
_08020332:
	ldr r2, _08020368 @ =0x0001605f
	adds r0, r5, r2
	ldrb r0, [r0]
	movs r3, 0x1
	ands r3, r0
	cmp r3, 0
	beq _08020370
	ldr r1, _0802036C @ =gUnknown_02024BEC
	mov r3, r10
	ldrh r0, [r3]
	str r0, [r1]
	mov r8, r1
	b _08020376
	.align 2, 0
_0802034C: .4byte gUnknown_020239F8
_08020350: .4byte gBattleMons
_08020354: .4byte 0x0001601b
_08020358: .4byte 0x00000161
_0802035C: .4byte 0x02000000
_08020360: .4byte 0x00016018
_08020364: .4byte gPlayerParty
_08020368: .4byte 0x0001605f
_0802036C: .4byte gUnknown_02024BEC
_08020370:
	ldr r0, _080203EC @ =gUnknown_02024BEC
	str r3, [r0]
	mov r8, r0
_08020376:
	cmp r4, 0x19
	bne _08020386
	ldr r0, _080203F0 @ =gUnknown_02024DEE
	ldrh r1, [r0]
	mov r2, r8
	ldr r0, [r2]
	adds r0, r1
	str r0, [r2]
_08020386:
	cmp r4, 0x28
	bne _0802039C
	mov r3, r8
	ldr r1, [r3]
	movs r0, 0x96
	muls r0, r1
	movs r1, 0x64
	bl __divsi3
	mov r1, r8
	str r0, [r1]
_0802039C:
	ldr r0, _080203F4 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _080203B8
	ldr r4, _080203EC @ =gUnknown_02024BEC
	ldr r1, [r4]
	movs r0, 0x96
	muls r0, r1
	movs r1, 0x64
	bl __divsi3
	str r0, [r4]
_080203B8:
	ldr r0, _080203F8 @ =0x02000000
	ldr r2, _080203FC @ =0x00016018
	adds r0, r2
	ldrb r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, _08020400 @ =gPlayerParty
	adds r0, r1
	bl sub_8040AA4
	lsls r0, 24
	cmp r0, 0
	beq _08020404
	ldr r4, _080203EC @ =gUnknown_02024BEC
	ldr r1, [r4]
	movs r0, 0x96
	muls r0, r1
	movs r1, 0x64
	bl __divsi3
	str r0, [r4]
	movs r7, 0xA5
	lsls r7, 1
	mov r8, r4
	b _0802040A
	.align 2, 0
_080203EC: .4byte gUnknown_02024BEC
_080203F0: .4byte gUnknown_02024DEE
_080203F4: .4byte gUnknown_020239F8
_080203F8: .4byte 0x02000000
_080203FC: .4byte 0x00016018
_08020400: .4byte gPlayerParty
_08020404:
	ldr r7, _0802043C @ =0x00000149
	ldr r3, _08020440 @ =gUnknown_02024BEC
	mov r8, r3
_0802040A:
	ldr r0, _08020444 @ =gUnknown_020239F8
	ldrh r0, [r0]
	movs r1, 0x1
	ands r1, r0
	cmp r1, 0
	beq _08020488
	ldr r1, _08020448 @ =gUnknown_02024A6A
	ldr r0, _0802044C @ =0x02000000
	ldr r3, _08020450 @ =0x00016018
	adds r2, r0, r3
	ldrh r1, [r1, 0x4]
	adds r5, r0, 0
	ldr r4, _08020454 @ =gBitTable
	ldr r3, _08020458 @ =gUnknown_02024C0C
	ldrb r2, [r2]
	cmp r1, r2
	bne _08020460
	ldrb r1, [r3]
	ldr r0, [r4, 0x8]
	ands r1, r0
	cmp r1, 0
	bne _08020460
	ldr r0, _0802045C @ =0x000160a2
	adds r1, r5, r0
	b _0802047C
	.align 2, 0
_0802043C: .4byte 0x00000149
_08020440: .4byte gUnknown_02024BEC
_08020444: .4byte gUnknown_020239F8
_08020448: .4byte gUnknown_02024A6A
_0802044C: .4byte 0x02000000
_08020450: .4byte 0x00016018
_08020454: .4byte gBitTable
_08020458: .4byte gUnknown_02024C0C
_0802045C: .4byte 0x000160a2
_08020460:
	ldrb r2, [r3]
	ldr r0, [r4]
	ands r2, r0
	cmp r2, 0
	bne _08020478
	ldr r1, _08020474 @ =0x000160a2
	adds r0, r5, r1
	strb r2, [r0]
	b _08020490
	.align 2, 0
_08020474: .4byte 0x000160a2
_08020478:
	ldr r2, _08020484 @ =0x000160a2
	adds r1, r5, r2
_0802047C:
	movs r0, 0x2
	strb r0, [r1]
	b _08020490
	.align 2, 0
_08020484: .4byte 0x000160a2
_08020488:
	ldr r0, _08020530 @ =0x02000000
	ldr r3, _08020534 @ =0x000160a2
	adds r0, r3
	strb r1, [r0]
_08020490:
	ldr r1, _08020538 @ =gUnknown_030041C0
	movs r3, 0
	movs r2, 0xFD
	strb r2, [r1]
	movs r5, 0x4
	strb r5, [r1, 0x1]
	ldr r4, _08020530 @ =0x02000000
	ldr r0, _08020534 @ =0x000160a2
	adds r6, r4, r0
	ldrb r0, [r6]
	strb r0, [r1, 0x2]
	ldr r0, _0802053C @ =0x00016018
	adds r4, r0
	ldrb r0, [r4]
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r1, _08020540 @ =gUnknown_03004290
	strb r2, [r1]
	strb r3, [r1, 0x1]
	strb r7, [r1, 0x2]
	movs r3, 0xFF
	lsls r3, 8
	ands r7, r3
	asrs r0, r7, 8
	strb r0, [r1, 0x3]
	movs r0, 0x1
	negs r0, r0
	strb r0, [r1, 0x4]
	ldr r1, _08020544 @ =gUnknown_030042B0
	strb r2, [r1]
	movs r0, 0x1
	strb r0, [r1, 0x1]
	strb r5, [r1, 0x2]
	movs r0, 0x5
	strb r0, [r1, 0x3]
	mov r0, r8
	ldr r2, [r0]
	strb r2, [r1, 0x4]
	adds r0, r2, 0
	ands r0, r3
	asrs r0, 8
	strb r0, [r1, 0x5]
	movs r0, 0xFF
	lsls r0, 16
	ands r0, r2
	asrs r0, 16
	strb r0, [r1, 0x6]
	lsrs r2, 24
	strb r2, [r1, 0x7]
	movs r0, 0x1
	negs r0, r0
	strb r0, [r1, 0x8]
	ldrb r1, [r6]
	movs r0, 0xD
	bl b_std_message
	ldrb r1, [r4]
	movs r0, 0x64
	muls r0, r1
	ldr r1, _08020548 @ =gPlayerParty
	adds r0, r1
	ldr r3, _0802054C @ =gBattleMons
	ldr r1, _08020550 @ =gUnknown_02024C09
	ldrb r2, [r1]
	movs r1, 0x58
	muls r1, r2
	adds r1, r3
	ldrh r1, [r1]
	bl MonGainEVs
_0802051E:
	ldr r1, _08020530 @ =0x02000000
	ldr r3, _08020554 @ =0x0001605f
	adds r2, r1, r3
	ldrb r0, [r2]
	lsrs r0, 1
	strb r0, [r2]
	ldr r0, _08020558 @ =0x0001600f
	adds r1, r0
	b _08020618
	.align 2, 0
_08020530: .4byte 0x02000000
_08020534: .4byte 0x000160a2
_08020538: .4byte gUnknown_030041C0
_0802053C: .4byte 0x00016018
_08020540: .4byte gUnknown_03004290
_08020544: .4byte gUnknown_030042B0
_08020548: .4byte gPlayerParty
_0802054C: .4byte gBattleMons
_08020550: .4byte gUnknown_02024C09
_08020554: .4byte 0x0001605f
_08020558: .4byte 0x0001600f
_0802055C:
	ldr r0, _08020620 @ =gUnknown_02024A64
	ldr r2, [r0]
	cmp r2, 0
	beq _08020566
	b _08020996
_08020566:
	ldr r1, _08020624 @ =gUnknown_02024260
	ldr r4, _08020628 @ =0x02000000
	ldr r3, _0802062C @ =0x000160a2
	adds r3, r4
	mov r8, r3
	ldrb r0, [r3]
	lsls r0, 9
	adds r0, r1
	strb r2, [r0]
	ldr r0, _08020630 @ =0x00016018
	adds r7, r4, r0
	ldrb r0, [r7]
	movs r6, 0x64
	muls r0, r6
	ldr r5, _08020634 @ =gPlayerParty
	adds r0, r5
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _08020612
	ldrb r0, [r7]
	muls r0, r6
	adds r0, r5
	movs r1, 0x38
	bl GetMonData
	cmp r0, 0x64
	beq _08020612
	ldrb r0, [r7]
	muls r0, r6
	adds r0, r5
	movs r1, 0x3A
	bl GetMonData
	ldr r1, _08020638 @ =0x00017180
	adds r4, r1
	strh r0, [r4]
	ldrb r0, [r7]
	muls r0, r6
	adds r0, r5
	movs r1, 0x3B
	bl GetMonData
	strh r0, [r4, 0x2]
	ldrb r0, [r7]
	muls r0, r6
	adds r0, r5
	movs r1, 0x3C
	bl GetMonData
	strh r0, [r4, 0x4]
	ldrb r0, [r7]
	muls r0, r6
	adds r0, r5
	movs r1, 0x3D
	bl GetMonData
	strh r0, [r4, 0x6]
	ldrb r0, [r7]
	muls r0, r6
	adds r0, r5
	movs r1, 0x3E
	bl GetMonData
	strh r0, [r4, 0x8]
	ldrb r0, [r7]
	muls r0, r6
	adds r0, r5
	movs r1, 0x3F
	bl GetMonData
	strh r0, [r4, 0xA]
	ldr r4, _0802063C @ =gUnknown_02024A60
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r4]
	ldrb r1, [r7]
	ldr r0, _08020640 @ =gUnknown_02024BEC
	ldrh r2, [r0]
	movs r0, 0
	bl dp01_build_cmdbuf_x19_a_bb
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_08020612:
	ldr r1, _08020628 @ =0x02000000
	ldr r3, _08020644 @ =0x0001600f
	adds r1, r3
_08020618:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _08020996
	.align 2, 0
_08020620: .4byte gUnknown_02024A64
_08020624: .4byte gUnknown_02024260
_08020628: .4byte 0x02000000
_0802062C: .4byte 0x000160a2
_08020630: .4byte 0x00016018
_08020634: .4byte gPlayerParty
_08020638: .4byte 0x00017180
_0802063C: .4byte gUnknown_02024A60
_08020640: .4byte gUnknown_02024BEC
_08020644: .4byte 0x0001600f
_08020648:
	ldr r0, _080208AC @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	beq _08020652
	b _08020996
_08020652:
	ldr r1, _080208B0 @ =gUnknown_02024A60
	ldr r4, _080208B4 @ =0x02000000
	ldr r2, _080208B8 @ =0x000160a2
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _080208BC @ =gUnknown_02024260
	ldrb r3, [r1]
	lsls r1, r3, 9
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0x21
	beq _0802066E
	b _080208F0
_0802066E:
	adds r0, r2, 0x1
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, 0xB
	beq _0802067A
	b _080208F0
_0802067A:
	ldr r0, _080208C0 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _080206A8
	ldr r1, _080208C4 @ =gUnknown_02024A6A
	lsls r0, r3, 1
	adds r2, r0, r1
	ldr r0, _080208C8 @ =0x00016018
	adds r1, r4, r0
	ldrh r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080206A8
	adds r1, r0, 0
	movs r0, 0x64
	muls r0, r1
	ldr r1, _080208CC @ =gPlayerParty
	adds r0, r1
	adds r1, r3, 0
	bl sub_80324F8
_080206A8:
	ldr r1, _080208D0 @ =gUnknown_030041C0
	movs r2, 0xFD
	strb r2, [r1]
	movs r0, 0x4
	strb r0, [r1, 0x1]
	ldr r5, _080208B0 @ =gUnknown_02024A60
	ldrb r0, [r5]
	strb r0, [r1, 0x2]
	ldr r0, _080208B4 @ =0x02000000
	ldr r3, _080208C8 @ =0x00016018
	adds r6, r0, r3
	ldrb r0, [r6]
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r4, _080208D4 @ =gUnknown_03004290
	strb r2, [r4]
	movs r0, 0x1
	strb r0, [r4, 0x1]
	strb r0, [r4, 0x2]
	movs r0, 0x3
	strb r0, [r4, 0x3]
	ldrb r0, [r6]
	movs r1, 0x64
	mov r8, r1
	mov r2, r8
	muls r2, r0
	adds r0, r2, 0
	ldr r7, _080208CC @ =gPlayerParty
	adds r0, r7
	movs r1, 0x38
	bl GetMonData
	strb r0, [r4, 0x4]
	movs r0, 0x1
	negs r0, r0
	strb r0, [r4, 0x5]
	bl b_movescr_stack_push_cursor
	ldr r2, _080208D8 @ =gUnknown_03004324
	ldr r1, _080208DC @ =gBitTable
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _080208E0 @ =gUnknown_02024C10
	ldr r0, _080208E4 @ =gUnknown_081D8EF3
	str r0, [r1]
	ldr r4, _080208E8 @ =gUnknown_02024BEC
	ldr r2, _080208BC @ =gUnknown_02024260
	ldrb r1, [r5]
	lsls r1, 9
	adds r0, r2, 0x2
	adds r0, r1, r0
	ldrb r3, [r0]
	adds r2, 0x3
	adds r1, r2
	ldrb r0, [r1]
	lsls r0, 8
	orrs r3, r0
	str r3, [r4]
	ldrb r0, [r6]
	mov r3, r8
	muls r3, r0
	adds r0, r3, 0
	adds r0, r7
	movs r1, 0
	bl AdjustFriendship
	ldr r0, _080208C4 @ =gUnknown_02024A6A
	ldrb r1, [r6]
	ldrh r0, [r0]
	cmp r0, r1
	bne _080207EC
	ldr r4, _080208EC @ =gBattleMons
	ldrh r0, [r4, 0x28]
	cmp r0, 0
	beq _080207EC
	mov r0, r8
	muls r0, r1
	adds r0, r7
	movs r1, 0x38
	bl GetMonData
	adds r1, r4, 0
	adds r1, 0x2A
	strb r0, [r1]
	ldrb r0, [r6]
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	adds r0, r7
	movs r1, 0x39
	bl GetMonData
	strh r0, [r4, 0x28]
	ldrb r0, [r6]
	mov r2, r8
	muls r2, r0
	adds r0, r2, 0
	adds r0, r7
	movs r1, 0x3A
	bl GetMonData
	strh r0, [r4, 0x2C]
	ldrb r0, [r6]
	mov r3, r8
	muls r3, r0
	adds r0, r3, 0
	adds r0, r7
	movs r1, 0x3B
	bl GetMonData
	strh r0, [r4, 0x2]
	ldrb r0, [r6]
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	adds r0, r7
	movs r1, 0x3C
	bl GetMonData
	strh r0, [r4, 0x4]
	ldrb r0, [r6]
	mov r2, r8
	muls r2, r0
	adds r0, r2, 0
	adds r0, r7
	movs r1, 0x3D
	bl GetMonData
	strh r0, [r4, 0x6]
	ldrb r0, [r6]
	mov r3, r8
	muls r3, r0
	adds r0, r3, 0
	adds r0, r7
	movs r1, 0x3D
	bl GetMonData
	strh r0, [r4, 0x6]
	ldrb r0, [r6]
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	adds r0, r7
	movs r1, 0x3E
	bl GetMonData
	strh r0, [r4, 0x8]
	ldrb r0, [r6]
	mov r2, r8
	muls r2, r0
	adds r0, r2, 0
	adds r0, r7
	movs r1, 0x3F
	bl GetMonData
	strh r0, [r4, 0xA]
_080207EC:
	ldr r0, _080208C4 @ =gUnknown_02024A6A
	ldr r1, _080208B4 @ =0x02000000
	ldr r3, _080208C8 @ =0x00016018
	adds r7, r1, r3
	ldrb r2, [r7]
	ldrh r0, [r0, 0x4]
	cmp r0, r2
	bne _080208F6
	ldr r6, _080208EC @ =gBattleMons
	movs r0, 0xD8
	adds r0, r6
	mov r8, r0
	ldrh r0, [r0]
	cmp r0, 0
	beq _080208F6
	ldr r0, _080208C0 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080208F6
	movs r5, 0x64
	adds r0, r2, 0
	muls r0, r5
	ldr r4, _080208CC @ =gPlayerParty
	adds r0, r4
	movs r1, 0x38
	bl GetMonData
	adds r1, r6, 0
	adds r1, 0xDA
	strb r0, [r1]
	ldrb r0, [r7]
	muls r0, r5
	adds r0, r4
	movs r1, 0x39
	bl GetMonData
	mov r1, r8
	strh r0, [r1]
	ldrb r0, [r7]
	muls r0, r5
	adds r0, r4
	movs r1, 0x3A
	bl GetMonData
	adds r1, r6, 0
	adds r1, 0xDC
	strh r0, [r1]
	ldrb r0, [r7]
	muls r0, r5
	adds r0, r4
	movs r1, 0x3B
	bl GetMonData
	adds r1, r6, 0
	adds r1, 0xB2
	strh r0, [r1]
	ldrb r0, [r7]
	muls r0, r5
	adds r0, r4
	movs r1, 0x3C
	bl GetMonData
	adds r1, r6, 0
	adds r1, 0xB4
	strh r0, [r1]
	ldrb r0, [r7]
	muls r0, r5
	adds r0, r4
	movs r1, 0x3D
	bl GetMonData
	movs r2, 0xB6
	adds r2, r6
	mov r8, r2
	strh r0, [r2]
	ldrb r0, [r7]
	muls r0, r5
	adds r0, r4
	movs r1, 0x3D
	bl GetMonData
	mov r3, r8
	strh r0, [r3]
	ldrb r0, [r7]
	muls r0, r5
	adds r0, r4
	movs r1, 0x3E
	bl GetMonData
	adds r1, r6, 0
	adds r1, 0xB8
	strh r0, [r1]
	b _080208F6
	.align 2, 0
_080208AC: .4byte gUnknown_02024A64
_080208B0: .4byte gUnknown_02024A60
_080208B4: .4byte 0x02000000
_080208B8: .4byte 0x000160a2
_080208BC: .4byte gUnknown_02024260
_080208C0: .4byte gUnknown_020239F8
_080208C4: .4byte gUnknown_02024A6A
_080208C8: .4byte 0x00016018
_080208CC: .4byte gPlayerParty
_080208D0: .4byte gUnknown_030041C0
_080208D4: .4byte gUnknown_03004290
_080208D8: .4byte gUnknown_03004324
_080208DC: .4byte gBitTable
_080208E0: .4byte gUnknown_02024C10
_080208E4: .4byte gUnknown_081D8EF3
_080208E8: .4byte gUnknown_02024BEC
_080208EC: .4byte gBattleMons
_080208F0:
	ldr r1, _08020904 @ =gUnknown_02024BEC
	movs r0, 0
	str r0, [r1]
_080208F6:
	ldr r0, _08020908 @ =0x02000000
	ldr r1, _0802090C @ =0x0001600f
	adds r0, r1
	movs r1, 0x5
	strb r1, [r0]
	b _08020996
	.align 2, 0
_08020904: .4byte gUnknown_02024BEC
_08020908: .4byte 0x02000000
_0802090C: .4byte 0x0001600f
_08020910:
	ldr r0, _08020924 @ =gUnknown_02024BEC
	ldr r0, [r0]
	cmp r0, 0
	beq _08020930
	ldr r0, _08020928 @ =0x02000000
	ldr r2, _0802092C @ =0x0001600f
	adds r0, r2
	movs r1, 0x3
	strb r1, [r0]
	b _08020996
	.align 2, 0
_08020924: .4byte gUnknown_02024BEC
_08020928: .4byte 0x02000000
_0802092C: .4byte 0x0001600f
_08020930:
	ldr r2, _08020950 @ =0x02000000
	ldr r3, _08020954 @ =0x00016018
	adds r1, r2, r3
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x5
	bhi _0802095C
	ldr r0, _08020958 @ =0x0001600f
	adds r1, r2, r0
	movs r0, 0x2
	strb r0, [r1]
	b _08020996
	.align 2, 0
_08020950: .4byte 0x02000000
_08020954: .4byte 0x00016018
_08020958: .4byte 0x0001600f
_0802095C:
	ldr r3, _08020968 @ =0x0001600f
	adds r1, r2, r3
	movs r0, 0x6
	strb r0, [r1]
	b _08020996
	.align 2, 0
_08020968: .4byte 0x0001600f
_0802096C:
	ldr r0, _080209A4 @ =gUnknown_02024A64
	ldr r5, [r0]
	cmp r5, 0
	bne _08020996
	ldr r4, _080209A8 @ =gBattleMons
	ldr r2, _080209AC @ =gUnknown_02024C09
	ldrb r0, [r2]
	movs r1, 0x58
	muls r0, r1
	adds r0, r4
	movs r3, 0
	strh r5, [r0, 0x2E]
	ldrb r0, [r2]
	muls r0, r1
	adds r0, r4
	adds r0, 0x20
	strb r3, [r0]
	ldr r1, _080209B0 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
_08020996:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080209A4: .4byte gUnknown_02024A64
_080209A8: .4byte gBattleMons
_080209AC: .4byte gUnknown_02024C09
_080209B0: .4byte gUnknown_02024C10
	thumb_func_end sub_8020004

	thumb_func_start sub_80209B4
sub_80209B4: @ 80209B4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	movs r6, 0
	ldr r0, _08020AF0 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	beq _080209C6
	b _08020B46
_080209C6:
	movs r5, 0
_080209C8:
	movs r0, 0x64
	adds r1, r5, 0
	muls r1, r0
	ldr r0, _08020AF4 @ =gPlayerParty
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _080209F8
	adds r0, r4, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0
	bne _080209F8
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	adds r0, r6, r0
	lsls r0, 16
	lsrs r6, r0, 16
_080209F8:
	adds r5, 0x1
	cmp r5, 0x5
	ble _080209C8
	cmp r6, 0
	bne _08020A0C
	ldr r0, _08020AF8 @ =gUnknown_02024D26
	ldrb r1, [r0]
	movs r2, 0x2
	orrs r1, r2
	strb r1, [r0]
_08020A0C:
	movs r6, 0
	movs r5, 0
_08020A10:
	movs r0, 0x64
	adds r1, r5, 0
	muls r1, r0
	ldr r0, _08020AFC @ =gEnemyParty
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _08020A40
	adds r0, r4, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0
	bne _08020A40
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	adds r0, r6, r0
	lsls r0, 16
	lsrs r6, r0, 16
_08020A40:
	adds r5, 0x1
	cmp r5, 0x5
	ble _08020A10
	ldr r2, _08020AF8 @ =gUnknown_02024D26
	cmp r6, 0
	bne _08020A54
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
_08020A54:
	ldrb r0, [r2]
	cmp r0, 0
	bne _08020B3E
	ldr r2, _08020B00 @ =gUnknown_020239F8
	ldrh r1, [r2]
	movs r0, 0x2
	ands r0, r1
	mov r8, r2
	cmp r0, 0
	beq _08020B3E
	movs r2, 0
	movs r5, 0
	ldr r0, _08020B04 @ =gUnknown_02024A68
	ldrb r3, [r0]
	mov r12, r0
	ldr r7, _08020B08 @ =gUnknown_02024C10
	cmp r2, r3
	bge _08020AA0
	ldr r0, _08020B0C @ =gUnknown_02024C6C
	movs r1, 0x80
	lsls r1, 21
	ldr r6, [r0]
	adds r4, r3, 0
	ldr r3, _08020B10 @ =gUnknown_02024D68
_08020A84:
	adds r0, r1, 0
	lsls r0, r5
	ands r0, r6
	cmp r0, 0
	beq _08020A98
	ldrb r0, [r3]
	lsls r0, 25
	cmp r0, 0
	blt _08020A98
	adds r2, 0x1
_08020A98:
	adds r3, 0x28
	adds r5, 0x2
	cmp r5, r4
	blt _08020A84
_08020AA0:
	movs r4, 0
	movs r5, 0x1
	mov r0, r12
	ldrb r3, [r0]
	cmp r5, r3
	bge _08020ADA
	ldr r0, _08020B0C @ =gUnknown_02024C6C
	movs r1, 0x80
	lsls r1, 21
	mov r12, r1
	ldr r1, [r0]
	ldr r0, _08020B10 @ =gUnknown_02024D68
	adds r6, r3, 0
	adds r3, r0, 0
	adds r3, 0x14
_08020ABE:
	mov r0, r12
	lsls r0, r5
	ands r0, r1
	cmp r0, 0
	beq _08020AD2
	ldrb r0, [r3]
	lsls r0, 25
	cmp r0, 0
	blt _08020AD2
	adds r4, 0x1
_08020AD2:
	adds r3, 0x28
	adds r5, 0x2
	cmp r5, r6
	blt _08020ABE
_08020ADA:
	mov r0, r8
	ldrh r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08020B14
	adds r0, r4, r2
	cmp r0, 0x1
	bgt _08020B1C
	b _08020B36
	.align 2, 0
_08020AF0: .4byte gUnknown_02024A64
_08020AF4: .4byte gPlayerParty
_08020AF8: .4byte gUnknown_02024D26
_08020AFC: .4byte gEnemyParty
_08020B00: .4byte gUnknown_020239F8
_08020B04: .4byte gUnknown_02024A68
_08020B08: .4byte gUnknown_02024C10
_08020B0C: .4byte gUnknown_02024C6C
_08020B10: .4byte gUnknown_02024D68
_08020B14:
	cmp r4, 0
	beq _08020B36
	cmp r2, 0
	beq _08020B36
_08020B1C:
	ldr r2, [r7]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	adds r1, r0
	str r1, [r7]
	b _08020B46
_08020B36:
	ldr r0, [r7]
	adds r0, 0x5
	str r0, [r7]
	b _08020B46
_08020B3E:
	ldr r1, _08020B50 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_08020B46:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020B50: .4byte gUnknown_02024C10
	thumb_func_end sub_80209B4

	thumb_func_start sub_8020B54
sub_8020B54: @ 8020B54
	ldr r1, _08020B80 @ =gUnknown_02024C68
	movs r0, 0
	strb r0, [r1]
	ldr r0, _08020B84 @ =0x02000000
	ldr r1, _08020B88 @ =0x0001601f
	adds r0, r1
	movs r2, 0
	movs r1, 0x1
	strb r1, [r0]
	ldr r0, _08020B8C @ =gCritMultiplier
	strb r1, [r0]
	ldr r0, _08020B90 @ =gUnknown_02024D1E
	strb r2, [r0, 0x3]
	strb r2, [r0, 0x6]
	ldr r2, _08020B94 @ =gUnknown_02024C6C
	ldr r0, [r2]
	subs r1, 0x42
	ands r0, r1
	ldr r1, _08020B98 @ =0xffffbfff
	ands r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_08020B80: .4byte gUnknown_02024C68
_08020B84: .4byte 0x02000000
_08020B88: .4byte 0x0001601f
_08020B8C: .4byte gCritMultiplier
_08020B90: .4byte gUnknown_02024D1E
_08020B94: .4byte gUnknown_02024C6C
_08020B98: .4byte 0xffffbfff
	thumb_func_end sub_8020B54

	thumb_func_start atk25_resetflags
atk25_resetflags: @ 8020B9C
	push {lr}
	bl sub_8020B54
	ldr r1, _08020BB0 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08020BB0: .4byte gUnknown_02024C10
	thumb_func_end atk25_resetflags

	thumb_func_start sub_8020BB4
sub_8020BB4: @ 8020BB4
	ldr r3, _08020BC4 @ =gUnknown_02024C0E
	ldr r2, _08020BC8 @ =gUnknown_02024C10
	ldr r0, [r2]
	ldrb r1, [r0, 0x1]
	strb r1, [r3]
	adds r0, 0x2
	str r0, [r2]
	bx lr
	.align 2, 0
_08020BC4: .4byte gUnknown_02024C0E
_08020BC8: .4byte gUnknown_02024C10
	thumb_func_end sub_8020BB4

	thumb_func_start atk27_cmd27
atk27_cmd27: @ 8020BCC
	push {lr}
	ldr r1, _08020BE8 @ =gUnknown_02024C0E
	ldrb r0, [r1]
	subs r0, 0x1
	strb r0, [r1]
	lsls r0, 24
	cmp r0, 0
	bne _08020BF0
	ldr r1, _08020BEC @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _08020C0A
	.align 2, 0
_08020BE8: .4byte gUnknown_02024C0E
_08020BEC: .4byte gUnknown_02024C10
_08020BF0:
	ldr r3, _08020C10 @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	adds r1, r0
	str r1, [r3]
_08020C0A:
	pop {r0}
	bx r0
	.align 2, 0
_08020C10: .4byte gUnknown_02024C10
	thumb_func_end atk27_cmd27

	thumb_func_start sub_8020C14
sub_8020C14: @ 8020C14
	ldr r3, _08020C30 @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	adds r1, r0
	str r1, [r3]
	bx lr
	.align 2, 0
_08020C30: .4byte gUnknown_02024C10
	thumb_func_end sub_8020C14

	thumb_func_start atk29_jumpifbyte
atk29_jumpifbyte: @ 8020C34
	push {r4-r6,lr}
	ldr r3, _08020C78 @ =gUnknown_02024C10
	ldr r1, [r3]
	ldrb r6, [r1, 0x1]
	ldrb r2, [r1, 0x2]
	ldrb r0, [r1, 0x3]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0x4]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0x5]
	lsls r0, 24
	adds r5, r2, r0
	ldrb r4, [r1, 0x6]
	ldrb r2, [r1, 0x7]
	ldrb r0, [r1, 0x8]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0x9]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0xA]
	lsls r0, 24
	adds r2, r0
	adds r1, 0xB
	str r1, [r3]
	cmp r6, 0x5
	bhi _08020CCC
	lsls r0, r6, 2
	ldr r1, _08020C7C @ =_08020C80
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08020C78: .4byte gUnknown_02024C10
_08020C7C: .4byte _08020C80
	.align 2, 0
_08020C80:
	.4byte _08020C98
	.4byte _08020CA0
	.4byte _08020CA8
	.4byte _08020CB0
	.4byte _08020CB8
	.4byte _08020CC2
_08020C98:
	ldrb r0, [r5]
	cmp r0, r4
	bne _08020CCC
	b _08020CCA
_08020CA0:
	ldrb r0, [r5]
	cmp r0, r4
	beq _08020CCC
	b _08020CCA
_08020CA8:
	ldrb r0, [r5]
	cmp r0, r4
	bls _08020CCC
	b _08020CCA
_08020CB0:
	ldrb r0, [r5]
	cmp r0, r4
	bcs _08020CCC
	b _08020CCA
_08020CB8:
	ldrb r0, [r5]
	ands r4, r0
	cmp r4, 0
	beq _08020CCC
	b _08020CCA
_08020CC2:
	ldrb r0, [r5]
	ands r4, r0
	cmp r4, 0
	bne _08020CCC
_08020CCA:
	str r2, [r3]
_08020CCC:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end atk29_jumpifbyte

	thumb_func_start sub_8020CD4
sub_8020CD4: @ 8020CD4
	push {r4-r6,lr}
	ldr r3, _08020D20 @ =gUnknown_02024C10
	ldr r1, [r3]
	ldrb r6, [r1, 0x1]
	ldrb r2, [r1, 0x2]
	ldrb r0, [r1, 0x3]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0x4]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0x5]
	lsls r0, 24
	adds r5, r2, r0
	ldrb r4, [r1, 0x6]
	ldrb r0, [r1, 0x7]
	lsls r0, 8
	orrs r4, r0
	ldrb r2, [r1, 0x8]
	ldrb r0, [r1, 0x9]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0xA]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0xB]
	lsls r0, 24
	adds r2, r0
	adds r1, 0xC
	str r1, [r3]
	cmp r6, 0x5
	bhi _08020D74
	lsls r0, r6, 2
	ldr r1, _08020D24 @ =_08020D28
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08020D20: .4byte gUnknown_02024C10
_08020D24: .4byte _08020D28
	.align 2, 0
_08020D28:
	.4byte _08020D40
	.4byte _08020D48
	.4byte _08020D50
	.4byte _08020D58
	.4byte _08020D60
	.4byte _08020D6A
_08020D40:
	ldrh r0, [r5]
	cmp r0, r4
	bne _08020D74
	b _08020D72
_08020D48:
	ldrh r0, [r5]
	cmp r0, r4
	beq _08020D74
	b _08020D72
_08020D50:
	ldrh r0, [r5]
	cmp r0, r4
	bls _08020D74
	b _08020D72
_08020D58:
	ldrh r0, [r5]
	cmp r0, r4
	bcs _08020D74
	b _08020D72
_08020D60:
	ldrh r0, [r5]
	ands r4, r0
	cmp r4, 0
	beq _08020D74
	b _08020D72
_08020D6A:
	ldrh r0, [r5]
	ands r4, r0
	cmp r4, 0
	bne _08020D74
_08020D72:
	str r2, [r3]
_08020D74:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_8020CD4

	thumb_func_start sub_8020D7C
sub_8020D7C: @ 8020D7C
	push {r4-r6,lr}
	ldr r3, _08020DD4 @ =gUnknown_02024C10
	ldr r1, [r3]
	ldrb r6, [r1, 0x1]
	ldrb r2, [r1, 0x2]
	ldrb r0, [r1, 0x3]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0x4]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0x5]
	lsls r0, 24
	adds r5, r2, r0
	ldrb r4, [r1, 0x6]
	ldrb r0, [r1, 0x7]
	lsls r0, 8
	orrs r4, r0
	ldrb r0, [r1, 0x8]
	lsls r0, 16
	orrs r4, r0
	ldrb r0, [r1, 0x9]
	lsls r0, 24
	orrs r4, r0
	ldrb r2, [r1, 0xA]
	ldrb r0, [r1, 0xB]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0xC]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0xD]
	lsls r0, 24
	adds r2, r0
	adds r1, 0xE
	str r1, [r3]
	cmp r6, 0x5
	bhi _08020E28
	lsls r0, r6, 2
	ldr r1, _08020DD8 @ =_08020DDC
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08020DD4: .4byte gUnknown_02024C10
_08020DD8: .4byte _08020DDC
	.align 2, 0
_08020DDC:
	.4byte _08020DF4
	.4byte _08020DFC
	.4byte _08020E04
	.4byte _08020E0C
	.4byte _08020E14
	.4byte _08020E1E
_08020DF4:
	ldr r0, [r5]
	cmp r0, r4
	bne _08020E28
	b _08020E26
_08020DFC:
	ldr r0, [r5]
	cmp r0, r4
	beq _08020E28
	b _08020E26
_08020E04:
	ldr r0, [r5]
	cmp r0, r4
	bls _08020E28
	b _08020E26
_08020E0C:
	ldr r0, [r5]
	cmp r0, r4
	bcs _08020E28
	b _08020E26
_08020E14:
	ldr r0, [r5]
	ands r0, r4
	cmp r0, 0
	beq _08020E28
	b _08020E26
_08020E1E:
	ldr r0, [r5]
	ands r0, r4
	cmp r0, 0
	bne _08020E28
_08020E26:
	str r2, [r3]
_08020E28:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_8020D7C

	thumb_func_start sub_8020E30
sub_8020E30: @ 8020E30
	push {r4-r7,lr}
	ldr r2, _08020E88 @ =gUnknown_02024C10
	ldr r3, [r2]
	ldrb r1, [r3, 0x1]
	ldrb r0, [r3, 0x2]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r3, 0x3]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r3, 0x4]
	lsls r0, 24
	adds r5, r1, r0
	ldrb r1, [r3, 0x5]
	ldrb r0, [r3, 0x6]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r3, 0x7]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r3, 0x8]
	lsls r0, 24
	adds r4, r1, r0
	ldrb r6, [r3, 0x9]
	ldrb r1, [r3, 0xA]
	ldrb r0, [r3, 0xB]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r3, 0xC]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r3, 0xD]
	lsls r0, 24
	adds r1, r0
	mov r12, r1
	movs r1, 0
	cmp r1, r6
	bcs _08020EA8
	ldrb r0, [r5]
	ldrb r7, [r4]
	cmp r0, r7
	beq _08020E8C
	adds r0, r3, 0
	b _08020EA4
	.align 2, 0
_08020E88: .4byte gUnknown_02024C10
_08020E8C:
	adds r5, 0x1
	adds r4, 0x1
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, r6
	bcs _08020EA8
	ldrb r0, [r5]
	ldrb r3, [r4]
	cmp r0, r3
	beq _08020E8C
	ldr r0, [r2]
_08020EA4:
	adds r0, 0xE
	str r0, [r2]
_08020EA8:
	cmp r1, r6
	bne _08020EB0
	mov r7, r12
	str r7, [r2]
_08020EB0:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8020E30

	thumb_func_start sub_8020EB8
sub_8020EB8: @ 8020EB8
	push {r4-r7,lr}
	movs r7, 0
	ldr r3, _08020F2C @ =gUnknown_02024C10
	ldr r1, [r3]
	ldrb r2, [r1, 0x1]
	ldrb r0, [r1, 0x2]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0x3]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0x4]
	lsls r0, 24
	adds r5, r2, r0
	ldrb r2, [r1, 0x5]
	ldrb r0, [r1, 0x6]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0x7]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0x8]
	lsls r0, 24
	adds r4, r2, r0
	ldrb r6, [r1, 0x9]
	ldrb r2, [r1, 0xA]
	ldrb r0, [r1, 0xB]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0xC]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0xD]
	lsls r0, 24
	adds r2, r0
	mov r12, r2
	movs r1, 0
	cmp r7, r6
	bcs _08020F22
_08020F06:
	ldrb r0, [r5]
	ldrb r2, [r4]
	cmp r0, r2
	bne _08020F14
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
_08020F14:
	adds r5, 0x1
	adds r4, 0x1
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, r6
	bcc _08020F06
_08020F22:
	cmp r7, r6
	beq _08020F30
	mov r0, r12
	b _08020F34
	.align 2, 0
_08020F2C: .4byte gUnknown_02024C10
_08020F30:
	ldr r0, [r3]
	adds r0, 0xE
_08020F34:
	str r0, [r3]
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8020EB8

	thumb_func_start sub_8020F3C
sub_8020F3C: @ 8020F3C
	ldr r3, _08020F60 @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	adds r1, r0
	ldrb r0, [r2, 0x5]
	strb r0, [r1]
	ldr r0, [r3]
	adds r0, 0x6
	str r0, [r3]
	bx lr
	.align 2, 0
_08020F60: .4byte gUnknown_02024C10
	thumb_func_end sub_8020F3C

	thumb_func_start sub_8020F64
sub_8020F64: @ 8020F64
	ldr r3, _08020F8C @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	adds r1, r0
	ldrb r0, [r2, 0x5]
	ldrb r2, [r1]
	adds r0, r2
	strb r0, [r1]
	ldr r0, [r3]
	adds r0, 0x6
	str r0, [r3]
	bx lr
	.align 2, 0
_08020F8C: .4byte gUnknown_02024C10
	thumb_func_end sub_8020F64

	thumb_func_start sub_8020F90
sub_8020F90: @ 8020F90
	ldr r3, _08020FB8 @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	adds r1, r0
	ldrb r0, [r1]
	ldrb r2, [r2, 0x5]
	subs r0, r2
	strb r0, [r1]
	ldr r0, [r3]
	adds r0, 0x6
	str r0, [r3]
	bx lr
	.align 2, 0
_08020FB8: .4byte gUnknown_02024C10
	thumb_func_end sub_8020F90

	thumb_func_start atk31_copyarray
atk31_copyarray: @ 8020FBC
	push {r4-r6,lr}
	ldr r3, _0802100C @ =gUnknown_02024C10
	ldr r1, [r3]
	ldrb r2, [r1, 0x1]
	ldrb r0, [r1, 0x2]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0x3]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0x4]
	lsls r0, 24
	adds r6, r2, r0
	ldrb r2, [r1, 0x5]
	ldrb r0, [r1, 0x6]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0x7]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0x8]
	lsls r0, 24
	adds r5, r2, r0
	ldrb r4, [r1, 0x9]
	movs r2, 0
	cmp r2, r4
	bge _08021000
_08020FF2:
	adds r0, r6, r2
	adds r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, r4
	blt _08020FF2
_08021000:
	ldr r0, [r3]
	adds r0, 0xA
	str r0, [r3]
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802100C: .4byte gUnknown_02024C10
	thumb_func_end atk31_copyarray

	thumb_func_start atk32_memcpy_with_offset
atk32_memcpy_with_offset: @ 8021010
	push {r4-r7,lr}
	ldr r3, _08021078 @ =gUnknown_02024C10
	ldr r1, [r3]
	ldrb r2, [r1, 0x1]
	ldrb r0, [r1, 0x2]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0x3]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0x4]
	lsls r0, 24
	adds r7, r2, r0
	ldrb r2, [r1, 0x5]
	ldrb r0, [r1, 0x6]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0x7]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0x8]
	lsls r0, 24
	adds r6, r2, r0
	ldrb r2, [r1, 0x9]
	ldrb r0, [r1, 0xA]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r1, 0xB]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r1, 0xC]
	lsls r0, 24
	adds r5, r2, r0
	ldrb r4, [r1, 0xD]
	movs r2, 0
	cmp r2, r4
	bge _0802106C
_0802105A:
	adds r0, r7, r2
	ldrb r1, [r5]
	adds r1, r2, r1
	adds r1, r6, r1
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, r4
	blt _0802105A
_0802106C:
	ldr r0, [r3]
	adds r0, 0xE
	str r0, [r3]
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021078: .4byte gUnknown_02024C10
	thumb_func_end atk32_memcpy_with_offset

	thumb_func_start sub_802107C
sub_802107C: @ 802107C
	ldr r3, _080210A4 @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	adds r1, r0
	ldrb r0, [r1]
	ldrb r2, [r2, 0x5]
	orrs r0, r2
	strb r0, [r1]
	ldr r0, [r3]
	adds r0, 0x6
	str r0, [r3]
	bx lr
	.align 2, 0
_080210A4: .4byte gUnknown_02024C10
	thumb_func_end sub_802107C

	thumb_func_start atk34_orhalfword
atk34_orhalfword: @ 80210A8
	push {r4,lr}
	ldr r4, _080210DC @ =gUnknown_02024C10
	ldr r3, [r4]
	ldrb r2, [r3, 0x1]
	ldrb r0, [r3, 0x2]
	lsls r0, 8
	adds r2, r0
	ldrb r0, [r3, 0x3]
	lsls r0, 16
	adds r2, r0
	ldrb r0, [r3, 0x4]
	lsls r0, 24
	adds r2, r0
	ldrb r1, [r3, 0x5]
	ldrb r0, [r3, 0x6]
	lsls r0, 8
	orrs r1, r0
	ldrh r0, [r2]
	orrs r1, r0
	strh r1, [r2]
	ldr r0, [r4]
	adds r0, 0x7
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080210DC: .4byte gUnknown_02024C10
	thumb_func_end atk34_orhalfword

	thumb_func_start atk35_orword
atk35_orword: @ 80210E0
	push {r4,lr}
	ldr r4, _08021120 @ =gUnknown_02024C10
	ldr r2, [r4]
	ldrb r3, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	adds r3, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	adds r3, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	adds r3, r0
	ldrb r1, [r2, 0x5]
	ldrb r0, [r2, 0x6]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x7]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x8]
	lsls r0, 24
	adds r1, r0
	ldr r0, [r3]
	orrs r0, r1
	str r0, [r3]
	ldr r0, [r4]
	adds r0, 0x9
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08021120: .4byte gUnknown_02024C10
	thumb_func_end atk35_orword

	thumb_func_start sub_8021124
sub_8021124: @ 8021124
	ldr r3, _0802114C @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	adds r1, r0
	ldrb r2, [r2, 0x5]
	ldrb r0, [r1]
	bics r0, r2
	strb r0, [r1]
	ldr r0, [r3]
	adds r0, 0x6
	str r0, [r3]
	bx lr
	.align 2, 0
_0802114C: .4byte gUnknown_02024C10
	thumb_func_end sub_8021124

	thumb_func_start atk37_bichalfword
atk37_bichalfword: @ 8021150
	push {r4,lr}
	ldr r4, _08021184 @ =gUnknown_02024C10
	ldr r3, [r4]
	ldrb r1, [r3, 0x1]
	ldrb r0, [r3, 0x2]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r3, 0x3]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r3, 0x4]
	lsls r0, 24
	adds r1, r0
	ldrb r2, [r3, 0x5]
	ldrb r0, [r3, 0x6]
	lsls r0, 8
	orrs r2, r0
	ldrh r0, [r1]
	bics r0, r2
	strh r0, [r1]
	ldr r0, [r4]
	adds r0, 0x7
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08021184: .4byte gUnknown_02024C10
	thumb_func_end atk37_bichalfword

	thumb_func_start atk38_bicword
atk38_bicword: @ 8021188
	push {r4,lr}
	ldr r4, _080211C8 @ =gUnknown_02024C10
	ldr r2, [r4]
	ldrb r3, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	adds r3, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	adds r3, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	adds r3, r0
	ldrb r1, [r2, 0x5]
	ldrb r0, [r2, 0x6]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x7]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x8]
	lsls r0, 24
	adds r1, r0
	ldr r0, [r3]
	bics r0, r1
	str r0, [r3]
	ldr r0, [r4]
	adds r0, 0x9
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080211C8: .4byte gUnknown_02024C10
	thumb_func_end atk38_bicword

	thumb_func_start atk39_pause
atk39_pause: @ 80211CC
	push {r4,r5,lr}
	ldr r0, _08021200 @ =gUnknown_02024A64
	ldr r4, [r0]
	cmp r4, 0
	bne _080211F8
	ldr r5, _08021204 @ =gUnknown_02024C10
	ldr r2, [r5]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldr r3, _08021208 @ =gUnknown_02024D18
	ldrh r0, [r3]
	adds r0, 0x1
	strh r0, [r3]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, r1
	bcc _080211F8
	strh r4, [r3]
	adds r0, r2, 0x3
	str r0, [r5]
_080211F8:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08021200: .4byte gUnknown_02024A64
_08021204: .4byte gUnknown_02024C10
_08021208: .4byte gUnknown_02024D18
	thumb_func_end atk39_pause

	thumb_func_start sub_802120C
sub_802120C: @ 802120C
	push {lr}
	ldr r0, _08021224 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _0802121E
	ldr r1, _08021228 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
_0802121E:
	pop {r0}
	bx r0
	.align 2, 0
_08021224: .4byte gUnknown_02024A64
_08021228: .4byte gUnknown_02024C10
	thumb_func_end sub_802120C

	thumb_func_start atk3B_8022C68
atk3B_8022C68: @ 802122C
	push {lr}
	ldr r0, _08021240 @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	bne _0802124C
	ldr r0, _08021244 @ =gUnknown_02024A60
	ldr r1, _08021248 @ =gUnknown_02024C08
	b _08021250
	.align 2, 0
_08021240: .4byte gUnknown_02024C10
_08021244: .4byte gUnknown_02024A60
_08021248: .4byte gUnknown_02024C08
_0802124C:
	ldr r0, _08021274 @ =gUnknown_02024A60
	ldr r1, _08021278 @ =gUnknown_02024C07
_08021250:
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r0, _0802127C @ =gUnknown_02024BEC
	ldrh r1, [r0]
	movs r0, 0
	bl dp01_build_cmdbuf_x18_0_aa_health_bar_update
	ldr r0, _08021274 @ =gUnknown_02024A60
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, _08021280 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08021274: .4byte gUnknown_02024A60
_08021278: .4byte gUnknown_02024C07
_0802127C: .4byte gUnknown_02024BEC
_08021280: .4byte gUnknown_02024C10
	thumb_func_end atk3B_8022C68

	thumb_func_start atk3C_return
atk3C_return: @ 8021284
	push {lr}
	bl b_movescr_stack_pop_cursor
	pop {r0}
	bx r0
	thumb_func_end atk3C_return

	thumb_func_start sub_8021290
sub_8021290: @ 8021290
	ldr r0, _080212A4 @ =gUnknown_02024C68
	movs r1, 0
	strb r1, [r0]
	ldr r0, _080212A8 @ =gUnknown_02024A60
	strb r1, [r0]
	ldr r1, _080212AC @ =gUnknown_02024A7F
	movs r0, 0xB
	strb r0, [r1]
	bx lr
	.align 2, 0
_080212A4: .4byte gUnknown_02024C68
_080212A8: .4byte gUnknown_02024A60
_080212AC: .4byte gUnknown_02024A7F
	thumb_func_end sub_8021290

	thumb_func_start sub_80212B0
sub_80212B0: @ 80212B0
	ldr r1, _080212C0 @ =gUnknown_02024A60
	movs r0, 0
	strb r0, [r1]
	ldr r1, _080212C4 @ =gUnknown_02024A7F
	movs r0, 0xB
	strb r0, [r1]
	bx lr
	.align 2, 0
_080212C0: .4byte gUnknown_02024A60
_080212C4: .4byte gUnknown_02024A7F
	thumb_func_end sub_80212B0

	thumb_func_start atk3F_end3
atk3F_end3: @ 80212C8
	push {lr}
	bl b_movescr_stack_pop_cursor
	ldr r2, _080212F0 @ =0x02017140
	adds r1, r2, 0
	adds r1, 0x20
	ldrb r0, [r1]
	cmp r0, 0
	beq _080212DE
	subs r0, 0x1
	strb r0, [r1]
_080212DE:
	ldr r0, _080212F4 @ =gUnknown_030042D4
	ldrb r1, [r1]
	lsls r1, 2
	adds r1, r2
	ldr r1, [r1]
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080212F0: .4byte 0x02017140
_080212F4: .4byte gUnknown_030042D4
	thumb_func_end atk3F_end3

	thumb_func_start atk41_call
atk41_call: @ 80212F8
	push {r4,lr}
	ldr r4, _08021324 @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x5
	bl b_movescr_stack_push
	ldr r2, [r4]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08021324: .4byte gUnknown_02024C10
	thumb_func_end atk41_call

	thumb_func_start atk42_jumpiftype2
atk42_jumpiftype2: @ 8021328
	push {r4,lr}
	ldr r4, _08021370 @ =gUnknown_02024C10
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	lsls r0, 24
	lsrs r0, 24
	ldr r3, [r4]
	ldr r2, _08021374 @ =gBattleMons
	movs r1, 0x58
	muls r0, r1
	adds r0, r2
	adds r1, r0, 0
	adds r1, 0x21
	ldrb r2, [r3, 0x2]
	ldrb r1, [r1]
	cmp r2, r1
	beq _08021356
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r2, r0
	bne _08021378
_08021356:
	ldrb r1, [r3, 0x3]
	ldrb r0, [r3, 0x4]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r3, 0x5]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r3, 0x6]
	lsls r0, 24
	orrs r1, r0
	str r1, [r4]
	b _0802137C
	.align 2, 0
_08021370: .4byte gUnknown_02024C10
_08021374: .4byte gBattleMons
_08021378:
	adds r0, r3, 0x7
	str r0, [r4]
_0802137C:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end atk42_jumpiftype2

	thumb_func_start sub_8021384
sub_8021384: @ 8021384
	push {r4,lr}
	sub sp, 0x4
	ldr r4, _080213BC @ =gUnknown_02024C10
	ldr r0, [r4]
	ldrb r2, [r0, 0x1]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	beq _080213C0
	ldr r2, [r4]
	ldrb r1, [r2, 0x2]
	ldrb r0, [r2, 0x3]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x5]
	lsls r0, 24
	orrs r1, r0
	str r1, [r4]
	b _080213C6
	.align 2, 0
_080213BC: .4byte gUnknown_02024C10
_080213C0:
	ldr r0, [r4]
	adds r0, 0x6
	str r0, [r4]
_080213C6:
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_8021384

	thumb_func_start sub_80213D0
sub_80213D0: @ 80213D0
	ldr r1, _080213E4 @ =0x02000000
	ldr r0, _080213E8 @ =gUnknown_02024C07
	ldrb r0, [r0]
	ldr r2, _080213EC @ =0x00016060
	adds r0, r2
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
	bx lr
	.align 2, 0
_080213E4: .4byte 0x02000000
_080213E8: .4byte gUnknown_02024C07
_080213EC: .4byte 0x00016060
	thumb_func_end sub_80213D0

	thumb_func_start atk46_cmd46
atk46_cmd46: @ 80213F0
	push {r4-r6,lr}
	ldr r5, _08021444 @ =gUnknown_02024C10
	ldr r0, [r5]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r6, _08021448 @ =gUnknown_02024A60
	strb r0, [r6]
	ldr r2, [r5]
	ldrb r1, [r2, 0x3]
	ldrb r0, [r2, 0x4]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x5]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x6]
	lsls r0, 24
	adds r3, r1, r0
	ldrb r4, [r2, 0x2]
	adds r0, r4, 0
	cmp r0, 0x1
	beq _08021426
	cmp r0, 0x11
	beq _08021426
	cmp r0, 0x2
	bne _0802144C
_08021426:
	ldr r4, _08021444 @ =gUnknown_02024C10
	ldr r0, [r4]
	ldrb r1, [r0, 0x2]
	ldrh r2, [r3]
	movs r0, 0
	bl dp01_build_cmdbuf_x34_a_bb_aka_battle_anim
	ldr r0, _08021448 @ =gUnknown_02024A60
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r4]
	adds r0, 0x7
	str r0, [r4]
	b _080214AE
	.align 2, 0
_08021444: .4byte gUnknown_02024C10
_08021448: .4byte gUnknown_02024A60
_0802144C:
	ldr r0, _08021464 @ =gUnknown_02024C6C
	ldr r0, [r0]
	movs r1, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0802146C
	adds r0, r2, 0x7
	bl b_movescr_stack_push
	ldr r0, _08021468 @ =gUnknown_081D8EEF
	b _080214AC
	.align 2, 0
_08021464: .4byte gUnknown_02024C6C
_08021468: .4byte gUnknown_081D8EEF
_0802146C:
	adds r0, r4, 0
	subs r0, 0xA
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x3
	bls _08021498
	ldr r1, _08021490 @ =gUnknown_02024C98
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	ldr r1, _08021494 @ =0x000400c0
	ands r0, r1
	cmp r0, 0
	beq _08021498
	adds r0, r2, 0x7
	b _080214AC
	.align 2, 0
_08021490: .4byte gUnknown_02024C98
_08021494: .4byte 0x000400c0
_08021498:
	ldrb r1, [r2, 0x2]
	ldrh r2, [r3]
	movs r0, 0
	bl dp01_build_cmdbuf_x34_a_bb_aka_battle_anim
	ldrb r0, [r6]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r5]
	adds r0, 0x7
_080214AC:
	str r0, [r5]
_080214AE:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end atk46_cmd46

	thumb_func_start sub_80214B4
sub_80214B4: @ 80214B4
	push {r4-r7,lr}
	ldr r6, _0802151C @ =gUnknown_02024C10
	ldr r0, [r6]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r7, _08021520 @ =gUnknown_02024A60
	strb r0, [r7]
	ldr r2, [r6]
	ldrb r1, [r2, 0x2]
	ldrb r0, [r2, 0x3]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x5]
	lsls r0, 24
	adds r3, r1, r0
	ldrb r1, [r2, 0x6]
	ldrb r0, [r2, 0x7]
	lsls r0, 8
	adds r1, r0
	ldrb r0, [r2, 0x8]
	lsls r0, 16
	adds r1, r0
	ldrb r0, [r2, 0x9]
	lsls r0, 24
	adds r4, r1, r0
	ldrb r5, [r3]
	adds r0, r5, 0
	cmp r0, 0x1
	beq _080214FE
	cmp r0, 0x11
	beq _080214FE
	cmp r0, 0x2
	bne _08021524
_080214FE:
	ldrb r1, [r3]
	ldrh r2, [r4]
	movs r0, 0
	bl dp01_build_cmdbuf_x34_a_bb_aka_battle_anim
	ldr r0, _08021520 @ =gUnknown_02024A60
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, _0802151C @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0xA
	str r0, [r1]
	b _0802157A
	.align 2, 0
_0802151C: .4byte gUnknown_02024C10
_08021520: .4byte gUnknown_02024A60
_08021524:
	ldr r0, _08021534 @ =gUnknown_02024C6C
	ldr r0, [r0]
	movs r1, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08021538
	adds r0, r2, 0
	b _08021576
	.align 2, 0
_08021534: .4byte gUnknown_02024C6C
_08021538:
	adds r0, r5, 0
	subs r0, 0xA
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x3
	bls _08021564
	ldr r1, _0802155C @ =gUnknown_02024C98
	ldrb r0, [r7]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	ldr r1, _08021560 @ =0x000400c0
	ands r0, r1
	cmp r0, 0
	beq _08021564
	adds r0, r2, 0
	b _08021576
	.align 2, 0
_0802155C: .4byte gUnknown_02024C98
_08021560: .4byte 0x000400c0
_08021564:
	ldrb r1, [r3]
	ldrh r2, [r4]
	movs r0, 0
	bl dp01_build_cmdbuf_x34_a_bb_aka_battle_anim
	ldrb r0, [r7]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r6]
_08021576:
	adds r0, 0xA
	str r0, [r6]
_0802157A:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80214B4

	thumb_func_start atk47
atk47: @ 8021580
	push {r4,lr}
	movs r3, 0
	ldr r0, _080215A0 @ =0x02000000
	ldr r2, _080215A4 @ =0x0001601e
	adds r1, r0, r2
	ldrb r1, [r1]
	movs r2, 0xF0
	ands r2, r1
	adds r4, r0, 0
	cmp r2, 0x20
	beq _080215B6
	cmp r2, 0x20
	bgt _080215A8
	cmp r2, 0x10
	beq _080215B2
	b _080215C0
	.align 2, 0
_080215A0: .4byte 0x02000000
_080215A4: .4byte 0x0001601e
_080215A8:
	cmp r2, 0x90
	beq _080215BA
	cmp r2, 0xA0
	beq _080215BE
	b _080215C0
_080215B2:
	movs r3, 0xF
	b _080215C0
_080215B6:
	movs r3, 0x27
	b _080215C0
_080215BA:
	movs r3, 0x16
	b _080215C0
_080215BE:
	movs r3, 0x2E
_080215C0:
	ldr r1, _080215EC @ =0x0001601e
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, 0xF
	ands r0, r1
	adds r0, r3, r0
	subs r0, 0x1
	ldr r2, _080215F0 @ =0x000160a4
	adds r1, r4, r2
	movs r2, 0
	strb r0, [r1]
	ldr r1, _080215F4 @ =0x000160a5
	adds r0, r4, r1
	strb r2, [r0]
	ldr r1, _080215F8 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080215EC: .4byte 0x0001601e
_080215F0: .4byte 0x000160a4
_080215F4: .4byte 0x000160a5
_080215F8: .4byte gUnknown_02024C10
	thumb_func_end atk47

	thumb_func_start atk48_playstatchangeanimation
atk48_playstatchangeanimation: @ 80215FC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	movs r7, 0
	movs r0, 0
	mov r8, r0
	movs r3, 0
	ldr r5, _08021670 @ =gUnknown_02024C10
	ldr r0, [r5]
	ldrb r0, [r0, 0x1]
	str r3, [sp]
	bl sub_8015150
	ldr r2, _08021674 @ =gUnknown_02024A60
	strb r0, [r2]
	ldr r0, [r5]
	ldrb r4, [r0, 0x2]
	ldrb r1, [r0, 0x3]
	movs r0, 0x1
	ands r0, r1
	ldr r3, [sp]
	cmp r0, 0
	beq _08021710
	movs r0, 0x2
	ands r0, r1
	movs r1, 0x15
	cmp r0, 0
	beq _0802163C
	movs r1, 0x2D
_0802163C:
	cmp r4, 0
	beq _080216E4
	movs r0, 0x1
	mov r10, r0
	ldr r0, _08021678 @ =gUnknown_02024A98
	mov r9, r0
	lsls r5, r1, 16
_0802164A:
	adds r0, r4, 0
	mov r1, r10
	ands r0, r1
	cmp r0, 0
	beq _080216D6
	ldr r0, _08021670 @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r1, [r0, 0x3]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _0802167C
	ldr r0, _08021674 @ =gUnknown_02024A60
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r7, r0
	b _080216C4
	.align 2, 0
_08021670: .4byte gUnknown_02024C10
_08021674: .4byte gUnknown_02024A60
_08021678: .4byte gUnknown_02024A98
_0802167C:
	ldr r6, _08021700 @ =gUnknown_02024A60
	ldrb r0, [r6]
	str r3, [sp]
	bl battle_get_per_side_status
	mov r1, r10
	ands r1, r0
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	ldr r1, _08021704 @ =gUnknown_02024C80
	adds r0, r1
	ldrb r0, [r0, 0x2]
	ldr r3, [sp]
	cmp r0, 0
	bne _080216D6
	ldr r0, _08021708 @ =gBattleMons
	ldrb r2, [r6]
	movs r1, 0x58
	muls r2, r1
	adds r0, r2, r0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x1D
	beq _080216D6
	cmp r0, 0x49
	beq _080216D6
	cmp r0, 0x33
	bne _080216BA
	cmp r7, 0x6
	beq _080216D6
_080216BA:
	cmp r0, 0x34
	bne _080216C2
	cmp r7, 0x1
	beq _080216D6
_080216C2:
	adds r0, r7, r2
_080216C4:
	add r0, r9
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0
	ble _080216D6
	lsrs r0, r5, 16
	mov r8, r0
	adds r3, 0x1
_080216D6:
	lsrs r4, 1
	movs r1, 0x80
	lsls r1, 9
	adds r5, r1
	adds r7, 0x1
	cmp r4, 0
	bne _0802164A
_080216E4:
	ldr r0, _0802170C @ =gUnknown_02024C10
	mov r9, r0
	cmp r3, 0x1
	ble _08021772
	ldr r0, [r0]
	ldrb r1, [r0, 0x3]
	movs r0, 0x2
	ands r0, r1
	movs r1, 0x39
	mov r8, r1
	cmp r0, 0
	beq _08021772
	movs r0, 0x3A
	b _08021770
	.align 2, 0
_08021700: .4byte gUnknown_02024A60
_08021704: .4byte gUnknown_02024C80
_08021708: .4byte gBattleMons
_0802170C: .4byte gUnknown_02024C10
_08021710:
	movs r0, 0x2
	ands r0, r1
	movs r1, 0xE
	cmp r0, 0
	beq _0802171C
	movs r1, 0x26
_0802171C:
	mov r9, r5
	cmp r4, 0
	beq _08021758
	ldr r6, _0802178C @ =gUnknown_02024A98
	adds r5, r2, 0
	lsls r2, r1, 16
_08021728:
	movs r0, 0x1
	ands r0, r4
	cmp r0, 0
	beq _0802174A
	ldrb r1, [r5]
	movs r0, 0x58
	muls r0, r1
	adds r0, r7, r0
	adds r0, r6
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0xB
	bgt _0802174A
	lsrs r1, r2, 16
	mov r8, r1
	adds r3, 0x1
_0802174A:
	lsrs r4, 1
	movs r0, 0x80
	lsls r0, 9
	adds r2, r0
	adds r7, 0x1
	cmp r4, 0
	bne _08021728
_08021758:
	cmp r3, 0x1
	ble _08021772
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, 0x3]
	movs r0, 0x2
	ands r0, r1
	movs r1, 0x37
	mov r8, r1
	cmp r0, 0
	beq _08021772
	movs r0, 0x38
_08021770:
	mov r8, r0
_08021772:
	mov r1, r9
	ldr r2, [r1]
	ldrb r1, [r2, 0x3]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _08021790
	cmp r3, 0x1
	bgt _08021790
	adds r0, r2, 0x4
	mov r1, r9
	b _080217E6
	.align 2, 0
_0802178C: .4byte gUnknown_02024A98
_08021790:
	cmp r3, 0
	beq _080217E0
	ldr r0, _080217D0 @ =0x02000000
	ldr r1, _080217D4 @ =0x000160dc
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, 0
	bne _080217E0
	movs r0, 0
	movs r1, 0x1
	mov r2, r8
	str r3, [sp]
	bl dp01_build_cmdbuf_x34_a_bb_aka_battle_anim
	ldr r0, _080217D8 @ =gUnknown_02024A60
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, _080217DC @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r1, [r0, 0x3]
	movs r0, 0x4
	ands r0, r1
	ldr r3, [sp]
	cmp r0, 0
	beq _080217CC
	cmp r3, 0x1
	ble _080217CC
	movs r0, 0x1
	strb r0, [r4]
_080217CC:
	ldr r1, _080217DC @ =gUnknown_02024C10
	b _080217E2
	.align 2, 0
_080217D0: .4byte 0x02000000
_080217D4: .4byte 0x000160dc
_080217D8: .4byte gUnknown_02024A60
_080217DC: .4byte gUnknown_02024C10
_080217E0:
	mov r1, r9
_080217E2:
	ldr r0, [r1]
	adds r0, 0x4
_080217E6:
	str r0, [r1]
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end atk48_playstatchangeanimation

	thumb_func_start sub_80217F8
sub_80217F8: @ 80217F8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x18
	movs r0, 0
	mov r10, r0
	ldr r0, _08021834 @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r1, [r0, 0x1]
	str r1, [sp, 0x10]
	ldrb r0, [r0, 0x2]
	str r0, [sp, 0x14]
	ldr r1, _08021838 @ =gBattleMons
	ldr r0, _0802183C @ =gUnknown_02024C07
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r1, r0, r1
	ldrh r0, [r1, 0x2E]
	cmp r0, 0xAF
	bne _08021844
	ldr r1, _08021840 @ =gEnigmaBerries
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0, 0x7]
	b _0802184E
	.align 2, 0
_08021834: .4byte gUnknown_02024C10
_08021838: .4byte gBattleMons
_0802183C: .4byte gUnknown_02024C07
_08021840: .4byte gEnigmaBerries
_08021844:
	ldrh r0, [r1, 0x2E]
	bl ItemId_GetHoldEffect
	lsls r0, 24
	lsrs r0, 24
_0802184E:
	str r0, [sp, 0x8]
	ldr r0, _0802186C @ =gUnknown_02024C07
	ldrb r1, [r0]
	lsls r1, 1
	ldr r0, _08021870 @ =0x020160e8
	adds r1, r0
	str r1, [sp, 0xC]
	subs r0, 0xCC
	ldrb r0, [r0]
	cmp r0, 0
	beq _080218C0
	movs r2, 0x3F
	ands r2, r0
	str r2, [sp, 0x4]
	b _080218D2
	.align 2, 0
_0802186C: .4byte gUnknown_02024C07
_08021870: .4byte 0x020160e8
_08021874:
	strb r2, [r7]
	ldr r0, [r5]
	orrs r0, r6
	str r0, [r5]
	ldr r0, _080218AC @ =0x02000000
	ldr r3, _080218B0 @ =0x0001600c
	adds r0, r3
	strb r4, [r0]
	bl sub_8020B54
	ldr r2, _080218B4 @ =gUnknown_081D6BBC
	mov r4, r8
	ldrh r1, [r4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	add r0, r9
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	bl b_movescr_stack_push
	ldr r1, _080218B8 @ =gUnknown_02024C10
	ldr r0, _080218BC @ =gUnknown_081D9B2D
	bl _0802229C
	.align 2, 0
_080218AC: .4byte 0x02000000
_080218B0: .4byte 0x0001600c
_080218B4: .4byte gUnknown_081D6BBC
_080218B8: .4byte gUnknown_02024C10
_080218BC: .4byte gUnknown_081D9B2D
_080218C0:
	ldr r2, _080218D8 @ =gBattleMoves
	ldr r0, _080218DC @ =gUnknown_02024BE6
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x2]
	str r0, [sp, 0x4]
_080218D2:
	ldr r5, _080218E0 @ =0x02000000
	mov r12, r5
	b _080218EE
	.align 2, 0
_080218D8: .4byte gBattleMoves
_080218DC: .4byte gUnknown_02024BE6
_080218E0: .4byte 0x02000000
_080218E4:
	mov r0, r10
	cmp r0, 0
	beq _080218EE
	bl _08022286
_080218EE:
	ldr r0, _08021908 @ =0x0001600c
	add r0, r12
	ldrb r0, [r0]
	cmp r0, 0x11
	bls _080218FC
	bl _0802224E
_080218FC:
	lsls r0, 2
	ldr r1, _0802190C @ =_08021910
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08021908: .4byte 0x0001600c
_0802190C: .4byte _08021910
	.align 2, 0
_08021910:
	.4byte _08021958
	.4byte _08021A34
	.4byte _08021AF0
	.4byte _08021B20
	.4byte _08021B44
	.4byte _08021B78
	.4byte _08021B9C
	.4byte _08021C40
	.4byte _08021C78
	.4byte _08021CA8
	.4byte _08021CCC
	.4byte _08021D18
	.4byte _08021DAC
	.4byte _08021E30
	.4byte _08021E70
	.4byte _08022068
	.4byte _080221C0
	.4byte _0802224E
_08021958:
	ldr r5, _08021A08 @ =gBattleMons
	ldr r2, _08021A0C @ =gUnknown_02024C08
	ldrb r4, [r2]
	movs r6, 0x58
	adds r3, r4, 0
	muls r3, r6
	adds r0, r5, 0
	adds r0, 0x50
	adds r0, r3, r0
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 16
	ands r1, r0
	cmp r1, 0
	beq _080219FE
	adds r0, r3, r5
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _080219FE
	ldr r0, _08021A10 @ =gUnknown_02024C07
	ldrb r1, [r0]
	cmp r1, r4
	beq _080219FE
	adds r0, r1, 0
	bl battle_side_get_owner
	adds r4, r0, 0
	ldr r1, _08021A0C @ =gUnknown_02024C08
	ldrb r0, [r1]
	bl battle_side_get_owner
	lsls r4, 24
	lsls r0, 24
	cmp r4, r0
	beq _080219FE
	ldr r0, _08021A14 @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _080219FE
	ldr r2, _08021A18 @ =gUnknown_02024D28
	ldr r4, _08021A0C @ =gUnknown_02024C08
	ldrb r3, [r4]
	lsls r1, r3, 4
	adds r0, r2, 0x4
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _080219C8
	adds r0, r2, 0
	adds r0, 0x8
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	beq _080219FE
_080219C8:
	ldr r2, _08021A1C @ =gBattleMoves
	ldr r0, _08021A20 @ =gUnknown_02024BE6
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	beq _080219FE
	adds r0, r3, 0
	muls r0, r6
	adds r1, r0, r5
	ldrb r2, [r1, 0x19]
	movs r0, 0x19
	ldrsb r0, [r1, r0]
	cmp r0, 0xB
	bgt _080219FE
	adds r0, r2, 0x1
	strb r0, [r1, 0x19]
	bl b_movescr_stack_push_cursor
	ldr r1, _08021A24 @ =gUnknown_02024C10
	ldr r0, _08021A28 @ =gUnknown_081D9132
	str r0, [r1]
	movs r5, 0x1
	mov r10, r5
_080219FE:
	ldr r2, _08021A2C @ =0x02000000
	ldr r0, _08021A30 @ =0x0001600c
	adds r1, r2, r0
	b _08021E00
	.align 2, 0
_08021A08: .4byte gBattleMons
_08021A0C: .4byte gUnknown_02024C08
_08021A10: .4byte gUnknown_02024C07
_08021A14: .4byte gUnknown_02024C68
_08021A18: .4byte gUnknown_02024D28
_08021A1C: .4byte gBattleMoves
_08021A20: .4byte gUnknown_02024BE6
_08021A24: .4byte gUnknown_02024C10
_08021A28: .4byte gUnknown_081D9132
_08021A2C: .4byte 0x02000000
_08021A30: .4byte 0x0001600c
_08021A34:
	ldr r2, _08021AD0 @ =gBattleMons
	ldr r1, _08021AD4 @ =gUnknown_02024C08
	ldrb r4, [r1]
	movs r3, 0x58
	mov r12, r3
	mov r3, r12
	muls r3, r4
	adds r7, r2, 0
	adds r7, 0x4C
	adds r6, r3, r7
	ldr r5, [r6]
	movs r0, 0x20
	ands r0, r5
	cmp r0, 0
	bne _08021A54
	b _08021DFA
_08021A54:
	adds r0, r3, r2
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	bne _08021A5E
	b _08021DFA
_08021A5E:
	ldr r0, _08021AD8 @ =gUnknown_02024C07
	ldrb r0, [r0]
	cmp r0, r4
	bne _08021A68
	b _08021DFA
_08021A68:
	ldr r0, _08021ADC @ =gUnknown_02024D68
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 2
	adds r0, 0xC
	adds r1, r0
	ldr r0, [r1]
	cmp r0, 0
	bne _08021A7C
	b _08021DFA
_08021A7C:
	ldr r0, _08021AE0 @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _08021A8A
	b _08021DFA
_08021A8A:
	ldr r4, [sp, 0x4]
	cmp r4, 0xA
	beq _08021A92
	b _08021DFA
_08021A92:
	movs r0, 0x21
	negs r0, r0
	ands r5, r0
	str r5, [r6]
	ldr r4, _08021AE4 @ =gUnknown_02024A60
	ldr r5, _08021AD4 @ =gUnknown_02024C08
	ldrb r0, [r5]
	strb r0, [r4]
	ldrb r0, [r5]
	mov r1, r12
	muls r1, r0
	adds r0, r1, 0
	adds r0, r7
	str r0, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r2, 0
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	bl b_movescr_stack_push_cursor
	ldr r1, _08021AE8 @ =gUnknown_02024C10
	ldr r0, _08021AEC @ =gUnknown_081D955D
	str r0, [r1]
	movs r2, 0x1
	mov r10, r2
	b _08021DFA
	.align 2, 0
_08021AD0: .4byte gBattleMons
_08021AD4: .4byte gUnknown_02024C08
_08021AD8: .4byte gUnknown_02024C07
_08021ADC: .4byte gUnknown_02024D68
_08021AE0: .4byte gUnknown_02024C68
_08021AE4: .4byte gUnknown_02024A60
_08021AE8: .4byte gUnknown_02024C10
_08021AEC: .4byte gUnknown_081D955D
_08021AF0:
	ldr r0, _08021B14 @ =gUnknown_02024C08
	ldrb r1, [r0]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x7
	movs r2, 0
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	beq _08021B0C
	movs r4, 0x1
	mov r10, r4
_08021B0C:
	ldr r2, _08021B18 @ =0x02000000
	ldr r5, _08021B1C @ =0x0001600c
	adds r1, r2, r5
	b _08021E00
	.align 2, 0
_08021B14: .4byte gUnknown_02024C08
_08021B18: .4byte 0x02000000
_08021B1C: .4byte 0x0001600c
_08021B20:
	ldr r0, _08021B40 @ =gUnknown_02024C08
	ldrb r1, [r0]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x4
	movs r2, 0
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	bne _08021B3A
	b _08021DFA
_08021B3A:
	movs r0, 0x1
	mov r10, r0
	b _08021DFA
	.align 2, 0
_08021B40: .4byte gUnknown_02024C08
_08021B44:
	movs r0, 0
	str r0, [sp]
	movs r0, 0x5
	movs r1, 0
	movs r2, 0
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	beq _08021B68
	movs r4, 0x1
	mov r10, r4
	ldr r5, _08021B64 @ =0x02000000
	mov r12, r5
	b _0802224E
	.align 2, 0
_08021B64: .4byte 0x02000000
_08021B68:
	ldr r2, _08021B70 @ =0x02000000
	ldr r0, _08021B74 @ =0x0001600c
	adds r1, r2, r0
	b _08021E00
	.align 2, 0
_08021B70: .4byte 0x02000000
_08021B74: .4byte 0x0001600c
_08021B78:
	ldr r0, _08021B98 @ =gUnknown_02024C07
	ldrb r1, [r0]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x8
	movs r2, 0
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	bne _08021B92
	b _08021DFA
_08021B92:
	movs r1, 0x1
	mov r10, r1
	b _08021DFA
	.align 2, 0
_08021B98: .4byte gUnknown_02024C07
_08021B9C:
	ldr r0, _08021C28 @ =gUnknown_02024C6C
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 18
	ands r0, r1
	cmp r0, 0
	beq _08021BE0
	ldr r4, [sp, 0x8]
	cmp r4, 0x1D
	bne _08021BE0
	ldr r0, _08021C2C @ =gUnknown_02024BE8
	ldrh r2, [r0]
	adds r7, r0, 0
	cmp r2, 0xA5
	beq _08021BE0
	ldr r5, [sp, 0xC]
	ldrh r1, [r5]
	cmp r1, 0
	beq _08021BC8
	ldr r0, _08021C30 @ =0x0000ffff
	cmp r1, r0
	bne _08021BE0
_08021BC8:
	cmp r2, 0xE2
	bne _08021BDA
	ldr r0, _08021C34 @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _08021BDA
	b _08022244
_08021BDA:
	ldrh r0, [r7]
	ldr r1, [sp, 0xC]
	strh r0, [r1]
_08021BE0:
	movs r4, 0
	ldr r2, _08021C38 @ =gBattleMons
	ldr r3, _08021C3C @ =gUnknown_02024C07
	ldrb r1, [r3]
	movs r0, 0x58
	muls r0, r1
	adds r2, 0xC
	adds r0, r2
	ldrh r0, [r0]
	ldr r5, [sp, 0xC]
	ldrh r1, [r5]
	mov r9, r3
	cmp r0, r1
	beq _08021C18
	mov r6, r9
	movs r3, 0x58
	adds r5, r1, 0
_08021C02:
	adds r4, 0x1
	cmp r4, 0x3
	bgt _08021C18
	lsls r0, r4, 1
	ldrb r1, [r6]
	muls r1, r3
	adds r0, r1
	adds r0, r2
	ldrh r0, [r0]
	cmp r0, r5
	bne _08021C02
_08021C18:
	cmp r4, 0x4
	beq _08021C1E
	b _08022244
_08021C1E:
	movs r0, 0
	ldr r1, [sp, 0xC]
_08021C22:
	strh r0, [r1]
	b _08022244
	.align 2, 0
_08021C28: .4byte gUnknown_02024C6C
_08021C2C: .4byte gUnknown_02024BE8
_08021C30: .4byte 0x0000ffff
_08021C34: .4byte gUnknown_02024C68
_08021C38: .4byte gBattleMons
_08021C3C: .4byte gUnknown_02024C07
_08021C40:
	movs r4, 0
	ldr r0, _08021C6C @ =gUnknown_02024A68
	ldrb r2, [r0]
	cmp r4, r2
	blt _08021C4C
	b _08022244
_08021C4C:
	movs r5, 0
	ldr r2, _08021C70 @ =0x020160f0
	ldr r3, _08021C74 @ =gBattleMons
_08021C52:
	ldrh r1, [r2]
	cmp r1, 0
	beq _08021C5C
	strh r1, [r3, 0x2E]
	strh r5, [r2]
_08021C5C:
	adds r2, 0x2
	adds r3, 0x58
	adds r4, 0x1
	ldrb r1, [r0]
	cmp r4, r1
	blt _08021C52
	b _08022244
	.align 2, 0
_08021C6C: .4byte gUnknown_02024A68
_08021C70: .4byte 0x020160f0
_08021C74: .4byte gBattleMons
_08021C78:
	movs r0, 0x3
	movs r1, 0
	movs r2, 0
	bl sub_801A02C
	lsls r0, 24
	cmp r0, 0
	beq _08021C98
	movs r2, 0x1
	mov r10, r2
	ldr r3, _08021C94 @ =0x02000000
	mov r12, r3
	b _0802224E
	.align 2, 0
_08021C94: .4byte 0x02000000
_08021C98:
	ldr r2, _08021CA0 @ =0x02000000
	ldr r4, _08021CA4 @ =0x0001600c
	adds r1, r2, r4
	b _08021E00
	.align 2, 0
_08021CA0: .4byte 0x02000000
_08021CA4: .4byte 0x0001600c
_08021CA8:
	movs r0, 0x4
	movs r1, 0
	movs r2, 0
	bl sub_801A02C
	lsls r0, 24
	cmp r0, 0
	beq _08021CBC
	movs r5, 0x1
	mov r10, r5
_08021CBC:
	ldr r2, _08021CC4 @ =0x02000000
	ldr r0, _08021CC8 @ =0x0001600c
	adds r1, r2, r0
	b _08021E00
	.align 2, 0
_08021CC4: .4byte 0x02000000
_08021CC8: .4byte 0x0001600c
_08021CCC:
	ldr r1, _08021D04 @ =gUnknown_02024C98
	ldr r0, _08021D08 @ =gUnknown_02024C07
	ldrb r2, [r0]
	lsls r0, r2, 2
	adds r0, r1
	ldr r0, [r0]
	ldr r1, _08021D0C @ =0x000400c0
	ands r0, r1
	cmp r0, 0
	bne _08021CE2
	b _08021DFA
_08021CE2:
	ldr r0, _08021D10 @ =gUnknown_02024C6C
	ldr r0, [r0]
	movs r1, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08021CF0
	b _08021DFA
_08021CF0:
	ldr r4, _08021D14 @ =gUnknown_02024A60
	strb r2, [r4]
	movs r0, 0
	movs r1, 0x1
	bl dp01_build_cmdbuf_x33_a_33_33
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	b _08021DFA
	.align 2, 0
_08021D04: .4byte gUnknown_02024C98
_08021D08: .4byte gUnknown_02024C07
_08021D0C: .4byte 0x000400c0
_08021D10: .4byte gUnknown_02024C6C
_08021D14: .4byte gUnknown_02024A60
_08021D18:
	ldr r0, _08021D88 @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _08021D44
	ldr r1, _08021D8C @ =gUnknown_02024C98
	ldr r0, _08021D90 @ =gUnknown_02024C07
	ldrb r2, [r0]
	lsls r0, r2, 2
	adds r0, r1
	ldr r0, [r0]
	ldr r1, _08021D94 @ =0x000400c0
	ands r0, r1
	cmp r0, 0
	beq _08021D44
	adds r0, r2, 0
	bl sub_8015660
	lsls r0, 24
	cmp r0, 0
	beq _08021D7E
_08021D44:
	ldr r4, _08021D98 @ =gUnknown_02024A60
	ldr r5, _08021D90 @ =gUnknown_02024C07
	ldrb r0, [r5]
	strb r0, [r4]
	movs r0, 0
	movs r1, 0
	bl dp01_build_cmdbuf_x33_a_33_33
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, _08021D8C @ =gUnknown_02024C98
	ldrb r2, [r5]
	lsls r2, 2
	adds r2, r0
	ldr r0, [r2]
	ldr r1, _08021D9C @ =0xfffbff3f
	ands r0, r1
	str r0, [r2]
	ldr r2, _08021DA0 @ =gUnknown_02024D68
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_08021D7E:
	ldr r2, _08021DA4 @ =0x02000000
	ldr r4, _08021DA8 @ =0x0001600c
	adds r1, r2, r4
	b _08021E00
	.align 2, 0
_08021D88: .4byte gUnknown_02024C68
_08021D8C: .4byte gUnknown_02024C98
_08021D90: .4byte gUnknown_02024C07
_08021D94: .4byte 0x000400c0
_08021D98: .4byte gUnknown_02024A60
_08021D9C: .4byte 0xfffbff3f
_08021DA0: .4byte gUnknown_02024D68
_08021DA4: .4byte 0x02000000
_08021DA8: .4byte 0x0001600c
_08021DAC:
	ldr r2, _08021E0C @ =gUnknown_02024D68
	ldr r1, _08021E10 @ =gUnknown_02024C08
	ldrb r3, [r1]
	lsls r4, r3, 2
	adds r0, r4, r3
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 29
	cmp r0, 0
	blt _08021DFA
	ldr r0, _08021E14 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r3, r0
	bcs _08021DFA
	ldr r5, _08021E18 @ =gUnknown_02024C98
	adds r0, r4, r5
	ldr r0, [r0]
	ldr r1, _08021E1C @ =0x000400c0
	ands r0, r1
	cmp r0, 0
	bne _08021DFA
	ldr r4, _08021E20 @ =gUnknown_02024A60
	strb r3, [r4]
	movs r0, 0
	movs r1, 0
	bl dp01_build_cmdbuf_x33_a_33_33
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, _08021E10 @ =gUnknown_02024C08
	ldrb r2, [r0]
	lsls r2, 2
	adds r2, r5
	ldr r0, [r2]
	ldr r1, _08021E24 @ =0xfffbff3f
	ands r0, r1
	str r0, [r2]
_08021DFA:
	ldr r2, _08021E28 @ =0x02000000
	ldr r3, _08021E2C @ =0x0001600c
	adds r1, r2, r3
_08021E00:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	mov r12, r2
	b _0802224E
	.align 2, 0
_08021E0C: .4byte gUnknown_02024D68
_08021E10: .4byte gUnknown_02024C08
_08021E14: .4byte gUnknown_02024A68
_08021E18: .4byte gUnknown_02024C98
_08021E1C: .4byte 0x000400c0
_08021E20: .4byte gUnknown_02024A60
_08021E24: .4byte 0xfffbff3f
_08021E28: .4byte 0x02000000
_08021E2C: .4byte 0x0001600c
_08021E30:
	movs r4, 0
	ldr r0, _08021E60 @ =gUnknown_02024A68
	ldrb r5, [r0]
	cmp r4, r5
	blt _08021E3C
	b _08022244
_08021E3C:
	ldr r2, _08021E64 @ =gUnknown_02024CA8
	ldr r5, _08021E68 @ =0xfeffffff
	adds r3, r0, 0
	ldr r1, _08021E6C @ =gUnknown_02024AD0
_08021E44:
	ldrb r0, [r2, 0xA]
	cmp r0, 0
	bne _08021E50
	ldr r0, [r1]
	ands r0, r5
	str r0, [r1]
_08021E50:
	adds r2, 0x1C
	adds r1, 0x58
	adds r4, 0x1
	ldrb r0, [r3]
	cmp r4, r0
	blt _08021E44
	b _08022244
	.align 2, 0
_08021E60: .4byte gUnknown_02024A68
_08021E64: .4byte gUnknown_02024CA8
_08021E68: .4byte 0xfeffffff
_08021E6C: .4byte gUnknown_02024AD0
_08021E70:
	ldr r1, _08021F2C @ =gUnknown_02024C6C
	ldr r3, [r1]
	movs r0, 0x80
	lsls r0, 5
	ands r0, r3
	ldr r2, _08021F30 @ =gUnknown_02024C07
	mov r9, r2
	adds r5, r1, 0
	cmp r0, 0
	beq _08021E9A
	ldr r0, _08021F34 @ =gUnknown_02024A60
	ldrb r2, [r2]
	strb r2, [r0]
	ldr r1, _08021F38 @ =gUnknown_02024C08
	ldrb r0, [r1]
	mov r4, r9
	strb r0, [r4]
	strb r2, [r1]
	ldr r0, _08021F3C @ =0xffffefff
	ands r3, r0
	str r3, [r5]
_08021E9A:
	ldr r1, _08021F40 @ =gBattleMoves
	ldr r2, _08021F44 @ =gUnknown_02024BE8
	ldrh r3, [r2]
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0]
	mov r8, r1
	adds r7, r2, 0
	cmp r0, 0x7F
	bne _08021EBE
	ldr r0, _08021F48 @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _08021ECA
_08021EBE:
	ldr r1, _08021F4C @ =gUnknown_02024C2C
	mov r2, r9
	ldrb r0, [r2]
	lsls r0, 1
	adds r0, r1
	strh r3, [r0]
_08021ECA:
	ldr r0, _08021F50 @ =gUnknown_02024C0C
	ldrb r1, [r0]
	ldr r2, _08021F54 @ =gBitTable
	mov r3, r9
	ldrb r4, [r3]
	lsls r0, r4, 2
	adds r0, r2
	ldr r3, [r0]
	ands r1, r3
	adds r6, r2, 0
	cmp r1, 0
	beq _08021EE4
	b _08022244
_08021EE4:
	ldr r0, _08021F58 @ =0x000160a6
	add r0, r12
	ldrb r0, [r0]
	ands r0, r3
	cmp r0, 0
	beq _08021EF2
	b _08022244
_08021EF2:
	ldrh r2, [r7]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	add r0, r8
	ldrb r0, [r0]
	cmp r0, 0x7F
	bne _08021F04
	b _08022244
_08021F04:
	ldr r0, [r5]
	movs r1, 0x80
	lsls r1, 18
	ands r0, r1
	cmp r0, 0
	beq _08021F68
	ldr r1, _08021F5C @ =gUnknown_02024C34
	lsls r0, r4, 1
	adds r0, r1
	strh r2, [r0]
	ldr r0, _08021F60 @ =gUnknown_02024C4C
	mov r4, r9
	ldrb r1, [r4]
	lsls r1, 1
	adds r1, r0
	ldr r0, _08021F64 @ =gUnknown_02024BE6
	ldrh r0, [r0]
	strh r0, [r1]
	b _08021F82
	.align 2, 0
_08021F2C: .4byte gUnknown_02024C6C
_08021F30: .4byte gUnknown_02024C07
_08021F34: .4byte gUnknown_02024A60
_08021F38: .4byte gUnknown_02024C08
_08021F3C: .4byte 0xffffefff
_08021F40: .4byte gBattleMoves
_08021F44: .4byte gUnknown_02024BE8
_08021F48: .4byte gUnknown_02024C68
_08021F4C: .4byte gUnknown_02024C2C
_08021F50: .4byte gUnknown_02024C0C
_08021F54: .4byte gBitTable
_08021F58: .4byte 0x000160a6
_08021F5C: .4byte gUnknown_02024C34
_08021F60: .4byte gUnknown_02024C4C
_08021F64: .4byte gUnknown_02024BE6
_08021F68:
	ldr r1, _08021FD0 @ =gUnknown_02024C34
	lsls r0, r4, 1
	adds r0, r1
	ldr r1, _08021FD4 @ =0x0000ffff
	strh r1, [r0]
	ldr r1, _08021FD8 @ =gUnknown_02024C4C
	mov r2, r9
	ldrb r0, [r2]
	lsls r0, 1
	adds r0, r1
	movs r1, 0x1
	negs r1, r1
	strh r1, [r0]
_08021F82:
	ldr r2, _08021FDC @ =gUnknown_02024C08
	ldrb r3, [r2]
	lsls r0, r3, 2
	adds r0, r6
	ldr r0, [r0]
	lsls r0, 28
	ldr r1, [r5]
	ands r1, r0
	cmp r1, 0
	bne _08021FA0
	ldr r0, _08021FE0 @ =gUnknown_02024C5C
	adds r0, r3, r0
	mov r3, r9
	ldrb r1, [r3]
	strb r1, [r0]
_08021FA0:
	ldr r0, [r5]
	movs r1, 0x80
	lsls r1, 18
	ands r0, r1
	cmp r0, 0
	beq _0802204C
	ldr r0, _08021FE4 @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _0802204C
	ldrh r2, [r7]
	ldr r0, _08021FD4 @ =0x0000ffff
	cmp r2, r0
	bne _08021FEC
	ldr r1, _08021FE8 @ =gUnknown_02024C3C
	ldr r4, _08021FDC @ =gUnknown_02024C08
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r1
	strh r2, [r0]
	b _08022244
	.align 2, 0
_08021FD0: .4byte gUnknown_02024C34
_08021FD4: .4byte 0x0000ffff
_08021FD8: .4byte gUnknown_02024C4C
_08021FDC: .4byte gUnknown_02024C08
_08021FE0: .4byte gUnknown_02024C5C
_08021FE4: .4byte gUnknown_02024C68
_08021FE8: .4byte gUnknown_02024C3C
_08021FEC:
	ldr r0, _08022014 @ =gUnknown_02024C3C
	ldr r5, _08022018 @ =gUnknown_02024C08
	ldrb r1, [r5]
	lsls r1, 1
	adds r1, r0
	ldr r4, _0802201C @ =gUnknown_02024BE6
	ldrh r0, [r4]
	strh r0, [r1]
	ldr r0, _08022020 @ =0x0001601c
	add r0, r12
	ldrb r3, [r0]
	cmp r3, 0
	beq _08022028
	ldr r0, _08022024 @ =gUnknown_02024C44
	ldrb r1, [r5]
	lsls r1, 1
	adds r1, r0
	movs r0, 0x3F
	ands r0, r3
	b _08021C22
	.align 2, 0
_08022014: .4byte gUnknown_02024C3C
_08022018: .4byte gUnknown_02024C08
_0802201C: .4byte gUnknown_02024BE6
_08022020: .4byte 0x0001601c
_08022024: .4byte gUnknown_02024C44
_08022028:
	ldr r0, _08022044 @ =gUnknown_02024C44
	ldr r1, _08022048 @ =gUnknown_02024C08
	ldrb r2, [r1]
	lsls r2, 1
	adds r2, r0
	ldrh r1, [r4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	add r0, r8
	ldrb r0, [r0, 0x2]
	strh r0, [r2]
	b _08022244
	.align 2, 0
_08022044: .4byte gUnknown_02024C44
_08022048: .4byte gUnknown_02024C08
_0802204C:
	ldr r0, _0802205C @ =gUnknown_02024C3C
	ldr r2, _08022060 @ =gUnknown_02024C08
	ldrb r1, [r2]
	lsls r1, 1
	adds r1, r0
	ldr r0, _08022064 @ =0x0000ffff
	b _08021C22
	.align 2, 0
_0802205C: .4byte gUnknown_02024C3C
_08022060: .4byte gUnknown_02024C08
_08022064: .4byte 0x0000ffff
_08022068:
	ldr r0, _0802212C @ =gUnknown_02024C0C
	ldrb r1, [r0]
	ldr r6, _08022130 @ =gBitTable
	ldr r2, _08022134 @ =gUnknown_02024C07
	ldrb r5, [r2]
	lsls r0, r5, 2
	adds r0, r6
	ldr r4, [r0]
	ands r1, r4
	mov r9, r2
	cmp r1, 0
	beq _08022082
	b _08022244
_08022082:
	ldr r0, _08022138 @ =0x000160a6
	add r0, r12
	ldrb r0, [r0]
	ands r0, r4
	cmp r0, 0
	beq _08022090
	b _08022244
_08022090:
	ldr r1, _0802213C @ =gBattleMoves
	ldr r4, _08022140 @ =gUnknown_02024BE8
	ldrh r3, [r4]
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x8]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _0802215C
	ldr r0, _08022144 @ =gUnknown_02024C6C
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 18
	ands r0, r1
	cmp r0, 0
	beq _0802215C
	ldr r2, _08022148 @ =gUnknown_02024C08
	ldrb r0, [r2]
	cmp r5, r0
	bne _080220C0
	b _08022244
_080220C0:
	adds r2, r0, 0
	lsls r0, r2, 2
	adds r0, r6
	ldr r0, [r0]
	lsls r0, 28
	ands r1, r0
	cmp r1, 0
	bne _0802215C
	ldr r0, _0802214C @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _0802215C
	lsls r0, r2, 1
	ldr r5, _08022150 @ =0x000160ac
	adds r0, r5
	add r0, r12
	strb r3, [r0]
	ldr r0, _08022148 @ =gUnknown_02024C08
	ldrb r1, [r0]
	lsls r1, 1
	ldr r2, _08022154 @ =0x000160ad
	adds r1, r2
	add r1, r12
	ldrh r0, [r4]
	lsrs r0, 8
	strb r0, [r1]
	ldr r3, _08022148 @ =gUnknown_02024C08
	ldrb r2, [r3]
	lsls r2, 2
	mov r5, r9
	ldrb r0, [r5]
	lsrs r0, 1
	lsls r0, 1
	ldr r1, _08022158 @ =0x00016100
	adds r0, r1
	adds r2, r0
	add r2, r12
	ldrh r0, [r4]
	strb r0, [r2]
	ldrb r2, [r3]
	lsls r2, 2
	ldrb r0, [r5]
	lsrs r0, 1
	lsls r0, 1
	adds r1, 0x1
	adds r0, r1
	adds r2, r0
	add r2, r12
	ldrh r0, [r4]
	lsrs r0, 8
	strb r0, [r2]
	b _08022244
	.align 2, 0
_0802212C: .4byte gUnknown_02024C0C
_08022130: .4byte gBitTable
_08022134: .4byte gUnknown_02024C07
_08022138: .4byte 0x000160a6
_0802213C: .4byte gBattleMoves
_08022140: .4byte gUnknown_02024BE8
_08022144: .4byte gUnknown_02024C6C
_08022148: .4byte gUnknown_02024C08
_0802214C: .4byte gUnknown_02024C68
_08022150: .4byte 0x000160ac
_08022154: .4byte 0x000160ad
_08022158: .4byte 0x00016100
_0802215C:
	mov r1, r9
	ldrb r0, [r1]
	ldr r2, _080221B4 @ =gUnknown_02024C08
	ldrb r2, [r2]
	cmp r0, r2
	beq _08022244
	ldr r3, _080221B4 @ =gUnknown_02024C08
	ldrb r0, [r3]
	lsls r0, 1
	ldr r4, _080221B8 @ =0x000160ac
	adds r0, r4
	add r0, r12
	movs r3, 0
	strb r3, [r0]
	ldr r5, _080221B4 @ =gUnknown_02024C08
	ldrb r0, [r5]
	lsls r0, 1
	ldr r1, _080221BC @ =0x000160ad
	adds r0, r1
	add r0, r12
	strb r3, [r0]
	ldrb r2, [r5]
	lsls r2, 2
	mov r4, r9
	ldrb r0, [r4]
	lsrs r0, 1
	lsls r0, 1
	adds r1, 0x53
	adds r0, r1
	adds r2, r0
	add r2, r12
	strb r3, [r2]
	ldrb r2, [r5]
	lsls r2, 2
	ldrb r0, [r4]
	lsrs r0, 1
	lsls r0, 1
	adds r1, 0x1
	adds r0, r1
	adds r2, r0
	add r2, r12
	strb r3, [r2]
	b _08022244
	.align 2, 0
_080221B4: .4byte gUnknown_02024C08
_080221B8: .4byte 0x000160ac
_080221BC: .4byte 0x000160ad
_080221C0:
	ldr r5, _080222B0 @ =gUnknown_02024C6C
	ldr r2, [r5]
	movs r0, 0x80
	lsls r0, 12
	ands r0, r2
	cmp r0, 0
	bne _08022244
	ldr r0, _080222B4 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08022244
	ldr r1, _080222B8 @ =gUnknown_02024D28
	ldr r0, _080222BC @ =gUnknown_02024C07
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0, 0x1]
	lsls r0, 29
	cmp r0, 0
	blt _08022244
	ldr r0, _080222C0 @ =gBattleMoves
	mov r9, r0
	ldr r1, _080222C4 @ =gUnknown_02024BE6
	mov r8, r1
	ldrh r0, [r1]
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	add r1, r9
	ldrb r0, [r1, 0x6]
	cmp r0, 0x8
	bne _08022244
	movs r6, 0x80
	lsls r6, 2
	adds r4, r6, 0
	ands r4, r2
	cmp r4, 0
	bne _08022244
	ldr r7, _080222C8 @ =gUnknown_02024C08
	ldrb r0, [r7]
	bl battle_get_per_side_status
	movs r1, 0x2
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r1, _080222CC @ =gBattleMons
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _0802223A
	bl _08021874
_0802223A:
	ldr r0, [r5]
	orrs r0, r6
	str r0, [r5]
	ldr r2, _080222D0 @ =0x02000000
	mov r12, r2
_08022244:
	ldr r1, _080222D4 @ =0x0001600c
	add r1, r12
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_0802224E:
	ldr r3, [sp, 0x10]
	cmp r3, 0x1
	bne _08022262
	mov r4, r10
	cmp r4, 0
	bne _08022262
	ldr r1, _080222D4 @ =0x0001600c
	add r1, r12
	movs r0, 0x11
	strb r0, [r1]
_08022262:
	ldr r5, [sp, 0x10]
	cmp r5, 0x2
	bne _08022278
	ldr r1, _080222D4 @ =0x0001600c
	add r1, r12
	ldr r0, [sp, 0x14]
	ldrb r2, [r1]
	cmp r0, r2
	bne _08022278
	movs r0, 0x11
	strb r0, [r1]
_08022278:
	ldr r0, _080222D4 @ =0x0001600c
	add r0, r12
	ldrb r0, [r0]
	cmp r0, 0x11
	beq _08022286
	bl _080218E4
_08022286:
	ldr r0, _080222D4 @ =0x0001600c
	add r0, r12
	ldrb r0, [r0]
	cmp r0, 0x11
	bne _0802229E
	mov r3, r10
	cmp r3, 0
	bne _0802229E
	ldr r1, _080222D8 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x3
_0802229C:
	str r0, [r1]
_0802229E:
	add sp, 0x18
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080222B0: .4byte gUnknown_02024C6C
_080222B4: .4byte gUnknown_020239F8
_080222B8: .4byte gUnknown_02024D28
_080222BC: .4byte gUnknown_02024C07
_080222C0: .4byte gBattleMoves
_080222C4: .4byte gUnknown_02024BE6
_080222C8: .4byte gUnknown_02024C08
_080222CC: .4byte gBattleMons
_080222D0: .4byte 0x02000000
_080222D4: .4byte 0x0001600c
_080222D8: .4byte gUnknown_02024C10
	thumb_func_end sub_80217F8

	thumb_func_start atk4A_damageflags
atk4A_damageflags: @ 80222DC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	movs r4, 0
	movs r5, 0
	ldr r2, _08022340 @ =gBattleMoves
	ldr r0, _08022344 @ =gUnknown_02024BE6
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x2]
	mov r8, r0
	ldr r2, _08022348 @ =gBattleMons
	ldr r3, _0802234C @ =gUnknown_02024C08
	ldrb r1, [r3]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x20
	ldrb r0, [r0]
	mov r12, r2
	adds r7, r3, 0
	cmp r0, 0x1A
	bne _08022370
	mov r1, r8
	cmp r1, 0x4
	bne _08022370
	ldr r3, _08022350 @ =byte_2024C06
	strb r0, [r3]
	ldr r2, _08022354 @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x9
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08022358 @ =gUnknown_02024C3C
	ldrb r0, [r7]
	lsls r0, 1
	adds r0, r1
	strh r4, [r0]
	ldr r0, _0802235C @ =gUnknown_02024D1E
	mov r2, r8
	strb r2, [r0, 0x6]
	ldrb r0, [r7]
	ldrb r1, [r3]
	bl sub_81074C4
	b _08022452
	.align 2, 0
_08022340: .4byte gBattleMoves
_08022344: .4byte gUnknown_02024BE6
_08022348: .4byte gBattleMons
_0802234C: .4byte gUnknown_02024C08
_08022350: .4byte byte_2024C06
_08022354: .4byte gUnknown_02024C68
_08022358: .4byte gUnknown_02024C3C
_0802235C: .4byte gUnknown_02024D1E
_08022360:
	ldr r0, _0802236C @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r2, 0x8
	orrs r1, r2
	strb r1, [r0]
	b _08022452
	.align 2, 0
_0802236C: .4byte gUnknown_02024C68
_08022370:
	ldr r1, _0802237C @ =gTypeEffectiveness
	adds r0, r5, r1
	ldrb r0, [r0]
	adds r6, r1, 0
	b _08022432
	.align 2, 0
_0802237C: .4byte gTypeEffectiveness
_08022380:
	adds r0, r5, r6
	ldrb r0, [r0]
	cmp r0, r8
	bne _0802242C
	adds r2, r5, 0x1
	adds r3, r2, r6
	ldrb r1, [r7]
	movs r0, 0x58
	muls r0, r1
	add r0, r12
	adds r0, 0x21
	ldrb r1, [r3]
	adds r3, r2, 0
	ldrb r0, [r0]
	cmp r1, r0
	bne _080223BE
	adds r0, r5, 0x2
	adds r0, r6
	ldrb r1, [r0]
	cmp r1, 0
	beq _08022360
	cmp r1, 0x5
	bne _080223B2
	movs r0, 0x4
	orrs r4, r0
_080223B2:
	cmp r1, 0x14
	bne _080223BE
	movs r0, 0x2
	orrs r4, r0
	lsls r0, r4, 24
	lsrs r4, r0, 24
_080223BE:
	adds r2, r3, r6
	ldrb r1, [r7]
	movs r0, 0x58
	muls r0, r1
	add r0, r12
	adds r1, r0, 0
	adds r1, 0x22
	ldrb r2, [r2]
	ldrb r1, [r1]
	cmp r2, r1
	bne _0802242C
	adds r0, 0x21
	ldrb r1, [r0]
	cmp r1, r2
	beq _080223E6
	adds r0, r5, 0x2
	adds r0, r6
	ldrb r0, [r0]
	cmp r0, 0
	beq _08022360
_080223E6:
	cmp r1, r2
	beq _080223FC
	adds r0, r5, 0x2
	adds r0, r6
	ldrb r0, [r0]
	cmp r0, 0x5
	bne _080223FC
	movs r0, 0x4
	orrs r4, r0
	lsls r0, r4, 24
	lsrs r4, r0, 24
_080223FC:
	adds r2, r3, r6
	ldrb r1, [r7]
	movs r0, 0x58
	muls r0, r1
	add r0, r12
	adds r1, r0, 0
	adds r1, 0x22
	ldrb r2, [r2]
	ldrb r1, [r1]
	cmp r2, r1
	bne _0802242C
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, r2
	beq _0802242C
	adds r0, r5, 0x2
	adds r0, r6
	ldrb r0, [r0]
	cmp r0, 0x14
	bne _0802242C
	movs r0, 0x2
	orrs r4, r0
	lsls r0, r4, 24
	lsrs r4, r0, 24
_0802242C:
	adds r5, 0x3
	adds r0, r5, r6
	ldrb r0, [r0]
_08022432:
	cmp r0, 0xFF
	beq _08022452
	cmp r0, 0xFE
	bne _08022380
	ldrb r1, [r7]
	movs r0, 0x58
	muls r0, r1
	mov r1, r12
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 22
	ands r0, r1
	cmp r0, 0
	beq _0802242C
_08022452:
	ldr r2, _08022500 @ =gBattleMons
	ldr r0, _08022504 @ =gUnknown_02024C08
	mov r8, r0
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x20
	ldrb r6, [r0]
	cmp r6, 0x19
	bne _080224CE
	movs r5, 0x29
	ands r5, r4
	cmp r5, 0
	bne _080224CE
	ldr r0, _08022508 @ =gUnknown_02024C07
	ldrb r0, [r0]
	ldr r7, _0802250C @ =gUnknown_02024BE6
	ldrh r1, [r7]
	bl move_weather_interaction
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x2
	bne _080224CE
	adds r0, r4, 0
	ands r0, r1
	cmp r0, 0
	beq _08022494
	movs r0, 0x6
	ands r4, r0
	cmp r4, 0x6
	bne _080224CE
_08022494:
	ldr r2, _08022510 @ =gBattleMoves
	ldrh r1, [r7]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	beq _080224CE
	ldr r3, _08022514 @ =byte_2024C06
	strb r6, [r3]
	ldr r2, _08022518 @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0802251C @ =gUnknown_02024C3C
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, 1
	adds r0, r1
	strh r5, [r0]
	ldr r1, _08022520 @ =gUnknown_02024D1E
	movs r0, 0x3
	strb r0, [r1, 0x6]
	ldrb r0, [r2]
	ldrb r1, [r3]
	bl sub_81074C4
_080224CE:
	ldr r0, _08022518 @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _080224EC
	ldr r2, _08022524 @ =gUnknown_02024D28
	ldr r0, _08022508 @ =gUnknown_02024C07
	ldrb r1, [r0]
	lsls r1, 4
	adds r1, r2
	ldrb r0, [r1, 0x1]
	movs r2, 0x2
	orrs r0, r2
	strb r0, [r1, 0x1]
_080224EC:
	ldr r1, _08022528 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022500: .4byte gBattleMons
_08022504: .4byte gUnknown_02024C08
_08022508: .4byte gUnknown_02024C07
_0802250C: .4byte gUnknown_02024BE6
_08022510: .4byte gBattleMoves
_08022514: .4byte byte_2024C06
_08022518: .4byte gUnknown_02024C68
_0802251C: .4byte gUnknown_02024C3C
_08022520: .4byte gUnknown_02024D1E
_08022524: .4byte gUnknown_02024D28
_08022528: .4byte gUnknown_02024C10
	thumb_func_end atk4A_damageflags

	thumb_func_start atk4B_cmd4b
atk4B_cmd4b: @ 802252C
	push {r4,lr}
	ldr r4, _08022568 @ =gUnknown_02024A60
	ldr r0, _0802256C @ =gUnknown_02024C07
	ldrb r0, [r0]
	strb r0, [r4]
	ldr r2, _08022570 @ =gUnknown_02024C6C
	ldr r1, _08022574 @ =gBitTable
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	lsls r1, 28
	ldr r0, [r2]
	ands r0, r1
	cmp r0, 0
	bne _0802255A
	movs r0, 0
	movs r1, 0
	bl dp01_build_cmdbuf_x06_a
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_0802255A:
	ldr r1, _08022578 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022568: .4byte gUnknown_02024A60
_0802256C: .4byte gUnknown_02024C07
_08022570: .4byte gUnknown_02024C6C
_08022574: .4byte gBitTable
_08022578: .4byte gUnknown_02024C10
	thumb_func_end atk4B_cmd4b

	thumb_func_start atk4C_switch1
atk4C_switch1: @ 802257C
	push {r4-r6,lr}
	ldr r0, _080225D4 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _080225CC
	ldr r5, _080225D8 @ =gUnknown_02024C10
	ldr r0, [r5]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r4, _080225DC @ =gUnknown_02024A60
	strb r0, [r4]
	ldr r3, _080225E0 @ =gUnknown_02024A6A
	ldrb r0, [r4]
	lsls r1, r0, 1
	adds r1, r3
	ldr r2, _080225E4 @ =0x02000000
	ldr r6, _080225E8 @ =0x00016068
	adds r0, r6
	adds r0, r2
	ldrb r0, [r0]
	strh r0, [r1]
	ldr r1, _080225EC @ =gBitTable
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r3
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldrb r2, [r0]
	movs r0, 0
	movs r1, 0
	bl dp01_build_cmdbuf_x00_a_b_0
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r5]
	adds r0, 0x2
	str r0, [r5]
_080225CC:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080225D4: .4byte gUnknown_02024A64
_080225D8: .4byte gUnknown_02024C10
_080225DC: .4byte gUnknown_02024A60
_080225E0: .4byte gUnknown_02024A6A
_080225E4: .4byte 0x02000000
_080225E8: .4byte 0x00016068
_080225EC: .4byte gBitTable
	thumb_func_end atk4C_switch1

	thumb_func_start sub_80225F0
sub_80225F0: @ 80225F0
	push {r4-r7,lr}
	sub sp, 0x58
	ldr r0, _0802274C @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	beq _080225FE
	b _08022744
_080225FE:
	ldr r0, _08022750 @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r4, _08022754 @ =gUnknown_02024A60
	strb r0, [r4]
	ldr r6, _08022758 @ =gBattleMons
	ldrb r0, [r4]
	movs r5, 0x58
	adds r1, r0, 0
	muls r1, r5
	adds r1, r6
	mov r0, sp
	movs r2, 0x58
	bl memcpy
	ldrb r0, [r4]
	muls r0, r5
	adds r3, r0, r6
	movs r2, 0
	ldr r5, _0802275C @ =gUnknown_02024260
	adds r7, r4, 0
_0802262C:
	adds r0, r3, r2
	ldrb r1, [r4]
	lsls r1, 9
	adds r1, 0x4
	adds r1, r2, r1
	adds r1, r5
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, 0x57
	bls _0802262C
	ldr r4, _08022758 @ =gBattleMons
	ldrb r0, [r7]
	movs r6, 0x58
	adds r2, r0, 0
	muls r2, r6
	adds r2, r4
	ldr r3, _08022760 @ =gBaseStats
	ldrh r1, [r2]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r3
	ldrb r0, [r0, 0x6]
	adds r2, 0x21
	strb r0, [r2]
	ldrb r0, [r7]
	adds r1, r0, 0
	muls r1, r6
	adds r1, r4
	ldrh r2, [r1]
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r3
	ldrb r0, [r0, 0x7]
	adds r1, 0x22
	strb r0, [r1]
	ldrb r0, [r7]
	adds r1, r0, 0
	muls r1, r6
	adds r1, r4
	ldrh r0, [r1]
	ldrb r1, [r1, 0x17]
	lsrs r1, 7
	bl GetAbilityBySpecies
	ldrb r1, [r7]
	muls r1, r6
	adds r1, r4
	adds r1, 0x20
	strb r0, [r1]
	ldrb r0, [r7]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r0, _08022764 @ =gUnknown_02024DBC
	adds r0, 0x29
	adds r0, r2, r0
	ldrb r1, [r0]
	ldr r3, _08022768 @ =gBitTable
	ldr r2, _0802276C @ =gUnknown_02024A6A
	ldrb r5, [r7]
	lsls r0, r5, 1
	adds r0, r2
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	ands r1, r0
	mov r12, r4
	cmp r1, 0
	beq _080226CA
	adds r0, r5, 0
	muls r0, r6
	add r0, r12
	movs r1, 0
	strh r1, [r0, 0x2E]
_080226CA:
	ldr r2, _08022770 @ =gBattleMoves
	ldr r0, _08022774 @ =gUnknown_02024BE6
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0x7F
	bne _08022710
	movs r2, 0
	adds r4, r7, 0
	movs r6, 0x58
	mov r5, r12
	adds r5, 0x18
	add r3, sp, 0x18
_080226EA:
	ldrb r0, [r4]
	adds r1, r0, 0
	muls r1, r6
	adds r1, r2, r1
	adds r1, r5
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r2, 0x1
	cmp r2, 0x7
	ble _080226EA
	ldrb r1, [r7]
	movs r0, 0x58
	muls r0, r1
	mov r1, r12
	adds r1, 0x50
	adds r0, r1
	ldr r1, [sp, 0x50]
	str r1, [r0]
_08022710:
	bl sub_8010B88
	ldr r0, _08022778 @ =0x02000000
	ldr r3, _08022754 @ =gUnknown_02024A60
	ldrb r2, [r3]
	ldr r1, _0802277C @ =0x00016003
	adds r0, r1
	strb r2, [r0]
	ldr r1, _08022780 @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x7
	strb r0, [r1, 0x1]
	strb r2, [r1, 0x2]
	ldr r2, _0802276C @ =gUnknown_02024A6A
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r1, _08022750 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
_08022744:
	add sp, 0x58
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802274C: .4byte gUnknown_02024A64
_08022750: .4byte gUnknown_02024C10
_08022754: .4byte gUnknown_02024A60
_08022758: .4byte gBattleMons
_0802275C: .4byte gUnknown_02024260
_08022760: .4byte gBaseStats
_08022764: .4byte gUnknown_02024DBC
_08022768: .4byte gBitTable
_0802276C: .4byte gUnknown_02024A6A
_08022770: .4byte gBattleMoves
_08022774: .4byte gUnknown_02024BE6
_08022778: .4byte 0x02000000
_0802277C: .4byte 0x00016003
_08022780: .4byte gUnknown_030041C0
	thumb_func_end sub_80225F0

	thumb_func_start sub_8022784
sub_8022784: @ 8022784
	push {r4,r5,lr}
	ldr r0, _0802280C @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _08022806
	ldr r0, _08022810 @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r4, _08022814 @ =gUnknown_02024A60
	strb r0, [r4]
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080227D0
	ldr r0, _08022818 @ =gUnknown_020239F8
	ldrh r1, [r0]
	ldr r0, _0802281C @ =0x00000902
	ands r0, r1
	cmp r0, 0
	bne _080227D0
	ldr r2, _08022820 @ =gBattleMons
	ldrb r1, [r4]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r0, [r0]
	bl SpeciesToNationalPokedexNum
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x2
	bl sub_8090D90
_080227D0:
	ldr r2, _08022824 @ =gUnknown_02024C0C
	ldr r1, _08022828 @ =gBitTable
	ldr r5, _08022814 @ =gUnknown_02024A60
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	ldr r1, _0802282C @ =gUnknown_02024A6A
	ldrb r0, [r5]
	lsls r0, 1
	adds r0, r1
	ldrb r1, [r0]
	ldr r4, _08022810 @ =gUnknown_02024C10
	ldr r0, [r4]
	ldrb r2, [r0, 0x2]
	movs r0, 0
	bl sub_800C704
	ldrb r0, [r5]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r4]
	adds r0, 0x3
	str r0, [r4]
_08022806:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802280C: .4byte gUnknown_02024A64
_08022810: .4byte gUnknown_02024C10
_08022814: .4byte gUnknown_02024A60
_08022818: .4byte gUnknown_020239F8
_0802281C: .4byte 0x00000902
_08022820: .4byte gBattleMons
_08022824: .4byte gUnknown_02024C0C
_08022828: .4byte gBitTable
_0802282C: .4byte gUnknown_02024A6A
	thumb_func_end sub_8022784

	thumb_func_start sub_8022830
sub_8022830: @ 8022830
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r4, _08022894 @ =gUnknown_02024C10
	ldr r0, [r4]
	ldrb r1, [r0, 0x1]
	movs r0, 0x7F
	ands r0, r1
	bl sub_8015150
	ldr r3, _08022898 @ =gUnknown_02024A60
	strb r0, [r3]
	ldr r2, [r4]
	ldrb r1, [r2, 0x1]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _080228A8
	ldr r1, _0802289C @ =gBattleMons
	ldrb r3, [r3]
	movs r0, 0x58
	muls r0, r3
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	ldr r1, _080228A0 @ =0x0400e000
	ands r0, r1
	cmp r0, 0
	bne _0802287C
	ldr r1, _080228A4 @ =gUnknown_02024C98
	lsls r0, r3, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 3
	ands r0, r1
	cmp r0, 0
	beq _080228A8
_0802287C:
	ldrb r1, [r2, 0x2]
	ldrb r0, [r2, 0x3]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x5]
	lsls r0, 24
	orrs r1, r0
	str r1, [r4]
	b _08022A2C
	.align 2, 0
_08022894: .4byte gUnknown_02024C10
_08022898: .4byte gUnknown_02024A60
_0802289C: .4byte gBattleMons
_080228A0: .4byte 0x0400e000
_080228A4: .4byte gUnknown_02024C98
_080228A8:
	ldr r5, _08022934 @ =gUnknown_020239F8
	ldrh r1, [r5]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08022948
	ldr r4, _08022938 @ =gUnknown_02024A60
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _0802293C @ =gPlayerParty
	mov r8, r1
	cmp r0, 0x1
	bne _080228CC
	ldr r0, _08022940 @ =gEnemyParty
	mov r8, r0
_080228CC:
	movs r5, 0
	ldrb r0, [r4]
	bl sub_803FC34
	lsls r0, 24
	lsrs r0, 24
	bl sub_803FBFC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1
	bne _080228E6
	movs r5, 0x3
_080228E6:
	adds r6, r5, 0x3
	cmp r5, r6
	bge _0802292E
	ldr r7, _08022944 @ =gUnknown_02024A6A
_080228EE:
	movs r0, 0x64
	muls r0, r5
	mov r1, r8
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _08022928
	adds r0, r4, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0
	bne _08022928
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _08022928
	ldr r0, _08022938 @ =gUnknown_02024A60
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r7
	ldrh r0, [r0]
	cmp r0, r5
	bne _0802292E
_08022928:
	adds r5, 0x1
	cmp r5, r6
	blt _080228EE
_0802292E:
	cmp r5, r6
	beq _080229FC
	b _08022A24
	.align 2, 0
_08022934: .4byte gUnknown_020239F8
_08022938: .4byte gUnknown_02024A60
_0802293C: .4byte gPlayerParty
_08022940: .4byte gEnemyParty
_08022944: .4byte gUnknown_02024A6A
_08022948:
	ldr r0, _08022978 @ =gUnknown_02024A60
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x1
	bne _08022988
	movs r0, 0x1
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r7, r0, 24
	ldrh r1, [r5]
	adds r0, r4, 0
	ands r0, r1
	cmp r0, 0
	beq _0802297C
	movs r0, 0x3
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r6, r0, 24
	b _0802297E
	.align 2, 0
_08022978: .4byte gUnknown_02024A60
_0802297C:
	adds r6, r7, 0
_0802297E:
	ldr r0, _08022984 @ =gEnemyParty
	mov r8, r0
	b _080229AE
	.align 2, 0
_08022984: .4byte gEnemyParty
_08022988:
	movs r0, 0
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r7, r0, 24
	ldrh r1, [r5]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080229A8
	movs r0, 0x2
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r6, r0, 24
	b _080229AA
_080229A8:
	adds r6, r7, 0
_080229AA:
	ldr r1, _08022A18 @ =gPlayerParty
	mov r8, r1
_080229AE:
	movs r5, 0
_080229B0:
	movs r0, 0x64
	muls r0, r5
	mov r1, r8
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _080229F2
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _080229F2
	adds r0, r4, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0
	bne _080229F2
	ldr r1, _08022A1C @ =gUnknown_02024A6A
	lsls r0, r7, 1
	adds r0, r1
	ldrh r0, [r0]
	cmp r5, r0
	beq _080229F2
	lsls r0, r6, 1
	adds r0, r1
	ldrh r0, [r0]
	cmp r5, r0
	bne _080229F8
_080229F2:
	adds r5, 0x1
	cmp r5, 0x5
	ble _080229B0
_080229F8:
	cmp r5, 0x6
	bne _08022A24
_080229FC:
	ldr r3, _08022A20 @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x2]
	ldrb r0, [r2, 0x3]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x5]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _08022A2C
	.align 2, 0
_08022A18: .4byte gPlayerParty
_08022A1C: .4byte gUnknown_02024A6A
_08022A20: .4byte gUnknown_02024C10
_08022A24:
	ldr r1, _08022A38 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x6
	str r0, [r1]
_08022A2C:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022A38: .4byte gUnknown_02024C10
	thumb_func_end sub_8022830

	thumb_func_start sub_8022A3C
sub_8022A3C: @ 8022A3C
	push {r4,r5,lr}
	sub sp, 0x4
	adds r2, r0, 0
	lsls r2, 24
	lsrs r2, 24
	ldr r4, _08022A84 @ =0x02000000
	ldr r5, _08022A88 @ =gUnknown_02024A60
	ldrb r0, [r5]
	ldr r3, _08022A8C @ =0x00016064
	adds r1, r0, r3
	adds r1, r4
	ldr r3, _08022A90 @ =gUnknown_02024A6A
	lsls r0, 1
	adds r0, r3
	ldrh r0, [r0]
	strb r0, [r1]
	ldrb r1, [r5]
	lsls r0, r1, 1
	adds r0, r1
	ldr r1, _08022A94 @ =0x0001606c
	adds r4, r1
	adds r0, r4
	str r0, [sp]
	movs r0, 0
	movs r1, 0x1
	movs r3, 0
	bl dp01_build_cmdbuf_x16_a_b_c_ptr_d_e_f
	ldrb r0, [r5]
	bl dp01_battle_side_mark_buffer_for_execution
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08022A84: .4byte 0x02000000
_08022A88: .4byte gUnknown_02024A60
_08022A8C: .4byte 0x00016064
_08022A90: .4byte gUnknown_02024A6A
_08022A94: .4byte 0x0001606c
	thumb_func_end sub_8022A3C

	thumb_func_start atk50_openpartyscreen
atk50_openpartyscreen: @ 8022A98
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x4
	movs r7, 0
	movs r0, 0
	mov r9, r0
	ldr r6, _08022B44 @ =gUnknown_02024C10
	ldr r1, [r6]
	ldrb r2, [r1, 0x2]
	ldrb r0, [r1, 0x3]
	lsls r0, 8
	orrs r2, r0
	ldrb r0, [r1, 0x4]
	lsls r0, 16
	orrs r2, r0
	ldrb r0, [r1, 0x5]
	lsls r0, 24
	orrs r2, r0
	mov r8, r2
	ldrb r2, [r1, 0x1]
	adds r0, r2, 0
	mov r12, r6
	cmp r0, 0x5
	beq _08022ACE
	b _08022F74
_08022ACE:
	ldr r0, _08022B48 @ =gUnknown_020239F8
	ldrh r0, [r0]
	movs r1, 0x41
	ands r1, r0
	cmp r1, 0x1
	beq _08022BBC
	ldr r1, _08022B4C @ =gUnknown_02024A60
	strb r7, [r1]
	ldr r0, _08022B50 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r7, r0
	bcc _08022AE8
	b _08022F62
_08022AE8:
	ldr r7, _08022B54 @ =gUnknown_02024C6C
	ldr r6, _08022B58 @ =gBitTable
	adds r4, r1, 0
	ldr r0, _08022B5C @ =gUnknown_02024C0C
	mov r8, r0
_08022AF2:
	ldrb r2, [r4]
	lsls r0, r2, 2
	adds r0, r6
	ldr r1, [r0]
	lsls r1, 28
	ldr r0, [r7]
	ands r0, r1
	cmp r0, 0
	beq _08022B94
	adds r0, r2, 0
	movs r1, 0x6
	movs r2, 0x6
	bl sub_8018018
	lsls r0, 24
	cmp r0, 0
	beq _08022B60
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	mov r2, r8
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r6
	ldr r1, [r0]
	lsls r1, 28
	ldr r0, [r7]
	bics r0, r1
	str r0, [r7]
	movs r0, 0
	movs r1, 0x2
	bl sub_800D1D8
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	b _08022BA2
	.align 2, 0
_08022B44: .4byte gUnknown_02024C10
_08022B48: .4byte gUnknown_020239F8
_08022B4C: .4byte gUnknown_02024A60
_08022B50: .4byte gUnknown_02024A68
_08022B54: .4byte gUnknown_02024C6C
_08022B58: .4byte gBitTable
_08022B5C: .4byte gUnknown_02024C0C
_08022B60:
	ldr r5, _08022B90 @ =gUnknown_02024D68
	ldrb r0, [r4]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r5
	ldrb r0, [r1]
	lsls r0, 25
	cmp r0, 0
	blt _08022BA2
	movs r0, 0x6
	bl sub_8022A3C
	ldrb r1, [r4]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldrb r1, [r0]
	movs r2, 0x40
	orrs r1, r2
	strb r1, [r0]
	b _08022BA2
	.align 2, 0
_08022B90: .4byte gUnknown_02024D68
_08022B94:
	movs r0, 0
	movs r1, 0x2
	bl sub_800D1D8
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_08022BA2:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	ldr r1, _08022BB8 @ =gUnknown_02024A68
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08022AF2
	b _08022F62
	.align 2, 0
_08022BB8: .4byte gUnknown_02024A68
_08022BBC:
	ands r1, r0
	cmp r1, 0
	bne _08022BC4
	b _08022F62
_08022BC4:
	ldr r0, _08022C1C @ =gUnknown_02024C6C
	mov r8, r0
	ldr r0, [r0]
	lsrs r5, r0, 28
	ldr r6, _08022C20 @ =gBitTable
	ldr r0, [r6]
	ands r0, r5
	cmp r0, 0
	beq _08022C7E
	ldr r4, _08022C24 @ =gUnknown_02024A60
	strb r7, [r4]
	movs r0, 0
	movs r1, 0x6
	movs r2, 0x6
	bl sub_8018018
	lsls r0, 24
	cmp r0, 0
	beq _08022C2C
	ldr r2, _08022C28 @ =gUnknown_02024C0C
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r6
	ldr r1, [r0]
	lsls r1, 28
	mov r2, r8
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	movs r0, 0
	bl dp01_build_cmdbuf_x2A_2A_2A_2A
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	b _08022C7E
	.align 2, 0
_08022C1C: .4byte gUnknown_02024C6C
_08022C20: .4byte gBitTable
_08022C24: .4byte gUnknown_02024A60
_08022C28: .4byte gUnknown_02024C0C
_08022C2C:
	ldr r6, _08022C60 @ =gUnknown_02024D68
	ldrb r0, [r4]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r6
	ldrb r0, [r1]
	lsls r0, 25
	cmp r0, 0
	blt _08022C6C
	ldr r0, _08022C64 @ =0x02000000
	ldr r1, _08022C68 @ =0x0001606a
	adds r0, r1
	ldrb r0, [r0]
	bl sub_8022A3C
	ldrb r1, [r4]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrb r1, [r0]
	movs r2, 0x40
	orrs r1, r2
	strb r1, [r0]
	b _08022C7E
	.align 2, 0
_08022C60: .4byte gUnknown_02024D68
_08022C64: .4byte 0x02000000
_08022C68: .4byte 0x0001606a
_08022C6C:
	movs r0, 0
	movs r1, 0x2
	bl sub_800D1D8
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	movs r2, 0x1
	mov r9, r2
_08022C7E:
	ldr r6, _08022CD8 @ =gBitTable
	ldr r0, [r6, 0x8]
	ands r0, r5
	cmp r0, 0
	beq _08022D40
	ldr r0, [r6]
	ands r0, r5
	cmp r0, 0
	bne _08022D40
	ldr r4, _08022CDC @ =gUnknown_02024A60
	movs r0, 0x2
	strb r0, [r4]
	movs r0, 0x2
	movs r1, 0x6
	movs r2, 0x6
	bl sub_8018018
	lsls r0, 24
	cmp r0, 0
	beq _08022CE8
	ldr r2, _08022CE0 @ =gUnknown_02024C0C
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _08022CE4 @ =gUnknown_02024C6C
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r6
	ldr r1, [r0]
	lsls r1, 28
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	movs r0, 0
	bl dp01_build_cmdbuf_x2A_2A_2A_2A
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	b _08022D40
	.align 2, 0
_08022CD8: .4byte gBitTable
_08022CDC: .4byte gUnknown_02024A60
_08022CE0: .4byte gUnknown_02024C0C
_08022CE4: .4byte gUnknown_02024C6C
_08022CE8:
	ldr r6, _08022D1C @ =gUnknown_02024D68
	ldrb r0, [r4]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r6
	ldrb r0, [r1]
	lsls r0, 25
	cmp r0, 0
	blt _08022D28
	ldr r0, _08022D20 @ =0x02000000
	ldr r1, _08022D24 @ =0x00016068
	adds r0, r1
	ldrb r0, [r0]
	bl sub_8022A3C
	ldrb r1, [r4]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrb r1, [r0]
	movs r2, 0x40
	orrs r1, r2
	strb r1, [r0]
	b _08022D40
	.align 2, 0
_08022D1C: .4byte gUnknown_02024D68
_08022D20: .4byte 0x02000000
_08022D24: .4byte 0x00016068
_08022D28:
	movs r0, 0x1
	mov r2, r9
	ands r0, r2
	cmp r0, 0
	bne _08022D40
	movs r0, 0
	movs r1, 0x2
	bl sub_800D1D8
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_08022D40:
	ldr r6, _08022D90 @ =gBitTable
	ldr r0, [r6, 0x4]
	ands r0, r5
	cmp r0, 0
	beq _08022DF6
	ldr r4, _08022D94 @ =gUnknown_02024A60
	movs r0, 0x1
	strb r0, [r4]
	movs r0, 0x1
	movs r1, 0x6
	movs r2, 0x6
	bl sub_8018018
	lsls r0, 24
	cmp r0, 0
	beq _08022DA0
	ldr r2, _08022D98 @ =gUnknown_02024C0C
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _08022D9C @ =gUnknown_02024C6C
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r6
	ldr r1, [r0]
	lsls r1, 28
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	movs r0, 0
	bl dp01_build_cmdbuf_x2A_2A_2A_2A
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	b _08022DF6
	.align 2, 0
_08022D90: .4byte gBitTable
_08022D94: .4byte gUnknown_02024A60
_08022D98: .4byte gUnknown_02024C0C
_08022D9C: .4byte gUnknown_02024C6C
_08022DA0:
	ldr r6, _08022DD4 @ =gUnknown_02024D68
	ldrb r0, [r4]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r6
	ldrb r0, [r1]
	lsls r0, 25
	cmp r0, 0
	blt _08022DE0
	ldr r0, _08022DD8 @ =0x02000000
	ldr r1, _08022DDC @ =0x0001606b
	adds r0, r1
	ldrb r0, [r0]
	bl sub_8022A3C
	ldrb r1, [r4]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrb r1, [r0]
	movs r2, 0x40
	orrs r1, r2
	strb r1, [r0]
	b _08022DF6
	.align 2, 0
_08022DD4: .4byte gUnknown_02024D68
_08022DD8: .4byte 0x02000000
_08022DDC: .4byte 0x0001606b
_08022DE0:
	movs r0, 0
	movs r1, 0x2
	bl sub_800D1D8
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	movs r0, 0x2
	mov r2, r9
	orrs r2, r0
	mov r9, r2
_08022DF6:
	ldr r6, _08022E50 @ =gBitTable
	ldr r0, [r6, 0xC]
	ands r0, r5
	cmp r0, 0
	beq _08022EB8
	ldr r0, [r6, 0x4]
	ands r0, r5
	cmp r0, 0
	bne _08022EB8
	ldr r4, _08022E54 @ =gUnknown_02024A60
	movs r0, 0x3
	strb r0, [r4]
	movs r0, 0x3
	movs r1, 0x6
	movs r2, 0x6
	bl sub_8018018
	lsls r0, 24
	cmp r0, 0
	beq _08022E60
	ldr r2, _08022E58 @ =gUnknown_02024C0C
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _08022E5C @ =gUnknown_02024C6C
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r6
	ldr r1, [r0]
	lsls r1, 28
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	movs r0, 0
	bl dp01_build_cmdbuf_x2A_2A_2A_2A
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	b _08022EB8
	.align 2, 0
_08022E50: .4byte gBitTable
_08022E54: .4byte gUnknown_02024A60
_08022E58: .4byte gUnknown_02024C0C
_08022E5C: .4byte gUnknown_02024C6C
_08022E60:
	ldr r6, _08022E94 @ =gUnknown_02024D68
	ldrb r0, [r4]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r6
	ldrb r0, [r1]
	lsls r0, 25
	cmp r0, 0
	blt _08022EA0
	ldr r0, _08022E98 @ =0x02000000
	ldr r1, _08022E9C @ =0x00016069
	adds r0, r1
	ldrb r0, [r0]
	bl sub_8022A3C
	ldrb r1, [r4]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrb r1, [r0]
	movs r2, 0x40
	orrs r1, r2
	strb r1, [r0]
	b _08022EB8
	.align 2, 0
_08022E94: .4byte gUnknown_02024D68
_08022E98: .4byte 0x02000000
_08022E9C: .4byte 0x00016069
_08022EA0:
	movs r0, 0x2
	mov r2, r9
	ands r2, r0
	cmp r2, 0
	bne _08022EB8
	movs r0, 0
	movs r1, 0x2
	bl sub_800D1D8
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_08022EB8:
	ldr r1, _08022EE8 @ =gUnknown_02024D68
	ldrb r0, [r1]
	lsls r0, 25
	cmp r0, 0
	blt _08022F0C
	adds r0, r1, 0
	adds r0, 0x28
	ldrb r0, [r0]
	lsls r0, 25
	cmp r0, 0
	blt _08022F0C
	cmp r5, 0
	beq _08022F0C
	ldr r0, _08022EEC @ =gUnknown_02024C0C
	ldrb r1, [r0]
	ldr r0, _08022EF0 @ =gBitTable
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _08022EF8
	ldr r1, _08022EF4 @ =gUnknown_02024A60
	movs r0, 0x2
	strb r0, [r1]
	b _08022EFC
	.align 2, 0
_08022EE8: .4byte gUnknown_02024D68
_08022EEC: .4byte gUnknown_02024C0C
_08022EF0: .4byte gBitTable
_08022EF4: .4byte gUnknown_02024A60
_08022EF8:
	ldr r0, _08022F3C @ =gUnknown_02024A60
	strb r1, [r0]
_08022EFC:
	movs r0, 0
	movs r1, 0x2
	bl sub_800D1D8
	ldr r0, _08022F3C @ =gUnknown_02024A60
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
_08022F0C:
	ldr r1, _08022F40 @ =gUnknown_02024D68
	ldrb r0, [r1, 0x14]
	lsls r0, 25
	cmp r0, 0
	blt _08022F62
	adds r0, r1, 0
	adds r0, 0x3C
	ldrb r0, [r0]
	lsls r0, 25
	cmp r0, 0
	blt _08022F62
	cmp r5, 0
	beq _08022F62
	ldr r0, _08022F44 @ =gUnknown_02024C0C
	ldrb r0, [r0]
	ldr r1, _08022F48 @ =gBitTable
	ldr r1, [r1, 0x4]
	ands r0, r1
	cmp r0, 0
	beq _08022F4C
	ldr r1, _08022F3C @ =gUnknown_02024A60
	movs r0, 0x3
	b _08022F50
	.align 2, 0
_08022F3C: .4byte gUnknown_02024A60
_08022F40: .4byte gUnknown_02024D68
_08022F44: .4byte gUnknown_02024C0C
_08022F48: .4byte gBitTable
_08022F4C:
	ldr r1, _08022F6C @ =gUnknown_02024A60
	movs r0, 0x1
_08022F50:
	strb r0, [r1]
	movs r0, 0
	movs r1, 0x2
	bl sub_800D1D8
	ldr r0, _08022F6C @ =gUnknown_02024A60
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
_08022F62:
	ldr r1, _08022F70 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x6
	str r0, [r1]
	b _08023302
	.align 2, 0
_08022F6C: .4byte gUnknown_02024A60
_08022F70: .4byte gUnknown_02024C10
_08022F74:
	cmp r0, 0x6
	beq _08022F7A
	b _08023170
_08022F7A:
	ldr r0, _08022FF0 @ =gUnknown_020239F8
	ldrh r2, [r0]
	movs r0, 0x40
	ands r0, r2
	cmp r0, 0
	beq _08022F88
	b _0802310C
_08022F88:
	movs r0, 0x1
	ands r0, r2
	cmp r0, 0
	bne _08022F92
	b _0802310C
_08022F92:
	ldr r7, _08022FF4 @ =gUnknown_02024C6C
	ldr r0, [r7]
	lsrs r5, r0, 28
	ldr r4, _08022FF8 @ =gBitTable
	ldr r0, [r4, 0x8]
	ands r0, r5
	cmp r0, 0
	beq _0802303A
	ldr r0, [r4]
	ands r0, r5
	cmp r0, 0
	beq _0802303A
	ldr r6, _08022FFC @ =gUnknown_02024A60
	movs r0, 0x2
	strb r0, [r6]
	ldr r0, _08023000 @ =gUnknown_02024260
	ldrb r1, [r0, 0x1]
	movs r0, 0x2
	movs r2, 0x6
	bl sub_8018018
	lsls r0, 24
	cmp r0, 0
	beq _08023008
	ldr r2, _08023004 @ =gUnknown_02024C0C
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r4
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r4
	ldr r1, [r0]
	lsls r1, 28
	ldr r0, [r7]
	bics r0, r1
	str r0, [r7]
	movs r0, 0
	bl dp01_build_cmdbuf_x2A_2A_2A_2A
	ldrb r0, [r6]
	bl dp01_battle_side_mark_buffer_for_execution
	b _0802303A
	.align 2, 0
_08022FF0: .4byte gUnknown_020239F8
_08022FF4: .4byte gUnknown_02024C6C
_08022FF8: .4byte gBitTable
_08022FFC: .4byte gUnknown_02024A60
_08023000: .4byte gUnknown_02024260
_08023004: .4byte gUnknown_02024C0C
_08023008:
	ldr r4, _08023098 @ =gUnknown_02024D68
	ldrb r0, [r6]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r0, [r1]
	lsls r0, 25
	cmp r0, 0
	blt _0802303A
	ldr r0, _0802309C @ =0x02000000
	ldr r1, _080230A0 @ =0x00016068
	adds r0, r1
	ldrb r0, [r0]
	bl sub_8022A3C
	ldrb r1, [r6]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrb r1, [r0]
	movs r2, 0x40
	orrs r1, r2
	strb r1, [r0]
_0802303A:
	ldr r4, _080230A4 @ =gBitTable
	ldr r0, [r4, 0xC]
	ands r0, r5
	cmp r0, 0
	beq _080230EE
	ldr r0, [r4, 0x4]
	ands r5, r0
	cmp r5, 0
	beq _080230EE
	ldr r5, _080230A8 @ =gUnknown_02024A60
	movs r0, 0x3
	strb r0, [r5]
	ldr r0, _080230AC @ =gUnknown_02024260
	ldr r2, _080230B0 @ =0x00000201
	adds r0, r2
	ldrb r1, [r0]
	movs r0, 0x3
	movs r2, 0x6
	bl sub_8018018
	lsls r0, 24
	cmp r0, 0
	beq _080230BC
	ldr r2, _080230B4 @ =gUnknown_02024C0C
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r4
	ldr r0, [r0]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _080230B8 @ =gUnknown_02024C6C
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r4
	ldr r1, [r0]
	lsls r1, 28
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	movs r0, 0
	bl dp01_build_cmdbuf_x2A_2A_2A_2A
	ldrb r0, [r5]
	bl dp01_battle_side_mark_buffer_for_execution
	b _080230EE
	.align 2, 0
_08023098: .4byte gUnknown_02024D68
_0802309C: .4byte 0x02000000
_080230A0: .4byte 0x00016068
_080230A4: .4byte gBitTable
_080230A8: .4byte gUnknown_02024A60
_080230AC: .4byte gUnknown_02024260
_080230B0: .4byte 0x00000201
_080230B4: .4byte gUnknown_02024C0C
_080230B8: .4byte gUnknown_02024C6C
_080230BC:
	ldr r4, _080230FC @ =gUnknown_02024D68
	ldrb r0, [r5]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r0, [r1]
	lsls r0, 25
	cmp r0, 0
	blt _080230EE
	ldr r0, _08023100 @ =0x02000000
	ldr r1, _08023104 @ =0x00016069
	adds r0, r1
	ldrb r0, [r0]
	bl sub_8022A3C
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrb r1, [r0]
	movs r2, 0x40
	orrs r1, r2
	strb r1, [r0]
_080230EE:
	ldr r1, _08023108 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x6
	str r0, [r1]
	mov r12, r1
	b _08023110
	.align 2, 0
_080230FC: .4byte gUnknown_02024D68
_08023100: .4byte 0x02000000
_08023104: .4byte 0x00016069
_08023108: .4byte gUnknown_02024C10
_0802310C:
	adds r0, r1, 0x6
	str r0, [r6]
_08023110:
	ldr r0, _08023160 @ =gUnknown_02024C6C
	ldr r0, [r0]
	lsrs r5, r0, 28
	ldr r1, _08023164 @ =gUnknown_02024C09
	movs r0, 0
	strb r0, [r1]
	ldr r4, _08023168 @ =gBitTable
	ldr r2, [r4]
	ands r2, r5
	ldr r6, _0802316C @ =gUnknown_02024A68
	cmp r2, 0
	bne _0802314C
	adds r7, r6, 0
	ldrb r0, [r6]
	cmp r2, r0
	bcs _0802314C
	adds r3, r1, 0
_08023132:
	ldrb r0, [r3]
	adds r0, 0x1
	strb r0, [r3]
	ldrb r2, [r3]
	lsls r0, r2, 2
	adds r0, r4
	ldr r0, [r0]
	ands r0, r5
	cmp r0, 0
	bne _0802314C
	ldrb r0, [r7]
	cmp r2, r0
	bcc _08023132
_0802314C:
	ldrb r0, [r1]
	ldrb r6, [r6]
	cmp r0, r6
	beq _08023156
	b _08023302
_08023156:
	mov r1, r8
	mov r2, r12
	str r1, [r2]
	b _08023302
	.align 2, 0
_08023160: .4byte gUnknown_02024C6C
_08023164: .4byte gUnknown_02024C09
_08023168: .4byte gBitTable
_0802316C: .4byte gUnknown_02024A68
_08023170:
	movs r0, 0x80
	ands r0, r2
	movs r5, 0x1
	cmp r0, 0
	beq _0802317C
	movs r5, 0
_0802317C:
	movs r0, 0x7F
	ands r0, r2
	bl sub_8015150
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r1, _080231A4 @ =gUnknown_02024D68
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 25
	cmp r0, 0
	bge _080231A8
	ldr r0, [r6]
	adds r0, 0x6
	str r0, [r6]
	b _08023302
	.align 2, 0
_080231A4: .4byte gUnknown_02024D68
_080231A8:
	adds r0, r7, 0
	movs r1, 0x6
	movs r2, 0x6
	bl sub_8018018
	lsls r0, 24
	cmp r0, 0
	beq _080231F8
	ldr r2, _080231E8 @ =gUnknown_02024A60
	strb r7, [r2]
	ldr r3, _080231EC @ =gUnknown_02024C0C
	ldr r4, _080231F0 @ =gBitTable
	ldrb r0, [r2]
	lsls r0, 2
	adds r0, r4
	ldr r0, [r0]
	ldrb r1, [r3]
	orrs r0, r1
	strb r0, [r3]
	ldr r3, _080231F4 @ =gUnknown_02024C6C
	ldrb r0, [r2]
	lsls r0, 2
	adds r0, r4
	ldr r1, [r0]
	lsls r1, 28
	ldr r0, [r3]
	bics r0, r1
	str r0, [r3]
	mov r0, r8
	str r0, [r6]
	b _08023302
	.align 2, 0
_080231E8: .4byte gUnknown_02024A60
_080231EC: .4byte gUnknown_02024C0C
_080231F0: .4byte gBitTable
_080231F4: .4byte gUnknown_02024C6C
_080231F8:
	ldr r4, _080232A0 @ =gUnknown_02024A60
	strb r7, [r4]
	ldr r3, _080232A4 @ =0x02000000
	ldrb r0, [r4]
	ldr r2, _080232A8 @ =0x00016064
	adds r1, r0, r2
	adds r1, r3
	ldr r2, _080232AC @ =gUnknown_02024A6A
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	strb r0, [r1]
	ldrb r1, [r4]
	movs r0, 0x2
	eors r0, r1
	ldr r1, _080232B0 @ =0x00016068
	adds r0, r1
	adds r0, r3
	ldrb r2, [r0]
	ldrb r1, [r4]
	lsls r0, r1, 1
	adds r0, r1
	ldr r1, _080232B4 @ =0x0001606c
	adds r3, r1
	adds r0, r3
	str r0, [sp]
	movs r0, 0
	adds r1, r5, 0
	movs r3, 0
	bl dp01_build_cmdbuf_x16_a_b_c_ptr_d_e_f
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r6]
	adds r0, 0x6
	str r0, [r6]
	ldrb r0, [r4]
	bl battle_get_per_side_status
	lsls r0, 24
	cmp r0, 0
	bne _0802325A
	ldr r1, _080232B8 @ =gUnknown_030042E0
	ldrb r0, [r1, 0x2]
	cmp r0, 0xFE
	bhi _0802325A
	adds r0, 0x1
	strb r0, [r1, 0x2]
_0802325A:
	ldr r0, _080232BC @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _080232C4
	ldr r1, _080232A0 @ =gUnknown_02024A60
	movs r0, 0
	strb r0, [r1]
	ldr r0, _080232C0 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r0, 0
	beq _08023302
	adds r4, r1, 0
_08023276:
	ldrb r0, [r4]
	cmp r0, r7
	beq _0802328A
	movs r0, 0
	movs r1, 0x2
	bl sub_800D1D8
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_0802328A:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	ldr r1, _080232C0 @ =gUnknown_02024A68
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08023276
	b _08023302
	.align 2, 0
_080232A0: .4byte gUnknown_02024A60
_080232A4: .4byte 0x02000000
_080232A8: .4byte 0x00016064
_080232AC: .4byte gUnknown_02024A6A
_080232B0: .4byte 0x00016068
_080232B4: .4byte 0x0001606c
_080232B8: .4byte gUnknown_030042E0
_080232BC: .4byte gUnknown_020239F8
_080232C0: .4byte gUnknown_02024A68
_080232C4:
	adds r0, r7, 0
	bl battle_get_per_side_status
	movs r1, 0x1
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	ldr r4, _08023310 @ =gUnknown_02024A60
	strb r0, [r4]
	ldr r0, _08023314 @ =gUnknown_02024C0C
	ldrb r1, [r0]
	ldr r2, _08023318 @ =gBitTable
	ldrb r3, [r4]
	lsls r0, r3, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _080232F4
	movs r0, 0x2
	eors r3, r0
	strb r3, [r4]
_080232F4:
	movs r0, 0
	movs r1, 0x2
	bl sub_800D1D8
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_08023302:
	add sp, 0x4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023310: .4byte gUnknown_02024A60
_08023314: .4byte gUnknown_02024C0C
_08023318: .4byte gBitTable
	thumb_func_end atk50_openpartyscreen

	thumb_func_start sub_802331C
sub_802331C: @ 802331C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r0, _0802334C @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	beq _0802332C
	b _080234FE
_0802332C:
	ldr r4, _08023350 @ =gUnknown_02024C10
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r7, _08023354 @ =gUnknown_02024A60
	strb r0, [r7]
	ldr r0, [r4]
	ldrb r0, [r0, 0x2]
	cmp r0, 0x1
	beq _080233A0
	cmp r0, 0x1
	bgt _08023358
	cmp r0, 0
	beq _0802335E
	b _080234F6
	.align 2, 0
_0802334C: .4byte gUnknown_02024A64
_08023350: .4byte gUnknown_02024C10
_08023354: .4byte gUnknown_02024A60
_08023358:
	cmp r0, 0x2
	beq _080233BC
	b _080234F6
_0802335E:
	movs r3, 0
	ldr r2, _08023390 @ =gUnknown_02024A68
	ldrb r0, [r2]
	cmp r3, r0
	blt _0802336A
	b _080234F6
_0802336A:
	ldr r0, _08023394 @ =0x02000000
	ldr r1, _08023398 @ =gUnknown_02024260
	movs r5, 0x80
	lsls r5, 2
	adds r4, r2, 0
	ldr r6, _0802339C @ =0x00016068
	adds r2, r0, r6
_08023378:
	ldrb r0, [r1]
	cmp r0, 0x22
	bne _08023382
	ldrb r0, [r1, 0x1]
	strb r0, [r2]
_08023382:
	adds r1, r5
	adds r2, 0x1
	adds r3, 0x1
	ldrb r0, [r4]
	cmp r3, r0
	blt _08023378
	b _080234F6
	.align 2, 0
_08023390: .4byte gUnknown_02024A68
_08023394: .4byte 0x02000000
_08023398: .4byte gUnknown_02024260
_0802339C: .4byte 0x00016068
_080233A0:
	ldr r0, _080233B8 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _080233AE
	b _080234F6
_080233AE:
	ldrb r0, [r7]
	bl sub_8012258
	b _080234F6
	.align 2, 0
_080233B8: .4byte gUnknown_020239F8
_080233BC:
	ldr r1, _08023484 @ =gUnknown_02024D1E
	ldr r4, _08023488 @ =gUnknown_02024260
	ldrb r0, [r7]
	lsls r0, 9
	adds r2, r4, 0x1
	adds r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r6, _0802348C @ =0x02000000
	ldrb r0, [r7]
	ldr r3, _08023490 @ =0x00016068
	adds r1, r0, r3
	adds r1, r6
	lsls r0, 9
	adds r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08023494 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _080234A4
	ldrb r0, [r7]
	lsls r1, r0, 1
	adds r1, r0
	ldr r5, _08023498 @ =0x0001606c
	adds r1, r5
	adds r1, r6
	ldrb r2, [r1]
	movs r0, 0xF
	ands r0, r2
	strb r0, [r1]
	ldrb r0, [r7]
	lsls r1, r0, 1
	adds r1, r0
	adds r1, r5
	adds r1, r6
	lsls r0, 9
	adds r2, r4, 0x2
	mov r12, r2
	add r0, r12
	ldrb r2, [r0]
	movs r3, 0xF0
	adds r0, r3, 0
	ands r0, r2
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldrb r0, [r7]
	lsls r1, r0, 1
	adds r1, r0
	ldr r2, _0802349C @ =0x0001606d
	adds r1, r2
	adds r1, r6
	lsls r0, 9
	adds r4, 0x3
	mov r8, r4
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r7]
	movs r4, 0x2
	eors r0, r4
	lsls r1, r0, 1
	adds r1, r0
	adds r1, r5
	adds r1, r6
	ldrb r2, [r1]
	adds r0, r3, 0
	ands r0, r2
	strb r0, [r1]
	ldrb r0, [r7]
	eors r0, r4
	lsls r1, r0, 1
	adds r1, r0
	adds r1, r5
	adds r1, r6
	ldrb r0, [r7]
	lsls r0, 9
	add r0, r12
	ldrb r0, [r0]
	ands r3, r0
	lsrs r3, 4
	ldrb r0, [r1]
	orrs r3, r0
	strb r3, [r1]
	ldrb r0, [r7]
	eors r4, r0
	lsls r1, r4, 1
	adds r1, r4
	ldr r3, _080234A0 @ =0x0001606e
	adds r1, r3
	adds r1, r6
	ldrb r0, [r7]
	lsls r0, 9
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r1]
	b _080234AA
	.align 2, 0
_08023484: .4byte gUnknown_02024D1E
_08023488: .4byte gUnknown_02024260
_0802348C: .4byte 0x02000000
_08023490: .4byte 0x00016068
_08023494: .4byte gUnknown_020239F8
_08023498: .4byte 0x0001606c
_0802349C: .4byte 0x0001606d
_080234A0: .4byte 0x0001606e
_080234A4:
	ldrb r0, [r7]
	bl sub_8012258
_080234AA:
	ldr r1, _08023508 @ =gUnknown_030041C0
	movs r5, 0xFD
	strb r5, [r1]
	movs r0, 0x6
	strb r0, [r1, 0x1]
	ldr r4, _0802350C @ =gBattleMons
	ldr r3, _08023510 @ =gUnknown_02024C07
	ldrb r0, [r3]
	movs r2, 0x58
	muls r0, r2
	adds r0, r4
	ldrh r0, [r0]
	strb r0, [r1, 0x2]
	ldrb r0, [r3]
	muls r0, r2
	adds r0, r4
	ldrh r0, [r0]
	lsrs r0, 8
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r2, _08023514 @ =gUnknown_03004290
	strb r5, [r2]
	movs r0, 0x7
	strb r0, [r2, 0x1]
	ldr r3, _08023518 @ =gUnknown_02024A60
	ldrb r0, [r3]
	strb r0, [r2, 0x2]
	ldr r1, _0802351C @ =gUnknown_02024260
	ldrb r0, [r3]
	lsls r0, 9
	adds r1, 0x1
	adds r0, r1
	ldrb r0, [r0]
	strb r0, [r2, 0x3]
	movs r0, 0x1
	negs r0, r0
	strb r0, [r2, 0x4]
_080234F6:
	ldr r1, _08023520 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x3
	str r0, [r1]
_080234FE:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023508: .4byte gUnknown_030041C0
_0802350C: .4byte gBattleMons
_08023510: .4byte gUnknown_02024C07
_08023514: .4byte gUnknown_03004290
_08023518: .4byte gUnknown_02024A60
_0802351C: .4byte gUnknown_02024260
_08023520: .4byte gUnknown_02024C10
	thumb_func_end sub_802331C

	thumb_func_start sub_8023524
sub_8023524: @ 8023524
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x4
	ldr r6, _08023630 @ =gUnknown_02024C10
	ldr r0, [r6]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r4, _08023634 @ =gUnknown_02024A60
	strb r0, [r4]
	ldrb r0, [r4]
	bl sub_80157C4
	ldr r2, _08023638 @ =gUnknown_02024C6C
	ldr r1, _0802363C @ =gBitTable
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	lsls r1, 28
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	ldr r2, _08023640 @ =gUnknown_02024D68
	ldrb r0, [r4]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	ldrb r2, [r1]
	movs r0, 0x41
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldrb r0, [r4]
	bl battle_side_get_owner
	ldr r5, _08023644 @ =gUnknown_02024C7A
	lsls r0, 24
	lsrs r0, 23
	adds r0, r5
	ldrh r1, [r0]
	movs r0, 0x80
	lsls r0, 2
	mov r8, r0
	ands r0, r1
	cmp r0, 0
	bne _0802367C
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 23
	adds r0, r5
	ldrh r1, [r0]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _0802367C
	ldr r1, _08023648 @ =gBattleMons
	mov r9, r1
	ldrb r2, [r4]
	movs r7, 0x58
	adds r0, r2, 0
	muls r0, r7
	adds r1, r0, r1
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0x2
	beq _0802367C
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0x2
	beq _0802367C
	adds r0, r1, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x1A
	beq _0802367C
	adds r0, r2, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 23
	adds r0, r5
	ldrh r2, [r0]
	mov r1, r8
	orrs r1, r2
	strh r1, [r0]
	ldrb r0, [r4]
	bl battle_side_get_owner
	ldr r2, _0802364C @ =gUnknown_02024C80
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	ldrb r0, [r1, 0x6]
	movs r1, 0x5
	subs r1, r0
	lsls r1, 25
	lsrs r1, 24
	ldr r5, _08023650 @ =gUnknown_02024BEC
	ldrb r0, [r4]
	muls r0, r7
	add r0, r9
	ldrh r0, [r0, 0x2C]
	bl __divsi3
	str r0, [r5]
	cmp r0, 0
	bne _08023614
	movs r0, 0x1
	str r0, [r5]
_08023614:
	ldr r0, _08023654 @ =0x02000000
	ldrb r1, [r4]
	ldr r2, _08023658 @ =0x00016003
	adds r0, r2
	strb r1, [r0]
	bl b_movescr_stack_push_cursor
	ldr r0, [r6]
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	bne _08023660
	ldr r0, _0802365C @ =gUnknown_081D919F
	str r0, [r6]
	b _080237B6
	.align 2, 0
_08023630: .4byte gUnknown_02024C10
_08023634: .4byte gUnknown_02024A60
_08023638: .4byte gUnknown_02024C6C
_0802363C: .4byte gBitTable
_08023640: .4byte gUnknown_02024D68
_08023644: .4byte gUnknown_02024C7A
_08023648: .4byte gBattleMons
_0802364C: .4byte gUnknown_02024C80
_08023650: .4byte gUnknown_02024BEC
_08023654: .4byte 0x02000000
_08023658: .4byte 0x00016003
_0802365C: .4byte gUnknown_081D919F
_08023660:
	cmp r0, 0x1
	bne _08023670
	ldr r0, _0802366C @ =gUnknown_081D9171
	str r0, [r6]
	b _080237B6
	.align 2, 0
_0802366C: .4byte gUnknown_081D9171
_08023670:
	ldr r0, _08023678 @ =gUnknown_081D91CD
	str r0, [r6]
	b _080237B6
	.align 2, 0
_08023678: .4byte gUnknown_081D91CD
_0802367C:
	ldr r1, _08023754 @ =gBattleMons
	ldr r5, _08023758 @ =gUnknown_02024A60
	ldrb r2, [r5]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x36
	bne _080236A2
	ldr r1, _0802375C @ =gUnknown_02024CA8
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x18]
	movs r2, 0x1
	orrs r1, r2
	strb r1, [r0, 0x18]
_080236A2:
	ldrb r1, [r5]
	movs r0, 0
	str r0, [sp]
	movs r2, 0
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	beq _080236B8
	b _080237B6
_080236B8:
	ldrb r1, [r5]
	movs r0, 0
	movs r2, 0
	bl sub_801A02C
	lsls r0, 24
	cmp r0, 0
	bne _080237B6
	ldrb r0, [r5]
	bl battle_side_get_owner
	ldr r1, _08023760 @ =gUnknown_02024C7A
	lsls r0, 24
	lsrs r0, 23
	adds r0, r1
	ldrh r2, [r0]
	ldr r1, _08023764 @ =0x0000fdff
	ands r1, r2
	strh r1, [r0]
	movs r4, 0
	ldr r0, _08023768 @ =gUnknown_02024A68
	ldrb r3, [r0]
	cmp r4, r3
	bge _08023706
	ldr r6, _0802376C @ =gUnknown_02024A7A
	ldr r3, _08023770 @ =gUnknown_02024A76
	movs r2, 0xC
	adds r1, r0, 0
_080236F0:
	adds r0, r4, r6
	ldrb r0, [r0]
	ldrb r7, [r5]
	cmp r0, r7
	bne _080236FE
	adds r0, r4, r3
	strb r2, [r0]
_080236FE:
	adds r4, 0x1
	ldrb r0, [r1]
	cmp r4, r0
	blt _080236F0
_08023706:
	movs r4, 0
	ldr r0, _08023768 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r4, r0
	bge _08023736
	ldr r5, _08023754 @ =gBattleMons
_08023712:
	lsls r0, r4, 24
	lsrs r0, 24
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 23
	ldr r1, _08023774 @ =0x020160bc
	adds r0, r1
	movs r1, 0x58
	muls r1, r4
	adds r1, r5
	ldrh r1, [r1, 0x28]
	strh r1, [r0]
	adds r4, 0x1
	ldr r0, _08023768 @ =gUnknown_02024A68
	ldrb r0, [r0]
	cmp r4, r0
	blt _08023712
_08023736:
	ldr r0, _08023778 @ =gUnknown_02024C10
	ldr r1, [r0]
	ldrb r1, [r1, 0x1]
	adds r5, r0, 0
	cmp r1, 0x5
	bne _080237B0
	ldr r0, _0802377C @ =gUnknown_02024C6C
	ldr r0, [r0]
	lsrs r4, r0, 28
	ldr r1, _08023780 @ =gUnknown_02024C09
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r2, _08023784 @ =gBitTable
	b _08023796
	.align 2, 0
_08023754: .4byte gBattleMons
_08023758: .4byte gUnknown_02024A60
_0802375C: .4byte gUnknown_02024CA8
_08023760: .4byte gUnknown_02024C7A
_08023764: .4byte 0x0000fdff
_08023768: .4byte gUnknown_02024A68
_0802376C: .4byte gUnknown_02024A7A
_08023770: .4byte gUnknown_02024A76
_08023774: .4byte 0x020160bc
_08023778: .4byte gUnknown_02024C10
_0802377C: .4byte gUnknown_02024C6C
_08023780: .4byte gUnknown_02024C09
_08023784: .4byte gBitTable
_08023788:
	ldr r0, _080237C4 @ =gUnknown_02024A68
	ldrb r3, [r1]
	ldrb r0, [r0]
	cmp r3, r0
	bcs _080237B0
	adds r0, r3, 0x1
	strb r0, [r1]
_08023796:
	ldrb r0, [r1]
	lsls r0, 2
	adds r0, r2
	ldr r3, [r0]
	adds r0, r4, 0
	ands r0, r3
	cmp r0, 0
	beq _08023788
	ldr r0, _080237C8 @ =gUnknown_02024C0C
	ldrb r0, [r0]
	ands r0, r3
	cmp r0, 0
	bne _08023788
_080237B0:
	ldr r0, [r5]
	adds r0, 0x2
	str r0, [r5]
_080237B6:
	add sp, 0x4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080237C4: .4byte gUnknown_02024A68
_080237C8: .4byte gUnknown_02024C0C
	thumb_func_end sub_8023524

	thumb_func_start sub_80237CC
sub_80237CC: @ 80237CC
	push {lr}
	ldr r0, _080237DC @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	bne _080237E0
	movs r0, 0
	b _080237E2
	.align 2, 0
_080237DC: .4byte gUnknown_02024C10
_080237E0:
	movs r0, 0x1
_080237E2:
	bl battle_get_side_with_given_state
	ldr r1, _08023804 @ =gUnknown_02024A60
	strb r0, [r1]
	movs r0, 0
	bl dp01_build_cmdbuf_x08_8_8_8
	ldr r0, _08023804 @ =gUnknown_02024A60
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, _08023808 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08023804: .4byte gUnknown_02024A60
_08023808: .4byte gUnknown_02024C10
	thumb_func_end sub_80237CC

	thumb_func_start atk54_802511C
atk54_802511C: @ 802380C
	push {r4,r5,lr}
	ldr r5, _0802383C @ =gUnknown_02024A60
	ldr r0, _08023840 @ =gUnknown_02024C07
	ldrb r0, [r0]
	strb r0, [r5]
	ldr r4, _08023844 @ =gUnknown_02024C10
	ldr r0, [r4]
	ldrb r1, [r0, 0x1]
	ldrb r0, [r0, 0x2]
	lsls r0, 8
	orrs r1, r0
	movs r0, 0
	bl dp01_build_cmdbuf_x2B_aa_0
	ldrb r0, [r5]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r4]
	adds r0, 0x3
	str r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802383C: .4byte gUnknown_02024A60
_08023840: .4byte gUnknown_02024C07
_08023844: .4byte gUnknown_02024C10
	thumb_func_end atk54_802511C

	thumb_func_start sub_8023848
sub_8023848: @ 8023848
	push {r4,r5,lr}
	ldr r5, _08023878 @ =gUnknown_02024A60
	ldr r0, _0802387C @ =gUnknown_02024C07
	ldrb r0, [r0]
	strb r0, [r5]
	ldr r4, _08023880 @ =gUnknown_02024C10
	ldr r0, [r4]
	ldrb r1, [r0, 0x1]
	ldrb r0, [r0, 0x2]
	lsls r0, 8
	orrs r1, r0
	movs r0, 0
	bl sub_800D074
	ldrb r0, [r5]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r4]
	adds r0, 0x3
	str r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023878: .4byte gUnknown_02024A60
_0802387C: .4byte gUnknown_02024C07
_08023880: .4byte gUnknown_02024C10
	thumb_func_end sub_8023848

	thumb_func_start atk56_8025194
atk56_8025194: @ 8023884
	push {r4,r5,lr}
	ldr r5, _080238AC @ =gUnknown_02024C10
	ldr r0, [r5]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r4, _080238B0 @ =gUnknown_02024A60
	strb r0, [r4]
	movs r0, 0
	bl dp01_build_cmdbuf_x2D_2D_2D_2D
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r5]
	adds r0, 0x2
	str r0, [r5]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080238AC: .4byte gUnknown_02024C10
_080238B0: .4byte gUnknown_02024A60
	thumb_func_end atk56_8025194

	thumb_func_start atk57_80251C4_flee
atk57_80251C4_flee: @ 80238B4
	push {r4,lr}
	movs r0, 0
	bl battle_get_side_with_given_state
	ldr r4, _080238E0 @ =gUnknown_02024A60
	strb r0, [r4]
	ldr r0, _080238E4 @ =gUnknown_02024D26
	ldrb r1, [r0]
	movs r0, 0
	bl dp01_build_cmdbuf_x37_a
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, _080238E8 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080238E0: .4byte gUnknown_02024A60
_080238E4: .4byte gUnknown_02024D26
_080238E8: .4byte gUnknown_02024C10
	thumb_func_end atk57_80251C4_flee

	thumb_func_start atk58_cmd58
atk58_cmd58: @ 80238EC
	push {r4,r5,lr}
	ldr r5, _08023918 @ =gUnknown_02024C10
	ldr r0, [r5]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r4, _0802391C @ =gUnknown_02024A60
	strb r0, [r4]
	movs r0, 0
	movs r1, 0x1
	bl dp01_build_cmdbuf_x06_a
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r5]
	adds r0, 0x2
	str r0, [r5]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023918: .4byte gUnknown_02024C10
_0802391C: .4byte gUnknown_02024A60
	thumb_func_end atk58_cmd58

	thumb_func_start atk59_8025230
atk59_8025230: @ 8023920
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r0, _0802399C @ =gUnknown_02024C10
	ldr r2, [r0]
	ldrb r6, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r6, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r6, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r6, r0
	ldrb r4, [r2, 0x5]
	ldrb r0, [r2, 0x6]
	lsls r0, 8
	orrs r4, r0
	ldrb r0, [r2, 0x7]
	lsls r0, 16
	orrs r4, r0
	ldrb r0, [r2, 0x8]
	lsls r0, 24
	orrs r4, r0
	ldr r0, _080239A0 @ =0x02000000
	ldr r1, _080239A4 @ =0x00016018
	adds r7, r0, r1
	ldrb r1, [r7]
	movs r0, 0x64
	muls r0, r1
	ldr r1, _080239A8 @ =gPlayerParty
	adds r0, r1
	ldrb r1, [r2, 0x9]
	bl sub_803B7C8
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r0, _080239AC @ =0x0000fffe
	cmp r5, r0
	bne _08023992
	mov r9, r7
	mov r8, r5
	movs r7, 0x64
_0802397A:
	mov r3, r9
	ldrb r0, [r3]
	muls r0, r7
	ldr r1, _080239A8 @ =gPlayerParty
	adds r0, r1
	movs r1, 0
	bl sub_803B7C8
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, r8
	beq _0802397A
_08023992:
	cmp r5, 0
	bne _080239B0
	ldr r0, _0802399C @ =gUnknown_02024C10
	str r4, [r0]
	b _08023A58
	.align 2, 0
_0802399C: .4byte gUnknown_02024C10
_080239A0: .4byte 0x02000000
_080239A4: .4byte 0x00016018
_080239A8: .4byte gPlayerParty
_080239AC: .4byte 0x0000fffe
_080239B0:
	ldr r0, _080239C0 @ =0x0000ffff
	cmp r5, r0
	bne _080239C8
	ldr r1, _080239C4 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0xA
	str r0, [r1]
	b _08023A58
	.align 2, 0
_080239C0: .4byte 0x0000ffff
_080239C4: .4byte gUnknown_02024C10
_080239C8:
	movs r0, 0
	bl battle_get_side_with_given_state
	ldr r1, _08023A64 @ =gUnknown_02024A60
	strb r0, [r1]
	ldr r0, _08023A68 @ =gUnknown_02024A6A
	ldrb r2, [r1]
	lsls r1, r2, 1
	adds r1, r0
	ldr r0, _08023A6C @ =0x02000000
	ldr r3, _08023A70 @ =0x00016018
	adds r0, r3
	ldrh r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08023A08
	ldr r3, _08023A74 @ =gBattleMons
	movs r0, 0x58
	muls r2, r0
	adds r0, r3, 0
	adds r0, 0x50
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 14
	ands r0, r1
	cmp r0, 0
	bne _08023A08
	adds r0, r2, r3
	adds r1, r5, 0
	bl GiveMoveToBattleMon
_08023A08:
	ldr r0, _08023A78 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08023A54
	movs r0, 0x2
	bl battle_get_side_with_given_state
	ldr r1, _08023A64 @ =gUnknown_02024A60
	strb r0, [r1]
	ldr r0, _08023A68 @ =gUnknown_02024A6A
	ldrb r2, [r1]
	lsls r1, r2, 1
	adds r1, r0
	ldr r0, _08023A6C @ =0x02000000
	ldr r3, _08023A70 @ =0x00016018
	adds r0, r3
	ldrh r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08023A54
	ldr r3, _08023A74 @ =gBattleMons
	movs r0, 0x58
	muls r2, r0
	adds r0, r3, 0
	adds r0, 0x50
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 14
	ands r0, r1
	cmp r0, 0
	bne _08023A54
	adds r0, r2, r3
	adds r1, r5, 0
	bl GiveMoveToBattleMon
_08023A54:
	ldr r0, _08023A7C @ =gUnknown_02024C10
	str r6, [r0]
_08023A58:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023A64: .4byte gUnknown_02024A60
_08023A68: .4byte gUnknown_02024A6A
_08023A6C: .4byte 0x02000000
_08023A70: .4byte 0x00016018
_08023A74: .4byte gBattleMons
_08023A78: .4byte gUnknown_020239F8
_08023A7C: .4byte gUnknown_02024C10
	thumb_func_end atk59_8025230

	thumb_func_start sub_8023A80
sub_8023A80: @ 8023A80
	push {r4,lr}
	sub sp, 0x4
	movs r0, 0
	str r0, [sp]
	movs r0, 0x18
	movs r1, 0x8
	movs r2, 0x1D
	movs r3, 0xD
	bl sub_802BBD4
	ldr r4, _08023AC8 @ =gUnknown_03004210
	ldr r1, _08023ACC @ =gUnknown_08400D7A
	movs r2, 0x80
	lsls r2, 1
	movs r0, 0x9
	str r0, [sp]
	adds r0, r4, 0
	movs r3, 0x19
	bl InitWindow
	adds r0, r4, 0
	bl sub_8002F44
	ldr r1, _08023AD0 @ =0x0000ffff
	ldr r3, _08023AD4 @ =0x00002d9f
	movs r0, 0x20
	str r0, [sp]
	movs r0, 0
	movs r2, 0xC
	bl sub_814A5C0
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023AC8: .4byte gUnknown_03004210
_08023ACC: .4byte gUnknown_08400D7A
_08023AD0: .4byte 0x0000ffff
_08023AD4: .4byte 0x00002d9f
	thumb_func_end sub_8023A80

	thumb_func_start sub_8023AD8
sub_8023AD8: @ 8023AD8
	push {lr}
	sub sp, 0x4
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0x18
	movs r1, 0x8
	movs r2, 0x1D
	movs r3, 0xD
	bl sub_802BBD4
	bl sub_814A7FC
	add sp, 0x4
	pop {r0}
	bx r0
	thumb_func_end sub_8023AD8

	thumb_func_start sub_8023AF8
sub_8023AF8: @ 8023AF8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x4
	ldr r1, _08023B24 @ =gUnknown_02024A60
	movs r0, 0
	strb r0, [r1]
	ldr r1, _08023B28 @ =0x02000000
	ldr r2, _08023B2C @ =0x0001601a
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r5, r1, 0
	cmp r0, 0x5
	bls _08023B18
	b _08023E5C
_08023B18:
	lsls r0, 2
	ldr r1, _08023B30 @ =_08023B34
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08023B24: .4byte gUnknown_02024A60
_08023B28: .4byte 0x02000000
_08023B2C: .4byte 0x0001601a
_08023B30: .4byte _08023B34
	.align 2, 0
_08023B34:
	.4byte _08023B4C
	.4byte _08023B74
	.4byte _08023C30
	.4byte _08023C84
	.4byte _08023E38
	.4byte _08023E4C
_08023B4C:
	bl sub_8023A80
	ldr r1, _08023B68 @ =0x02000000
	ldr r0, _08023B6C @ =0x0001601a
	adds r1, r0
	ldrb r0, [r1]
	adds r0, 0x1
	movs r2, 0
	strb r0, [r1]
	ldr r0, _08023B70 @ =gUnknown_02024D1E
	strb r2, [r0, 0x1]
	bl sub_802BC6C
	b _08023E5C
	.align 2, 0
_08023B68: .4byte 0x02000000
_08023B6C: .4byte 0x0001601a
_08023B70: .4byte gUnknown_02024D1E
_08023B74:
	ldr r0, _08023BFC @ =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08023B9A
	ldr r4, _08023C00 @ =gUnknown_02024D1E
	ldrb r0, [r4, 0x1]
	cmp r0, 0
	beq _08023B9A
	movs r0, 0x5
	bl PlaySE
	bl nullsub_6
	movs r0, 0
	strb r0, [r4, 0x1]
	bl sub_802BC6C
_08023B9A:
	ldr r0, _08023BFC @ =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08023BC0
	ldr r4, _08023C00 @ =gUnknown_02024D1E
	ldrb r0, [r4, 0x1]
	cmp r0, 0
	bne _08023BC0
	movs r0, 0x5
	bl PlaySE
	bl nullsub_6
	movs r0, 0x1
	strb r0, [r4, 0x1]
	bl sub_802BC6C
_08023BC0:
	ldr r0, _08023BFC @ =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08023C0C
	movs r0, 0x5
	bl PlaySE
	ldr r0, _08023C00 @ =gUnknown_02024D1E
	ldrb r4, [r0, 0x1]
	cmp r4, 0
	bne _08023C1C
	bl sub_8023AD8
	movs r0, 0x1
	negs r0, r0
	str r4, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r1, _08023C04 @ =0x02000000
	ldr r2, _08023C08 @ =0x0001601a
	adds r1, r2
	ldrb r0, [r1]
	adds r0, 0x1
	b _08023E5A
	.align 2, 0
_08023BFC: .4byte gMain
_08023C00: .4byte gUnknown_02024D1E
_08023C04: .4byte 0x02000000
_08023C08: .4byte 0x0001601a
_08023C0C:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _08023C16
	b _08023E5C
_08023C16:
	movs r0, 0x5
	bl PlaySE
_08023C1C:
	ldr r0, _08023C28 @ =0x02000000
	ldr r1, _08023C2C @ =0x0001601a
	adds r0, r1
	movs r1, 0x4
	strb r1, [r0]
	b _08023E5C
	.align 2, 0
_08023C28: .4byte 0x02000000
_08023C2C: .4byte 0x0001601a
_08023C30:
	ldr r0, _08023C68 @ =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08023C3E
	b _08023E5C
_08023C3E:
	ldr r0, _08023C6C @ =gPlayerParty
	ldr r2, _08023C70 @ =0x00016018
	adds r1, r5, r2
	ldrb r1, [r1]
	ldr r2, _08023C74 @ =gPlayerPartyCount
	ldrb r2, [r2]
	subs r2, 0x1
	lsls r2, 24
	lsrs r2, 24
	ldr r3, _08023C78 @ =sub_807AD58
	ldr r4, _08023C7C @ =word_2024E82
	ldrh r4, [r4]
	str r4, [sp]
	bl sub_809D9F0
	ldr r0, _08023C80 @ =0x0001601a
	adds r1, r5, r0
	ldrb r0, [r1]
	adds r0, 0x1
	b _08023E5A
	.align 2, 0
_08023C68: .4byte gPaletteFade
_08023C6C: .4byte gPlayerParty
_08023C70: .4byte 0x00016018
_08023C74: .4byte gPlayerPartyCount
_08023C78: .4byte sub_807AD58
_08023C7C: .4byte word_2024E82
_08023C80: .4byte 0x0001601a
_08023C84:
	ldr r0, _08023CB4 @ =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08023C92
	b _08023E5C
_08023C92:
	ldr r0, _08023CB8 @ =gMain
	ldr r1, [r0, 0x4]
	ldr r0, _08023CBC @ =sub_800F808
	cmp r1, r0
	beq _08023C9E
	b _08023E5C
_08023C9E:
	bl sub_809FA30
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x4
	bne _08023CC8
	ldr r0, _08023CC0 @ =0x02000000
	ldr r1, _08023CC4 @ =0x0001601a
	adds r0, r1
	strb r5, [r0]
	b _08023E5C
	.align 2, 0
_08023CB4: .4byte gPaletteFade
_08023CB8: .4byte gMain
_08023CBC: .4byte sub_800F808
_08023CC0: .4byte 0x02000000
_08023CC4: .4byte 0x0001601a
_08023CC8:
	ldr r2, _08023D08 @ =0x02000000
	mov r9, r2
	ldr r6, _08023D0C @ =0x00016018
	add r6, r9
	ldrb r0, [r6]
	movs r1, 0x64
	mov r8, r1
	mov r2, r8
	muls r2, r0
	adds r0, r2, 0
	ldr r7, _08023D10 @ =gPlayerParty
	adds r0, r7
	adds r1, r5, 0
	adds r1, 0xD
	bl GetMonData
	lsls r0, 16
	lsrs r4, r0, 16
	adds r0, r4, 0
	bl sub_8040A00
	cmp r0, 0
	beq _08023D20
	ldr r0, _08023D14 @ =0x0000013f
	ldr r1, _08023D18 @ =gUnknown_02024A60
	ldrb r1, [r1]
	bl b_std_message
	ldr r1, _08023D1C @ =0x0001601a
	add r1, r9
	movs r0, 0x5
	b _08023E5A
	.align 2, 0
_08023D08: .4byte 0x02000000
_08023D0C: .4byte 0x00016018
_08023D10: .4byte gPlayerParty
_08023D14: .4byte 0x0000013f
_08023D18: .4byte gUnknown_02024A60
_08023D1C: .4byte 0x0001601a
_08023D20:
	ldr r3, _08023E10 @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	ldr r1, _08023E14 @ =gUnknown_03004290
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x2
	strb r0, [r1, 0x1]
	strb r4, [r1, 0x2]
	lsrs r0, r4, 8
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldrb r0, [r6]
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	adds r0, r7
	adds r1, r5, 0
	bl RemoveMonPPBonus
	ldrb r0, [r6]
	mov r2, r8
	muls r2, r0
	adds r0, r2, 0
	adds r0, r7
	ldr r7, _08023E18 @ =word_2024E82
	ldrh r1, [r7]
	adds r2, r5, 0
	bl SetMonMoveSlot
	ldr r0, _08023E1C @ =gUnknown_02024A6A
	ldrh r0, [r0]
	ldrb r6, [r6]
	cmp r0, r6
	bne _08023DB0
	ldr r4, _08023E20 @ =gBattleMons
	ldr r0, [r4, 0x50]
	movs r1, 0x80
	lsls r1, 14
	ands r0, r1
	cmp r0, 0
	bne _08023DB0
	ldr r0, _08023E24 @ =gUnknown_02024CA8
	ldrb r1, [r0, 0x18]
	lsrs r1, 4
	ldr r2, _08023E28 @ =gBitTable
	lsls r0, r5, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _08023DB0
	adds r0, r4, 0
	adds r1, r5, 0
	bl RemoveBattleMonPPBonus
	ldrh r1, [r7]
	adds r0, r4, 0
	adds r2, r5, 0
	bl SetBattleMonMoveSlot
_08023DB0:
	ldr r0, _08023E2C @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08023E5C
	ldr r0, _08023E1C @ =gUnknown_02024A6A
	ldr r1, _08023E30 @ =0x02000000
	ldr r2, _08023E34 @ =0x00016018
	adds r1, r2
	ldrh r0, [r0, 0x4]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08023E5C
	ldr r4, _08023E20 @ =gBattleMons
	movs r1, 0x80
	lsls r1, 1
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 14
	ands r0, r1
	cmp r0, 0
	bne _08023E5C
	ldr r0, _08023E24 @ =gUnknown_02024CA8
	adds r0, 0x50
	ldrb r1, [r0]
	lsrs r1, 4
	ldr r2, _08023E28 @ =gBitTable
	lsls r0, r5, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _08023E5C
	adds r4, 0xB0
	adds r0, r4, 0
	adds r1, r5, 0
	bl RemoveBattleMonPPBonus
	ldr r0, _08023E18 @ =word_2024E82
	ldrh r1, [r0]
	adds r0, r4, 0
	adds r2, r5, 0
	bl SetBattleMonMoveSlot
	b _08023E5C
	.align 2, 0
_08023E10: .4byte gUnknown_02024C10
_08023E14: .4byte gUnknown_03004290
_08023E18: .4byte word_2024E82
_08023E1C: .4byte gUnknown_02024A6A
_08023E20: .4byte gBattleMons
_08023E24: .4byte gUnknown_02024CA8
_08023E28: .4byte gBitTable
_08023E2C: .4byte gUnknown_020239F8
_08023E30: .4byte 0x02000000
_08023E34: .4byte 0x00016018
_08023E38:
	bl sub_8023AD8
	ldr r1, _08023E48 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _08023E5C
	.align 2, 0
_08023E48: .4byte gUnknown_02024C10
_08023E4C:
	ldr r0, _08023E6C @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _08023E5C
	ldr r2, _08023E70 @ =0x0001601a
	adds r1, r5, r2
	movs r0, 0x2
_08023E5A:
	strb r0, [r1]
_08023E5C:
	add sp, 0x4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023E6C: .4byte gUnknown_02024A64
_08023E70: .4byte 0x0001601a
	thumb_func_end sub_8023AF8

	thumb_func_start atk5B_80256E0
atk5B_80256E0: @ 8023E74
	push {r4,r5,lr}
	ldr r0, _08023E88 @ =0x02000000
	ldr r1, _08023E8C @ =0x0001601a
	adds r5, r0, r1
	ldrb r4, [r5]
	cmp r4, 0
	beq _08023E90
	cmp r4, 0x1
	beq _08023EA8
	b _08023F78
	.align 2, 0
_08023E88: .4byte 0x02000000
_08023E8C: .4byte 0x0001601a
_08023E90:
	bl sub_8023A80
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	ldr r0, _08023EA4 @ =gUnknown_02024D1E
	strb r4, [r0, 0x1]
	bl sub_802BC6C
	b _08023F78
	.align 2, 0
_08023EA4: .4byte gUnknown_02024D1E
_08023EA8:
	ldr r0, _08023F2C @ =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08023ECE
	ldr r4, _08023F30 @ =gUnknown_02024D1E
	ldrb r0, [r4, 0x1]
	cmp r0, 0
	beq _08023ECE
	movs r0, 0x5
	bl PlaySE
	bl nullsub_6
	movs r0, 0
	strb r0, [r4, 0x1]
	bl sub_802BC6C
_08023ECE:
	ldr r0, _08023F2C @ =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08023EF4
	ldr r4, _08023F30 @ =gUnknown_02024D1E
	ldrb r0, [r4, 0x1]
	cmp r0, 0
	bne _08023EF4
	movs r0, 0x5
	bl PlaySE
	bl nullsub_6
	movs r0, 0x1
	strb r0, [r4, 0x1]
	bl sub_802BC6C
_08023EF4:
	ldr r0, _08023F2C @ =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08023F4C
	movs r0, 0x5
	bl PlaySE
	ldr r0, _08023F30 @ =gUnknown_02024D1E
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	beq _08023F38
	ldr r3, _08023F34 @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _08023F40
	.align 2, 0
_08023F2C: .4byte gMain
_08023F30: .4byte gUnknown_02024D1E
_08023F34: .4byte gUnknown_02024C10
_08023F38:
	ldr r1, _08023F48 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_08023F40:
	bl sub_8023AD8
	b _08023F78
	.align 2, 0
_08023F48: .4byte gUnknown_02024C10
_08023F4C:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08023F78
	movs r0, 0x5
	bl PlaySE
	ldr r3, _08023F80 @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	bl sub_8023AD8
_08023F78:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023F80: .4byte gUnknown_02024C10
	thumb_func_end atk5B_80256E0

	thumb_func_start atk5C_cmd5c
atk5C_cmd5c: @ 8023F84
	push {r4,lr}
	ldr r4, _08023FF0 @ =gUnknown_02024C10
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r2, _08023FF4 @ =gUnknown_02024A60
	strb r0, [r2]
	ldr r0, _08023FF8 @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _08024008
	ldr r0, _08023FFC @ =gUnknown_02024C6C
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 1
	ands r0, r1
	cmp r0, 0
	beq _08023FD6
	ldr r1, _08024000 @ =gBattleMons
	ldrb r2, [r2]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	beq _08023FD6
	ldr r0, _08024004 @ =gUnknown_02024CA8
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0xA]
	cmp r0, 0
	bne _08024008
_08023FD6:
	movs r0, 0
	bl dp01_build_cmdbuf_x29_29_29_29
	ldr r0, _08023FF4 @ =gUnknown_02024A60
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, _08023FF0 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
	b _0802400E
	.align 2, 0
_08023FF0: .4byte gUnknown_02024C10
_08023FF4: .4byte gUnknown_02024A60
_08023FF8: .4byte gUnknown_02024C68
_08023FFC: .4byte gUnknown_02024C6C
_08024000: .4byte gBattleMons
_08024004: .4byte gUnknown_02024CA8
_08024008:
	ldr r0, [r4]
	adds r0, 0x2
	str r0, [r4]
_0802400E:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end atk5C_cmd5c

	thumb_func_start sub_8024014
sub_8024014: @ 8024014
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	movs r6, 0
	movs r5, 0
	ldr r0, _08024048 @ =gTrainerBattleOpponent
	ldrh r2, [r0]
	movs r1, 0x80
	lsls r1, 3
	cmp r2, r1
	bne _08024058
	ldr r0, _0802404C @ =0x02017000
	adds r1, r0, 0
	adds r1, 0x94
	ldrb r2, [r1]
	ldr r1, _08024050 @ =0xfffff056
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r4, r2, 0
	muls r4, r0
	ldr r0, _08024054 @ =gSaveBlock1 + 0x490
	mov r8, r0
	b _08024140
	.align 2, 0
_08024048: .4byte gTrainerBattleOpponent
_0802404C: .4byte 0x02017000
_08024050: .4byte 0xfffff056
_08024054: .4byte gSaveBlock1 + 0x490
_08024058:
	ldr r2, _08024074 @ =gTrainers
	ldrh r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r3, r0, 3
	adds r4, r3, r2
	ldrb r1, [r4]
	cmp r1, 0x1
	beq _080240AE
	cmp r1, 0x1
	bgt _08024078
	cmp r1, 0
	beq _08024082
	b _080240C4
	.align 2, 0
_08024074: .4byte gTrainers
_08024078:
	cmp r1, 0x2
	beq _08024098
	cmp r1, 0x3
	beq _080240AE
	b _080240C4
_08024082:
	adds r0, r2, 0
	adds r0, 0x24
	adds r0, r3, r0
	ldr r1, [r0]
	adds r0, r4, 0
	adds r0, 0x20
	ldrb r0, [r0]
	lsls r0, 3
	adds r0, r1
	subs r0, 0x8
	b _080240C2
_08024098:
	adds r0, r2, 0
	adds r0, 0x24
	adds r0, r3, r0
	ldr r1, [r0]
	adds r0, r4, 0
	adds r0, 0x20
	ldrb r0, [r0]
	lsls r0, 3
	adds r0, r1
	subs r0, 0x8
	b _080240C2
_080240AE:
	adds r0, r2, 0
	adds r0, 0x24
	adds r0, r3, r0
	ldr r1, [r0]
	adds r0, r4, 0
	adds r0, 0x20
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	subs r0, 0x10
_080240C2:
	ldrb r5, [r0, 0x2]
_080240C4:
	ldr r0, _08024120 @ =gTrainerMoney
	lsls r1, r6, 2
	adds r3, r1, r0
	ldrb r1, [r3]
	mov r12, r0
	lsls r4, r5, 2
	ldr r5, _08024124 @ =0x02000000
	ldr r7, _08024128 @ =gUnknown_020239F8
	ldr r0, _0802412C @ =gSaveBlock1 + 0x490
	mov r8, r0
	cmp r1, 0xFF
	beq _080240FE
	ldr r2, _08024130 @ =gTrainers
	ldr r0, _08024134 @ =gTrainerBattleOpponent
	ldrh r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldrb r2, [r0, 0x1]
	adds r1, r3, 0
_080240EE:
	ldrb r0, [r1]
	cmp r0, r2
	beq _080240FE
	adds r1, 0x4
	adds r6, 0x1
	ldrb r0, [r1]
	cmp r0, 0xFF
	bne _080240EE
_080240FE:
	ldr r1, _08024138 @ =0x00016056
	adds r0, r5, r1
	ldrb r0, [r0]
	adds r3, r4, 0
	muls r3, r0
	lsls r0, r6, 2
	add r0, r12
	ldrb r2, [r0, 0x1]
	ldrh r1, [r7]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0802413C
	lsls r0, r2, 1
	adds r4, r3, 0
	muls r4, r0
	b _08024140
	.align 2, 0
_08024120: .4byte gTrainerMoney
_08024124: .4byte 0x02000000
_08024128: .4byte gUnknown_020239F8
_0802412C: .4byte gSaveBlock1 + 0x490
_08024130: .4byte gTrainers
_08024134: .4byte gTrainerBattleOpponent
_08024138: .4byte 0x00016056
_0802413C:
	adds r4, r3, 0
	muls r4, r2
_08024140:
	mov r0, r8
	adds r1, r4, 0
	bl sub_80B79B8
	ldr r1, _0802418C @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x1
	strb r0, [r1, 0x1]
	movs r0, 0x4
	strb r0, [r1, 0x2]
	movs r0, 0x5
	strb r0, [r1, 0x3]
	strb r4, [r1, 0x4]
	movs r0, 0xFF
	lsls r0, 8
	ands r0, r4
	lsrs r0, 8
	strb r0, [r1, 0x5]
	movs r0, 0xFF
	lsls r0, 16
	ands r0, r4
	lsrs r0, 16
	strb r0, [r1, 0x6]
	lsrs r0, r4, 24
	strb r0, [r1, 0x7]
	movs r0, 0xFF
	strb r0, [r1, 0x8]
	ldr r1, _08024190 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802418C: .4byte gUnknown_030041C0
_08024190: .4byte gUnknown_02024C10
	thumb_func_end sub_8024014

	thumb_func_start atk5E_8025A70
atk5E_8025A70: @ 8024194
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r4, _080241B8 @ =gUnknown_02024C10
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r6, _080241BC @ =gUnknown_02024A60
	strb r0, [r6]
	ldr r5, _080241C0 @ =gUnknown_02024D1E
	ldrb r0, [r5]
	mov r8, r4
	cmp r0, 0
	beq _080241C4
	cmp r0, 0x1
	beq _080241DC
	b _08024230
	.align 2, 0
_080241B8: .4byte gUnknown_02024C10
_080241BC: .4byte gUnknown_02024A60
_080241C0: .4byte gUnknown_02024D1E
_080241C4:
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl dp01_build_cmdbuf_x00_a_b_0
	ldrb r0, [r6]
	bl dp01_battle_side_mark_buffer_for_execution
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	b _08024230
_080241DC:
	ldr r0, _0802423C @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _08024230
	ldrb r0, [r6]
	lsls r0, 9
	ldr r1, _08024240 @ =gUnknown_02024264
	adds r0, r1
	mov r12, r0
	movs r2, 0
	adds r4, r6, 0
	movs r5, 0x58
	ldr r6, _08024244 @ =gUnknown_02024AA4
	adds r7, r6, 0
	subs r7, 0x18
	mov r3, r12
	adds r3, 0xC
_080241FE:
	lsls r1, r2, 1
	ldrb r0, [r4]
	muls r0, r5
	adds r1, r0
	adds r1, r7
	ldrh r0, [r3]
	strh r0, [r1]
	ldrb r0, [r4]
	adds r1, r0, 0
	muls r1, r5
	adds r1, r2, r1
	adds r1, r6
	mov r0, r12
	adds r0, 0x24
	adds r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r3, 0x2
	adds r2, 0x1
	cmp r2, 0x3
	ble _080241FE
	mov r1, r8
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
_08024230:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802423C: .4byte gUnknown_02024A64
_08024240: .4byte gUnknown_02024264
_08024244: .4byte gUnknown_02024AA4
	thumb_func_end atk5E_8025A70

	thumb_func_start atk5F_8025B24
atk5F_8025B24: @ 8024248
	push {lr}
	ldr r0, _08024270 @ =gUnknown_02024A60
	ldr r2, _08024274 @ =gUnknown_02024C07
	ldrb r3, [r2]
	strb r3, [r0]
	ldr r1, _08024278 @ =gUnknown_02024C08
	ldrb r0, [r1]
	strb r0, [r2]
	strb r3, [r1]
	ldr r2, _0802427C @ =gUnknown_02024C6C
	ldr r1, [r2]
	movs r3, 0x80
	lsls r3, 5
	adds r0, r1, 0
	ands r0, r3
	cmp r0, 0
	beq _08024284
	ldr r0, _08024280 @ =0xffffefff
	ands r1, r0
	b _08024286
	.align 2, 0
_08024270: .4byte gUnknown_02024A60
_08024274: .4byte gUnknown_02024C07
_08024278: .4byte gUnknown_02024C08
_0802427C: .4byte gUnknown_02024C6C
_08024280: .4byte 0xffffefff
_08024284:
	orrs r1, r3
_08024286:
	str r1, [r2]
	ldr r1, _08024294 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08024294: .4byte gUnknown_02024C10
	thumb_func_end atk5F_8025B24

	thumb_func_start atk60_cmd60
atk60_cmd60: @ 8024298
	push {lr}
	ldr r0, _080242C0 @ =gUnknown_02024C07
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _080242B2
	ldr r0, _080242C4 @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl sav12_xor_increment
_080242B2:
	ldr r1, _080242C4 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080242C0: .4byte gUnknown_02024C07
_080242C4: .4byte gUnknown_02024C10
	thumb_func_end atk60_cmd60

	thumb_func_start atk61_8025BA4
atk61_8025BA4: @ 80242C8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x30
	ldr r0, _0802432C @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _0802437C
	ldr r0, _08024330 @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r1, _08024334 @ =gUnknown_02024A60
	strb r0, [r1]
	ldrb r0, [r1]
	bl battle_side_get_owner
	lsls r0, 24
	ldr r1, _08024338 @ =gEnemyParty
	mov r8, r1
	cmp r0, 0
	bne _080242FA
	ldr r0, _0802433C @ =gPlayerParty
	mov r8, r0
_080242FA:
	movs r7, 0
	add r6, sp, 0x4
	mov r5, sp
_08024300:
	movs r0, 0x64
	muls r0, r7
	mov r1, r8
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	cmp r0, 0
	beq _08024324
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	movs r1, 0xCE
	lsls r1, 1
	cmp r0, r1
	bne _08024344
_08024324:
	ldr r0, _08024340 @ =0x0000ffff
	strh r0, [r5]
	movs r0, 0
	b _08024356
	.align 2, 0
_0802432C: .4byte gUnknown_02024A64
_08024330: .4byte gUnknown_02024C10
_08024334: .4byte gUnknown_02024A60
_08024338: .4byte gEnemyParty
_0802433C: .4byte gPlayerParty
_08024340: .4byte 0x0000ffff
_08024344:
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	strh r0, [r5]
	adds r0, r4, 0
	movs r1, 0x37
	bl GetMonData
_08024356:
	str r0, [r6]
	adds r6, 0x8
	adds r5, 0x8
	adds r7, 0x1
	cmp r7, 0x5
	ble _08024300
	movs r0, 0
	mov r1, sp
	movs r2, 0x1
	bl dp01_build_cmdbuf_x30_TODO
	ldr r0, _08024388 @ =gUnknown_02024A60
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, _0802438C @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
_0802437C:
	add sp, 0x30
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024388: .4byte gUnknown_02024A60
_0802438C: .4byte gUnknown_02024C10
	thumb_func_end atk61_8025BA4

	thumb_func_start atk62_08025C6C
atk62_08025C6C: @ 8024390
	push {r4,r5,lr}
	ldr r5, _080243B8 @ =gUnknown_02024C10
	ldr r0, [r5]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r4, _080243BC @ =gUnknown_02024A60
	strb r0, [r4]
	movs r0, 0
	bl dp01_build_cmdbuf_x31_31_31_31
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r5]
	adds r0, 0x2
	str r0, [r5]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080243B8: .4byte gUnknown_02024C10
_080243BC: .4byte gUnknown_02024A60
	thumb_func_end atk62_08025C6C

	thumb_func_start atk63_jumptoattack
atk63_jumptoattack: @ 80243C0
	push {r4,lr}
	ldr r0, _080243D8 @ =gUnknown_02024C10
	ldr r1, [r0]
	ldrb r1, [r1, 0x1]
	adds r4, r0, 0
	cmp r1, 0
	beq _080243E4
	ldr r0, _080243DC @ =gUnknown_02024BE6
	ldr r1, _080243E0 @ =gUnknown_02024BEA
	ldrh r1, [r1]
	strh r1, [r0]
	b _080243F2
	.align 2, 0
_080243D8: .4byte gUnknown_02024C10
_080243DC: .4byte gUnknown_02024BE6
_080243E0: .4byte gUnknown_02024BEA
_080243E4:
	ldr r2, _08024410 @ =gUnknown_02024BE8
	ldr r1, _08024414 @ =gUnknown_02024BE6
	ldr r0, _08024418 @ =gUnknown_02024BEA
	ldrh r0, [r0]
	strh r0, [r1]
	strh r0, [r2]
	adds r0, r1, 0
_080243F2:
	ldr r3, _0802441C @ =gUnknown_081D6BBC
	ldr r2, _08024420 @ =gBattleMoves
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024410: .4byte gUnknown_02024BE8
_08024414: .4byte gUnknown_02024BE6
_08024418: .4byte gUnknown_02024BEA
_0802441C: .4byte gUnknown_081D6BBC
_08024420: .4byte gBattleMoves
	thumb_func_end atk63_jumptoattack

	thumb_func_start atk64_statusanimation
atk64_statusanimation: @ 8024424
	push {r4,lr}
	ldr r0, _08024494 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _0802448C
	ldr r0, _08024498 @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r4, _0802449C @ =gUnknown_02024A60
	strb r0, [r4]
	ldr r1, _080244A0 @ =gUnknown_02024C98
	ldrb r2, [r4]
	lsls r0, r2, 2
	adds r0, r1
	ldr r0, [r0]
	ldr r1, _080244A4 @ =0x000400c0
	ands r0, r1
	cmp r0, 0
	bne _08024484
	ldr r0, _080244A8 @ =gUnknown_02024CA8
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0xA]
	cmp r0, 0
	bne _08024484
	ldr r0, _080244AC @ =gUnknown_02024C6C
	ldr r0, [r0]
	movs r1, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08024484
	ldr r1, _080244B0 @ =gBattleMons
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x4C
	adds r0, r1
	ldr r2, [r0]
	movs r0, 0
	movs r1, 0
	bl dp01_build_cmdbuf_x1B_aaaa_b
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_08024484:
	ldr r1, _08024498 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
_0802448C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024494: .4byte gUnknown_02024A64
_08024498: .4byte gUnknown_02024C10
_0802449C: .4byte gUnknown_02024A60
_080244A0: .4byte gUnknown_02024C98
_080244A4: .4byte 0x000400c0
_080244A8: .4byte gUnknown_02024CA8
_080244AC: .4byte gUnknown_02024C6C
_080244B0: .4byte gBattleMons
	thumb_func_end atk64_statusanimation

	thumb_func_start atk65_8025D90
atk65_8025D90: @ 80244B4
	push {r4,r5,lr}
	ldr r0, _0802453C @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _08024534
	ldr r4, _08024540 @ =gUnknown_02024C10
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r5, _08024544 @ =gUnknown_02024A60
	strb r0, [r5]
	ldr r1, [r4]
	ldrb r3, [r1, 0x2]
	ldrb r0, [r1, 0x3]
	lsls r0, 8
	orrs r3, r0
	ldrb r0, [r1, 0x4]
	lsls r0, 16
	orrs r3, r0
	ldrb r0, [r1, 0x5]
	lsls r0, 24
	orrs r3, r0
	ldr r1, _08024548 @ =gUnknown_02024C98
	ldrb r2, [r5]
	lsls r0, r2, 2
	adds r0, r1
	ldr r0, [r0]
	ldr r1, _0802454C @ =0x000400c0
	ands r0, r1
	cmp r0, 0
	bne _0802452C
	ldr r0, _08024550 @ =gUnknown_02024CA8
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0xA]
	cmp r0, 0
	bne _0802452C
	ldr r0, _08024554 @ =gUnknown_02024C6C
	ldr r0, [r0]
	movs r1, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0802452C
	ldr r1, _08024558 @ =gBattleMons
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r2, [r0]
	ands r2, r3
	movs r0, 0
	movs r1, 0x1
	bl dp01_build_cmdbuf_x1B_aaaa_b
	ldrb r0, [r5]
	bl dp01_battle_side_mark_buffer_for_execution
_0802452C:
	ldr r1, _08024540 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x6
	str r0, [r1]
_08024534:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802453C: .4byte gUnknown_02024A64
_08024540: .4byte gUnknown_02024C10
_08024544: .4byte gUnknown_02024A60
_08024548: .4byte gUnknown_02024C98
_0802454C: .4byte 0x000400c0
_08024550: .4byte gUnknown_02024CA8
_08024554: .4byte gUnknown_02024C6C
_08024558: .4byte gBattleMons
	thumb_func_end atk65_8025D90

	thumb_func_start atk66_8025E38
atk66_8025E38: @ 802455C
	push {r4,r5,lr}
	ldr r0, _080245D4 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _080245CE
	ldr r4, _080245D8 @ =gUnknown_02024C10
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r5, _080245DC @ =gUnknown_02024A60
	strb r0, [r5]
	ldr r4, [r4]
	ldrb r2, [r4, 0x3]
	ldrb r0, [r4, 0x4]
	lsls r0, 8
	orrs r2, r0
	ldrb r0, [r4, 0x5]
	lsls r0, 16
	orrs r2, r0
	ldrb r0, [r4, 0x6]
	lsls r0, 24
	orrs r2, r0
	ldr r1, _080245E0 @ =gUnknown_02024C98
	ldrb r3, [r5]
	lsls r0, r3, 2
	adds r0, r1
	ldr r0, [r0]
	ldr r1, _080245E4 @ =0x000400c0
	ands r0, r1
	cmp r0, 0
	bne _080245C6
	ldr r0, _080245E8 @ =gUnknown_02024CA8
	lsls r1, r3, 3
	subs r1, r3
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0xA]
	cmp r0, 0
	bne _080245C6
	ldr r0, _080245EC @ =gUnknown_02024C6C
	ldr r0, [r0]
	movs r1, 0x80
	ands r0, r1
	cmp r0, 0
	bne _080245C6
	ldrb r1, [r4, 0x2]
	movs r0, 0
	bl dp01_build_cmdbuf_x1B_aaaa_b
	ldrb r0, [r5]
	bl dp01_battle_side_mark_buffer_for_execution
_080245C6:
	ldr r1, _080245D8 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x7
	str r0, [r1]
_080245CE:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080245D4: .4byte gUnknown_02024A64
_080245D8: .4byte gUnknown_02024C10
_080245DC: .4byte gUnknown_02024A60
_080245E0: .4byte gUnknown_02024C98
_080245E4: .4byte 0x000400c0
_080245E8: .4byte gUnknown_02024CA8
_080245EC: .4byte gUnknown_02024C6C
	thumb_func_end atk66_8025E38

	thumb_func_start atk67_8025ECC
atk67_8025ECC: @ 80245F0
	push {r4,r5,lr}
	ldr r5, _08024600 @ =gUnknown_02024D1E
	ldrb r4, [r5]
	cmp r4, 0
	beq _08024604
	cmp r4, 0x1
	beq _08024616
	b _08024696
	.align 2, 0
_08024600: .4byte gUnknown_02024D1E
_08024604:
	bl sub_8023A80
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	strb r4, [r5, 0x1]
	bl sub_802BC6C
	b _08024696
_08024616:
	ldr r0, _08024674 @ =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0802463A
	ldrb r0, [r5, 0x1]
	cmp r0, 0
	beq _0802463A
	movs r0, 0x5
	bl PlaySE
	bl nullsub_6
	movs r0, 0
	strb r0, [r5, 0x1]
	bl sub_802BC6C
_0802463A:
	ldr r0, _08024674 @ =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08024660
	ldr r4, _08024678 @ =gUnknown_02024D1E
	ldrb r0, [r4, 0x1]
	cmp r0, 0
	bne _08024660
	movs r0, 0x5
	bl PlaySE
	bl nullsub_6
	movs r0, 0x1
	strb r0, [r4, 0x1]
	bl sub_802BC6C
_08024660:
	ldr r0, _08024674 @ =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0802467C
	ldr r1, _08024678 @ =gUnknown_02024D1E
	movs r0, 0x1
	strb r0, [r1, 0x1]
	b _08024684
	.align 2, 0
_08024674: .4byte gMain
_08024678: .4byte gUnknown_02024D1E
_0802467C:
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08024696
_08024684:
	movs r0, 0x5
	bl PlaySE
	bl sub_8023AD8
	ldr r1, _0802469C @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
_08024696:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802469C: .4byte gUnknown_02024C10
	thumb_func_end atk67_8025ECC

	thumb_func_start sub_80246A0
sub_80246A0: @ 80246A0
	push {r4,r5,lr}
	movs r1, 0
	ldr r2, _080246CC @ =gUnknown_02024A68
	ldr r5, _080246D0 @ =gUnknown_02024C10
	ldrb r0, [r2]
	cmp r1, r0
	bge _080246BE
	ldr r4, _080246D4 @ =gUnknown_02024A76
	movs r3, 0xC
_080246B2:
	adds r0, r1, r4
	strb r3, [r0]
	adds r1, 0x1
	ldrb r0, [r2]
	cmp r1, r0
	blt _080246B2
_080246BE:
	ldr r0, [r5]
	adds r0, 0x1
	str r0, [r5]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080246CC: .4byte gUnknown_02024A68
_080246D0: .4byte gUnknown_02024C10
_080246D4: .4byte gUnknown_02024A76
	thumb_func_end sub_80246A0

	thumb_func_start atk69_8025FE0
atk69_8025FE0: @ 80246D8
	push {r4-r7,lr}
	ldr r7, _08024700 @ =gBattleMons
	ldr r6, _08024704 @ =gUnknown_02024C08
	ldrb r2, [r6]
	movs r5, 0x58
	adds r0, r2, 0
	muls r0, r5
	adds r1, r0, r7
	ldrh r0, [r1, 0x2E]
	cmp r0, 0xAF
	bne _0802470C
	ldr r1, _08024708 @ =gEnigmaBerries
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r4, [r0, 0x7]
	ldrb r6, [r0, 0x1A]
	b _08024726
	.align 2, 0
_08024700: .4byte gBattleMons
_08024704: .4byte gUnknown_02024C08
_08024708: .4byte gEnigmaBerries
_0802470C:
	ldrh r0, [r1, 0x2E]
	bl ItemId_GetHoldEffect
	lsls r0, 24
	lsrs r4, r0, 24
	ldrb r0, [r6]
	muls r0, r5
	adds r0, r7
	ldrh r0, [r0, 0x2E]
	bl ItemId_GetHoldEffectParam
	lsls r0, 24
	lsrs r6, r0, 24
_08024726:
	ldr r1, _080247E8 @ =gUnknown_02024C0B
	ldr r5, _080247EC @ =gUnknown_02024C08
	ldrb r0, [r5]
	strb r0, [r1]
	cmp r4, 0x27
	bne _08024764
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, r6
	bcs _08024764
	ldrb r0, [r5]
	movs r1, 0x27
	bl sub_81074F8
	ldr r2, _080247F0 @ =gUnknown_02024D68
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r2, 0x80
	orrs r1, r2
	strb r1, [r0]
_08024764:
	ldr r2, _080247F4 @ =gBattleMons
	ldr r3, _080247EC @ =gUnknown_02024C08
	ldrb r4, [r3]
	movs r0, 0x58
	muls r0, r4
	adds r1, r2, 0
	adds r1, 0x50
	adds r0, r1
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 17
	ands r1, r0
	adds r5, r2, 0
	cmp r1, 0
	bne _08024834
	ldr r2, _080247F8 @ =gBattleMoves
	ldr r0, _080247FC @ =gUnknown_02024BE6
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0x65
	beq _080247B6
	ldr r0, _08024800 @ =gUnknown_02024D28
	lsls r1, r4, 4
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 30
	cmp r0, 0
	blt _080247B6
	ldr r0, _080247F0 @ =gUnknown_02024D68
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1]
	lsrs r0, 7
	cmp r0, 0
	beq _08024834
_080247B6:
	ldrb r0, [r3]
	movs r4, 0x58
	muls r0, r4
	adds r0, r5
	ldrh r1, [r0, 0x28]
	ldr r2, _08024804 @ =gUnknown_02024BEC
	ldr r0, [r2]
	cmp r1, r0
	bgt _08024834
	subs r0, r1, 0x1
	str r0, [r2]
	ldr r1, _08024800 @ =gUnknown_02024D28
	ldrb r3, [r3]
	lsls r0, r3, 4
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	cmp r0, 0
	bge _0802480C
	ldr r0, _08024808 @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r2, 0x40
	orrs r1, r2
	strb r1, [r0]
	b _08024834
	.align 2, 0
_080247E8: .4byte gUnknown_02024C0B
_080247EC: .4byte gUnknown_02024C08
_080247F0: .4byte gUnknown_02024D68
_080247F4: .4byte gBattleMons
_080247F8: .4byte gBattleMoves
_080247FC: .4byte gUnknown_02024BE6
_08024800: .4byte gUnknown_02024D28
_08024804: .4byte gUnknown_02024BEC
_08024808: .4byte gUnknown_02024C68
_0802480C:
	ldr r0, _08024844 @ =gUnknown_02024D68
	lsls r1, r3, 2
	adds r1, r3
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1]
	lsrs r0, 7
	cmp r0, 0
	beq _08024834
	ldr r2, _08024848 @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0802484C @ =gUnknown_02024C04
	adds r0, r3, 0
	muls r0, r4
	adds r0, r5
	ldrh r0, [r0, 0x2E]
	strh r0, [r1]
_08024834:
	ldr r1, _08024850 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024844: .4byte gUnknown_02024D68
_08024848: .4byte gUnknown_02024C68
_0802484C: .4byte gUnknown_02024C04
_08024850: .4byte gUnknown_02024C10
	thumb_func_end atk69_8025FE0

	thumb_func_start atk6A_stash_item_for_side
atk6A_stash_item_for_side: @ 8024854
	push {r4-r6,lr}
	sub sp, 0x4
	ldr r6, _080248B0 @ =gUnknown_02024C10
	ldr r0, [r6]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r5, _080248B4 @ =gUnknown_02024A60
	strb r0, [r5]
	ldrb r4, [r5]
	lsls r1, r4, 1
	ldr r0, _080248B8 @ =0x020160cc
	adds r1, r0
	ldr r2, _080248BC @ =gBattleMons
	movs r3, 0x58
	adds r0, r4, 0
	muls r0, r3
	adds r0, r2
	ldrh r0, [r0, 0x2E]
	strh r0, [r1]
	ldrb r0, [r5]
	muls r0, r3
	adds r0, r2
	movs r1, 0
	strh r1, [r0, 0x2E]
	ldrb r0, [r5]
	muls r0, r3
	adds r2, 0x2E
	adds r0, r2
	str r0, [sp]
	movs r0, 0
	movs r1, 0x2
	movs r2, 0
	movs r3, 0x2
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r5]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r6]
	adds r0, 0x2
	str r0, [r6]
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080248B0: .4byte gUnknown_02024C10
_080248B4: .4byte gUnknown_02024A60
_080248B8: .4byte 0x020160cc
_080248BC: .4byte gBattleMons
	thumb_func_end atk6A_stash_item_for_side

	thumb_func_start sub_80248C0
sub_80248C0: @ 80248C0
	ldr r1, _080248EC @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x7
	strb r0, [r1, 0x1]
	ldr r2, _080248F0 @ =gUnknown_02024C07
	ldrb r0, [r2]
	strb r0, [r1, 0x2]
	ldr r3, _080248F4 @ =gUnknown_02024A6A
	ldrb r0, [r2]
	lsls r0, 1
	adds r0, r3
	ldrh r0, [r0]
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r1, _080248F8 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	bx lr
	.align 2, 0
_080248EC: .4byte gUnknown_030041C0
_080248F0: .4byte gUnknown_02024C07
_080248F4: .4byte gUnknown_02024A6A
_080248F8: .4byte gUnknown_02024C10
	thumb_func_end sub_80248C0

	thumb_func_start sub_80248FC
sub_80248FC: @ 80248FC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	movs r1, 0
	movs r7, 0
	ldr r0, _08024928 @ =0x02000000
	mov r10, r0
	ldr r4, _0802492C @ =0x0001609c
	add r4, r10
	ldrb r0, [r4]
	cmp r0, 0x1
	bne _0802491C
	b _08024AF4
_0802491C:
	cmp r0, 0x1
	bgt _08024930
	cmp r0, 0
	beq _0802493E
	b _08024C38
	.align 2, 0
_08024928: .4byte 0x02000000
_0802492C: .4byte 0x0001609c
_08024930:
	cmp r0, 0x2
	bne _08024936
	b _08024C04
_08024936:
	cmp r0, 0x3
	bne _0802493C
	b _08024C30
_0802493C:
	b _08024C38
_0802493E:
	str r1, [sp]
	movs r0, 0xB
	movs r1, 0
	movs r2, 0x1D
	movs r3, 0x7
	bl sub_802BBD4
	ldr r0, _0802499C @ =gStringVar4
	ldr r1, _080249A0 @ =gUnknown_08400D9F
	bl StringCopy
	adds r5, r0, 0
	movs r1, 0
	mov r8, r1
_0802495A:
	movs r2, 0
	mov r9, r2
	ldr r0, _080249A4 @ =gUnknown_0840165C
	mov r1, r8
	lsls r4, r1, 2
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r5, 0
	bl StringAppend
	adds r5, r0, 0
	ldr r0, _080249A8 @ =0x02000000
	ldr r2, _080249AC @ =0x00016018
	adds r0, r2
	ldrb r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, _080249B0 @ =gPlayerParty
	adds r0, r1
	ldr r1, _080249B4 @ =gLevelUpStatBoxStats
	add r1, r8
	ldrb r1, [r1]
	bl GetMonData
	lsls r0, 16
	lsrs r1, r0, 16
	mov r0, r8
	cmp r0, 0x5
	bhi _08024A1A
	ldr r0, _080249B8 @ =_080249BC
	adds r0, r4, r0
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802499C: .4byte gStringVar4
_080249A0: .4byte gUnknown_08400D9F
_080249A4: .4byte gUnknown_0840165C
_080249A8: .4byte 0x02000000
_080249AC: .4byte 0x00016018
_080249B0: .4byte gPlayerParty
_080249B4: .4byte gLevelUpStatBoxStats
_080249B8: .4byte _080249BC
	.align 2, 0
_080249BC:
	.4byte _080249D4
	.4byte _080249E0
	.4byte _080249EC
	.4byte _080249F8
	.4byte _08024A04
	.4byte _08024A10
_080249D4:
	ldr r0, _080249DC @ =0x02017180
	ldrh r0, [r0]
	b _08024A14
	.align 2, 0
_080249DC: .4byte 0x02017180
_080249E0:
	ldr r0, _080249E8 @ =0x02017180
	ldrh r0, [r0, 0x8]
	b _08024A14
	.align 2, 0
_080249E8: .4byte 0x02017180
_080249EC:
	ldr r0, _080249F4 @ =0x02017180
	ldrh r0, [r0, 0x2]
	b _08024A14
	.align 2, 0
_080249F4: .4byte 0x02017180
_080249F8:
	ldr r0, _08024A00 @ =0x02017180
	ldrh r0, [r0, 0xA]
	b _08024A14
	.align 2, 0
_08024A00: .4byte 0x02017180
_08024A04:
	ldr r0, _08024A0C @ =0x02017180
	ldrh r0, [r0, 0x4]
	b _08024A14
	.align 2, 0
_08024A0C: .4byte 0x02017180
_08024A10:
	ldr r0, _08024A54 @ =0x02017180
	ldrh r0, [r0, 0x6]
_08024A14:
	subs r0, r1, r0
	lsls r0, 16
	lsrs r7, r0, 16
_08024A1A:
	lsls r0, r7, 16
	asrs r0, 16
	cmp r0, 0
	bge _08024A2C
	negs r0, r0
	lsls r0, 16
	lsrs r7, r0, 16
	movs r1, 0x1
	add r9, r1
_08024A2C:
	movs r0, 0xFC
	strb r0, [r5]
	movs r0, 0x13
	strb r0, [r5, 0x1]
	movs r1, 0x1
	mov r2, r8
	ands r1, r2
	lsls r0, r1, 3
	adds r0, r1
	adds r0, 0x5
	lsls r0, 3
	adds r0, 0x6
	strb r0, [r5, 0x2]
	adds r5, 0x3
	mov r0, r9
	cmp r0, 0
	beq _08024A5C
	ldr r1, _08024A58 @ =gUnknown_08400DAC
	b _08024A5E
	.align 2, 0
_08024A54: .4byte 0x02017180
_08024A58: .4byte gUnknown_08400DAC
_08024A5C:
	ldr r1, _08024AA4 @ =gUnknown_08400DAA
_08024A5E:
	adds r0, r5, 0
	bl StringCopy
	adds r5, r0, 0
	movs r6, 0xFC
	strb r6, [r5]
	movs r4, 0x14
	strb r4, [r5, 0x1]
	movs r0, 0x6
	strb r0, [r5, 0x2]
	adds r5, 0x3
	lsls r1, r7, 16
	asrs r1, 16
	adds r0, r5, 0
	movs r2, 0x1
	movs r3, 0x2
	bl ConvertIntToDecimalStringN
	adds r5, r0, 0
	strb r6, [r5]
	strb r4, [r5, 0x1]
	movs r0, 0
	strb r0, [r5, 0x2]
	adds r5, 0x3
	movs r0, 0x1
	mov r1, r8
	ands r0, r1
	cmp r0, 0
	beq _08024AA8
	movs r0, 0xFE
	strb r0, [r5]
	movs r0, 0xFF
	strb r0, [r5, 0x1]
	adds r5, 0x1
	b _08024AB8
	.align 2, 0
_08024AA4: .4byte gUnknown_08400DAA
_08024AA8:
	strb r6, [r5]
	movs r0, 0x11
	strb r0, [r5, 0x1]
	movs r0, 0x8
	strb r0, [r5, 0x2]
	adds r5, 0x3
	movs r0, 0xFF
	strb r0, [r5]
_08024AB8:
	movs r2, 0x1
	add r8, r2
	mov r0, r8
	cmp r0, 0x5
	bgt _08024AC4
	b _0802495A
_08024AC4:
	ldr r4, _08024AE4 @ =gUnknown_03004210
	ldr r1, _08024AE8 @ =gStringVar4
	adds r2, 0xFF
	movs r0, 0x1
	str r0, [sp]
	adds r0, r4, 0
	movs r3, 0xC
	bl InitWindow
	adds r0, r4, 0
	bl sub_8002F44
	ldr r1, _08024AEC @ =0x02000000
	ldr r2, _08024AF0 @ =0x0001609c
	adds r1, r2
	b _08024BEA
	.align 2, 0
_08024AE4: .4byte gUnknown_03004210
_08024AE8: .4byte gStringVar4
_08024AEC: .4byte 0x02000000
_08024AF0: .4byte 0x0001609c
_08024AF4:
	ldr r0, _08024B94 @ =gMain
	ldrh r0, [r0, 0x2E]
	cmp r0, 0
	bne _08024AFE
	b _08024C38
_08024AFE:
	movs r0, 0x5
	bl PlaySE
	ldr r0, _08024B98 @ =gStringVar4
	ldr r1, _08024B9C @ =gUnknown_08400D9F
	bl StringCopy
	adds r5, r0, 0
	movs r0, 0
	mov r8, r0
	mov r9, r0
	movs r6, 0xFC
	movs r7, 0x14
	ldr r1, _08024BA0 @ =0x00016018
	add r10, r1
_08024B1C:
	ldr r1, _08024BA4 @ =gUnknown_0840165C
	mov r2, r8
	lsls r0, r2, 2
	adds r0, r1
	ldr r1, [r0]
	adds r0, r5, 0
	bl StringAppend
	adds r5, r0, 0
	mov r0, r10
	ldrb r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, _08024BA8 @ =gPlayerParty
	adds r0, r1
	ldr r1, _08024BAC @ =gLevelUpStatBoxStats
	add r1, r8
	ldrb r1, [r1]
	bl GetMonData
	adds r1, r0, 0
	strb r6, [r5]
	movs r0, 0x13
	strb r0, [r5, 0x1]
	movs r4, 0x1
	mov r2, r8
	ands r4, r2
	lsls r0, r4, 3
	adds r0, r4
	adds r0, 0x5
	lsls r0, 3
	adds r0, 0x6
	strb r0, [r5, 0x2]
	adds r5, 0x3
	strb r6, [r5]
	strb r7, [r5, 0x1]
	movs r0, 0x6
	strb r0, [r5, 0x2]
	adds r5, 0x3
	lsls r1, 16
	asrs r1, 16
	adds r0, r5, 0
	movs r2, 0x1
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	adds r5, r0, 0
	strb r6, [r5]
	strb r7, [r5, 0x1]
	mov r0, r9
	strb r0, [r5, 0x2]
	adds r5, 0x3
	cmp r4, 0
	beq _08024BB0
	movs r0, 0xFE
	strb r0, [r5]
	movs r0, 0xFF
	strb r0, [r5, 0x1]
	adds r5, 0x1
	b _08024BC0
	.align 2, 0
_08024B94: .4byte gMain
_08024B98: .4byte gStringVar4
_08024B9C: .4byte gUnknown_08400D9F
_08024BA0: .4byte 0x00016018
_08024BA4: .4byte gUnknown_0840165C
_08024BA8: .4byte gPlayerParty
_08024BAC: .4byte gLevelUpStatBoxStats
_08024BB0:
	strb r6, [r5]
	movs r0, 0x11
	strb r0, [r5, 0x1]
	movs r0, 0x8
	strb r0, [r5, 0x2]
	adds r5, 0x3
	movs r0, 0xFF
	strb r0, [r5]
_08024BC0:
	movs r1, 0x1
	add r8, r1
	mov r2, r8
	cmp r2, 0x5
	ble _08024B1C
	ldr r4, _08024BF4 @ =gUnknown_03004210
	ldr r1, _08024BF8 @ =gStringVar4
	movs r2, 0x80
	lsls r2, 1
	movs r0, 0x1
	str r0, [sp]
	adds r0, r4, 0
	movs r3, 0xC
	bl InitWindow
	adds r0, r4, 0
	bl sub_8002F44
	ldr r1, _08024BFC @ =0x02000000
	ldr r0, _08024C00 @ =0x0001609c
	adds r1, r0
_08024BEA:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _08024C38
	.align 2, 0
_08024BF4: .4byte gUnknown_03004210
_08024BF8: .4byte gStringVar4
_08024BFC: .4byte 0x02000000
_08024C00: .4byte 0x0001609c
_08024C04:
	ldr r0, _08024C2C @ =gMain
	ldrh r0, [r0, 0x2E]
	cmp r0, 0
	beq _08024C38
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0xB
	movs r1, 0
	movs r2, 0x1D
	movs r3, 0x7
	bl sub_802BBD4
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	b _08024C38
	.align 2, 0
_08024C2C: .4byte gMain
_08024C30:
	ldr r1, _08024C48 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
_08024C38:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024C48: .4byte gUnknown_02024C10
	thumb_func_end sub_80248FC

	thumb_func_start sub_8024C4C
sub_8024C4C: @ 8024C4C
	push {lr}
	bl sub_80156DC
	ldr r1, _08024C60 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08024C60: .4byte gUnknown_02024C10
	thumb_func_end sub_8024C4C

	thumb_func_start atk6E_state0_side_becomes_attacker
atk6E_state0_side_becomes_attacker: @ 8024C64
	push {lr}
	movs r0, 0
	bl battle_get_side_with_given_state
	ldr r1, _08024C7C @ =gUnknown_02024C07
	strb r0, [r1]
	ldr r1, _08024C80 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08024C7C: .4byte gUnknown_02024C07
_08024C80: .4byte gUnknown_02024C10
	thumb_func_end atk6E_state0_side_becomes_attacker

	thumb_func_start atk6F_8026810
atk6F_8026810: @ 8024C84
	push {r4,r5,lr}
	ldr r5, _08024CB0 @ =gUnknown_02024C10
	ldr r0, [r5]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r4, _08024CB4 @ =gUnknown_02024A60
	strb r0, [r4]
	movs r0, 0
	movs r1, 0
	bl dp01_build_cmdbuf_x33_a_33_33
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r5]
	adds r0, 0x2
	str r0, [r5]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08024CB0: .4byte gUnknown_02024C10
_08024CB4: .4byte gUnknown_02024A60
	thumb_func_end atk6F_8026810

	thumb_func_start atk70_record_ability_usage_of_side
atk70_record_ability_usage_of_side: @ 8024CB8
	push {r4,lr}
	ldr r4, _08024CE0 @ =gUnknown_02024C10
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r1, _08024CE4 @ =gUnknown_02024A60
	strb r0, [r1]
	ldrb r0, [r1]
	ldr r1, _08024CE8 @ =byte_2024C06
	ldrb r1, [r1]
	bl sub_81074C4
	ldr r0, [r4]
	adds r0, 0x1
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024CE0: .4byte gUnknown_02024C10
_08024CE4: .4byte gUnknown_02024A60
_08024CE8: .4byte byte_2024C06
	thumb_func_end atk70_record_ability_usage_of_side

	thumb_func_start sub_8024CEC
sub_8024CEC: @ 8024CEC
	ldr r2, _08024D0C @ =gUnknown_03004290
	movs r0, 0xFD
	strb r0, [r2]
	movs r0, 0x2
	strb r0, [r2, 0x1]
	ldr r0, _08024D10 @ =word_2024E82
	ldrh r1, [r0]
	strb r1, [r2, 0x2]
	movs r0, 0xFF
	lsls r0, 8
	ands r0, r1
	lsrs r0, 8
	strb r0, [r2, 0x3]
	movs r0, 0xFF
	strb r0, [r2, 0x4]
	bx lr
	.align 2, 0
_08024D0C: .4byte gUnknown_03004290
_08024D10: .4byte word_2024E82
	thumb_func_end sub_8024CEC

	thumb_func_start atk71_80268A0
atk71_80268A0: @ 8024D14
	push {lr}
	bl sub_8024CEC
	ldr r1, _08024D28 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08024D28: .4byte gUnknown_02024C10
	thumb_func_end atk71_80268A0

	thumb_func_start atk72_flee
atk72_flee: @ 8024D2C
	push {lr}
	ldr r0, _08024D58 @ =gUnknown_02024C09
	ldrb r0, [r0]
	bl sub_8014AB8
	lsls r0, 24
	cmp r0, 0
	beq _08024D60
	ldr r3, _08024D5C @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _08024D68
	.align 2, 0
_08024D58: .4byte gUnknown_02024C09
_08024D5C: .4byte gUnknown_02024C10
_08024D60:
	ldr r1, _08024D6C @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_08024D68:
	pop {r0}
	bx r0
	.align 2, 0
_08024D6C: .4byte gUnknown_02024C10
	thumb_func_end atk72_flee

	thumb_func_start atk73_cmd73
atk73_cmd73: @ 8024D70
	push {r4,r5,lr}
	ldr r0, _08024DC0 @ =gUnknown_020239F8
	ldrh r0, [r0]
	movs r5, 0x1
	ands r5, r0
	cmp r5, 0
	bne _08024E12
	ldr r0, _08024DC4 @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r1, _08024DC8 @ =gUnknown_02024A60
	strb r0, [r1]
	movs r1, 0x1
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _08024DCC @ =gBattleMons
	movs r1, 0x58
	muls r1, r0
	adds r1, r2
	ldrh r4, [r1, 0x28]
	movs r0, 0x64
	muls r0, r4
	ldrh r1, [r1, 0x2C]
	bl __divsi3
	cmp r0, 0
	bne _08024DAE
	movs r0, 0x1
_08024DAE:
	cmp r0, 0x45
	bgt _08024DB6
	cmp r4, 0
	bne _08024DD8
_08024DB6:
	ldr r0, _08024DD0 @ =0x02000000
	ldr r1, _08024DD4 @ =0x000160c1
	adds r0, r1
	strb r5, [r0]
	b _08024E12
	.align 2, 0
_08024DC0: .4byte gUnknown_020239F8
_08024DC4: .4byte gUnknown_02024C10
_08024DC8: .4byte gUnknown_02024A60
_08024DCC: .4byte gBattleMons
_08024DD0: .4byte 0x02000000
_08024DD4: .4byte 0x000160c1
_08024DD8:
	cmp r0, 0x27
	ble _08024DF0
	ldr r0, _08024DE8 @ =0x02000000
	ldr r1, _08024DEC @ =0x000160c1
	adds r0, r1
	movs r1, 0x1
	b _08024E10
	.align 2, 0
_08024DE8: .4byte 0x02000000
_08024DEC: .4byte 0x000160c1
_08024DF0:
	cmp r0, 0x9
	ble _08024E08
	ldr r0, _08024E00 @ =0x02000000
	ldr r1, _08024E04 @ =0x000160c1
	adds r0, r1
	movs r1, 0x2
	b _08024E10
	.align 2, 0
_08024E00: .4byte 0x02000000
_08024E04: .4byte 0x000160c1
_08024E08:
	ldr r0, _08024E20 @ =0x02000000
	ldr r1, _08024E24 @ =0x000160c1
	adds r0, r1
	movs r1, 0x3
_08024E10:
	strb r1, [r0]
_08024E12:
	ldr r1, _08024E28 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08024E20: .4byte 0x02000000
_08024E24: .4byte 0x000160c1
_08024E28: .4byte gUnknown_02024C10
	thumb_func_end atk73_cmd73

	thumb_func_start atk74_hp_tresholds_2
atk74_hp_tresholds_2: @ 8024E2C
	push {r4-r7,lr}
	ldr r0, _08024E8C @ =gUnknown_020239F8
	ldrh r0, [r0]
	movs r7, 0x1
	ands r7, r0
	cmp r7, 0
	bne _08024ED0
	ldr r0, _08024E90 @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	adds r4, r0, 0
	ldr r0, _08024E94 @ =gUnknown_02024A60
	strb r4, [r0]
	movs r0, 0x1
	eors r4, r0
	lsls r4, 24
	lsrs r4, 24
	ldr r6, _08024E98 @ =0x02000000
	adds r0, r4, 0
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r0, 23
	ldr r1, _08024E9C @ =0x000160bc
	adds r0, r1
	adds r0, r6
	ldrb r5, [r0]
	ldr r1, _08024EA0 @ =gBattleMons
	movs r0, 0x58
	muls r0, r4
	adds r0, r1
	ldrh r4, [r0, 0x28]
	subs r1, r5, r4
	movs r0, 0x64
	muls r0, r1
	adds r1, r5, 0
	bl __divsi3
	adds r1, r0, 0
	cmp r4, r5
	bcc _08024EA8
	ldr r1, _08024EA4 @ =0x000160c1
	adds r0, r6, r1
	strb r7, [r0]
	b _08024ED0
	.align 2, 0
_08024E8C: .4byte gUnknown_020239F8
_08024E90: .4byte gUnknown_02024C10
_08024E94: .4byte gUnknown_02024A60
_08024E98: .4byte 0x02000000
_08024E9C: .4byte 0x000160bc
_08024EA0: .4byte gBattleMons
_08024EA4: .4byte 0x000160c1
_08024EA8:
	cmp r0, 0x1D
	bgt _08024EB8
	ldr r0, _08024EB4 @ =0x000160c1
	adds r1, r6, r0
	movs r0, 0x1
	b _08024ECE
	.align 2, 0
_08024EB4: .4byte 0x000160c1
_08024EB8:
	cmp r1, 0x45
	bgt _08024EC8
	ldr r0, _08024EC4 @ =0x000160c1
	adds r1, r6, r0
	movs r0, 0x2
	b _08024ECE
	.align 2, 0
_08024EC4: .4byte 0x000160c1
_08024EC8:
	ldr r0, _08024EE0 @ =0x000160c1
	adds r1, r6, r0
	movs r0, 0x3
_08024ECE:
	strb r0, [r1]
_08024ED0:
	ldr r1, _08024EE4 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024EE0: .4byte 0x000160c1
_08024EE4: .4byte gUnknown_02024C10
	thumb_func_end atk74_hp_tresholds_2

	thumb_func_start atk75_8026A58
atk75_8026A58: @ 8024EE8
	push {lr}
	sub sp, 0x4
	ldr r2, _08024F28 @ =gUnknown_02024E6C
	ldr r1, _08024F2C @ =gUnknown_02024C07
	ldrb r0, [r1]
	strb r0, [r2]
	ldr r2, _08024F30 @ =gUnknown_02024A6A
	ldrb r0, [r1]
	lsls r0, 1
	adds r0, r2
	ldrh r2, [r0]
	movs r0, 0x64
	muls r0, r2
	ldr r1, _08024F34 @ =gEnemyParty
	adds r0, r1
	ldr r1, _08024F38 @ =gUnknown_02024C04
	ldrh r1, [r1]
	lsls r2, 24
	lsrs r2, 24
	movs r3, 0x1
	str r3, [sp]
	movs r3, 0
	bl sub_803E1B0
	ldr r1, _08024F3C @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	add sp, 0x4
	pop {r0}
	bx r0
	.align 2, 0
_08024F28: .4byte gUnknown_02024E6C
_08024F2C: .4byte gUnknown_02024C07
_08024F30: .4byte gUnknown_02024A6A
_08024F34: .4byte gEnemyParty
_08024F38: .4byte gUnknown_02024C04
_08024F3C: .4byte gUnknown_02024C10
	thumb_func_end atk75_8026A58

	thumb_func_start sub_8024F40
sub_8024F40: @ 8024F40
	push {r4-r6,lr}
	ldr r4, _08024F64 @ =gUnknown_02024C10
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	bl sub_8015150
	ldr r1, _08024F68 @ =gUnknown_02024A60
	strb r0, [r1]
	ldr r0, [r4]
	ldrb r0, [r0, 0x2]
	cmp r0, 0x6
	bls _08024F5A
	b _08025112
_08024F5A:
	lsls r0, 2
	ldr r1, _08024F6C @ =_08024F70
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08024F64: .4byte gUnknown_02024C10
_08024F68: .4byte gUnknown_02024A60
_08024F6C: .4byte _08024F70
	.align 2, 0
_08024F70:
	.4byte _08024F8C
	.4byte _08024F9C
	.4byte _08024FFC
	.4byte _0802500C
	.4byte _08025024
	.4byte _08025060
	.4byte _08025098
_08024F8C:
	ldr r0, _08024F98 @ =gUnknown_02024A60
	ldrb r0, [r0]
	bl b_cancel_multi_turn_move_maybe
	b _08025112
	.align 2, 0
_08024F98: .4byte gUnknown_02024A60
_08024F9C:
	ldr r1, _08024FD8 @ =gUnknown_02024C07
	ldr r4, _08024FDC @ =gUnknown_02024C08
	ldrb r0, [r4]
	strb r0, [r1]
	ldrb r0, [r1]
	bl battle_side_get_owner
	movs r1, 0x1
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _08024FE0 @ =gUnknown_02024C80
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	adds r2, r1, r2
	ldrb r0, [r2, 0x8]
	cmp r0, 0
	beq _08024FE8
	ldr r1, _08024FE4 @ =gBattleMons
	ldrb r2, [r2, 0x9]
	movs r0, 0x58
	muls r0, r2
	adds r0, r1
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _08024FE8
	strb r2, [r4]
	b _08025112
	.align 2, 0
_08024FD8: .4byte gUnknown_02024C07
_08024FDC: .4byte gUnknown_02024C08
_08024FE0: .4byte gUnknown_02024C80
_08024FE4: .4byte gBattleMons
_08024FE8:
	ldr r0, _08024FF4 @ =gUnknown_02024C08
	ldr r1, _08024FF8 @ =gUnknown_02024A60
	ldrb r1, [r1]
	strb r1, [r0]
	b _08025112
	.align 2, 0
_08024FF4: .4byte gUnknown_02024C08
_08024FF8: .4byte gUnknown_02024A60
_08024FFC:
	bl sub_8012028
	ldr r1, _08025008 @ =gUnknown_02024D1E
	strb r0, [r1]
	b _08025112
	.align 2, 0
_08025008: .4byte gUnknown_02024D1E
_0802500C:
	ldr r0, _0802501C @ =gUnknown_02024BE6
	ldrh r0, [r0]
	movs r1, 0
	bl sub_801B5C0
	ldr r1, _08025020 @ =gUnknown_02024C08
	strb r0, [r1]
	b _08025112
	.align 2, 0
_0802501C: .4byte gUnknown_02024BE6
_08025020: .4byte gUnknown_02024C08
_08025024:
	ldr r2, _08025044 @ =gUnknown_02024C6C
	ldr r1, _08025048 @ =gBitTable
	ldr r0, _0802504C @ =gUnknown_02024A60
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	lsls r0, 28
	ldr r2, [r2]
	ands r2, r0
	cmp r2, 0
	beq _08025054
	ldr r1, _08025050 @ =gUnknown_02024D1E
	movs r0, 0x1
	strb r0, [r1]
	b _08025112
	.align 2, 0
_08025044: .4byte gUnknown_02024C6C
_08025048: .4byte gBitTable
_0802504C: .4byte gUnknown_02024A60
_08025050: .4byte gUnknown_02024D1E
_08025054:
	ldr r0, _0802505C @ =gUnknown_02024D1E
	strb r2, [r0]
	b _08025112
	.align 2, 0
_0802505C: .4byte gUnknown_02024D1E
_08025060:
	ldr r4, _08025090 @ =gUnknown_02024D68
	ldr r3, _08025094 @ =gUnknown_02024A60
	ldrb r0, [r3]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r2, [r1]
	movs r0, 0x9
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldrb r0, [r3]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r2, [r1]
	movs r0, 0x11
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	b _08025112
	.align 2, 0
_08025090: .4byte gUnknown_02024D68
_08025094: .4byte gUnknown_02024A60
_08025098:
	ldr r3, _080250B8 @ =gUnknown_02024A6A
	ldr r0, _080250BC @ =0x02000000
	ldr r1, _080250C0 @ =0x00016018
	adds r0, r1
	ldrh r2, [r3]
	ldrb r1, [r0]
	cmp r2, r1
	beq _080250B2
	ldrh r0, [r3, 0x4]
	cmp r0, r1
	bne _08025112
	cmp r2, r0
	bne _080250C8
_080250B2:
	ldr r1, _080250C4 @ =gUnknown_02024A60
	movs r0, 0
	b _080250CC
	.align 2, 0
_080250B8: .4byte gUnknown_02024A6A
_080250BC: .4byte 0x02000000
_080250C0: .4byte 0x00016018
_080250C4: .4byte gUnknown_02024A60
_080250C8:
	ldr r1, _08025120 @ =gUnknown_02024A60
	movs r0, 0x2
_080250CC:
	strb r0, [r1]
	adds r5, r1, 0
	ldrb r2, [r5]
	lsls r1, r2, 1
	ldr r0, _08025124 @ =0x020160e8
	adds r4, r1, r0
	movs r3, 0
	ldr r1, _08025128 @ =gBattleMons
	movs r0, 0x58
	muls r0, r2
	adds r1, 0xC
	adds r0, r1
	ldrh r0, [r0]
	ldrh r2, [r4]
	cmp r0, r2
	beq _0802510A
	adds r6, r5, 0
	movs r5, 0x58
	adds r2, r1, 0
_080250F2:
	adds r3, 0x1
	cmp r3, 0x3
	bgt _0802510A
	lsls r1, r3, 1
	ldrb r0, [r6]
	muls r0, r5
	adds r1, r0
	adds r1, r2
	ldrh r0, [r1]
	ldrh r1, [r4]
	cmp r0, r1
	bne _080250F2
_0802510A:
	cmp r3, 0x4
	bne _08025112
	movs r0, 0
	strh r0, [r4]
_08025112:
	ldr r1, _0802512C @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x3
	str r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08025120: .4byte gUnknown_02024A60
_08025124: .4byte 0x020160e8
_08025128: .4byte gBattleMons
_0802512C: .4byte gUnknown_02024C10
	thumb_func_end sub_8024F40

	thumb_func_start atk77_setprotect
atk77_setprotect: @ 8025130
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	movs r6, 0x1
	ldr r2, _080251FC @ =gUnknown_02024C4C
	ldr r1, _08025200 @ =gUnknown_02024C07
	ldrb r3, [r1]
	lsls r0, r3, 1
	adds r0, r2
	ldrh r0, [r0]
	mov r8, r1
	ldr r7, _08025204 @ =gUnknown_02024CA8
	cmp r0, 0xB6
	beq _08025160
	cmp r0, 0xC5
	beq _08025160
	cmp r0, 0xCB
	beq _08025160
	lsls r0, r3, 3
	subs r0, r3
	lsls r0, 2
	adds r0, r7
	movs r1, 0
	strb r1, [r0, 0x8]
_08025160:
	ldr r0, _08025208 @ =gUnknown_02024A7E
	ldrb r1, [r0]
	ldr r0, _0802520C @ =gUnknown_02024A68
	ldrb r0, [r0]
	subs r0, 0x1
	cmp r1, r0
	bne _08025170
	movs r6, 0
_08025170:
	ldr r2, _08025210 @ =gProtectSuccessRates
	mov r5, r8
	ldrb r1, [r5]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r7
	ldrb r4, [r0, 0x8]
	lsls r4, 1
	adds r4, r2
	bl Random
	ldrh r1, [r4]
	lsls r0, 16
	lsrs r0, 16
	cmp r1, r0
	bls _08025224
	cmp r6, 0
	beq _08025224
	ldr r4, _08025214 @ =gBattleMoves
	ldr r3, _08025218 @ =gUnknown_02024BE6
	ldrh r0, [r3]
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r0, [r1]
	cmp r0, 0x6F
	bne _080251C0
	ldr r0, _0802521C @ =gUnknown_02024D28
	ldrb r1, [r5]
	lsls r1, 4
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x1
	orrs r0, r2
	strb r0, [r1]
	ldr r1, _08025220 @ =gUnknown_02024D1E
	movs r0, 0
	strb r0, [r1, 0x5]
_080251C0:
	ldrh r0, [r3]
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r0, [r1]
	cmp r0, 0x74
	bne _080251E6
	ldr r0, _0802521C @ =gUnknown_02024D28
	ldrb r1, [r5]
	lsls r1, 4
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x2
	orrs r0, r2
	strb r0, [r1]
	ldr r1, _08025220 @ =gUnknown_02024D1E
	movs r0, 0x1
	strb r0, [r1, 0x5]
_080251E6:
	mov r1, r8
	ldrb r0, [r1]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r7
	ldrb r0, [r1, 0x8]
	adds r0, 0x1
	strb r0, [r1, 0x8]
	b _08025246
	.align 2, 0
_080251FC: .4byte gUnknown_02024C4C
_08025200: .4byte gUnknown_02024C07
_08025204: .4byte gUnknown_02024CA8
_08025208: .4byte gUnknown_02024A7E
_0802520C: .4byte gUnknown_02024A68
_08025210: .4byte gProtectSuccessRates
_08025214: .4byte gBattleMoves
_08025218: .4byte gUnknown_02024BE6
_0802521C: .4byte gUnknown_02024D28
_08025220: .4byte gUnknown_02024D1E
_08025224:
	ldr r2, _08025258 @ =gUnknown_02024CA8
	ldr r0, _0802525C @ =gUnknown_02024C07
	ldrb r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0
	strb r1, [r0, 0x8]
	ldr r1, _08025260 @ =gUnknown_02024D1E
	movs r0, 0x2
	strb r0, [r1, 0x5]
	ldr r2, _08025264 @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
_08025246:
	ldr r1, _08025268 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025258: .4byte gUnknown_02024CA8
_0802525C: .4byte gUnknown_02024C07
_08025260: .4byte gUnknown_02024D1E
_08025264: .4byte gUnknown_02024C68
_08025268: .4byte gUnknown_02024C10
	thumb_func_end atk77_setprotect

	thumb_func_start atk78_faintifabilitynotdamp
atk78_faintifabilitynotdamp: @ 802526C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r0, _08025328 @ =gUnknown_02024A64
	ldr r2, [r0]
	cmp r2, 0
	bne _08025370
	ldr r1, _0802532C @ =gUnknown_02024C08
	strb r2, [r1]
	ldr r0, _08025330 @ =gUnknown_02024A68
	ldrb r3, [r0]
	adds r5, r1, 0
	mov r8, r0
	ldr r6, _08025334 @ =gBattleMons
	cmp r2, r3
	bcs _080252B8
	adds r0, r6, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x6
	beq _080252B8
	adds r2, r3, 0
	adds r4, r6, 0
	movs r3, 0x58
_0802529C:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, r2
	bcs _080252B8
	ldrb r0, [r5]
	muls r0, r3
	adds r0, r4
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x6
	bne _0802529C
_080252B8:
	ldrb r0, [r5]
	mov r1, r8
	ldrb r1, [r1]
	cmp r0, r1
	bne _08025354
	ldr r4, _08025338 @ =gUnknown_02024A60
	ldr r7, _0802533C @ =gUnknown_02024C07
	ldrb r0, [r7]
	strb r0, [r4]
	ldr r2, _08025340 @ =gUnknown_02024BEC
	ldrb r1, [r4]
	movs r0, 0x58
	muls r0, r1
	adds r0, r6
	ldrh r0, [r0, 0x28]
	str r0, [r2]
	ldr r1, _08025344 @ =0x00007fff
	movs r0, 0
	bl dp01_build_cmdbuf_x18_0_aa_health_bar_update
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, _08025348 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	movs r0, 0
	strb r0, [r5]
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, 0
	beq _08025370
	adds r3, r5, 0
	ldrb r5, [r7]
	ldr r7, _0802534C @ =gBitTable
	adds r4, r0, 0
	ldr r6, _08025350 @ =gUnknown_02024C0C
_08025304:
	ldrb r2, [r3]
	cmp r2, r5
	beq _0802531A
	ldrb r0, [r6]
	ldrb r1, [r3]
	lsls r1, 2
	adds r1, r7
	ldr r1, [r1]
	ands r0, r1
	cmp r0, 0
	beq _08025370
_0802531A:
	adds r0, r2, 0x1
	strb r0, [r3]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, r4
	bcc _08025304
	b _08025370
	.align 2, 0
_08025328: .4byte gUnknown_02024A64
_0802532C: .4byte gUnknown_02024C08
_08025330: .4byte gUnknown_02024A68
_08025334: .4byte gBattleMons
_08025338: .4byte gUnknown_02024A60
_0802533C: .4byte gUnknown_02024C07
_08025340: .4byte gUnknown_02024BEC
_08025344: .4byte 0x00007fff
_08025348: .4byte gUnknown_02024C10
_0802534C: .4byte gBitTable
_08025350: .4byte gUnknown_02024C0C
_08025354:
	ldr r1, _0802537C @ =byte_2024C06
	movs r0, 0x6
	strb r0, [r1]
	ldrb r0, [r5]
	movs r1, 0x58
	muls r1, r0
	adds r1, r6
	adds r1, 0x20
	ldrb r1, [r1]
	bl sub_81074C4
	ldr r1, _08025380 @ =gUnknown_02024C10
	ldr r0, _08025384 @ =gUnknown_081D9834
	str r0, [r1]
_08025370:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802537C: .4byte byte_2024C06
_08025380: .4byte gUnknown_02024C10
_08025384: .4byte gUnknown_081D9834
	thumb_func_end atk78_faintifabilitynotdamp

	thumb_func_start atk79_setuserhptozero
atk79_setuserhptozero: @ 8025388
	push {r4,lr}
	sub sp, 0x4
	ldr r0, _080253D4 @ =gUnknown_02024A64
	ldr r3, [r0]
	cmp r3, 0
	bne _080253CC
	ldr r4, _080253D8 @ =gUnknown_02024A60
	ldr r0, _080253DC @ =gUnknown_02024C07
	ldrb r0, [r0]
	strb r0, [r4]
	ldr r1, _080253E0 @ =gBattleMons
	ldrb r0, [r4]
	movs r2, 0x58
	muls r0, r2
	adds r0, r1
	strh r3, [r0, 0x28]
	ldrb r0, [r4]
	muls r0, r2
	adds r1, 0x28
	adds r0, r1
	str r0, [sp]
	movs r0, 0
	movs r1, 0x2A
	movs r2, 0
	movs r3, 0x2
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, _080253E4 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
_080253CC:
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080253D4: .4byte gUnknown_02024A64
_080253D8: .4byte gUnknown_02024A60
_080253DC: .4byte gUnknown_02024C07
_080253E0: .4byte gBattleMons
_080253E4: .4byte gUnknown_02024C10
	thumb_func_end atk79_setuserhptozero

	thumb_func_start sub_80253E8
sub_80253E8: @ 80253E8
	push {r4-r7,lr}
	ldr r3, _08025460 @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r4, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r4, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r4, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r4, r0
	ldr r0, _08025464 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x1
	ands r0, r1
	adds r7, r3, 0
	cmp r0, 0
	beq _08025480
	ldr r0, _08025468 @ =gUnknown_02024C08
	ldrb r1, [r0]
	adds r1, 0x1
	strb r1, [r0]
	ldr r2, _0802546C @ =gUnknown_02024C07
	lsls r1, 24
	lsrs r1, 24
	adds r3, r0, 0
	ldr r6, _08025470 @ =gUnknown_02024C0C
	ldr r5, _08025474 @ =gBitTable
	ldr r0, _08025478 @ =gUnknown_02024A68
	mov r12, r0
	ldrb r0, [r2]
	cmp r1, r0
	bne _0802543E
_0802542E:
	ldrb r0, [r3]
	adds r0, 0x1
	strb r0, [r3]
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r2]
	cmp r0, r1
	beq _0802542E
_0802543E:
	ldrb r0, [r6]
	ldrb r1, [r3]
	lsls r1, 2
	adds r1, r5
	ldr r1, [r1]
	ands r0, r1
	cmp r0, 0
	bne _0802542E
	ldrb r0, [r3]
	mov r2, r12
	ldrb r2, [r2]
	cmp r0, r2
	bcc _0802547C
	ldr r0, [r7]
	adds r0, 0x5
	str r0, [r7]
	b _08025484
	.align 2, 0
_08025460: .4byte gUnknown_02024C10
_08025464: .4byte gUnknown_020239F8
_08025468: .4byte gUnknown_02024C08
_0802546C: .4byte gUnknown_02024C07
_08025470: .4byte gUnknown_02024C0C
_08025474: .4byte gBitTable
_08025478: .4byte gUnknown_02024A68
_0802547C:
	str r4, [r7]
	b _08025484
_08025480:
	adds r0, r2, 0x5
	str r0, [r3]
_08025484:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80253E8

	thumb_func_start sub_802548C
sub_802548C: @ 802548C
	push {r4-r6,lr}
	ldr r4, _080254E8 @ =gUnknown_02024C10
	ldr r1, [r4]
	ldrb r2, [r1, 0x1]
	ldrb r0, [r1, 0x2]
	lsls r0, 8
	orrs r2, r0
	ldrb r0, [r1, 0x3]
	lsls r0, 16
	orrs r2, r0
	ldrb r0, [r1, 0x4]
	lsls r0, 24
	orrs r2, r0
	ldrb r0, [r1, 0x5]
	ldr r3, _080254EC @ =gUnknown_02024C08
	cmp r0, 0x1
	bne _080254B4
	ldr r0, _080254F0 @ =gUnknown_02024C07
	ldrb r0, [r0]
	strb r0, [r3]
_080254B4:
	ldr r1, _080254F4 @ =gUnknown_02024BEC
	ldr r6, _080254F8 @ =gBattleMons
	ldrb r0, [r3]
	movs r5, 0x58
	muls r0, r5
	adds r0, r6
	ldrh r0, [r0, 0x2C]
	lsrs r0, 1
	str r0, [r1]
	cmp r0, 0
	bne _080254CE
	movs r0, 0x1
	str r0, [r1]
_080254CE:
	ldr r0, [r1]
	negs r0, r0
	str r0, [r1]
	ldrb r0, [r3]
	muls r0, r5
	adds r0, r6
	ldrh r1, [r0, 0x28]
	ldrh r0, [r0, 0x2C]
	cmp r1, r0
	bne _080254FC
	str r2, [r4]
	b _08025502
	.align 2, 0
_080254E8: .4byte gUnknown_02024C10
_080254EC: .4byte gUnknown_02024C08
_080254F0: .4byte gUnknown_02024C07
_080254F4: .4byte gUnknown_02024BEC
_080254F8: .4byte gBattleMons
_080254FC:
	ldr r0, [r4]
	adds r0, 0x6
	str r0, [r4]
_08025502:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_802548C

	thumb_func_start sub_8025508
sub_8025508: @ 8025508
	push {r4-r7,lr}
	ldr r3, _0802556C @ =0x02000000
	ldr r4, _08025570 @ =gUnknown_02024C07
	ldrb r2, [r4]
	lsls r1, r2, 1
	ldr r5, _08025574 @ =0x000160ac
	adds r0, r1, r5
	adds r0, r3
	ldrb r7, [r0]
	ldr r0, _08025578 @ =0x000160ad
	adds r1, r0
	adds r1, r3
	ldrb r0, [r1]
	lsls r0, 8
	orrs r7, r0
	lsls r2, 2
	ldr r1, _0802557C @ =0x00016100
	adds r0, r2, r1
	adds r0, r3
	ldrb r6, [r0]
	adds r5, 0x55
	adds r0, r2, r5
	adds r0, r3
	ldrb r0, [r0]
	lsls r0, 8
	orrs r6, r0
	adds r1, 0x2
	adds r0, r2, r1
	adds r0, r3
	ldrb r5, [r0]
	ldr r0, _08025580 @ =0x00016103
	adds r2, r0
	adds r2, r3
	ldrb r0, [r2]
	lsls r0, 8
	orrs r5, r0
	cmp r7, 0
	beq _08025594
	ldr r0, _08025584 @ =0x0000ffff
	cmp r7, r0
	beq _08025594
	ldr r2, _08025588 @ =gUnknown_02024C6C
	ldr r0, [r2]
	ldr r1, _0802558C @ =0xfffffbff
	ands r0, r1
	str r0, [r2]
	ldr r4, _08025590 @ =gUnknown_02024BE6
	strh r7, [r4]
	b _0802565C
	.align 2, 0
_0802556C: .4byte 0x02000000
_08025570: .4byte gUnknown_02024C07
_08025574: .4byte 0x000160ac
_08025578: .4byte 0x000160ad
_0802557C: .4byte 0x00016100
_08025580: .4byte 0x00016103
_08025584: .4byte 0x0000ffff
_08025588: .4byte gUnknown_02024C6C
_0802558C: .4byte 0xfffffbff
_08025590: .4byte gUnknown_02024BE6
_08025594:
	cmp r6, 0
	beq _08025644
	cmp r5, 0
	beq _08025618
	ldr r0, _080255C4 @ =0x0000ffff
	cmp r6, r0
	beq _08025618
	cmp r5, r0
	beq _08025618
	ldr r2, _080255C8 @ =gUnknown_02024C6C
	ldr r0, [r2]
	ldr r1, _080255CC @ =0xfffffbff
	ands r0, r1
	str r0, [r2]
	bl Random
	movs r1, 0x1
	ands r1, r0
	cmp r1, 0
	beq _080255D4
	ldr r0, _080255D0 @ =gUnknown_02024BE6
	strh r6, [r0]
	b _080255D8
	.align 2, 0
_080255C4: .4byte 0x0000ffff
_080255C8: .4byte gUnknown_02024C6C
_080255CC: .4byte 0xfffffbff
_080255D0: .4byte gUnknown_02024BE6
_080255D4:
	ldr r0, _08025604 @ =gUnknown_02024BE6
	strh r5, [r0]
_080255D8:
	adds r5, r0, 0
	ldrh r0, [r5]
	movs r1, 0
	bl sub_801B5C0
	ldr r1, _08025608 @ =gUnknown_02024C08
	strb r0, [r1]
	ldr r4, _0802560C @ =gUnknown_02024C10
	ldr r3, _08025610 @ =gUnknown_081D6BBC
	ldr r2, _08025614 @ =gBattleMoves
	ldrh r1, [r5]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	str r0, [r4]
	b _080256C0
	.align 2, 0
_08025604: .4byte gUnknown_02024BE6
_08025608: .4byte gUnknown_02024C08
_0802560C: .4byte gUnknown_02024C10
_08025610: .4byte gUnknown_081D6BBC
_08025614: .4byte gBattleMoves
_08025618:
	cmp r6, 0
	beq _08025644
	ldr r0, _08025634 @ =0x0000ffff
	cmp r6, r0
	beq _08025644
	ldr r2, _08025638 @ =gUnknown_02024C6C
	ldr r0, [r2]
	ldr r1, _0802563C @ =0xfffffbff
	ands r0, r1
	str r0, [r2]
	ldr r4, _08025640 @ =gUnknown_02024BE6
	strh r6, [r4]
	b _0802565C
	.align 2, 0
_08025634: .4byte 0x0000ffff
_08025638: .4byte gUnknown_02024C6C
_0802563C: .4byte 0xfffffbff
_08025640: .4byte gUnknown_02024BE6
_08025644:
	cmp r5, 0
	beq _080256A4
	ldr r0, _08025684 @ =0x0000ffff
	cmp r5, r0
	beq _080256A4
	ldr r2, _08025688 @ =gUnknown_02024C6C
	ldr r0, [r2]
	ldr r1, _0802568C @ =0xfffffbff
	ands r0, r1
	str r0, [r2]
	ldr r4, _08025690 @ =gUnknown_02024BE6
	strh r5, [r4]
_0802565C:
	ldrh r0, [r4]
	movs r1, 0
	bl sub_801B5C0
	ldr r1, _08025694 @ =gUnknown_02024C08
	strb r0, [r1]
	ldr r5, _08025698 @ =gUnknown_02024C10
	ldr r3, _0802569C @ =gUnknown_081D6BBC
	ldr r2, _080256A0 @ =gBattleMoves
	ldrh r1, [r4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	str r0, [r5]
	b _080256C0
	.align 2, 0
_08025684: .4byte 0x0000ffff
_08025688: .4byte gUnknown_02024C6C
_0802568C: .4byte 0xfffffbff
_08025690: .4byte gUnknown_02024BE6
_08025694: .4byte gUnknown_02024C08
_08025698: .4byte gUnknown_02024C10
_0802569C: .4byte gUnknown_081D6BBC
_080256A0: .4byte gBattleMoves
_080256A4:
	ldr r2, _080256C8 @ =gUnknown_02024D68
	ldrb r1, [r4]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r2, 0x20
	orrs r1, r2
	strb r1, [r0]
	ldr r1, _080256CC @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
_080256C0:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080256C8: .4byte gUnknown_02024D68
_080256CC: .4byte gUnknown_02024C10
	thumb_func_end sub_8025508

	thumb_func_start sub_80256D0
sub_80256D0: @ 80256D0
	push {lr}
	ldr r2, _080256F0 @ =word_2024DB8
	ldrh r0, [r2]
	movs r1, 0x7
	ands r1, r0
	cmp r1, 0
	beq _080256FC
	ldr r2, _080256F4 @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _080256F8 @ =gUnknown_02024D1E
	movs r0, 0x2
	strb r0, [r1, 0x5]
	b _0802570C
	.align 2, 0
_080256F0: .4byte word_2024DB8
_080256F4: .4byte gUnknown_02024C68
_080256F8: .4byte gUnknown_02024D1E
_080256FC:
	movs r0, 0x1
	strh r0, [r2]
	ldr r0, _08025718 @ =gUnknown_02024D1E
	strb r1, [r0, 0x5]
	ldr r0, _0802571C @ =gUnknown_02024DBC
	adds r0, 0x28
	movs r1, 0x5
	strb r1, [r0]
_0802570C:
	ldr r1, _08025720 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08025718: .4byte gUnknown_02024D1E
_0802571C: .4byte gUnknown_02024DBC
_08025720: .4byte gUnknown_02024C10
	thumb_func_end sub_80256D0

	thumb_func_start atk7E_setreflect
atk7E_setreflect: @ 8025724
	push {r4-r6,lr}
	ldr r5, _08025754 @ =gUnknown_02024C07
	ldrb r0, [r5]
	bl battle_get_per_side_status
	ldr r6, _08025758 @ =gUnknown_02024C7A
	movs r4, 0x1
	adds r1, r4, 0
	ands r1, r0
	lsls r1, 1
	adds r1, r6
	ldrh r1, [r1]
	adds r0, r4, 0
	ands r0, r1
	cmp r0, 0
	beq _08025764
	ldr r2, _0802575C @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08025760 @ =gUnknown_02024D1E
	movs r0, 0
	b _080257C4
	.align 2, 0
_08025754: .4byte gUnknown_02024C07
_08025758: .4byte gUnknown_02024C7A
_0802575C: .4byte gUnknown_02024C68
_08025760: .4byte gUnknown_02024D1E
_08025764:
	ldrb r0, [r5]
	bl battle_get_per_side_status
	adds r1, r4, 0
	ands r1, r0
	lsls r1, 1
	adds r1, r6
	ldrh r0, [r1]
	movs r2, 0x1
	orrs r0, r2
	strh r0, [r1]
	ldrb r0, [r5]
	bl battle_get_per_side_status
	ldr r2, _080257B4 @ =gUnknown_02024C80
	adds r1, r4, 0
	ands r1, r0
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0x5
	strb r1, [r0]
	ldr r0, _080257B8 @ =gUnknown_020239F8
	ldrh r1, [r0]
	adds r0, r4, 0
	ands r0, r1
	cmp r0, 0
	beq _080257C0
	movs r0, 0x1
	bl sub_803C348
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x2
	bne _080257C0
	ldr r0, _080257BC @ =gUnknown_02024D1E
	strb r1, [r0, 0x5]
	b _080257C6
	.align 2, 0
_080257B4: .4byte gUnknown_02024C80
_080257B8: .4byte gUnknown_020239F8
_080257BC: .4byte gUnknown_02024D1E
_080257C0:
	ldr r1, _080257D4 @ =gUnknown_02024D1E
	movs r0, 0x1
_080257C4:
	strb r0, [r1, 0x5]
_080257C6:
	ldr r1, _080257D8 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080257D4: .4byte gUnknown_02024D1E
_080257D8: .4byte gUnknown_02024C10
	thumb_func_end atk7E_setreflect

	thumb_func_start sub_80257DC
sub_80257DC: @ 80257DC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r7, _0802581C @ =gUnknown_02024C68
	ldrb r5, [r7]
	movs r0, 0x29
	ands r0, r5
	cmp r0, 0
	bne _0802580E
	ldr r0, _08025820 @ =gUnknown_02024C98
	mov r9, r0
	ldr r1, _08025824 @ =gUnknown_02024C08
	mov r8, r1
	ldrb r4, [r1]
	lsls r0, r4, 2
	mov r2, r9
	adds r6, r0, r2
	ldr r2, [r6]
	movs r0, 0x4
	mov r12, r0
	adds r3, r2, 0
	ands r3, r0
	cmp r3, 0
	beq _0802582C
_0802580E:
	movs r0, 0x1
	orrs r0, r5
	strb r0, [r7]
	ldr r1, _08025828 @ =gUnknown_02024D1E
	movs r0, 0x1
	strb r0, [r1, 0x5]
	b _0802587C
	.align 2, 0
_0802581C: .4byte gUnknown_02024C68
_08025820: .4byte gUnknown_02024C98
_08025824: .4byte gUnknown_02024C08
_08025828: .4byte gUnknown_02024D1E
_0802582C:
	ldr r1, _08025858 @ =gBattleMons
	movs r0, 0x58
	muls r0, r4
	adds r1, r0, r1
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0xC
	beq _08025848
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0xC
	bne _08025860
_08025848:
	movs r0, 0x1
	orrs r0, r5
	strb r0, [r7]
	ldr r1, _0802585C @ =gUnknown_02024D1E
	movs r0, 0x2
	strb r0, [r1, 0x5]
	b _0802587C
	.align 2, 0
_08025858: .4byte gBattleMons
_0802585C: .4byte gUnknown_02024D1E
_08025860:
	ldr r0, _08025890 @ =gUnknown_02024C07
	ldrb r0, [r0]
	orrs r2, r0
	str r2, [r6]
	mov r2, r8
	ldrb r1, [r2]
	lsls r1, 2
	add r1, r9
	ldr r0, [r1]
	mov r2, r12
	orrs r0, r2
	str r0, [r1]
	ldr r0, _08025894 @ =gUnknown_02024D1E
	strb r3, [r0, 0x5]
_0802587C:
	ldr r1, _08025898 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025890: .4byte gUnknown_02024C07
_08025894: .4byte gUnknown_02024D1E
_08025898: .4byte gUnknown_02024C10
	thumb_func_end sub_80257DC

	thumb_func_start atk80_manipulatedamage
atk80_manipulatedamage: @ 802589C
	push {r4,lr}
	ldr r1, _080258B4 @ =gUnknown_02024C10
	ldr r0, [r1]
	ldrb r2, [r0, 0x1]
	adds r4, r1, 0
	cmp r2, 0x1
	beq _080258CC
	cmp r2, 0x1
	bgt _080258B8
	cmp r2, 0
	beq _080258BE
	b _0802590C
	.align 2, 0
_080258B4: .4byte gUnknown_02024C10
_080258B8:
	cmp r2, 0x2
	beq _08025904
	b _0802590C
_080258BE:
	ldr r1, _080258C8 @ =gUnknown_02024BEC
	ldr r0, [r1]
	negs r0, r0
	b _0802590A
	.align 2, 0
_080258C8: .4byte gUnknown_02024BEC
_080258CC:
	ldr r3, _080258F8 @ =gUnknown_02024BEC
	ldr r0, [r3]
	lsrs r1, r0, 31
	adds r0, r1
	asrs r0, 1
	str r0, [r3]
	cmp r0, 0
	bne _080258DE
	str r2, [r3]
_080258DE:
	ldr r2, _080258FC @ =gBattleMons
	ldr r0, _08025900 @ =gUnknown_02024C08
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r0, [r0, 0x2C]
	lsrs r1, r0, 1
	ldr r0, [r3]
	cmp r1, r0
	bge _0802590C
	str r1, [r3]
	b _0802590C
	.align 2, 0
_080258F8: .4byte gUnknown_02024BEC
_080258FC: .4byte gBattleMons
_08025900: .4byte gUnknown_02024C08
_08025904:
	ldr r1, _08025918 @ =gUnknown_02024BEC
	ldr r0, [r1]
	lsls r0, 1
_0802590A:
	str r0, [r1]
_0802590C:
	ldr r0, [r4]
	adds r0, 0x2
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025918: .4byte gUnknown_02024BEC
	thumb_func_end atk80_manipulatedamage

	thumb_func_start atk81_setrest
atk81_setrest: @ 802591C
	push {r4-r7,lr}
	sub sp, 0x4
	ldr r0, _08025974 @ =gUnknown_02024C10
	mov r12, r0
	ldr r1, [r0]
	ldrb r6, [r1, 0x1]
	ldrb r0, [r1, 0x2]
	lsls r0, 8
	orrs r6, r0
	ldrb r0, [r1, 0x3]
	lsls r0, 16
	orrs r6, r0
	ldrb r0, [r1, 0x4]
	lsls r0, 24
	orrs r6, r0
	ldr r5, _08025978 @ =gUnknown_02024A60
	ldr r2, _0802597C @ =gUnknown_02024C08
	ldr r0, _08025980 @ =gUnknown_02024C07
	ldrb r0, [r0]
	strb r0, [r2]
	strb r0, [r5]
	ldr r4, _08025984 @ =gUnknown_02024BEC
	ldr r1, _08025988 @ =gBattleMons
	ldrb r0, [r2]
	movs r3, 0x58
	muls r0, r3
	adds r0, r1
	ldrh r0, [r0, 0x2C]
	negs r0, r0
	str r0, [r4]
	ldrb r0, [r2]
	adds r4, r0, 0
	muls r4, r3
	adds r0, r4, r1
	ldrh r3, [r0, 0x28]
	adds r7, r5, 0
	adds r5, r2, 0
	adds r2, r1, 0
	ldrh r0, [r0, 0x2C]
	cmp r3, r0
	bne _0802598C
	mov r0, r12
	str r6, [r0]
	b _080259DC
	.align 2, 0
_08025974: .4byte gUnknown_02024C10
_08025978: .4byte gUnknown_02024A60
_0802597C: .4byte gUnknown_02024C08
_08025980: .4byte gUnknown_02024C07
_08025984: .4byte gUnknown_02024BEC
_08025988: .4byte gBattleMons
_0802598C:
	adds r0, r2, 0
	adds r0, 0x4C
	adds r0, r4, r0
	ldr r1, [r0]
	movs r0, 0xF8
	ands r1, r0
	cmp r1, 0
	beq _080259A8
	ldr r1, _080259A4 @ =gUnknown_02024D1E
	movs r0, 0x1
	strb r0, [r1, 0x5]
	b _080259AC
	.align 2, 0
_080259A4: .4byte gUnknown_02024D1E
_080259A8:
	ldr r0, _080259E4 @ =gUnknown_02024D1E
	strb r1, [r0, 0x5]
_080259AC:
	ldrb r0, [r5]
	movs r3, 0x58
	muls r0, r3
	adds r2, 0x4C
	adds r0, r2
	movs r1, 0x3
	str r1, [r0]
	ldrb r0, [r7]
	muls r0, r3
	adds r0, r2
	str r0, [sp]
	movs r0, 0
	movs r1, 0x28
	movs r2, 0
	movs r3, 0x4
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldrb r0, [r7]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, _080259E8 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_080259DC:
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080259E4: .4byte gUnknown_02024D1E
_080259E8: .4byte gUnknown_02024C10
	thumb_func_end atk81_setrest

	thumb_func_start atk82_jumpifnotfirstturn
atk82_jumpifnotfirstturn: @ 80259EC
	push {r4,r5,lr}
	ldr r5, _08025A20 @ =gUnknown_02024C10
	ldr r4, [r5]
	ldrb r3, [r4, 0x1]
	ldrb r0, [r4, 0x2]
	lsls r0, 8
	orrs r3, r0
	ldrb r0, [r4, 0x3]
	lsls r0, 16
	orrs r3, r0
	ldrb r0, [r4, 0x4]
	lsls r0, 24
	orrs r3, r0
	ldr r2, _08025A24 @ =gUnknown_02024CA8
	ldr r0, _08025A28 @ =gUnknown_02024C07
	ldrb r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x16]
	cmp r0, 0
	beq _08025A2C
	adds r0, r4, 0x5
	str r0, [r5]
	b _08025A2E
	.align 2, 0
_08025A20: .4byte gUnknown_02024C10
_08025A24: .4byte gUnknown_02024CA8
_08025A28: .4byte gUnknown_02024C07
_08025A2C:
	str r3, [r5]
_08025A2E:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end atk82_jumpifnotfirstturn

	thumb_func_start sub_8025A34
sub_8025A34: @ 8025A34
	ldr r1, _08025A40 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	bx lr
	.align 2, 0
_08025A40: .4byte gUnknown_02024C10
	thumb_func_end sub_8025A34

	thumb_func_start sub_8025A44
sub_8025A44: @ 8025A44
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r3, r0, 24
	movs r2, 0
	ldr r0, _08025A9C @ =gUnknown_02024A68
	ldrb r1, [r0]
	mov r8, r0
	cmp r2, r1
	bge _08025AB8
	ldr r0, _08025AA0 @ =gBattleMons
	mov r12, r0
	movs r0, 0x58
	muls r0, r3
	add r0, r12
	adds r5, r0, 0
	adds r5, 0x20
	ldr r6, _08025AA4 @ =0x02016003
	movs r3, 0
	ldr r7, _08025AA8 @ =gUnknown_02024D1E
	adds r4, r1, 0
_08025A70:
	mov r0, r12
	adds r0, 0x50
	adds r0, r3, r0
	ldr r0, [r0]
	movs r1, 0x70
	ands r0, r1
	cmp r0, 0
	beq _08025AB0
	ldrb r0, [r5]
	cmp r0, 0x2B
	beq _08025AB0
	movs r3, 0
	strb r2, [r6]
	ldr r1, _08025AAC @ =gUnknown_02024C08
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _08025AD0
	cmp r0, r2
	beq _08025AC4
	movs r0, 0x1
	strb r0, [r7, 0x5]
	b _08025AB8
	.align 2, 0
_08025A9C: .4byte gUnknown_02024A68
_08025AA0: .4byte gBattleMons
_08025AA4: .4byte 0x02016003
_08025AA8: .4byte gUnknown_02024D1E
_08025AAC: .4byte gUnknown_02024C08
_08025AB0:
	adds r3, 0x58
	adds r2, 0x1
	cmp r2, r4
	blt _08025A70
_08025AB8:
	mov r1, r8
	ldrb r1, [r1]
	cmp r2, r1
	beq _08025AD4
	movs r0, 0x1
	b _08025AD6
_08025AC4:
	ldr r0, _08025ACC @ =gUnknown_02024D1E
	strb r3, [r0, 0x5]
	b _08025AB8
	.align 2, 0
_08025ACC: .4byte gUnknown_02024D1E
_08025AD0:
	strb r2, [r1]
	b _08025AB8
_08025AD4:
	movs r0, 0
_08025AD6:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8025A44

	thumb_func_start sub_8025AE0
sub_8025AE0: @ 8025AE0
	push {r4-r6,lr}
	ldr r5, _08025B0C @ =gUnknown_02024C10
	ldr r1, [r5]
	ldrb r4, [r1, 0x1]
	ldrb r0, [r1, 0x2]
	lsls r0, 8
	orrs r4, r0
	ldrb r0, [r1, 0x3]
	lsls r0, 16
	orrs r4, r0
	ldrb r0, [r1, 0x4]
	lsls r0, 24
	orrs r4, r0
	ldr r6, _08025B10 @ =gUnknown_02024C08
	ldrb r0, [r6]
	bl sub_8025A44
	lsls r0, 24
	cmp r0, 0
	beq _08025B14
	str r4, [r5]
	b _08025B56
	.align 2, 0
_08025B0C: .4byte gUnknown_02024C10
_08025B10: .4byte gUnknown_02024C08
_08025B14:
	ldr r1, _08025B44 @ =gBattleMons
	ldrb r3, [r6]
	movs r0, 0x58
	muls r0, r3
	adds r0, r1
	adds r0, 0x20
	ldrb r0, [r0]
	adds r1, r0, 0
	cmp r1, 0xF
	beq _08025B2C
	cmp r1, 0x48
	bne _08025B50
_08025B2C:
	ldr r2, _08025B48 @ =byte_2024C06
	strb r0, [r2]
	ldr r1, _08025B4C @ =gUnknown_02024D1E
	movs r0, 0x2
	strb r0, [r1, 0x5]
	str r4, [r5]
	ldrb r1, [r2]
	adds r0, r3, 0
	bl sub_81074C4
	b _08025B56
	.align 2, 0
_08025B44: .4byte gBattleMons
_08025B48: .4byte byte_2024C06
_08025B4C: .4byte gUnknown_02024D1E
_08025B50:
	ldr r0, [r5]
	adds r0, 0x5
	str r0, [r5]
_08025B56:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_8025AE0

	thumb_func_start sub_8025B5C
sub_8025B5C: @ 8025B5C
	push {r4,r5,lr}
	ldr r5, _08025B84 @ =gUnknown_02024CA8
	ldr r4, _08025B88 @ =gUnknown_02024C07
	ldrb r1, [r4]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r1, r0, r5
	ldrb r0, [r1, 0x9]
	cmp r0, 0x3
	bne _08025B94
	ldr r2, _08025B8C @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08025B90 @ =gUnknown_02024D1E
	movs r0, 0x1
	strb r0, [r1, 0x5]
	b _08025BBE
	.align 2, 0
_08025B84: .4byte gUnknown_02024CA8
_08025B88: .4byte gUnknown_02024C07
_08025B8C: .4byte gUnknown_02024C68
_08025B90: .4byte gUnknown_02024D1E
_08025B94:
	adds r0, 0x1
	movs r3, 0
	strb r0, [r1, 0x9]
	ldr r2, _08025BCC @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r2]
	movs r0, 0x1
	strb r0, [r2, 0x1]
	strb r0, [r2, 0x2]
	strb r0, [r2, 0x3]
	ldrb r1, [r4]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r5
	ldrb r0, [r0, 0x9]
	strb r0, [r2, 0x4]
	movs r0, 0xFF
	strb r0, [r2, 0x5]
	ldr r0, _08025BD0 @ =gUnknown_02024D1E
	strb r3, [r0, 0x5]
_08025BBE:
	ldr r1, _08025BD4 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08025BCC: .4byte gUnknown_030041C0
_08025BD0: .4byte gUnknown_02024D1E
_08025BD4: .4byte gUnknown_02024C10
	thumb_func_end sub_8025B5C

	thumb_func_start atk86_stockpiletobasedamage
atk86_stockpiletobasedamage: @ 8025BD8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x10
	ldr r3, _08025C10 @ =gUnknown_02024C10
	ldr r1, [r3]
	ldrb r2, [r1, 0x1]
	ldrb r0, [r1, 0x2]
	lsls r0, 8
	orrs r2, r0
	ldrb r0, [r1, 0x3]
	lsls r0, 16
	orrs r2, r0
	ldrb r0, [r1, 0x4]
	lsls r0, 24
	orrs r2, r0
	ldr r7, _08025C14 @ =gUnknown_02024CA8
	ldr r6, _08025C18 @ =gUnknown_02024C07
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r7
	ldrb r0, [r0, 0x9]
	cmp r0, 0
	bne _08025C1C
	str r2, [r3]
	b _08025CC2
	.align 2, 0
_08025C10: .4byte gUnknown_02024C10
_08025C14: .4byte gUnknown_02024CA8
_08025C18: .4byte gUnknown_02024C07
_08025C1C:
	ldr r0, _08025CD0 @ =gUnknown_02024D1E
	ldrb r0, [r0, 0x6]
	cmp r0, 0x1
	beq _08025CA8
	ldr r0, _08025CD4 @ =gUnknown_02024BEC
	mov r8, r0
	ldr r4, _08025CD8 @ =gUnknown_02024C7A
	ldr r5, _08025CDC @ =gUnknown_02024C08
	ldrb r0, [r5]
	bl battle_get_per_side_status
	movs r1, 0x1
	ands r1, r0
	lsls r1, 1
	adds r1, r4
	ldrh r3, [r1]
	ldrb r0, [r6]
	movs r4, 0x58
	muls r0, r4
	ldr r2, _08025CE0 @ =gBattleMons
	adds r0, r2
	ldrb r1, [r5]
	muls r1, r4
	adds r1, r2
	ldr r2, _08025CE4 @ =gUnknown_02024BE6
	ldrh r2, [r2]
	movs r4, 0
	str r4, [sp]
	str r4, [sp, 0x4]
	ldrb r4, [r6]
	str r4, [sp, 0x8]
	ldrb r4, [r5]
	str r4, [sp, 0xC]
	bl CalculateBaseDamage
	ldrb r2, [r6]
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r1, r7
	ldrb r1, [r1, 0x9]
	adds r3, r0, 0
	muls r3, r1
	mov r1, r8
	str r3, [r1]
	ldr r2, _08025CE8 @ =0x02000000
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r7
	ldrb r0, [r0, 0x9]
	ldr r1, _08025CEC @ =0x00016002
	adds r2, r1
	strb r0, [r2]
	ldr r1, _08025CF0 @ =gUnknown_02024D28
	ldrb r0, [r6]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 28
	cmp r0, 0
	bge _08025CA8
	lsls r0, r3, 4
	subs r0, r3
	movs r1, 0xA
	bl __divsi3
	mov r1, r8
	str r0, [r1]
_08025CA8:
	ldr r2, _08025CF4 @ =gUnknown_02024CA8
	ldr r0, _08025CF8 @ =gUnknown_02024C07
	ldrb r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0
	strb r1, [r0, 0x9]
	ldr r1, _08025CFC @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_08025CC2:
	add sp, 0x10
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025CD0: .4byte gUnknown_02024D1E
_08025CD4: .4byte gUnknown_02024BEC
_08025CD8: .4byte gUnknown_02024C7A
_08025CDC: .4byte gUnknown_02024C08
_08025CE0: .4byte gBattleMons
_08025CE4: .4byte gUnknown_02024BE6
_08025CE8: .4byte 0x02000000
_08025CEC: .4byte 0x00016002
_08025CF0: .4byte gUnknown_02024D28
_08025CF4: .4byte gUnknown_02024CA8
_08025CF8: .4byte gUnknown_02024C07
_08025CFC: .4byte gUnknown_02024C10
	thumb_func_end atk86_stockpiletobasedamage

	thumb_func_start sub_8025D00
sub_8025D00: @ 8025D00
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r7, _08025D40 @ =gUnknown_02024C10
	ldr r1, [r7]
	ldrb r2, [r1, 0x1]
	ldrb r0, [r1, 0x2]
	lsls r0, 8
	orrs r2, r0
	ldrb r0, [r1, 0x3]
	lsls r0, 16
	orrs r2, r0
	ldrb r0, [r1, 0x4]
	lsls r0, 24
	orrs r2, r0
	ldr r0, _08025D44 @ =gUnknown_02024CA8
	mov r8, r0
	ldr r6, _08025D48 @ =gUnknown_02024C07
	ldrb r3, [r6]
	lsls r0, r3, 3
	subs r0, r3
	lsls r0, 2
	mov r1, r8
	adds r4, r0, r1
	ldrb r1, [r4, 0x9]
	cmp r1, 0
	bne _08025D50
	str r2, [r7]
	ldr r0, _08025D4C @ =gUnknown_02024D1E
	strb r1, [r0, 0x5]
	b _08025DD0
	.align 2, 0
_08025D40: .4byte gUnknown_02024C10
_08025D44: .4byte gUnknown_02024CA8
_08025D48: .4byte gUnknown_02024C07
_08025D4C: .4byte gUnknown_02024D1E
_08025D50:
	ldr r1, _08025D74 @ =gBattleMons
	movs r0, 0x58
	muls r0, r3
	adds r1, r0, r1
	ldrh r0, [r1, 0x2C]
	ldrh r3, [r1, 0x28]
	cmp r0, r3
	bne _08025D80
	movs r0, 0
	strb r0, [r4, 0x9]
	str r2, [r7]
	ldr r1, _08025D78 @ =gUnknown_02024C08
	ldrb r0, [r6]
	strb r0, [r1]
	ldr r1, _08025D7C @ =gUnknown_02024D1E
	movs r0, 0x1
	strb r0, [r1, 0x5]
	b _08025DD0
	.align 2, 0
_08025D74: .4byte gBattleMons
_08025D78: .4byte gUnknown_02024C08
_08025D7C: .4byte gUnknown_02024D1E
_08025D80:
	ldr r5, _08025DDC @ =gUnknown_02024BEC
	ldrh r0, [r1, 0x2C]
	ldrb r1, [r4, 0x9]
	movs r2, 0x3
	subs r2, r1
	movs r4, 0x1
	adds r1, r4, 0
	lsls r1, r2
	bl __divsi3
	str r0, [r5]
	cmp r0, 0
	bne _08025D9C
	str r4, [r5]
_08025D9C:
	ldr r0, [r5]
	negs r0, r0
	str r0, [r5]
	ldr r2, _08025DE0 @ =0x02000000
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r8
	ldrb r0, [r0, 0x9]
	ldr r1, _08025DE4 @ =0x00016002
	adds r2, r1
	movs r3, 0
	strb r0, [r2]
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r8
	strb r3, [r0, 0x9]
	ldr r0, [r7]
	adds r0, 0x5
	str r0, [r7]
	ldr r1, _08025DE8 @ =gUnknown_02024C08
	ldrb r0, [r6]
	strb r0, [r1]
_08025DD0:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025DDC: .4byte gUnknown_02024BEC
_08025DE0: .4byte 0x02000000
_08025DE4: .4byte 0x00016002
_08025DE8: .4byte gUnknown_02024C08
	thumb_func_end sub_8025D00

	thumb_func_start atk88_negativedamage
atk88_negativedamage: @ 8025DEC
	push {lr}
	ldr r2, _08025E14 @ =gUnknown_02024BEC
	ldr r0, _08025E18 @ =gUnknown_02024BF0
	ldr r0, [r0]
	lsrs r1, r0, 31
	adds r0, r1
	asrs r0, 1
	negs r0, r0
	str r0, [r2]
	cmp r0, 0
	bne _08025E08
	movs r0, 0x1
	negs r0, r0
	str r0, [r2]
_08025E08:
	ldr r1, _08025E1C @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08025E14: .4byte gUnknown_02024BEC
_08025E18: .4byte gUnknown_02024BF0
_08025E1C: .4byte gUnknown_02024C10
	thumb_func_end atk88_negativedamage

	thumb_func_start sub_8025E20
sub_8025E20: @ 8025E20
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r8, r3
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r1, 24
	lsrs r7, r1, 24
	lsls r2, 24
	lsrs r5, r2, 24
	movs r0, 0
	mov r9, r0
	mov r10, r0
	movs r0, 0x40
	ands r0, r5
	cmp r0, 0
	beq _08025E54
	ldr r0, _08025E4C @ =gUnknown_02024A60
	ldr r1, _08025E50 @ =gUnknown_02024C07
	b _08025E58
	.align 2, 0
_08025E4C: .4byte gUnknown_02024A60
_08025E50: .4byte gUnknown_02024C07
_08025E54:
	ldr r0, _08025EF8 @ =gUnknown_02024A60
	ldr r1, _08025EFC @ =gUnknown_02024C08
_08025E58:
	ldrb r1, [r1]
	strb r1, [r0]
	movs r0, 0xBF
	ands r5, r0
	movs r0, 0x80
	ands r0, r5
	cmp r0, 0
	beq _08025E72
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
_08025E72:
	movs r0, 0x7F
	ands r5, r0
	movs r0, 0x20
	ands r0, r5
	cmp r0, 0
	beq _08025E88
	mov r0, r10
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
_08025E88:
	movs r0, 0xDF
	ands r5, r0
	ldr r1, _08025F00 @ =gUnknown_030041C0
	movs r4, 0
	movs r2, 0xFD
	strb r2, [r1]
	movs r0, 0x5
	strb r0, [r1, 0x1]
	strb r7, [r1, 0x2]
	movs r3, 0x1
	negs r3, r3
	mov r12, r3
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	lsls r0, r6, 24
	cmp r0, 0
	blt _08025EAC
	b _080261B0
_08025EAC:
	ldr r4, _08025F04 @ =gUnknown_02024C80
	ldr r1, _08025EF8 @ =gUnknown_02024A60
	ldrb r0, [r1]
	bl battle_get_per_side_status
	movs r1, 0x1
	ands r1, r0
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrb r0, [r0, 0x2]
	cmp r0, 0
	beq _08025F54
	mov r2, r9
	cmp r2, 0
	bne _08025F54
	ldr r0, _08025F08 @ =gUnknown_02024BE6
	ldrh r0, [r0]
	cmp r0, 0xAE
	beq _08025F84
	cmp r5, 0x1
	bne _08025F74
	ldr r4, _08025F0C @ =gUnknown_02024D68
	ldr r3, _08025EF8 @ =gUnknown_02024A60
	ldrb r0, [r3]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r0, [r1]
	lsls r0, 31
	cmp r0, 0
	beq _08025F14
	ldr r0, _08025F10 @ =gUnknown_02024C10
	mov r4, r8
	str r4, [r0]
	b _08025F74
	.align 2, 0
_08025EF8: .4byte gUnknown_02024A60
_08025EFC: .4byte gUnknown_02024C08
_08025F00: .4byte gUnknown_030041C0
_08025F04: .4byte gUnknown_02024C80
_08025F08: .4byte gUnknown_02024BE6
_08025F0C: .4byte gUnknown_02024D68
_08025F10: .4byte gUnknown_02024C10
_08025F14:
	mov r0, r8
	bl b_movescr_stack_push
	ldr r0, _08025F40 @ =0x02000000
	ldr r6, _08025F44 @ =gUnknown_02024A60
	ldrb r1, [r6]
	ldr r2, _08025F48 @ =0x00016003
	adds r0, r2
	strb r1, [r0]
	ldr r1, _08025F4C @ =gUnknown_02024C10
	ldr r0, _08025F50 @ =gUnknown_081D9128
	str r0, [r1]
	ldrb r1, [r6]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrb r1, [r0]
	movs r2, 0x1
	orrs r1, r2
	strb r1, [r0]
	b _08025F74
	.align 2, 0
_08025F40: .4byte 0x02000000
_08025F44: .4byte gUnknown_02024A60
_08025F48: .4byte 0x00016003
_08025F4C: .4byte gUnknown_02024C10
_08025F50: .4byte gUnknown_081D9128
_08025F54:
	ldr r0, _08025F78 @ =gUnknown_02024BE6
	ldrh r0, [r0]
	cmp r0, 0xAE
	beq _08025F84
	mov r3, r10
	cmp r3, 0x1
	beq _08025F84
	movs r0, 0
	bl sub_801C108
	lsls r0, 24
	cmp r0, 0
	beq _08025F84
	ldr r1, _08025F7C @ =gUnknown_02024C10
	ldr r0, _08025F80 @ =BattleScript_1D83D6
	str r0, [r1]
_08025F74:
	movs r0, 0x1
	b _080262A4
	.align 2, 0
_08025F78: .4byte gUnknown_02024BE6
_08025F7C: .4byte gUnknown_02024C10
_08025F80: .4byte BattleScript_1D83D6
_08025F84:
	ldr r2, _08025FCC @ =gBattleMons
	ldr r1, _08025FD0 @ =gUnknown_02024A60
	ldrb r3, [r1]
	movs r4, 0x58
	adds r0, r3, 0
	muls r0, r4
	adds r0, r2
	adds r0, 0x20
	ldrb r0, [r0]
	mov r10, r2
	cmp r0, 0x1D
	beq _08025FA0
	cmp r0, 0x49
	bne _08026040
_08025FA0:
	mov r0, r9
	cmp r0, 0
	bne _08026040
	ldr r0, _08025FD4 @ =gUnknown_02024BE6
	ldrh r0, [r0]
	cmp r0, 0xAE
	beq _08026040
	cmp r5, 0x1
	bne _08025F74
	ldr r4, _08025FD8 @ =gUnknown_02024D68
	lsls r0, r3, 2
	adds r0, r3
	lsls r0, 2
	adds r0, r4
	ldrb r0, [r0]
	lsls r0, 31
	cmp r0, 0
	beq _08025FE0
	ldr r0, _08025FDC @ =gUnknown_02024C10
	mov r1, r8
	str r1, [r0]
	b _08025F74
	.align 2, 0
_08025FCC: .4byte gBattleMons
_08025FD0: .4byte gUnknown_02024A60
_08025FD4: .4byte gUnknown_02024BE6
_08025FD8: .4byte gUnknown_02024D68
_08025FDC: .4byte gUnknown_02024C10
_08025FE0:
	mov r0, r8
	bl b_movescr_stack_push
	ldr r0, _08026028 @ =0x02000000
	ldr r2, _0802602C @ =gUnknown_02024A60
	ldrb r1, [r2]
	ldr r3, _08026030 @ =0x00016003
	adds r0, r3
	strb r1, [r0]
	ldr r1, _08026034 @ =gUnknown_02024C10
	ldr r0, _08026038 @ =gUnknown_081D989B
	str r0, [r1]
	ldr r1, _0802603C @ =byte_2024C06
	ldrb r0, [r2]
	movs r6, 0x58
	muls r0, r6
	add r0, r10
	adds r0, 0x20
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r2]
	ldrb r1, [r1]
	bl sub_81074C4
	ldr r0, _0802602C @ =gUnknown_02024A60
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrb r1, [r0]
	movs r2, 0x1
	orrs r1, r2
	strb r1, [r0]
	b _08025F74
	.align 2, 0
_08026028: .4byte 0x02000000
_0802602C: .4byte gUnknown_02024A60
_08026030: .4byte 0x00016003
_08026034: .4byte gUnknown_02024C10
_08026038: .4byte gUnknown_081D989B
_0802603C: .4byte byte_2024C06
_08026040:
	ldr r1, _08026090 @ =gUnknown_02024A60
	ldrb r0, [r1]
	movs r4, 0x58
	muls r0, r4
	add r0, r10
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x33
	bne _080260A8
	mov r2, r9
	cmp r2, 0
	bne _080260A8
	cmp r7, 0x6
	bne _080260A8
	cmp r5, 0x1
	bne _08025F74
	mov r0, r8
	bl b_movescr_stack_push
	ldr r0, _08026094 @ =0x02000000
	ldr r3, _08026090 @ =gUnknown_02024A60
	ldrb r1, [r3]
	ldr r6, _08026098 @ =0x00016003
	adds r0, r6
	strb r1, [r0]
	ldr r1, _0802609C @ =gUnknown_02024C10
	ldr r0, _080260A0 @ =gUnknown_081D9903
	str r0, [r1]
	ldr r1, _080260A4 @ =byte_2024C06
	ldrb r0, [r3]
	muls r0, r4
	add r0, r10
	adds r0, 0x20
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r3]
	ldrb r1, [r1]
	bl sub_81074C4
	b _08025F74
	.align 2, 0
_08026090: .4byte gUnknown_02024A60
_08026094: .4byte 0x02000000
_08026098: .4byte 0x00016003
_0802609C: .4byte gUnknown_02024C10
_080260A0: .4byte gUnknown_081D9903
_080260A4: .4byte byte_2024C06
_080260A8:
	ldr r1, _080260FC @ =gUnknown_02024A60
	ldrb r0, [r1]
	movs r4, 0x58
	muls r0, r4
	add r0, r10
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x34
	bne _08026114
	mov r2, r9
	cmp r2, 0
	bne _08026114
	cmp r7, 0x1
	bne _08026114
	cmp r5, 0x1
	beq _080260CA
	b _08025F74
_080260CA:
	mov r0, r8
	bl b_movescr_stack_push
	ldr r0, _08026100 @ =0x02000000
	ldr r3, _080260FC @ =gUnknown_02024A60
	ldrb r1, [r3]
	ldr r6, _08026104 @ =0x00016003
	adds r0, r6
	strb r1, [r0]
	ldr r1, _08026108 @ =gUnknown_02024C10
	ldr r0, _0802610C @ =gUnknown_081D9903
	str r0, [r1]
	ldr r1, _08026110 @ =byte_2024C06
	ldrb r0, [r3]
	muls r0, r4
	add r0, r10
	adds r0, 0x20
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r3]
	ldrb r1, [r1]
	bl sub_81074C4
	b _08025F74
	.align 2, 0
_080260FC: .4byte gUnknown_02024A60
_08026100: .4byte 0x02000000
_08026104: .4byte 0x00016003
_08026108: .4byte gUnknown_02024C10
_0802610C: .4byte gUnknown_081D9903
_08026110: .4byte byte_2024C06
_08026114:
	ldr r0, _080261A0 @ =gUnknown_02024A60
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	add r0, r10
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x13
	bne _0802612C
	cmp r5, 0
	bne _0802612C
	b _08025F74
_0802612C:
	lsls r0, r6, 24
	asrs r0, 28
	movs r1, 0x7
	ands r0, r1
	negs r0, r0
	lsls r0, 24
	ldr r3, _080261A4 @ =gUnknown_03004290
	movs r4, 0
	movs r1, 0xFD
	strb r1, [r3]
	movs r2, 0x1
	lsrs r6, r0, 24
	asrs r0, 24
	subs r1, 0xFF
	cmp r0, r1
	bne _08026156
	strb r4, [r3, 0x1]
	movs r0, 0xD3
	strb r0, [r3, 0x2]
	strb r4, [r3, 0x3]
	movs r2, 0x4
_08026156:
	adds r0, r2, r3
	strb r4, [r0]
	adds r2, 0x1
	adds r1, r2, r3
	movs r0, 0xD4
	strb r0, [r1]
	adds r2, 0x1
	adds r0, r2, r3
	strb r4, [r0]
	adds r2, 0x1
	adds r1, r2, r3
	movs r0, 0xFF
	strb r0, [r1]
	ldr r1, _080261A0 @ =gUnknown_02024A60
	ldrb r2, [r1]
	movs r0, 0x58
	muls r0, r2
	adds r0, r7, r0
	mov r1, r10
	adds r1, 0x18
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0
	beq _08026206
	movs r1, 0
	ldr r0, _080261A8 @ =gUnknown_02024C08
	ldrb r0, [r0]
	ldr r3, _080261AC @ =gUnknown_02024D1E
	mov r8, r3
	cmp r0, r2
	bne _0802619A
	movs r1, 0x1
_0802619A:
	mov r4, r8
	strb r1, [r4, 0x5]
	b _08026234
	.align 2, 0
_080261A0: .4byte gUnknown_02024A60
_080261A4: .4byte gUnknown_03004290
_080261A8: .4byte gUnknown_02024C08
_080261AC: .4byte gUnknown_02024D1E
_080261B0:
	asrs r6, r0, 28
	movs r0, 0x7
	ands r6, r0
	ldr r3, _08026210 @ =gUnknown_03004290
	strb r2, [r3]
	movs r2, 0x1
	cmp r6, 0x2
	bne _080261CA
	strb r4, [r3, 0x1]
	movs r0, 0xD1
	strb r0, [r3, 0x2]
	strb r4, [r3, 0x3]
	movs r2, 0x4
_080261CA:
	adds r0, r2, r3
	strb r4, [r0]
	adds r2, 0x1
	adds r1, r2, r3
	movs r0, 0xD2
	strb r0, [r1]
	adds r2, 0x1
	adds r0, r2, r3
	strb r4, [r0]
	adds r2, 0x1
	adds r1, r2, r3
	ldrb r0, [r1]
	mov r2, r12
	orrs r0, r2
	strb r0, [r1]
	ldr r2, _08026214 @ =gBattleMons
	ldr r4, _08026218 @ =gUnknown_02024A60
	ldrb r3, [r4]
	movs r0, 0x58
	muls r0, r3
	adds r0, r7, r0
	adds r1, r2, 0
	adds r1, 0x18
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	mov r10, r2
	cmp r0, 0xC
	bne _08026220
_08026206:
	ldr r1, _0802621C @ =gUnknown_02024D1E
	movs r0, 0x2
	strb r0, [r1, 0x5]
	mov r8, r1
	b _08026234
	.align 2, 0
_08026210: .4byte gUnknown_03004290
_08026214: .4byte gBattleMons
_08026218: .4byte gUnknown_02024A60
_0802621C: .4byte gUnknown_02024D1E
_08026220:
	movs r1, 0
	ldr r0, _080262B4 @ =gUnknown_02024C08
	ldrb r0, [r0]
	ldr r2, _080262B8 @ =gUnknown_02024D1E
	mov r8, r2
	cmp r0, r3
	bne _08026230
	movs r1, 0x1
_08026230:
	mov r3, r8
	strb r1, [r3, 0x5]
_08026234:
	ldr r2, _080262BC @ =gUnknown_02024A60
	ldrb r0, [r2]
	movs r4, 0x58
	adds r1, r0, 0
	muls r1, r4
	adds r1, r7, r1
	mov r3, r10
	adds r3, 0x18
	adds r1, r3
	lsls r0, r6, 24
	asrs r0, 24
	ldrb r6, [r1]
	adds r0, r6
	strb r0, [r1]
	ldrb r0, [r2]
	muls r0, r4
	adds r0, r7, r0
	adds r1, r0, r3
	movs r0, 0
	ldrsb r0, [r1, r0]
	cmp r0, 0
	bge _08026264
	movs r0, 0
	strb r0, [r1]
_08026264:
	ldr r1, _080262BC @ =gUnknown_02024A60
	ldrb r0, [r1]
	muls r0, r4
	adds r0, r7, r0
	adds r1, r0, r3
	movs r0, 0
	ldrsb r0, [r1, r0]
	cmp r0, 0xC
	ble _0802627A
	movs r0, 0xC
	strb r0, [r1]
_0802627A:
	mov r2, r8
	ldrb r0, [r2, 0x5]
	cmp r0, 0x2
	bne _080262A2
	movs r3, 0x1
	ands r3, r5
	cmp r3, 0
	beq _08026294
	ldr r0, _080262C0 @ =gUnknown_02024C68
	ldrb r1, [r0]
	movs r2, 0x1
	orrs r1, r2
	strb r1, [r0]
_08026294:
	mov r4, r8
	ldrb r0, [r4, 0x5]
	cmp r0, 0x2
	bne _080262A2
	cmp r3, 0
	bne _080262A2
	b _08025F74
_080262A2:
	movs r0, 0
_080262A4:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_080262B4: .4byte gUnknown_02024C08
_080262B8: .4byte gUnknown_02024D1E
_080262BC: .4byte gUnknown_02024A60
_080262C0: .4byte gUnknown_02024C68
	thumb_func_end sub_8025E20

	thumb_func_start atk89_statbuffchange
atk89_statbuffchange: @ 80262C4
	push {r4,r5,lr}
	ldr r5, _0802630C @ =gUnknown_02024C10
	ldr r2, [r5]
	ldrb r3, [r2, 0x2]
	ldrb r0, [r2, 0x3]
	lsls r0, 8
	orrs r3, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 16
	orrs r3, r0
	ldrb r0, [r2, 0x5]
	lsls r0, 24
	orrs r3, r0
	ldr r0, _08026310 @ =0x02000000
	ldr r1, _08026314 @ =0x0001601e
	adds r0, r1
	ldrb r4, [r0]
	movs r0, 0xF0
	ands r0, r4
	lsls r0, 24
	asrs r0, 24
	movs r1, 0xF
	ands r1, r4
	ldrb r2, [r2, 0x1]
	bl sub_8025E20
	lsls r0, 24
	cmp r0, 0
	bne _08026304
	ldr r0, [r5]
	adds r0, 0x6
	str r0, [r5]
_08026304:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802630C: .4byte gUnknown_02024C10
_08026310: .4byte 0x02000000
_08026314: .4byte 0x0001601e
	thumb_func_end atk89_statbuffchange

	thumb_func_start atk8A_normalisebuffs
atk8A_normalisebuffs: @ 8026318
	push {r4-r7,lr}
	movs r2, 0
	ldr r0, _08026360 @ =gUnknown_02024A68
	ldrb r1, [r0]
	ldr r0, _08026364 @ =gUnknown_02024C10
	mov r12, r0
	cmp r2, r1
	bge _08026350
	ldr r0, _08026368 @ =gBattleMons
	movs r4, 0x6
	adds r5, r1, 0
	movs r7, 0x58
	adds r6, r0, 0
	adds r6, 0x18
_08026334:
	adds r3, r2, 0x1
	movs r1, 0x7
	adds r0, r2, 0
	muls r0, r7
	adds r0, r6
	adds r0, 0x7
_08026340:
	strb r4, [r0]
	subs r0, 0x1
	subs r1, 0x1
	cmp r1, 0
	bge _08026340
	adds r2, r3, 0
	cmp r2, r5
	blt _08026334
_08026350:
	mov r1, r12
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026360: .4byte gUnknown_02024A68
_08026364: .4byte gUnknown_02024C10
_08026368: .4byte gBattleMons
	thumb_func_end atk8A_normalisebuffs

	thumb_func_start atk8B_setbide
atk8B_setbide: @ 802636C
	push {r4,r5,lr}
	ldr r4, _080263C4 @ =gBattleMons
	ldr r3, _080263C8 @ =gUnknown_02024C07
	ldrb r0, [r3]
	movs r5, 0x58
	adds r2, r0, 0
	muls r2, r5
	adds r4, 0x50
	adds r2, r4
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 5
	orrs r0, r1
	str r0, [r2]
	ldr r1, _080263CC @ =gUnknown_02024C54
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r1
	ldr r1, _080263D0 @ =gUnknown_02024BE6
	ldrh r1, [r1]
	movs r2, 0
	strh r1, [r0]
	ldr r1, _080263D4 @ =gUnknown_02024BF4
	ldrb r0, [r3]
	lsls r0, 2
	adds r0, r1
	str r2, [r0]
	ldrb r0, [r3]
	adds r1, r0, 0
	muls r1, r5
	adds r1, r4
	ldr r0, [r1]
	movs r2, 0x80
	lsls r2, 2
	orrs r0, r2
	str r0, [r1]
	ldr r1, _080263D8 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080263C4: .4byte gBattleMons
_080263C8: .4byte gUnknown_02024C07
_080263CC: .4byte gUnknown_02024C54
_080263D0: .4byte gUnknown_02024BE6
_080263D4: .4byte gUnknown_02024BF4
_080263D8: .4byte gUnknown_02024C10
	thumb_func_end atk8B_setbide

	thumb_func_start atk8C_confuseifrepeatingattackends
atk8C_confuseifrepeatingattackends: @ 80263DC
	push {lr}
	ldr r1, _0802640C @ =gBattleMons
	ldr r0, _08026410 @ =gUnknown_02024C07
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0xC0
	lsls r1, 4
	ands r0, r1
	cmp r0, 0
	bne _080263FE
	ldr r1, _08026414 @ =gUnknown_02024D1E
	movs r0, 0x75
	strb r0, [r1, 0x3]
_080263FE:
	ldr r1, _08026418 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0802640C: .4byte gBattleMons
_08026410: .4byte gUnknown_02024C07
_08026414: .4byte gUnknown_02024D1E
_08026418: .4byte gUnknown_02024C10
	thumb_func_end atk8C_confuseifrepeatingattackends

	thumb_func_start atk8D_setloopcounter
atk8D_setloopcounter: @ 802641C
	push {r4,r5,lr}
	ldr r0, _08026430 @ =gUnknown_02024C10
	ldr r0, [r0]
	ldrb r1, [r0, 0x1]
	cmp r1, 0
	beq _08026438
	ldr r0, _08026434 @ =gUnknown_02024C0E
	strb r1, [r0]
	b _08026452
	.align 2, 0
_08026430: .4byte gUnknown_02024C10
_08026434: .4byte gUnknown_02024C0E
_08026438:
	ldr r4, _08026460 @ =gUnknown_02024C0E
	bl Random
	movs r5, 0x3
	ands r0, r5
	strb r0, [r4]
	cmp r0, 0x1
	bls _0802644E
	bl Random
	ands r0, r5
_0802644E:
	adds r0, 0x2
	strb r0, [r4]
_08026452:
	ldr r1, _08026464 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08026460: .4byte gUnknown_02024C0E
_08026464: .4byte gUnknown_02024C10
	thumb_func_end atk8D_setloopcounter

	thumb_func_start sub_8026468
sub_8026468: @ 8026468
	push {r4,lr}
	ldr r1, _080264A8 @ =0x02000000
	ldr r0, _080264AC @ =0x000160e0
	adds r2, r1, r0
	movs r3, 0
	movs r0, 0xFD
	strb r0, [r2]
	ldr r2, _080264B0 @ =0x000160e1
	adds r0, r1, r2
	movs r2, 0x1
	strb r2, [r0]
	ldr r4, _080264B4 @ =0x000160e2
	adds r0, r1, r4
	strb r2, [r0]
	adds r4, 0x1
	adds r0, r1, r4
	strb r2, [r0]
	ldr r2, _080264B8 @ =0x000160e4
	adds r0, r1, r2
	strb r3, [r0]
	adds r4, 0x2
	adds r1, r4
	movs r0, 0xFF
	strb r0, [r1]
	ldr r1, _080264BC @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080264A8: .4byte 0x02000000
_080264AC: .4byte 0x000160e0
_080264B0: .4byte 0x000160e1
_080264B4: .4byte 0x000160e2
_080264B8: .4byte 0x000160e4
_080264BC: .4byte gUnknown_02024C10
	thumb_func_end sub_8026468

	thumb_func_start sub_80264C0
sub_80264C0: @ 80264C0
	push {r4-r7,lr}
	ldr r6, _080264F4 @ =gBattleMons
	ldr r7, _080264F8 @ =gUnknown_02024C07
	ldrb r0, [r7]
	movs r5, 0x58
	adds r1, r0, 0
	muls r1, r5
	adds r1, r6
	adds r1, 0x2A
	ldr r4, _080264FC @ =gUnknown_02024C08
	ldrb r3, [r4]
	adds r0, r3, 0
	muls r0, r5
	adds r0, r6
	adds r0, 0x2A
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bcc _0802650C
	ldr r0, _08026500 @ =0x02000000
	ldr r2, _08026504 @ =0x00016064
	adds r1, r3, r2
	adds r1, r0
	ldr r2, _08026508 @ =gUnknown_02024A6A
	lsls r0, r3, 1
	b _08026568
	.align 2, 0
_080264F4: .4byte gBattleMons
_080264F8: .4byte gUnknown_02024C07
_080264FC: .4byte gUnknown_02024C08
_08026500: .4byte 0x02000000
_08026504: .4byte 0x00016064
_08026508: .4byte gUnknown_02024A6A
_0802650C:
	bl Random
	movs r3, 0xFF
	ands r3, r0
	ldrb r0, [r7]
	muls r0, r5
	adds r0, r6
	adds r0, 0x2A
	ldrb r2, [r0]
	ldrb r4, [r4]
	adds r0, r4, 0
	muls r0, r5
	adds r0, r6
	adds r0, 0x2A
	ldrb r1, [r0]
	adds r2, r1
	adds r0, r3, 0
	muls r0, r2
	asrs r0, 8
	adds r0, 0x1
	lsrs r1, 2
	cmp r0, r1
	bhi _0802655C
	ldr r3, _08026558 @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	movs r0, 0
	b _08026576
	.align 2, 0
_08026558: .4byte gUnknown_02024C10
_0802655C:
	ldr r0, _0802657C @ =0x02000000
	ldr r2, _08026580 @ =0x00016064
	adds r1, r4, r2
	adds r1, r0
	ldr r2, _08026584 @ =gUnknown_02024A6A
	lsls r0, r4, 1
_08026568:
	adds r0, r2
	ldrh r0, [r0]
	strb r0, [r1]
	ldr r1, _08026588 @ =gUnknown_02024C10
	ldr r0, _0802658C @ =gUnknown_081D90FC
	str r0, [r1]
	movs r0, 0x1
_08026576:
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802657C: .4byte 0x02000000
_08026580: .4byte 0x00016064
_08026584: .4byte gUnknown_02024A6A
_08026588: .4byte gUnknown_02024C10
_0802658C: .4byte gUnknown_081D90FC
	thumb_func_end sub_80264C0

	thumb_func_start sub_8026590
sub_8026590: @ 8026590
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r4, _08026628 @ =gUnknown_020239F8
	ldrh r1, [r4]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	bne _080265A4
	b _0802687C
_080265A4:
	ldr r5, _0802662C @ =gUnknown_02024C08
	ldrb r0, [r5]
	bl battle_side_get_owner
	lsls r0, 24
	ldr r1, _08026630 @ =gEnemyParty
	mov r8, r1
	cmp r0, 0
	bne _080265BA
	ldr r2, _08026634 @ =gPlayerParty
	mov r8, r2
_080265BA:
	ldrh r1, [r4]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08026638
	movs r7, 0
	movs r6, 0
	ldrb r0, [r5]
	bl sub_803FC34
	lsls r0, 24
	lsrs r0, 24
	bl sub_803FBFC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1
	bne _080265E0
	movs r6, 0x3
_080265E0:
	adds r5, r6, 0
	adds r0, r5, 0x3
	cmp r5, r0
	bge _08026678
_080265E8:
	movs r0, 0x64
	muls r0, r5
	mov r1, r8
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _0802661A
	adds r0, r4, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0
	bne _0802661A
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _0802661A
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
_0802661A:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	adds r0, r6, 0x3
	cmp r5, r0
	blt _080265E8
	b _08026678
	.align 2, 0
_08026628: .4byte gUnknown_020239F8
_0802662C: .4byte gUnknown_02024C08
_08026630: .4byte gEnemyParty
_08026634: .4byte gPlayerParty
_08026638:
	movs r7, 0
	movs r5, 0
_0802663C:
	movs r0, 0x64
	muls r0, r5
	mov r2, r8
	adds r4, r2, r0
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _0802666E
	adds r0, r4, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0
	bne _0802666E
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _0802666E
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
_0802666E:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x5
	bls _0802663C
_08026678:
	cmp r7, 0x1
	bhi _08026688
	ldr r0, _080266BC @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x41
	ands r0, r1
	cmp r0, 0x1
	bne _080266A0
_08026688:
	cmp r7, 0x2
	bhi _080266C4
	ldr r0, _080266BC @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080266C4
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	bne _080266C4
_080266A0:
	ldr r3, _080266C0 @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _08026880
	.align 2, 0
_080266BC: .4byte gUnknown_020239F8
_080266C0: .4byte gUnknown_02024C10
_080266C4:
	bl sub_80264C0
	lsls r0, 24
	cmp r0, 0
	bne _080266D0
	b _08026880
_080266D0:
	ldr r0, _08026710 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08026774
_080266DC:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r0, _08026714 @ =gUnknown_02024C08
	ldrb r0, [r0]
	bl sub_803FC34
	lsls r0, 24
	lsrs r0, 24
	bl sub_803FBFC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1
	bne _08026718
	adds r0, r6, 0x3
	lsls r0, 24
	lsrs r5, r0, 24
	b _0802671A
	.align 2, 0
_08026710: .4byte gUnknown_020239F8
_08026714: .4byte gUnknown_02024C08
_08026718:
	adds r5, r6, 0
_0802671A:
	ldr r4, _0802676C @ =gUnknown_02024A6A
	ldr r0, _08026770 @ =gUnknown_02024C08
	ldrb r2, [r0]
	lsls r1, r2, 1
	adds r1, r4
	lsls r0, r5, 16
	lsrs r3, r0, 16
	ldrh r1, [r1]
	cmp r3, r1
	beq _080266DC
	movs r0, 0x2
	eors r2, r0
	lsls r0, r2, 1
	adds r0, r4
	ldrh r0, [r0]
	cmp r3, r0
	beq _080266DC
	movs r0, 0x64
	muls r0, r5
	mov r1, r8
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _080266DC
	adds r0, r4, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0x1
	beq _080266DC
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _080266DC
	b _08026832
	.align 2, 0
_0802676C: .4byte gUnknown_02024A6A
_08026770: .4byte gUnknown_02024C08
_08026774:
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080267E4
	ldr r6, _080267DC @ =gUnknown_02024A6A
_0802677E:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x6
	bl __umodsi3
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r0, _080267E0 @ =gUnknown_02024C08
	ldrb r1, [r0]
	lsls r0, r1, 1
	adds r0, r6
	adds r2, r5, 0
	ldrh r0, [r0]
	cmp r2, r0
	beq _0802677E
	movs r0, 0x2
	eors r1, r0
	lsls r0, r1, 1
	adds r0, r6
	ldrh r0, [r0]
	cmp r2, r0
	beq _0802677E
	movs r0, 0x64
	muls r0, r5
	mov r2, r8
	adds r4, r2, r0
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _0802677E
	adds r0, r4, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0x1
	beq _0802677E
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _0802677E
	b _08026832
	.align 2, 0
_080267DC: .4byte gUnknown_02024A6A
_080267E0: .4byte gUnknown_02024C08
_080267E4:
	ldr r6, _0802686C @ =gUnknown_02024A6A
_080267E6:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x6
	bl __umodsi3
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r0, _08026870 @ =gUnknown_02024C08
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r6
	ldrh r0, [r0]
	cmp r5, r0
	beq _080267E6
	movs r0, 0x64
	muls r0, r5
	mov r1, r8
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _080267E6
	adds r0, r4, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0x1
	beq _080267E6
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _080267E6
_08026832:
	ldr r0, _08026874 @ =0x02000000
	ldr r4, _08026870 @ =gUnknown_02024C08
	ldrb r1, [r4]
	ldr r2, _08026878 @ =0x00016068
	adds r1, r2
	adds r1, r0
	strb r5, [r1]
	bl sub_806B528
	lsls r0, 24
	cmp r0, 0
	bne _08026850
	ldrb r0, [r4]
	bl sub_8012258
_08026850:
	ldrb r0, [r4]
	adds r1, r5, 0
	movs r2, 0
	bl sub_8094B6C
	ldrb r1, [r4]
	movs r0, 0x2
	eors r0, r1
	adds r1, r5, 0
	movs r2, 0x1
	bl sub_8094B6C
	b _08026880
	.align 2, 0
_0802686C: .4byte gUnknown_02024A6A
_08026870: .4byte gUnknown_02024C08
_08026874: .4byte 0x02000000
_08026878: .4byte 0x00016068
_0802687C:
	bl sub_80264C0
_08026880:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8026590

	thumb_func_start sub_802688C
sub_802688C: @ 802688C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	movs r6, 0
	ldr r2, _08026920 @ =gBattleMons
	ldr r3, _08026924 @ =gUnknown_02024C07
	ldrb r1, [r3]
	movs r0, 0x58
	muls r0, r1
	adds r1, r2, 0
	adds r1, 0xC
	adds r0, r1
	ldrh r0, [r0]
	mov r8, r2
	cmp r0, 0
	beq _080268CE
	movs r5, 0x58
	adds r2, r1, 0
_080268B4:
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0x3
	bhi _080268CE
	lsls r1, r6, 1
	ldrb r0, [r3]
	muls r0, r5
	adds r1, r0
	adds r1, r2
	ldrh r0, [r1]
	cmp r0, 0
	bne _080268B4
_080268CE:
	movs r3, 0
	cmp r3, r6
	bcs _08026950
	ldr r0, _08026928 @ =gBattleMoves
	mov r10, r0
	ldr r5, _08026920 @ =gBattleMons
	mov r12, r5
	ldr r7, _08026924 @ =gUnknown_02024C07
	ldrb r0, [r7]
	movs r4, 0x58
	adds r5, r0, 0
	muls r5, r4
	movs r0, 0xC
	add r0, r12
	mov r9, r0
_080268EC:
	lsls r0, r3, 1
	adds r0, r5
	add r0, r9
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	add r0, r10
	ldrb r2, [r0, 0x2]
	cmp r2, 0x9
	bne _0802692E
	mov r0, r8
	adds r1, r5, r0
	adds r0, r1, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0x7
	beq _0802691A
	adds r0, r1, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0x7
	bne _0802692C
_0802691A:
	movs r2, 0x7
	b _0802692E
	.align 2, 0
_08026920: .4byte gBattleMons
_08026924: .4byte gUnknown_02024C07
_08026928: .4byte gBattleMoves
_0802692C:
	movs r2, 0
_0802692E:
	ldrb r0, [r7]
	muls r0, r4
	add r0, r12
	adds r1, r0, 0
	adds r1, 0x21
	ldrb r1, [r1]
	cmp r2, r1
	beq _08026946
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r2, r0
	bne _08026950
_08026946:
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, r6
	bcc _080268EC
_08026950:
	cmp r3, r6
	bne _08026974
	ldr r3, _08026970 @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _08026A18
	.align 2, 0
_08026970: .4byte gUnknown_02024C10
_08026974:
	movs r7, 0x3
	ldr r5, _080269CC @ =gBattleMoves
	mov r9, r5
_0802697A:
	bl Random
	adds r3, r0, 0
	ands r3, r7
	cmp r3, r6
	bcs _0802697A
	ldr r4, _080269D0 @ =gBattleMons
	lsls r1, r3, 1
	ldr r3, _080269D4 @ =gUnknown_02024C07
	ldrb r2, [r3]
	movs r0, 0x58
	adds r5, r2, 0
	muls r5, r0
	adds r1, r5
	adds r0, r4, 0
	adds r0, 0xC
	adds r1, r0
	ldrh r1, [r1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	add r0, r9
	ldrb r2, [r0, 0x2]
	mov r8, r4
	adds r4, r3, 0
	cmp r2, 0x9
	bne _080269DA
	mov r0, r8
	adds r2, r5, r0
	adds r0, r2, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0x7
	beq _080269C8
	adds r0, r2, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0x7
	bne _080269D8
_080269C8:
	movs r2, 0x7
	b _080269DA
	.align 2, 0
_080269CC: .4byte gBattleMoves
_080269D0: .4byte gBattleMons
_080269D4: .4byte gUnknown_02024C07
_080269D8:
	movs r2, 0
_080269DA:
	ldrb r0, [r4]
	movs r3, 0x58
	muls r0, r3
	add r0, r8
	adds r1, r0, 0
	adds r1, 0x21
	ldrb r5, [r1]
	cmp r2, r5
	beq _0802697A
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r2, r0
	beq _0802697A
	strb r2, [r1]
	ldrb r0, [r4]
	muls r0, r3
	add r0, r8
	adds r0, 0x22
	strb r2, [r0]
	ldr r1, _08026A28 @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x3
	strb r0, [r1, 0x1]
	strb r2, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r1, _08026A2C @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_08026A18:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026A28: .4byte gUnknown_030041C0
_08026A2C: .4byte gUnknown_02024C10
	thumb_func_end sub_802688C

	thumb_func_start atk91_givemoney
atk91_givemoney: @ 8026A30
	push {r4,lr}
	ldr r0, _08026A8C @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _08026AAC
	ldr r4, _08026A90 @ =gUnknown_02024D1A
	ldrh r0, [r4]
	cmp r0, 0
	beq _08026AAC
	ldr r0, _08026A94 @ =gSaveBlock1 + 0x490
	ldrh r2, [r4]
	ldr r1, _08026A98 @ =0x02000000
	ldr r3, _08026A9C @ =0x00016056
	adds r1, r3
	ldrb r1, [r1]
	muls r1, r2
	bl sub_80B79B8
	ldr r1, _08026AA0 @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x1
	strb r0, [r1, 0x1]
	movs r0, 0x2
	strb r0, [r1, 0x2]
	movs r0, 0x5
	strb r0, [r1, 0x3]
	ldrh r2, [r4]
	strb r2, [r1, 0x4]
	movs r0, 0xFF
	lsls r0, 8
	ands r0, r2
	lsrs r0, 8
	strb r0, [r1, 0x5]
	movs r0, 0xFF
	strb r0, [r1, 0x6]
	ldr r4, _08026AA4 @ =gUnknown_02024C10
	ldr r0, [r4]
	adds r0, 0x1
	bl b_movescr_stack_push
	ldr r0, _08026AA8 @ =gUnknown_081D95DB
	str r0, [r4]
	b _08026AB4
	.align 2, 0
_08026A8C: .4byte gUnknown_020239F8
_08026A90: .4byte gUnknown_02024D1A
_08026A94: .4byte gSaveBlock1 + 0x490
_08026A98: .4byte 0x02000000
_08026A9C: .4byte 0x00016056
_08026AA0: .4byte gUnknown_030041C0
_08026AA4: .4byte gUnknown_02024C10
_08026AA8: .4byte gUnknown_081D95DB
_08026AAC:
	ldr r1, _08026ABC @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
_08026AB4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08026ABC: .4byte gUnknown_02024C10
	thumb_func_end atk91_givemoney

	thumb_func_start atk92_setlightscreen
atk92_setlightscreen: @ 8026AC0
	push {r4-r6,lr}
	ldr r4, _08026AF0 @ =gUnknown_02024C07
	ldrb r0, [r4]
	bl battle_get_per_side_status
	ldr r6, _08026AF4 @ =gUnknown_02024C7A
	movs r5, 0x1
	adds r1, r5, 0
	ands r1, r0
	lsls r1, 1
	adds r1, r6
	ldrh r1, [r1]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08026B00
	ldr r2, _08026AF8 @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08026AFC @ =gUnknown_02024D1E
	movs r0, 0
	b _08026B60
	.align 2, 0
_08026AF0: .4byte gUnknown_02024C07
_08026AF4: .4byte gUnknown_02024C7A
_08026AF8: .4byte gUnknown_02024C68
_08026AFC: .4byte gUnknown_02024D1E
_08026B00:
	ldrb r0, [r4]
	bl battle_get_per_side_status
	adds r1, r5, 0
	ands r1, r0
	lsls r1, 1
	adds r1, r6
	ldrh r0, [r1]
	movs r2, 0x2
	orrs r0, r2
	strh r0, [r1]
	ldrb r0, [r4]
	bl battle_get_per_side_status
	ldr r2, _08026B50 @ =gUnknown_02024C80
	adds r1, r5, 0
	ands r1, r0
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0x5
	strb r1, [r0, 0x1]
	ldr r0, _08026B54 @ =gUnknown_020239F8
	ldrh r1, [r0]
	adds r0, r5, 0
	ands r0, r1
	cmp r0, 0
	beq _08026B5C
	movs r0, 0x1
	bl sub_803C348
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _08026B5C
	ldr r1, _08026B58 @ =gUnknown_02024D1E
	movs r0, 0x4
	b _08026B60
	.align 2, 0
_08026B50: .4byte gUnknown_02024C80
_08026B54: .4byte gUnknown_020239F8
_08026B58: .4byte gUnknown_02024D1E
_08026B5C:
	ldr r1, _08026B70 @ =gUnknown_02024D1E
	movs r0, 0x3
_08026B60:
	strb r0, [r1, 0x5]
	ldr r1, _08026B74 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026B70: .4byte gUnknown_02024D1E
_08026B74: .4byte gUnknown_02024C10
	thumb_func_end atk92_setlightscreen

	thumb_func_start sub_8026B78
sub_8026B78: @ 8026B78
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r7, _08026BA8 @ =gBattleMons
	ldr r6, _08026BAC @ =gUnknown_02024C08
	ldrb r2, [r6]
	movs r5, 0x58
	adds r0, r2, 0
	muls r0, r5
	adds r1, r0, r7
	ldrh r0, [r1, 0x2E]
	cmp r0, 0xAF
	bne _08026BB4
	ldr r1, _08026BB0 @ =gEnigmaBerries
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r4, [r0, 0x7]
	ldrb r6, [r0, 0x1A]
	b _08026BCE
	.align 2, 0
_08026BA8: .4byte gBattleMons
_08026BAC: .4byte gUnknown_02024C08
_08026BB0: .4byte gEnigmaBerries
_08026BB4:
	ldrh r0, [r1, 0x2E]
	bl ItemId_GetHoldEffect
	lsls r0, 24
	lsrs r4, r0, 24
	ldrb r0, [r6]
	muls r0, r5
	adds r0, r7
	ldrh r0, [r0, 0x2E]
	bl ItemId_GetHoldEffectParam
	lsls r0, 24
	lsrs r6, r0, 24
_08026BCE:
	ldr r1, _08026C4C @ =gUnknown_02024C0B
	ldr r5, _08026C50 @ =gUnknown_02024C08
	ldrb r0, [r5]
	strb r0, [r1]
	cmp r4, 0x27
	bne _08026C0C
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, r6
	bcs _08026C0C
	ldrb r0, [r5]
	movs r1, 0x27
	bl sub_81074F8
	ldr r2, _08026C54 @ =gUnknown_02024D68
	ldrb r1, [r5]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r2, 0x80
	orrs r1, r2
	strb r1, [r0]
_08026C0C:
	ldr r0, _08026C58 @ =gBattleMons
	mov r8, r0
	ldr r1, _08026C50 @ =gUnknown_02024C08
	ldrb r2, [r1]
	movs r6, 0x58
	adds r0, r2, 0
	muls r0, r6
	mov r3, r8
	adds r5, r0, r3
	adds r0, r5, 0
	adds r0, 0x20
	ldrb r3, [r0]
	mov r10, r8
	cmp r3, 0x5
	bne _08026C6C
	ldr r2, _08026C5C @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08026C60 @ =byte_2024C06
	strb r3, [r0]
	ldr r1, _08026C64 @ =gUnknown_02024C10
	ldr r0, _08026C68 @ =gUnknown_081D9826
	str r0, [r1]
	ldr r1, _08026C50 @ =gUnknown_02024C08
	ldrb r0, [r1]
	movs r1, 0x5
	bl sub_81074C4
	b _08026E40
	.align 2, 0
_08026C4C: .4byte gUnknown_02024C0B
_08026C50: .4byte gUnknown_02024C08
_08026C54: .4byte gUnknown_02024D68
_08026C58: .4byte gBattleMons
_08026C5C: .4byte gUnknown_02024C68
_08026C60: .4byte byte_2024C06
_08026C64: .4byte gUnknown_02024C10
_08026C68: .4byte gUnknown_081D9826
_08026C6C:
	ldr r1, _08026CE0 @ =gUnknown_02024C98
	lsls r0, r2, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x18
	ands r0, r1
	cmp r0, 0
	bne _08026CF4
	ldr r1, _08026CE4 @ =gBattleMoves
	ldr r0, _08026CE8 @ =gUnknown_02024BE6
	ldrh r0, [r0]
	lsls r2, r0, 1
	adds r2, r0
	lsls r2, 2
	adds r2, r1
	ldr r7, _08026CEC @ =gUnknown_02024C07
	ldrb r0, [r7]
	muls r0, r6
	add r0, r10
	adds r0, 0x2A
	ldrb r0, [r0]
	adds r1, r5, 0
	adds r1, 0x2A
	ldrb r1, [r1]
	subs r0, r1
	ldrb r2, [r2, 0x3]
	adds r0, r2
	lsls r0, 16
	lsrs r4, r0, 16
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	adds r0, 0x1
	cmp r0, r4
	bge _08026CDC
	ldrb r0, [r7]
	adds r1, r0, 0
	muls r1, r6
	add r1, r10
	adds r1, 0x2A
	ldr r2, _08026CF0 @ =gUnknown_02024C08
	ldrb r0, [r2]
	muls r0, r6
	add r0, r10
	adds r0, 0x2A
	ldrb r1, [r1]
	movs r4, 0x1
	ldrb r0, [r0]
	cmp r1, r0
	bcs _08026D20
_08026CDC:
	mov r10, r8
	b _08026DE0
	.align 2, 0
_08026CE0: .4byte gUnknown_02024C98
_08026CE4: .4byte gBattleMoves
_08026CE8: .4byte gUnknown_02024BE6
_08026CEC: .4byte gUnknown_02024C07
_08026CF0: .4byte gUnknown_02024C08
_08026CF4:
	ldr r0, _08026D4C @ =gUnknown_02024CA8
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r1, r0
	ldr r2, _08026D50 @ =gUnknown_02024C07
	ldrb r0, [r1, 0x15]
	movs r4, 0
	ldrb r3, [r2]
	cmp r0, r3
	bne _08026D20
	ldrb r0, [r2]
	muls r0, r6
	add r0, r10
	adds r0, 0x2A
	adds r1, r5, 0
	adds r1, 0x2A
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08026D20
	movs r4, 0x1
_08026D20:
	cmp r4, 0
	beq _08026DE0
	ldr r0, _08026D54 @ =gUnknown_02024D28
	ldr r1, _08026D58 @ =gUnknown_02024C08
	ldrb r2, [r1]
	lsls r1, r2, 4
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 30
	cmp r0, 0
	bge _08026D64
	ldr r1, _08026D5C @ =gUnknown_02024BEC
	movs r0, 0x58
	muls r0, r2
	add r0, r10
	ldrh r0, [r0, 0x28]
	subs r0, 0x1
	str r0, [r1]
	ldr r2, _08026D60 @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x40
	b _08026DC6
	.align 2, 0
_08026D4C: .4byte gUnknown_02024CA8
_08026D50: .4byte gUnknown_02024C07
_08026D54: .4byte gUnknown_02024D28
_08026D58: .4byte gUnknown_02024C08
_08026D5C: .4byte gUnknown_02024BEC
_08026D60: .4byte gUnknown_02024C68
_08026D64:
	ldr r0, _08026DA0 @ =gUnknown_02024D68
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1]
	lsrs r0, 7
	cmp r0, 0
	beq _08026DB4
	ldr r1, _08026DA4 @ =gUnknown_02024BEC
	movs r3, 0x58
	adds r0, r2, 0
	muls r0, r3
	add r0, r10
	ldrh r0, [r0, 0x28]
	subs r0, 0x1
	str r0, [r1]
	ldr r2, _08026DA8 @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08026DAC @ =gUnknown_02024C04
	ldr r2, _08026DB0 @ =gUnknown_02024C08
	ldrb r0, [r2]
	muls r0, r3
	add r0, r10
	ldrh r0, [r0, 0x2E]
	strh r0, [r1]
	b _08026DCA
	.align 2, 0
_08026DA0: .4byte gUnknown_02024D68
_08026DA4: .4byte gUnknown_02024BEC
_08026DA8: .4byte gUnknown_02024C68
_08026DAC: .4byte gUnknown_02024C04
_08026DB0: .4byte gUnknown_02024C08
_08026DB4:
	ldr r1, _08026DD4 @ =gUnknown_02024BEC
	movs r0, 0x58
	muls r0, r2
	add r0, r10
	ldrh r0, [r0, 0x28]
	str r0, [r1]
	ldr r2, _08026DD8 @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x10
_08026DC6:
	orrs r0, r1
	strb r0, [r2]
_08026DCA:
	ldr r1, _08026DDC @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _08026E40
	.align 2, 0
_08026DD4: .4byte gUnknown_02024BEC
_08026DD8: .4byte gUnknown_02024C68
_08026DDC: .4byte gUnknown_02024C10
_08026DE0:
	ldr r2, _08026E10 @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08026E14 @ =gUnknown_02024C07
	ldrb r0, [r0]
	movs r2, 0x58
	adds r1, r0, 0
	muls r1, r2
	add r1, r10
	adds r1, 0x2A
	ldr r3, _08026E18 @ =gUnknown_02024C08
	ldrb r0, [r3]
	muls r0, r2
	add r0, r10
	adds r0, 0x2A
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bcc _08026E20
	ldr r1, _08026E1C @ =gUnknown_02024D1E
	movs r0, 0
	b _08026E24
	.align 2, 0
_08026E10: .4byte gUnknown_02024C68
_08026E14: .4byte gUnknown_02024C07
_08026E18: .4byte gUnknown_02024C08
_08026E1C: .4byte gUnknown_02024D1E
_08026E20:
	ldr r1, _08026E50 @ =gUnknown_02024D1E
	movs r0, 0x1
_08026E24:
	strb r0, [r1, 0x5]
	ldr r3, _08026E54 @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_08026E40:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026E50: .4byte gUnknown_02024D1E
_08026E54: .4byte gUnknown_02024C10
	thumb_func_end sub_8026B78

	thumb_func_start atk94_gethalfcurrentenemyhp
atk94_gethalfcurrentenemyhp: @ 8026E58
	push {lr}
	ldr r3, _08026E84 @ =gUnknown_02024BEC
	ldr r2, _08026E88 @ =gBattleMons
	ldr r0, _08026E8C @ =gUnknown_02024C08
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	ldrh r0, [r0, 0x28]
	lsrs r0, 1
	str r0, [r3]
	cmp r0, 0
	bne _08026E76
	movs r0, 0x1
	str r0, [r3]
_08026E76:
	ldr r1, _08026E90 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08026E84: .4byte gUnknown_02024BEC
_08026E88: .4byte gBattleMons
_08026E8C: .4byte gUnknown_02024C08
_08026E90: .4byte gUnknown_02024C10
	thumb_func_end atk94_gethalfcurrentenemyhp

	thumb_func_start sub_8026E94
sub_8026E94: @ 8026E94
	push {lr}
	ldr r2, _08026EB4 @ =word_2024DB8
	ldrh r1, [r2]
	movs r0, 0x18
	ands r0, r1
	cmp r0, 0
	beq _08026EC0
	ldr r2, _08026EB8 @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08026EBC @ =gUnknown_02024D1E
	movs r0, 0x2
	strb r0, [r1, 0x5]
	b _08026ED2
	.align 2, 0
_08026EB4: .4byte word_2024DB8
_08026EB8: .4byte gUnknown_02024C68
_08026EBC: .4byte gUnknown_02024D1E
_08026EC0:
	movs r0, 0x8
	strh r0, [r2]
	ldr r1, _08026EE0 @ =gUnknown_02024D1E
	movs r0, 0x3
	strb r0, [r1, 0x5]
	ldr r0, _08026EE4 @ =gUnknown_02024DBC
	adds r0, 0x28
	movs r1, 0x5
	strb r1, [r0]
_08026ED2:
	ldr r1, _08026EE8 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08026EE0: .4byte gUnknown_02024D1E
_08026EE4: .4byte gUnknown_02024DBC
_08026EE8: .4byte gUnknown_02024C10
	thumb_func_end sub_8026E94

	thumb_func_start sub_8026EEC
sub_8026EEC: @ 8026EEC
	push {r4,r5,lr}
	sub sp, 0x4
	movs r0, 0
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0xD
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	beq _08026F0A
	b _0802701C
_08026F0A:
	str r0, [sp]
	movs r0, 0x13
	movs r1, 0
	movs r2, 0x4D
	movs r3, 0
	bl sub_8018324
	lsls r0, 24
	cmp r0, 0
	beq _08026F20
	b _0802701C
_08026F20:
	ldr r2, _08026F94 @ =word_2024DB8
	ldrh r1, [r2]
	movs r0, 0x18
	ands r0, r1
	adds r4, r2, 0
	ldr r5, _08026F98 @ =gUnknown_02024C07
	cmp r0, 0
	beq _08026FAE
	ldr r0, _08026F9C @ =gBattleMons
	ldrb r2, [r5]
	movs r1, 0x58
	muls r1, r2
	adds r3, r1, r0
	adds r0, r3, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0x5
	beq _08026FA8
	cmp r0, 0x8
	beq _08026FA8
	cmp r0, 0x4
	beq _08026FA8
	adds r0, r3, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0x5
	beq _08026FA8
	cmp r0, 0x8
	beq _08026FA8
	cmp r0, 0x4
	beq _08026FA8
	adds r0, r3, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x8
	beq _08026FA8
	ldr r0, _08026FA0 @ =gUnknown_02024C98
	lsls r1, r2, 2
	adds r1, r0
	ldr r1, [r1]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08026FA8
	movs r0, 0x80
	lsls r0, 11
	ands r1, r0
	cmp r1, 0
	bne _08026FA8
	ldr r1, _08026FA4 @ =gUnknown_02024BEC
	ldrh r0, [r3, 0x2C]
	lsrs r0, 4
	str r0, [r1]
	cmp r0, 0
	bne _08026FAE
	movs r0, 0x1
	b _08026FAC
	.align 2, 0
_08026F94: .4byte word_2024DB8
_08026F98: .4byte gUnknown_02024C07
_08026F9C: .4byte gBattleMons
_08026FA0: .4byte gUnknown_02024C98
_08026FA4: .4byte gUnknown_02024BEC
_08026FA8:
	ldr r1, _08027004 @ =gUnknown_02024BEC
	movs r0, 0
_08026FAC:
	str r0, [r1]
_08026FAE:
	ldrh r1, [r4]
	movs r4, 0x80
	adds r0, r4, 0
	ands r0, r1
	cmp r0, 0
	beq _08027024
	ldr r1, _08027008 @ =gBattleMons
	ldrb r3, [r5]
	movs r0, 0x58
	muls r0, r3
	adds r2, r0, r1
	adds r0, r2, 0
	adds r0, 0x21
	ldrb r0, [r0]
	cmp r0, 0xF
	beq _08027010
	adds r0, r2, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, 0xF
	beq _08027010
	ldr r0, _0802700C @ =gUnknown_02024C98
	lsls r1, r3, 2
	adds r1, r0
	ldr r1, [r1]
	adds r0, r1, 0
	ands r0, r4
	cmp r0, 0
	bne _08027010
	movs r0, 0x80
	lsls r0, 11
	ands r1, r0
	cmp r1, 0
	bne _08027010
	ldr r1, _08027004 @ =gUnknown_02024BEC
	ldrh r0, [r2, 0x2C]
	lsrs r0, 4
	str r0, [r1]
	cmp r0, 0
	bne _08027024
	movs r0, 0x1
	str r0, [r1]
	b _08027024
	.align 2, 0
_08027004: .4byte gUnknown_02024BEC
_08027008: .4byte gBattleMons
_0802700C: .4byte gUnknown_02024C98
_08027010:
	ldr r1, _08027018 @ =gUnknown_02024BEC
	movs r0, 0
	str r0, [r1]
	b _08027024
	.align 2, 0
_08027018: .4byte gUnknown_02024BEC
_0802701C:
	ldr r1, _08027050 @ =gUnknown_02024BEC
	movs r0, 0
	str r0, [r1]
	ldr r5, _08027054 @ =gUnknown_02024C07
_08027024:
	ldr r0, _08027058 @ =gUnknown_02024C0C
	ldrb r1, [r0]
	ldr r2, _0802705C @ =gBitTable
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _0802703E
	ldr r1, _08027050 @ =gUnknown_02024BEC
	movs r0, 0
	str r0, [r1]
_0802703E:
	ldr r1, _08027060 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027050: .4byte gUnknown_02024BEC
_08027054: .4byte gUnknown_02024C07
_08027058: .4byte gUnknown_02024C0C
_0802705C: .4byte gBitTable
_08027060: .4byte gUnknown_02024C10
	thumb_func_end sub_8026EEC

	thumb_func_start sub_8027064
sub_8027064: @ 8027064
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r4, _08027090 @ =gUnknown_02024C07
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _0802709C
	ldr r1, _08027094 @ =gUnknown_02024A6A
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, _08027098 @ =gPlayerParty
	b _080270AC
	.align 2, 0
_08027090: .4byte gUnknown_02024C07
_08027094: .4byte gUnknown_02024A6A
_08027098: .4byte gPlayerParty
_0802709C:
	ldr r1, _080270D0 @ =gUnknown_02024A6A
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, _080270D4 @ =gEnemyParty
_080270AC:
	adds r5, r1, r0
	ldr r4, _080270D8 @ =gUnknown_02024C08
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _080270E0
	ldr r1, _080270D0 @ =gUnknown_02024A6A
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, _080270DC @ =gPlayerParty
	b _080270F0
	.align 2, 0
_080270D0: .4byte gUnknown_02024A6A
_080270D4: .4byte gEnemyParty
_080270D8: .4byte gUnknown_02024C08
_080270DC: .4byte gPlayerParty
_080270E0:
	ldr r1, _0802714C @ =gUnknown_02024A6A
	ldrb r0, [r4]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, _08027150 @ =gEnemyParty
_080270F0:
	adds r4, r1, r0
	adds r0, r5, 0
	movs r1, 0xB
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	mov r10, r0
	adds r0, r5, 0
	movs r1, 0
	bl GetMonData
	mov r9, r0
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	adds r0, r4, 0
	movs r1, 0
	bl GetMonData
	adds r7, r0, 0
	ldr r5, _08027154 @ =gUnknown_02024C08
	ldrb r0, [r5]
	movs r6, 0x58
	muls r0, r6
	ldr r1, _08027158 @ =gBattleMons
	adds r0, r1
	adds r0, 0x20
	ldrb r2, [r0]
	cmp r2, 0xC
	bne _08027168
	ldr r1, _0802715C @ =gUnknown_02024C10
	ldr r0, _08027160 @ =gUnknown_081D98C9
	str r0, [r1]
	ldr r0, _08027164 @ =byte_2024C06
	strb r2, [r0]
	ldrb r0, [r5]
	movs r1, 0xC
	bl sub_81074C4
	b _0802721C
	.align 2, 0
_0802714C: .4byte gUnknown_02024A6A
_08027150: .4byte gEnemyParty
_08027154: .4byte gUnknown_02024C08
_08027158: .4byte gBattleMons
_0802715C: .4byte gUnknown_02024C10
_08027160: .4byte gUnknown_081D98C9
_08027164: .4byte byte_2024C06
_08027168:
	mov r0, r10
	mov r1, r9
	bl GetGenderFromSpeciesAndPersonality
	adds r4, r0, 0
	mov r0, r8
	adds r1, r7, 0
	bl GetGenderFromSpeciesAndPersonality
	lsls r4, 24
	lsls r0, 24
	cmp r4, r0
	beq _080271CA
	ldr r1, _080271E8 @ =gUnknown_02024C98
	ldrb r2, [r5]
	lsls r0, r2, 2
	adds r0, r1
	ldr r0, [r0]
	ldr r1, _080271EC @ =0x000400c0
	ands r0, r1
	cmp r0, 0
	bne _080271CA
	adds r0, r2, 0
	muls r0, r6
	ldr r4, _080271F0 @ =gBattleMons
	adds r4, 0x50
	adds r0, r4
	ldr r0, [r0]
	movs r1, 0xF0
	lsls r1, 12
	ands r0, r1
	cmp r0, 0
	bne _080271CA
	mov r0, r10
	mov r1, r9
	bl GetGenderFromSpeciesAndPersonality
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xFF
	beq _080271CA
	mov r0, r8
	adds r1, r7, 0
	bl GetGenderFromSpeciesAndPersonality
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xFF
	bne _080271F8
_080271CA:
	ldr r3, _080271F4 @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _0802721C
	.align 2, 0
_080271E8: .4byte gUnknown_02024C98
_080271EC: .4byte 0x000400c0
_080271F0: .4byte gBattleMons
_080271F4: .4byte gUnknown_02024C10
_080271F8:
	ldrb r0, [r5]
	adds r2, r0, 0
	muls r2, r6
	adds r2, r4
	ldr r1, _0802722C @ =gBitTable
	ldr r0, _08027230 @ =gUnknown_02024C07
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	lsls r1, 16
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08027234 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
_0802721C:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802722C: .4byte gBitTable
_08027230: .4byte gUnknown_02024C07
_08027234: .4byte gUnknown_02024C10
	thumb_func_end sub_8027064

	thumb_func_start sub_8027238
sub_8027238: @ 8027238
	push {r4-r7,lr}
	ldr r0, _08027280 @ =gUnknown_02024A64
	ldr r0, [r0]
	cmp r0, 0
	bne _08027324
	ldr r5, _08027284 @ =gUnknown_02024C10
	ldr r1, [r5]
	ldrb r0, [r1, 0x1]
	cmp r0, 0x4
	beq _08027290
	bl sub_8015150
	ldr r4, _08027288 @ =gUnknown_02024A60
	strb r0, [r4]
	ldr r3, _0802728C @ =gBattleMons
	ldrb r1, [r4]
	movs r0, 0x58
	adds r2, r1, 0
	muls r2, r0
	adds r0, r3, 0
	adds r0, 0x4C
	adds r0, r2, r0
	ldr r1, [r0]
	adds r3, 0x50
	adds r2, r3
	ldr r2, [r2]
	movs r0, 0
	bl dp01_build_cmdbuf_x1A_aaaa_bbbb
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r0, [r5]
	adds r0, 0x2
	str r0, [r5]
	b _08027324
	.align 2, 0
_08027280: .4byte gUnknown_02024A64
_08027284: .4byte gUnknown_02024C10
_08027288: .4byte gUnknown_02024A60
_0802728C: .4byte gBattleMons
_08027290:
	ldr r4, _0802732C @ =gUnknown_02024A60
	ldr r5, _08027330 @ =gUnknown_02024C07
	ldrb r0, [r5]
	strb r0, [r4]
	ldr r6, _08027334 @ =gUnknown_02024C0C
	ldrb r1, [r6]
	ldr r7, _08027338 @ =gBitTable
	ldrb r2, [r4]
	lsls r0, r2, 2
	adds r0, r7
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _080272CC
	ldr r3, _0802733C @ =gBattleMons
	movs r0, 0x58
	muls r2, r0
	adds r0, r3, 0
	adds r0, 0x4C
	adds r0, r2, r0
	ldr r1, [r0]
	adds r3, 0x50
	adds r2, r3
	ldr r2, [r2]
	movs r0, 0
	bl dp01_build_cmdbuf_x1A_aaaa_bbbb
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_080272CC:
	ldr r0, _08027340 @ =gUnknown_020239F8
	ldrh r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0802731C
	ldrb r0, [r5]
	bl battle_get_per_side_status
	movs r1, 0x2
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	bl battle_get_side_with_given_state
	strb r0, [r4]
	ldrb r1, [r6]
	ldrb r2, [r4]
	lsls r0, r2, 2
	adds r0, r7
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _0802731C
	ldr r3, _0802733C @ =gBattleMons
	movs r0, 0x58
	muls r2, r0
	adds r0, r3, 0
	adds r0, 0x4C
	adds r0, r2, r0
	ldr r1, [r0]
	adds r3, 0x50
	adds r2, r3
	ldr r2, [r2]
	movs r0, 0
	bl dp01_build_cmdbuf_x1A_aaaa_bbbb
	ldrb r0, [r4]
	bl dp01_battle_side_mark_buffer_for_execution
_0802731C:
	ldr r1, _08027344 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x2
	str r0, [r1]
_08027324:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802732C: .4byte gUnknown_02024A60
_08027330: .4byte gUnknown_02024C07
_08027334: .4byte gUnknown_02024C0C
_08027338: .4byte gBitTable
_0802733C: .4byte gBattleMons
_08027340: .4byte gUnknown_020239F8
_08027344: .4byte gUnknown_02024C10
	thumb_func_end sub_8027238

	thumb_func_start sub_8027348
sub_8027348: @ 8027348
	push {r4-r6,lr}
	ldr r6, _08027378 @ =gUnknown_02024C80
	ldr r4, _0802737C @ =gUnknown_02024C07
	ldrb r0, [r4]
	bl battle_get_per_side_status
	movs r5, 0x1
	adds r1, r5, 0
	ands r1, r0
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrb r0, [r0, 0x2]
	cmp r0, 0
	beq _08027388
	ldr r2, _08027380 @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x20
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08027384 @ =gUnknown_02024D1E
	strb r5, [r0, 0x5]
	b _080273C0
	.align 2, 0
_08027378: .4byte gUnknown_02024C80
_0802737C: .4byte gUnknown_02024C07
_08027380: .4byte gUnknown_02024C68
_08027384: .4byte gUnknown_02024D1E
_08027388:
	ldrb r0, [r4]
	bl battle_get_per_side_status
	adds r1, r5, 0
	ands r1, r0
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	movs r1, 0x5
	strb r1, [r0, 0x2]
	ldrb r0, [r4]
	bl battle_get_per_side_status
	ldr r2, _080273D0 @ =gUnknown_02024C7A
	adds r1, r5, 0
	ands r1, r0
	lsls r1, 1
	adds r1, r2
	ldrh r2, [r1]
	movs r3, 0x80
	lsls r3, 1
	adds r0, r3, 0
	movs r3, 0
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _080273D4 @ =gUnknown_02024D1E
	strb r3, [r0, 0x5]
_080273C0:
	ldr r1, _080273D8 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080273D0: .4byte gUnknown_02024C7A
_080273D4: .4byte gUnknown_02024D1E
_080273D8: .4byte gUnknown_02024C10
	thumb_func_end sub_8027348

	thumb_func_start atk9A_setincreasedcriticalchance
atk9A_setincreasedcriticalchance: @ 80273DC
	push {lr}
	ldr r1, _0802740C @ =gBattleMons
	ldr r0, _08027410 @ =gUnknown_02024C07
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r1, [r0]
	movs r3, 0x80
	lsls r3, 13
	adds r2, r1, 0
	ands r2, r3
	cmp r2, 0
	beq _0802741C
	ldr r2, _08027414 @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x20
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08027418 @ =gUnknown_02024D1E
	movs r0, 0x1
	strb r0, [r1, 0x5]
	b _08027424
	.align 2, 0
_0802740C: .4byte gBattleMons
_08027410: .4byte gUnknown_02024C07
_08027414: .4byte gUnknown_02024C68
_08027418: .4byte gUnknown_02024D1E
_0802741C:
	orrs r1, r3
	str r1, [r0]
	ldr r0, _08027430 @ =gUnknown_02024D1E
	strb r2, [r0, 0x5]
_08027424:
	ldr r1, _08027434 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08027430: .4byte gUnknown_02024D1E
_08027434: .4byte gUnknown_02024C10
	thumb_func_end atk9A_setincreasedcriticalchance

	thumb_func_start atk9B_transformdataexecution
atk9B_transformdataexecution: @ 8027438
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r1, _08027490 @ =gUnknown_02024BE8
	ldr r2, _08027494 @ =0x0000ffff
	adds r0, r2, 0
	strh r0, [r1]
	ldr r1, _08027498 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	ldr r7, _0802749C @ =gBattleMons
	ldr r0, _080274A0 @ =gUnknown_02024C08
	mov r12, r0
	ldrb r1, [r0]
	movs r6, 0x58
	adds r0, r1, 0
	muls r0, r6
	adds r5, r7, 0
	adds r5, 0x50
	adds r0, r5
	ldr r0, [r0]
	movs r4, 0x80
	lsls r4, 14
	ands r0, r4
	cmp r0, 0
	bne _0802747E
	ldr r0, _080274A4 @ =gUnknown_02024C98
	lsls r1, 2
	adds r1, r0
	ldr r2, [r1]
	ldr r0, _080274A8 @ =0x000400c0
	ands r2, r0
	cmp r2, 0
	beq _080274B4
_0802747E:
	ldr r2, _080274AC @ =gUnknown_02024C68
	ldrb r0, [r2]
	movs r1, 0x20
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _080274B0 @ =gUnknown_02024D1E
	movs r0, 0x1
	b _080275C8
	.align 2, 0
_08027490: .4byte gUnknown_02024BE8
_08027494: .4byte 0x0000ffff
_08027498: .4byte gUnknown_02024C10
_0802749C: .4byte gBattleMons
_080274A0: .4byte gUnknown_02024C08
_080274A4: .4byte gUnknown_02024C98
_080274A8: .4byte 0x000400c0
_080274AC: .4byte gUnknown_02024C68
_080274B0: .4byte gUnknown_02024D1E
_080274B4:
	ldr r3, _08027588 @ =gUnknown_02024C07
	ldrb r0, [r3]
	adds r1, r0, 0
	muls r1, r6
	adds r1, r5
	ldr r0, [r1]
	orrs r0, r4
	str r0, [r1]
	ldr r4, _0802758C @ =gUnknown_02024CA8
	ldrb r1, [r3]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r4
	strh r2, [r0, 0x4]
	ldrb r0, [r3]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r2, [r1, 0xB]
	movs r0, 0x10
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0xB]
	ldrb r1, [r3]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r4
	mov r2, r12
	ldrb r1, [r2]
	muls r1, r6
	adds r2, r7, 0
	adds r2, 0x48
	adds r1, r2
	ldr r1, [r1]
	str r1, [r0]
	ldrb r0, [r3]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r2, [r1, 0x18]
	movs r0, 0xF
	ands r0, r2
	strb r0, [r1, 0x18]
	ldr r1, _08027590 @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x6
	strb r0, [r1, 0x1]
	mov r2, r12
	ldrb r0, [r2]
	muls r0, r6
	adds r0, r7
	ldrh r0, [r0]
	strb r0, [r1, 0x2]
	ldrb r0, [r2]
	muls r0, r6
	adds r0, r7
	ldrh r0, [r0]
	lsrs r0, 8
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldrb r0, [r3]
	muls r0, r6
	adds r5, r0, r7
	ldrb r0, [r2]
	muls r0, r6
	adds r2, r0, r7
	movs r4, 0
	adds r6, r3, 0
	ldr r0, _08027594 @ =gUnknown_02024A60
	mov r8, r0
_0802754C:
	adds r0, r5, r4
	adds r1, r2, r4
	ldrb r1, [r1]
	strb r1, [r0]
	adds r4, 0x1
	cmp r4, 0x23
	bls _0802754C
	movs r4, 0
	ldr r7, _08027598 @ =gBattleMoves
	ldr r3, _0802759C @ =gUnknown_02024A8C
	adds r5, r3, 0
	adds r5, 0x18
_08027564:
	lsls r1, r4, 1
	ldrb r2, [r6]
	movs r0, 0x58
	muls r2, r0
	adds r1, r2
	adds r1, r3
	ldrh r1, [r1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldrb r1, [r0, 0x4]
	cmp r1, 0x4
	bhi _080275A0
	adds r0, r4, r2
	adds r0, r5
	b _080275A6
	.align 2, 0
_08027588: .4byte gUnknown_02024C07
_0802758C: .4byte gUnknown_02024CA8
_08027590: .4byte gUnknown_030041C0
_08027594: .4byte gUnknown_02024A60
_08027598: .4byte gBattleMoves
_0802759C: .4byte gUnknown_02024A8C
_080275A0:
	adds r0, r4, r2
	adds r0, r5
	movs r1, 0x5
_080275A6:
	strb r1, [r0]
	adds r4, 0x1
	cmp r4, 0x3
	ble _08027564
	ldrb r0, [r6]
	mov r1, r8
	strb r0, [r1]
	movs r0, 0
	movs r1, 0x2
	bl dp01_build_cmdbuf_x38_a
	mov r2, r8
	ldrb r0, [r2]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, _080275D4 @ =gUnknown_02024D1E
	movs r0, 0
_080275C8:
	strb r0, [r1, 0x5]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080275D4: .4byte gUnknown_02024D1E
	thumb_func_end atk9B_transformdataexecution

	thumb_func_start sub_80275D8
sub_80275D8: @ 80275D8
	push {r4-r7,lr}
	ldr r7, _08027608 @ =gBattleMons
	ldr r6, _0802760C @ =gUnknown_02024C07
	ldrb r0, [r6]
	movs r5, 0x58
	muls r0, r5
	adds r3, r0, r7
	ldrh r0, [r3, 0x2C]
	lsrs r1, r0, 2
	adds r2, r1, 0
	cmp r1, 0
	bne _080275F2
	movs r2, 0x1
_080275F2:
	ldrh r0, [r3, 0x28]
	cmp r0, r2
	bhi _08027618
	ldr r1, _08027610 @ =gUnknown_02024BEC
	movs r0, 0
	str r0, [r1]
	ldr r1, _08027614 @ =gUnknown_02024D1E
	movs r0, 0x1
	strb r0, [r1, 0x5]
	b _0802766C
	.align 2, 0
_08027608: .4byte gBattleMons
_0802760C: .4byte gUnknown_02024C07
_08027610: .4byte gUnknown_02024BEC
_08027614: .4byte gUnknown_02024D1E
_08027618:
	ldr r4, _0802767C @ =gUnknown_02024BEC
	str r1, [r4]
	cmp r1, 0
	bne _08027624
	movs r0, 0x1
	str r0, [r4]
_08027624:
	ldrb r0, [r6]
	adds r2, r0, 0
	muls r2, r5
	adds r3, r7, 0
	adds r3, 0x50
	adds r2, r3
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 17
	orrs r0, r1
	str r0, [r2]
	ldrb r0, [r6]
	adds r1, r0, 0
	muls r1, r5
	adds r1, r3
	ldr r0, [r1]
	ldr r2, _08027680 @ =0xffff1fff
	ands r0, r2
	str r0, [r1]
	ldr r2, _08027684 @ =gUnknown_02024CA8
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldr r1, [r4]
	movs r2, 0
	strb r1, [r0, 0xA]
	ldr r0, _08027688 @ =gUnknown_02024D1E
	strb r2, [r0, 0x5]
	ldr r2, _0802768C @ =gUnknown_02024C6C
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 1
	orrs r0, r1
	str r0, [r2]
_0802766C:
	ldr r1, _08027690 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802767C: .4byte gUnknown_02024BEC
_08027680: .4byte 0xffff1fff
_08027684: .4byte gUnknown_02024CA8
_08027688: .4byte gUnknown_02024D1E
_0802768C: .4byte gUnknown_02024C6C
_08027690: .4byte gUnknown_02024C10
	thumb_func_end sub_80275D8

	thumb_func_start sub_8027694
sub_8027694: @ 8027694
	push {r4,r5,lr}
	lsls r0, 16
	lsrs r2, r0, 16
	movs r3, 0
	ldr r0, _080276D4 @ =gUnknown_081FACFE
	ldrh r1, [r0]
	ldr r4, _080276D8 @ =0x0000fffe
	adds r5, r0, 0
	cmp r1, r4
	beq _080276BC
	cmp r1, r2
	beq _080276BC
	adds r1, r5, 0
_080276AE:
	adds r1, 0x2
	adds r3, 0x1
	ldrh r0, [r1]
	cmp r0, r4
	beq _080276BC
	cmp r0, r2
	bne _080276AE
_080276BC:
	lsls r0, r3, 1
	adds r0, r5
	ldrh r1, [r0]
	ldr r0, _080276D8 @ =0x0000fffe
	eors r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
	pop {r4,r5}
	pop {r1}
	bx r1
	.align 2, 0
_080276D4: .4byte gUnknown_081FACFE
_080276D8: .4byte 0x0000fffe
	thumb_func_end sub_8027694

	thumb_func_start atk9D_copyattack
atk9D_copyattack: @ 80276DC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r0, _08027754 @ =gUnknown_02024BE8
	ldr r1, _08027758 @ =0x0000ffff
	adds r7, r1, 0
	strh r7, [r0]
	ldr r5, _0802775C @ =gUnknown_02024C34
	ldr r6, _08027760 @ =gUnknown_02024C08
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r5
	ldrh r0, [r0]
	bl sub_8027694
	lsls r0, 24
	cmp r0, 0
	bne _08027736
	ldr r3, _08027764 @ =gBattleMons
	ldr r2, _08027768 @ =gUnknown_02024C07
	ldrb r1, [r2]
	movs r0, 0x58
	adds r4, r1, 0
	muls r4, r0
	adds r0, r3, 0
	adds r0, 0x50
	adds r0, r4, r0
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 14
	ands r1, r0
	mov r12, r3
	mov r9, r2
	cmp r1, 0
	bne _08027736
	ldrb r0, [r6]
	lsls r0, 1
	adds r0, r5
	ldrh r1, [r0]
	cmp r1, 0
	beq _08027736
	cmp r1, r7
	bne _08027770
_08027736:
	ldr r3, _0802776C @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _080278A8
	.align 2, 0
_08027754: .4byte gUnknown_02024BE8
_08027758: .4byte 0x0000ffff
_0802775C: .4byte gUnknown_02024C34
_08027760: .4byte gUnknown_02024C08
_08027764: .4byte gBattleMons
_08027768: .4byte gUnknown_02024C07
_0802776C: .4byte gUnknown_02024C10
_08027770:
	movs r2, 0
	mov r3, r12
	adds r3, 0xC
	adds r0, r4, r3
	ldrh r0, [r0]
	ldr r4, _08027800 @ =gUnknown_02024C10
	mov r10, r4
	cmp r0, r1
	beq _080277AA
	mov r8, r3
	adds r7, r5, 0
	adds r5, r6, 0
	mov r4, r9
	movs r3, 0x58
_0802778C:
	adds r2, 0x1
	cmp r2, 0x3
	bgt _080277AA
	lsls r1, r2, 1
	ldrb r0, [r4]
	muls r0, r3
	adds r1, r0
	add r1, r8
	ldrb r0, [r5]
	lsls r0, 1
	adds r0, r7
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bne _0802778C
_080277AA:
	cmp r2, 0x4
	bne _0802788C
	ldr r5, _08027804 @ =gUnknown_02024BE4
	ldrb r1, [r5]
	lsls r1, 1
	mov r2, r9
	ldrb r0, [r2]
	movs r6, 0x58
	muls r0, r6
	adds r1, r0
	mov r0, r12
	adds r0, 0xC
	adds r1, r0
	ldr r2, _08027808 @ =gUnknown_02024C34
	ldr r3, _0802780C @ =gUnknown_02024C08
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r4, _08027810 @ =gBattleMoves
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r2
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrb r4, [r0, 0x4]
	cmp r4, 0x4
	bhi _08027814
	mov r1, r9
	ldrb r0, [r1]
	muls r0, r6
	ldrb r1, [r5]
	adds r0, r1
	mov r1, r12
	adds r1, 0x24
	adds r0, r1
	strb r4, [r0]
	b _08027828
	.align 2, 0
_08027800: .4byte gUnknown_02024C10
_08027804: .4byte gUnknown_02024BE4
_08027808: .4byte gUnknown_02024C34
_0802780C: .4byte gUnknown_02024C08
_08027810: .4byte gBattleMoves
_08027814:
	mov r4, r9
	ldrb r0, [r4]
	muls r0, r6
	ldrb r1, [r5]
	adds r0, r1
	mov r1, r12
	adds r1, 0x24
	adds r0, r1
	movs r1, 0x5
	strb r1, [r0]
_08027828:
	ldr r1, _08027880 @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x2
	strb r0, [r1, 0x1]
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	strb r0, [r1, 0x2]
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	lsrs r0, 8
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r1, _08027884 @ =gUnknown_02024CA8
	mov r2, r9
	ldrb r0, [r2]
	lsls r2, r0, 3
	subs r2, r0
	lsls r2, 2
	adds r2, r1
	ldrb r4, [r2, 0x18]
	lsrs r3, r4, 4
	ldr r1, _08027888 @ =gBitTable
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	orrs r1, r3
	lsls r1, 4
	movs r0, 0xF
	ands r0, r4
	orrs r0, r1
	strb r0, [r2, 0x18]
	mov r4, r10
	ldr r0, [r4]
	adds r0, 0x5
	str r0, [r4]
	b _080278A8
	.align 2, 0
_08027880: .4byte gUnknown_030041C0
_08027884: .4byte gUnknown_02024CA8
_08027888: .4byte gBitTable
_0802788C:
	mov r0, r10
	ldr r2, [r0]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	mov r2, r10
	str r1, [r2]
_080278A8:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end atk9D_copyattack

	thumb_func_start sub_80278B8
sub_80278B8: @ 80278B8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r7, _08027938 @ =gUnknown_02024BE6
	movs r6, 0xB1
	lsls r6, 1
	ldr r5, _0802793C @ =gUnknown_081FACFE
	ldr r0, _08027940 @ =gUnknown_02024C10
	mov r8, r0
_080278CA:
	bl Random
	ldr r2, _08027944 @ =0x000001ff
	adds r1, r2, 0
	ands r0, r1
	adds r0, 0x1
	strh r0, [r7]
	cmp r0, r6
	bhi _080278CA
	movs r0, 0x3
_080278DE:
	subs r0, 0x1
	cmp r0, 0
	bge _080278DE
	ldr r4, _08027938 @ =gUnknown_02024BE6
	ldrh r2, [r4]
	ldr r3, _08027948 @ =0x0000ffff
	subs r0, r5, 0x2
_080278EC:
	adds r0, 0x2
	ldrh r1, [r0]
	cmp r1, r2
	beq _080278F8
	cmp r1, r3
	bne _080278EC
_080278F8:
	ldr r0, _08027948 @ =0x0000ffff
	cmp r1, r0
	bne _080278CA
	ldr r2, _0802794C @ =gUnknown_02024C6C
	ldr r0, [r2]
	ldr r1, _08027950 @ =0xfffffbff
	ands r0, r1
	str r0, [r2]
	ldr r3, _08027954 @ =gUnknown_081D6BBC
	ldr r2, _08027958 @ =gBattleMoves
	ldrh r1, [r4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r3
	ldr r0, [r0]
	mov r1, r8
	str r0, [r1]
	ldrh r0, [r4]
	movs r1, 0
	bl sub_801B5C0
	ldr r1, _0802795C @ =gUnknown_02024C08
	strb r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027938: .4byte gUnknown_02024BE6
_0802793C: .4byte gUnknown_081FACFE
_08027940: .4byte gUnknown_02024C10
_08027944: .4byte 0x000001ff
_08027948: .4byte 0x0000ffff
_0802794C: .4byte gUnknown_02024C6C
_08027950: .4byte 0xfffffbff
_08027954: .4byte gUnknown_081D6BBC
_08027958: .4byte gBattleMoves
_0802795C: .4byte gUnknown_02024C08
	thumb_func_end sub_80278B8

	thumb_func_start sub_8027960
sub_8027960: @ 8027960
	ldr r3, _08027980 @ =gUnknown_02024BEC
	ldr r2, _08027984 @ =gBattleMons
	ldr r0, _08027988 @ =gUnknown_02024C07
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x2A
	ldrb r0, [r0]
	str r0, [r3]
	ldr r1, _0802798C @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	bx lr
	.align 2, 0
_08027980: .4byte gUnknown_02024BEC
_08027984: .4byte gBattleMons
_08027988: .4byte gUnknown_02024C07
_0802798C: .4byte gUnknown_02024C10
	thumb_func_end sub_8027960

	thumb_func_start atkA0_psywavedamageeffect
atkA0_psywavedamageeffect: @ 8027990
	push {r4,lr}
	movs r4, 0xF
_08027994:
	bl Random
	adds r3, r4, 0
	ands r3, r0
	cmp r3, 0xA
	bgt _08027994
	lsls r0, r3, 2
	adds r0, r3
	lsls r3, r0, 1
	ldr r4, _080279D4 @ =gUnknown_02024BEC
	ldr r2, _080279D8 @ =gBattleMons
	ldr r0, _080279DC @ =gUnknown_02024C07
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x2A
	ldrb r1, [r0]
	adds r0, r3, 0
	adds r0, 0x32
	muls r0, r1
	movs r1, 0x64
	bl __divsi3
	str r0, [r4]
	ldr r1, _080279E0 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080279D4: .4byte gUnknown_02024BEC
_080279D8: .4byte gBattleMons
_080279DC: .4byte gUnknown_02024C07
_080279E0: .4byte gUnknown_02024C10
	thumb_func_end atkA0_psywavedamageeffect

	thumb_func_start atkA1_counterdamagecalculator
atkA1_counterdamagecalculator: @ 80279E4
	push {r4-r6,lr}
	ldr r4, _08027A54 @ =gUnknown_02024C07
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r5, _08027A58 @ =gUnknown_02024D28
	ldrb r0, [r4]
	lsls r0, 4
	adds r0, r5
	ldrb r0, [r0, 0xC]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r2, r0, 24
	ldrb r0, [r4]
	lsls r1, r0, 4
	adds r0, r5, 0x4
	adds r0, r1, r0
	ldr r3, [r0]
	cmp r3, 0
	beq _08027A98
	cmp r6, r2
	beq _08027A98
	ldr r6, _08027A5C @ =gBattleMons
	adds r0, r1, r5
	ldrb r0, [r0, 0xC]
	movs r4, 0x58
	muls r0, r4
	adds r0, r6
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _08027A98
	ldr r1, _08027A60 @ =gUnknown_02024BEC
	lsls r0, r3, 1
	str r0, [r1]
	ldr r1, _08027A64 @ =gUnknown_02024C80
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r1, r0, r1
	ldrb r0, [r1, 0x8]
	cmp r0, 0
	beq _08027A6C
	ldrb r1, [r1, 0x9]
	adds r0, r1, 0
	muls r0, r4
	adds r0, r6
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _08027A6C
	ldr r0, _08027A68 @ =gUnknown_02024C08
	strb r1, [r0]
	b _08027A7C
	.align 2, 0
_08027A54: .4byte gUnknown_02024C07
_08027A58: .4byte gUnknown_02024D28
_08027A5C: .4byte gBattleMons
_08027A60: .4byte gUnknown_02024BEC
_08027A64: .4byte gUnknown_02024C80
_08027A68: .4byte gUnknown_02024C08
_08027A6C:
	ldr r2, _08027A88 @ =gUnknown_02024C08
	ldr r1, _08027A8C @ =gUnknown_02024D28
	ldr r0, _08027A90 @ =gUnknown_02024C07
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0, 0xC]
	strb r0, [r2]
_08027A7C:
	ldr r1, _08027A94 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _08027AC8
	.align 2, 0
_08027A88: .4byte gUnknown_02024C08
_08027A8C: .4byte gUnknown_02024D28
_08027A90: .4byte gUnknown_02024C07
_08027A94: .4byte gUnknown_02024C10
_08027A98:
	ldr r2, _08027AD0 @ =gUnknown_02024D68
	ldr r0, _08027AD4 @ =gUnknown_02024C07
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r2, 0x20
	orrs r1, r2
	strb r1, [r0]
	ldr r3, _08027AD8 @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_08027AC8:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08027AD0: .4byte gUnknown_02024D68
_08027AD4: .4byte gUnknown_02024C07
_08027AD8: .4byte gUnknown_02024C10
	thumb_func_end atkA1_counterdamagecalculator

	thumb_func_start atkA2_mirrorcoatdamagecalculator
atkA2_mirrorcoatdamagecalculator: @ 8027ADC
	push {r4-r6,lr}
	ldr r4, _08027B4C @ =gUnknown_02024C07
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r5, _08027B50 @ =gUnknown_02024D28
	ldrb r0, [r4]
	lsls r0, 4
	adds r0, r5
	ldrb r0, [r0, 0xD]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r2, r0, 24
	ldrb r0, [r4]
	lsls r1, r0, 4
	adds r0, r5, 0
	adds r0, 0x8
	adds r0, r1, r0
	ldr r3, [r0]
	cmp r3, 0
	beq _08027B90
	cmp r6, r2
	beq _08027B90
	ldr r6, _08027B54 @ =gBattleMons
	adds r0, r1, r5
	ldrb r0, [r0, 0xD]
	movs r4, 0x58
	muls r0, r4
	adds r0, r6
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _08027B90
	ldr r1, _08027B58 @ =gUnknown_02024BEC
	lsls r0, r3, 1
	str r0, [r1]
	ldr r1, _08027B5C @ =gUnknown_02024C80
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r1, r0, r1
	ldrb r0, [r1, 0x8]
	cmp r0, 0
	beq _08027B64
	ldrb r1, [r1, 0x9]
	adds r0, r1, 0
	muls r0, r4
	adds r0, r6
	ldrh r0, [r0, 0x28]
	cmp r0, 0
	beq _08027B64
	ldr r0, _08027B60 @ =gUnknown_02024C08
	strb r1, [r0]
	b _08027B74
	.align 2, 0
_08027B4C: .4byte gUnknown_02024C07
_08027B50: .4byte gUnknown_02024D28
_08027B54: .4byte gBattleMons
_08027B58: .4byte gUnknown_02024BEC
_08027B5C: .4byte gUnknown_02024C80
_08027B60: .4byte gUnknown_02024C08
_08027B64:
	ldr r2, _08027B80 @ =gUnknown_02024C08
	ldr r1, _08027B84 @ =gUnknown_02024D28
	ldr r0, _08027B88 @ =gUnknown_02024C07
	ldrb r0, [r0]
	lsls r0, 4
	adds r0, r1
	ldrb r0, [r0, 0xD]
	strb r0, [r2]
_08027B74:
	ldr r1, _08027B8C @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _08027BC0
	.align 2, 0
_08027B80: .4byte gUnknown_02024C08
_08027B84: .4byte gUnknown_02024D28
_08027B88: .4byte gUnknown_02024C07
_08027B8C: .4byte gUnknown_02024C10
_08027B90:
	ldr r2, _08027BC8 @ =gUnknown_02024D68
	ldr r0, _08027BCC @ =gUnknown_02024C07
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0]
	movs r2, 0x20
	orrs r1, r2
	strb r1, [r0]
	ldr r3, _08027BD0 @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_08027BC0:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08027BC8: .4byte gUnknown_02024D68
_08027BCC: .4byte gUnknown_02024C07
_08027BD0: .4byte gUnknown_02024C10
	thumb_func_end atkA2_mirrorcoatdamagecalculator

	thumb_func_start atkA3_disablelastusedattack
atkA3_disablelastusedattack: @ 8027BD4
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	movs r4, 0
	ldr r2, _08027CD4 @ =gBattleMons
	ldr r3, _08027CD8 @ =gUnknown_02024C08
	ldrb r1, [r3]
	movs r0, 0x58
	muls r0, r1
	adds r7, r2, 0
	adds r7, 0xC
	adds r0, r7
	ldr r5, _08027CDC @ =gUnknown_02024C34
	lsls r1, 1
	adds r1, r5
	ldrh r0, [r0]
	mov r9, r2
	adds r6, r3, 0
	ldr r2, _08027CE0 @ =gUnknown_02024CA8
	mov r8, r2
	ldrh r1, [r1]
	cmp r0, r1
	beq _08027C28
	mov r12, r6
	movs r3, 0x58
_08027C08:
	adds r4, 0x1
	cmp r4, 0x3
	bgt _08027C28
	lsls r2, r4, 1
	mov r0, r12
	ldrb r1, [r0]
	adds r0, r1, 0
	muls r0, r3
	adds r2, r0
	adds r2, r7
	lsls r1, 1
	adds r1, r5
	ldrh r0, [r2]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08027C08
_08027C28:
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r8
	ldrh r0, [r0, 0x4]
	cmp r0, 0
	bne _08027CEC
	cmp r4, 0x4
	beq _08027CEC
	movs r5, 0x58
	adds r0, r1, 0
	muls r0, r5
	adds r0, r4, r0
	mov r1, r9
	adds r1, 0x24
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _08027CEC
	ldr r1, _08027CE4 @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x2
	strb r0, [r1, 0x1]
	lsls r2, r4, 1
	ldrb r0, [r6]
	muls r0, r5
	adds r0, r2, r0
	mov r3, r9
	adds r3, 0xC
	adds r0, r3
	ldrh r0, [r0]
	strb r0, [r1, 0x2]
	ldrb r0, [r6]
	muls r0, r5
	adds r0, r2, r0
	adds r0, r3
	ldrh r0, [r0]
	lsrs r0, 8
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldrb r1, [r6]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r8
	muls r1, r5
	adds r2, r1
	adds r2, r3
	ldrh r1, [r2]
	strh r1, [r0, 0x4]
	bl Random
	ldrb r2, [r6]
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	add r1, r8
	movs r2, 0x3
	ands r2, r0
	adds r2, 0x2
	ldrb r3, [r1, 0xB]
	movs r0, 0x10
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, 0xB]
	ldrb r0, [r6]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	add r1, r8
	ldrb r3, [r1, 0xB]
	lsls r2, r3, 28
	lsrs r2, 24
	movs r0, 0xF
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, 0xB]
	ldr r1, _08027CE8 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _08027D06
	.align 2, 0
_08027CD4: .4byte gBattleMons
_08027CD8: .4byte gUnknown_02024C08
_08027CDC: .4byte gUnknown_02024C34
_08027CE0: .4byte gUnknown_02024CA8
_08027CE4: .4byte gUnknown_030041C0
_08027CE8: .4byte gUnknown_02024C10
_08027CEC:
	ldr r3, _08027D14 @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_08027D06:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027D14: .4byte gUnknown_02024C10
	thumb_func_end atkA3_disablelastusedattack

	thumb_func_start atkA4_setencore
atkA4_setencore: @ 8027D18
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	movs r5, 0
	ldr r3, _08027E0C @ =gBattleMons
	ldr r4, _08027E10 @ =gUnknown_02024C08
	ldrb r1, [r4]
	movs r0, 0x58
	muls r0, r1
	adds r6, r3, 0
	adds r6, 0xC
	adds r0, r6
	ldr r2, _08027E14 @ =gUnknown_02024C34
	lsls r1, 1
	adds r1, r2
	ldrh r0, [r0]
	mov r10, r3
	mov r8, r2
	ldr r2, _08027E18 @ =gUnknown_02024CA8
	mov r9, r2
	ldrh r1, [r1]
	cmp r0, r1
	beq _08027D72
	mov r12, r4
	adds r7, r6, 0
	mov r6, r8
	movs r3, 0x58
_08027D52:
	adds r5, 0x1
	cmp r5, 0x3
	bgt _08027D72
	lsls r2, r5, 1
	mov r0, r12
	ldrb r1, [r0]
	adds r0, r1, 0
	muls r0, r3
	adds r2, r0
	adds r2, r7
	lsls r1, 1
	adds r1, r6
	ldrh r0, [r2]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08027D52
_08027D72:
	ldrb r0, [r4]
	lsls r0, 1
	add r0, r8
	ldrh r2, [r0]
	cmp r2, 0xA5
	beq _08027D86
	cmp r2, 0xE3
	beq _08027D86
	cmp r2, 0x77
	bne _08027D88
_08027D86:
	movs r5, 0x4
_08027D88:
	ldrb r1, [r4]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	mov r2, r9
	adds r3, r0, r2
	ldrh r0, [r3, 0x6]
	cmp r0, 0
	bne _08027E20
	cmp r5, 0x4
	beq _08027E20
	movs r0, 0x58
	adds r2, r1, 0
	muls r2, r0
	adds r0, r5, r2
	mov r1, r10
	adds r1, 0x24
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _08027E20
	lsls r0, r5, 1
	adds r0, r2
	subs r1, 0x18
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r3, 0x6]
	ldrb r1, [r4]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r9
	strb r5, [r0, 0xC]
	bl Random
	ldrb r2, [r4]
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	add r1, r9
	movs r2, 0x3
	ands r2, r0
	adds r2, 0x3
	ldrb r3, [r1, 0xE]
	movs r0, 0x10
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, 0xE]
	ldrb r0, [r4]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	add r1, r9
	ldrb r3, [r1, 0xE]
	lsls r2, r3, 28
	lsrs r2, 24
	movs r0, 0xF
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, 0xE]
	ldr r1, _08027E1C @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _08027E3A
	.align 2, 0
_08027E0C: .4byte gBattleMons
_08027E10: .4byte gUnknown_02024C08
_08027E14: .4byte gUnknown_02024C34
_08027E18: .4byte gUnknown_02024CA8
_08027E1C: .4byte gUnknown_02024C10
_08027E20:
	ldr r3, _08027E48 @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_08027E3A:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027E48: .4byte gUnknown_02024C10
	thumb_func_end atkA4_setencore

	thumb_func_start sub_8027E4C
sub_8027E4C: @ 8027E4C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r7, _08027EEC @ =gBattleMons
	ldr r0, _08027EF0 @ =gUnknown_02024C08
	mov r8, r0
	ldrb r0, [r0]
	movs r6, 0x58
	adds r2, r0, 0
	muls r2, r6
	adds r0, r7, 0
	adds r0, 0x50
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	bne _08027F18
	ldr r1, _08027EF4 @ =gUnknown_02024C07
	mov r12, r1
	ldrb r0, [r1]
	muls r0, r6
	adds r0, r7
	ldrh r4, [r0, 0x28]
	adds r0, r2, r7
	ldrh r2, [r0, 0x28]
	adds r4, r2
	asrs r4, 1
	ldr r5, _08027EF8 @ =gUnknown_02024BEC
	mov r9, r5
	subs r2, r4
	str r2, [r5]
	ldr r3, _08027EFC @ =0x02000000
	ldr r1, _08027F00 @ =0x00016014
	adds r0, r3, r1
	strb r2, [r0]
	movs r0, 0xFF
	lsls r0, 8
	ands r0, r2
	asrs r0, 8
	ldr r5, _08027F04 @ =0x00016015
	adds r1, r3, r5
	strb r0, [r1]
	movs r0, 0xFF
	lsls r0, 16
	ands r0, r2
	asrs r0, 16
	adds r5, 0x1
	adds r1, r3, r5
	strb r0, [r1]
	lsrs r2, 24
	ldr r0, _08027F08 @ =0x00016017
	adds r3, r0
	strb r2, [r3]
	mov r1, r12
	ldrb r0, [r1]
	muls r0, r6
	adds r0, r7
	ldrh r0, [r0, 0x28]
	subs r0, r4
	mov r5, r9
	str r0, [r5]
	ldr r2, _08027F0C @ =gUnknown_02024D68
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r2, 0x4
	adds r0, r2
	ldr r1, _08027F10 @ =0x0000ffff
	str r1, [r0]
	ldr r1, _08027F14 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _08027F32
	.align 2, 0
_08027EEC: .4byte gBattleMons
_08027EF0: .4byte gUnknown_02024C08
_08027EF4: .4byte gUnknown_02024C07
_08027EF8: .4byte gUnknown_02024BEC
_08027EFC: .4byte 0x02000000
_08027F00: .4byte 0x00016014
_08027F04: .4byte 0x00016015
_08027F08: .4byte 0x00016017
_08027F0C: .4byte gUnknown_02024D68
_08027F10: .4byte 0x0000ffff
_08027F14: .4byte gUnknown_02024C10
_08027F18:
	ldr r3, _08027F40 @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_08027F32:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027F40: .4byte gUnknown_02024C10
	thumb_func_end sub_8027E4C

	thumb_func_start sub_8027F44
sub_8027F44: @ 8027F44
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r1, _08027FA8 @ =gUnknown_02024C3C
	ldr r4, _08027FAC @ =gUnknown_02024C07
	ldrb r0, [r4]
	lsls r0, 1
	adds r2, r0, r1
	ldrh r1, [r2]
	cmp r1, 0
	beq _08027F8C
	ldr r0, _08027FB0 @ =0x0000ffff
	cmp r1, r0
	beq _08027F8C
	ldrh r0, [r2]
	bl sub_8028350
	lsls r0, 24
	cmp r0, 0
	beq _08028024
	ldr r2, _08027FB4 @ =gUnknown_02024D28
	ldrb r0, [r4]
	lsls r1, r0, 4
	adds r0, r2, 0x4
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _08028024
	adds r0, r2, 0
	adds r0, 0x8
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, 0
	bne _08028024
_08027F8C:
	ldr r3, _08027FB8 @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
	b _08028110
	.align 2, 0
_08027FA8: .4byte gUnknown_02024C3C
_08027FAC: .4byte gUnknown_02024C07
_08027FB0: .4byte 0x0000ffff
_08027FB4: .4byte gUnknown_02024D28
_08027FB8: .4byte gUnknown_02024C10
_08027FBC:
	mov r0, r12
	strb r5, [r0]
	mov r1, r10
	ldrb r0, [r1]
	muls r0, r2
	adds r0, r7
	adds r0, 0x22
	strb r5, [r0]
	ldr r1, _08027FE0 @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x3
	strb r0, [r1, 0x1]
	strb r5, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r1, _08027FE4 @ =gUnknown_02024C10
	b _08028012
	.align 2, 0
_08027FE0: .4byte gUnknown_030041C0
_08027FE4: .4byte gUnknown_02024C10
_08027FE8:
	mov r0, r8
	adds r0, 0x1
	adds r0, r3
	ldrb r2, [r0]
	strb r2, [r4]
	mov r4, r10
	ldrb r0, [r4]
	muls r0, r6
	ldr r7, _0802801C @ =gBattleMons
	adds r0, r7
	adds r0, 0x22
	strb r2, [r0]
	ldr r1, _08028020 @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x3
	strb r0, [r1, 0x1]
	strb r2, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	mov r1, r12
_08028012:
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _08028110
	.align 2, 0
_0802801C: .4byte gBattleMons
_08028020: .4byte gUnknown_030041C0
_08028024:
	movs r4, 0
	mov r8, r4
	movs r7, 0x7F
	mov r9, r7
_0802802C:
	bl Random
	mov r4, r9
	ands r4, r0
	cmp r4, 0x70
	bhi _0802802C
	lsls r0, r4, 1
	adds r4, r0, r4
	ldr r6, _08028120 @ =gTypeEffectiveness
	adds r3, r4, r6
	ldr r1, _08028124 @ =gUnknown_02024C44
	ldr r2, _08028128 @ =gUnknown_02024C07
	ldrb r5, [r2]
	lsls r0, r5, 1
	adds r0, r1
	ldrb r1, [r3]
	mov r10, r2
	ldrh r0, [r0]
	cmp r1, r0
	bne _08028088
	adds r0, r4, 0x2
	adds r0, r6
	ldrb r0, [r0]
	cmp r0, 0x5
	bhi _08028088
	ldr r7, _0802812C @ =gBattleMons
	movs r2, 0x58
	adds r0, r5, 0
	muls r0, r2
	adds r3, r0, r7
	movs r0, 0x21
	adds r0, r3
	mov r12, r0
	adds r0, r4, 0x1
	adds r0, r6
	ldrb r5, [r0]
	mov r1, r12
	ldrb r0, [r1]
	adds r1, r5, 0
	cmp r0, r1
	beq _08028088
	adds r0, r3, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, r1
	bne _08027FBC
_08028088:
	movs r7, 0x1
	add r8, r7
	ldr r0, _08028130 @ =0x000003e7
	cmp r8, r0
	ble _0802802C
	movs r0, 0
	mov r8, r0
	ldr r1, _08028134 @ =gUnknown_02024C10
	mov r12, r1
	ldr r3, _08028120 @ =gTypeEffectiveness
	adds r0, r4, 0x1
	adds r0, r3
	mov r9, r0
	adds r5, r3, 0
_080280A4:
	ldrb r1, [r5]
	cmp r1, 0xFF
	bgt _080280AE
	cmp r1, 0xFE
	bge _080280E8
_080280AE:
	mov r4, r10
	ldrb r2, [r4]
	lsls r0, r2, 1
	ldr r7, _08028124 @ =gUnknown_02024C44
	adds r0, r7
	ldrh r0, [r0]
	cmp r1, r0
	bne _080280E8
	ldrb r0, [r5, 0x2]
	cmp r0, 0x5
	bhi _080280E8
	movs r6, 0x58
	adds r0, r2, 0
	muls r0, r6
	ldr r1, _0802812C @ =gBattleMons
	adds r2, r0, r1
	adds r4, r2, 0
	adds r4, 0x21
	ldrb r0, [r4]
	mov r7, r9
	ldrb r1, [r7]
	cmp r0, r1
	beq _080280E8
	adds r0, r2, 0
	adds r0, 0x22
	ldrb r0, [r0]
	cmp r0, r1
	beq _080280E8
	b _08027FE8
_080280E8:
	adds r5, 0x3
	movs r0, 0x3
	add r8, r0
	ldr r0, _08028138 @ =0x0000014f
	cmp r8, r0
	bls _080280A4
	mov r1, r12
	ldr r2, [r1]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	mov r4, r12
	str r1, [r4]
_08028110:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028120: .4byte gTypeEffectiveness
_08028124: .4byte gUnknown_02024C44
_08028128: .4byte gUnknown_02024C07
_0802812C: .4byte gBattleMons
_08028130: .4byte 0x000003e7
_08028134: .4byte gUnknown_02024C10
_08028138: .4byte 0x0000014f
	thumb_func_end sub_8027F44

	thumb_func_start atkA7_setalwayshitflag
atkA7_setalwayshitflag: @ 802813C
	push {r4,lr}
	ldr r4, _08028180 @ =gUnknown_02024C98
	ldr r3, _08028184 @ =gUnknown_02024C08
	ldrb r1, [r3]
	lsls r1, 2
	adds r1, r4
	ldr r0, [r1]
	movs r2, 0x19
	negs r2, r2
	ands r0, r2
	str r0, [r1]
	ldrb r1, [r3]
	lsls r1, 2
	adds r1, r4
	ldr r0, [r1]
	movs r2, 0x10
	orrs r0, r2
	str r0, [r1]
	ldr r2, _08028188 @ =gUnknown_02024CA8
	ldrb r1, [r3]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldr r1, _0802818C @ =gUnknown_02024C07
	ldrb r1, [r1]
	strb r1, [r0, 0x15]
	ldr r1, _08028190 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08028180: .4byte gUnknown_02024C98
_08028184: .4byte gUnknown_02024C08
_08028188: .4byte gUnknown_02024CA8
_0802818C: .4byte gUnknown_02024C07
_08028190: .4byte gUnknown_02024C10
	thumb_func_end atkA7_setalwayshitflag

	thumb_func_start atkA8_copymovepermanently
atkA8_copymovepermanently: @ 8028194
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x14
	ldr r0, _080282F4 @ =gUnknown_02024BE8
	ldr r1, _080282F8 @ =0x0000ffff
	adds r5, r1, 0
	strh r5, [r0]
	ldr r3, _080282FC @ =gBattleMons
	ldr r2, _08028300 @ =gUnknown_02024C07
	ldrb r1, [r2]
	movs r0, 0x58
	adds r4, r1, 0
	muls r4, r0
	adds r0, r3, 0
	adds r0, 0x50
	adds r0, r4, r0
	ldr r1, [r0]
	movs r0, 0x80
	lsls r0, 14
	ands r1, r0
	mov r12, r3
	mov r10, r2
	cmp r1, 0
	beq _080281CC
	b _08028320
_080281CC:
	ldr r0, _08028304 @ =gUnknown_02024C2C
	ldr r2, _08028308 @ =gUnknown_02024C08
	ldrb r1, [r2]
	lsls r1, 1
	adds r1, r0
	ldrh r1, [r1]
	mov r9, r0
	mov r8, r2
	cmp r1, 0xA5
	bne _080281E2
	b _08028320
_080281E2:
	cmp r1, 0
	bne _080281E8
	b _08028320
_080281E8:
	cmp r1, r5
	bne _080281EE
	b _08028320
_080281EE:
	cmp r1, 0xA6
	bne _080281F4
	b _08028320
_080281F4:
	movs r7, 0
	mov r5, r9
	mov r0, r12
	adds r0, 0xC
	adds r1, r4, r0
	mov r3, r8
_08028200:
	ldrh r2, [r1]
	cmp r2, 0xA6
	beq _08028212
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r5
	ldrh r0, [r0]
	cmp r2, r0
	beq _0802821A
_08028212:
	adds r1, 0x2
	adds r7, 0x1
	cmp r7, 0x3
	ble _08028200
_0802821A:
	cmp r7, 0x4
	beq _08028220
	b _08028320
_08028220:
	ldr r4, _0802830C @ =gUnknown_02024BE4
	ldrb r1, [r4]
	lsls r1, 1
	mov r2, r10
	ldrb r0, [r2]
	movs r3, 0x58
	muls r0, r3
	adds r1, r0
	mov r6, r12
	adds r6, 0xC
	adds r1, r6
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, 1
	add r0, r9
	ldrh r0, [r0]
	strh r0, [r1]
	mov r1, r10
	ldrb r0, [r1]
	adds r2, r0, 0
	muls r2, r3
	ldrb r4, [r4]
	adds r2, r4
	mov r5, r12
	adds r5, 0x24
	adds r2, r5
	ldr r4, _08028310 @ =gBattleMoves
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, 1
	add r0, r9
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrb r0, [r0, 0x4]
	strb r0, [r2]
	ldr r1, _08028314 @ =gUnknown_02024A60
	mov r2, r10
	ldrb r0, [r2]
	strb r0, [r1]
	movs r7, 0
	ldrb r0, [r2]
	muls r0, r3
	adds r4, r0, r5
	adds r3, r0, 0
	add r2, sp, 0x4
	add r5, sp, 0xC
_08028282:
	adds r0, r3, r6
	ldrh r0, [r0]
	strh r0, [r2]
	adds r1, r5, r7
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, 0x1
	adds r3, 0x2
	adds r2, 0x2
	adds r7, 0x1
	cmp r7, 0x3
	ble _08028282
	add r2, sp, 0x4
	mov r0, r10
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	add r0, r12
	adds r0, 0x3B
	ldrb r0, [r0]
	strb r0, [r2, 0xC]
	str r2, [sp]
	movs r0, 0
	movs r1, 0x3
	movs r2, 0
	movs r3, 0x10
	bl dp01_build_cmdbuf_x02_a_b_varargs
	ldr r0, _08028314 @ =gUnknown_02024A60
	ldrb r0, [r0]
	bl dp01_battle_side_mark_buffer_for_execution
	ldr r1, _08028318 @ =gUnknown_030041C0
	movs r0, 0xFD
	strb r0, [r1]
	movs r0, 0x2
	strb r0, [r1, 0x1]
	ldr r3, _08028304 @ =gUnknown_02024C2C
	ldr r2, _08028308 @ =gUnknown_02024C08
	ldrb r0, [r2]
	lsls r0, 1
	adds r0, r3
	ldrh r0, [r0]
	strb r0, [r1, 0x2]
	ldrb r0, [r2]
	lsls r0, 1
	adds r0, r3
	ldrh r0, [r0]
	lsrs r0, 8
	strb r0, [r1, 0x3]
	movs r0, 0xFF
	strb r0, [r1, 0x4]
	ldr r1, _0802831C @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _0802833A
	.align 2, 0
_080282F4: .4byte gUnknown_02024BE8
_080282F8: .4byte 0x0000ffff
_080282FC: .4byte gBattleMons
_08028300: .4byte gUnknown_02024C07
_08028304: .4byte gUnknown_02024C2C
_08028308: .4byte gUnknown_02024C08
_0802830C: .4byte gUnknown_02024BE4
_08028310: .4byte gBattleMoves
_08028314: .4byte gUnknown_02024A60
_08028318: .4byte gUnknown_030041C0
_0802831C: .4byte gUnknown_02024C10
_08028320:
	ldr r3, _0802834C @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_0802833A:
	add sp, 0x14
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802834C: .4byte gUnknown_02024C10
	thumb_func_end atkA8_copymovepermanently

	thumb_func_start sub_8028350
sub_8028350: @ 8028350
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r2, _08028380 @ =gBattleMoves
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	ldrb r0, [r1]
	cmp r0, 0x91
	beq _0802837A
	cmp r0, 0x27
	beq _0802837A
	cmp r0, 0x4B
	beq _0802837A
	cmp r0, 0x97
	beq _0802837A
	cmp r0, 0x9B
	beq _0802837A
	cmp r0, 0x1A
	bne _08028384
_0802837A:
	movs r0, 0x1
	b _08028386
	.align 2, 0
_08028380: .4byte gBattleMoves
_08028384:
	movs r0, 0
_08028386:
	pop {r1}
	bx r1
	thumb_func_end sub_8028350

	thumb_func_start sub_802838C
sub_802838C: @ 802838C
	push {lr}
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0
	beq _080283AA
	cmp r1, 0xD6
	beq _080283AA
	movs r0, 0x89
	lsls r0, 1
	cmp r1, r0
	beq _080283AA
	cmp r1, 0x77
	beq _080283AA
	cmp r1, 0x76
	bne _080283AE
_080283AA:
	movs r0, 0x1
	b _080283B0
_080283AE:
	movs r0, 0
_080283B0:
	pop {r1}
	bx r1
	thumb_func_end sub_802838C

	thumb_func_start move_weather_interaction
move_weather_interaction: @ 80283B4
	push {lr}
	lsls r1, 16
	lsrs r2, r1, 16
	ldr r1, _0802840C @ =gBattleMoves
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0]
	adds r3, r1, 0
	cmp r0, 0x97
	bne _080283D8
	ldr r0, _08028410 @ =word_2024DB8
	ldrh r1, [r0]
	movs r0, 0x60
	ands r0, r1
	cmp r0, 0
	bne _08028418
_080283D8:
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r3
	ldrb r0, [r0]
	cmp r0, 0x91
	beq _080283FA
	cmp r0, 0x27
	beq _080283FA
	cmp r0, 0x4B
	beq _080283FA
	cmp r0, 0x97
	beq _080283FA
	cmp r0, 0x9B
	beq _080283FA
	cmp r0, 0x1A
	bne _08028418
_080283FA:
	ldr r0, _08028414 @ =gUnknown_02024C6C
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 20
	ands r0, r1
	cmp r0, 0
	beq _08028418
	movs r0, 0x1
	b _0802841A
	.align 2, 0
_0802840C: .4byte gBattleMoves
_08028410: .4byte word_2024DB8
_08028414: .4byte gUnknown_02024C6C
_08028418:
	movs r0, 0x2
_0802841A:
	pop {r1}
	bx r1
	thumb_func_end move_weather_interaction

	thumb_func_start sub_8028420
sub_8028420: @ 8028420
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	movs r6, 0
	movs r5, 0
	ldr r0, _080284B0 @ =gUnknown_02024C07
	mov r9, r0
	movs r1, 0x58
	mov r8, r1
	ldr r7, _080284B4 @ =gUnknown_02024A8C
	movs r0, 0x84
	lsls r0, 1
	mov r10, r0
_0802843E:
	lsls r4, r5, 1
	mov r1, r9
	ldrb r0, [r1]
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	adds r0, r4, r0
	adds r0, r7
	ldrh r0, [r0]
	bl sub_802838C
	lsls r0, 24
	cmp r0, 0
	bne _0802847E
	mov r1, r9
	ldrb r0, [r1]
	mov r1, r8
	muls r1, r0
	adds r0, r1, 0
	adds r0, r4, r0
	adds r0, r7
	ldrh r1, [r0]
	cmp r1, r10
	beq _0802847E
	cmp r1, 0xFD
	beq _0802847E
	adds r0, r1, 0
	bl sub_8028350
	lsls r0, 24
	cmp r0, 0
	beq _0802848C
_0802847E:
	ldr r1, _080284B8 @ =gBitTable
	lsls r0, r5, 2
	adds r0, r1
	ldr r0, [r0]
	orrs r6, r0
	lsls r0, r6, 24
	lsrs r6, r0, 24
_0802848C:
	adds r5, 0x1
	cmp r5, 0x3
	ble _0802843E
	ldr r0, _080284B0 @ =gUnknown_02024C07
	ldrb r0, [r0]
	adds r1, r6, 0
	movs r2, 0xFD
	bl sub_8015A98
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0xF
	bne _080284C0
	ldr r1, _080284BC @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x5
	str r0, [r1]
	b _08028524
	.align 2, 0
_080284B0: .4byte gUnknown_02024C07
_080284B4: .4byte gUnknown_02024A8C
_080284B8: .4byte gBitTable
_080284BC: .4byte gUnknown_02024C10
_080284C0:
	movs r7, 0x3
	ldr r4, _08028534 @ =gBitTable
_080284C4:
	bl Random
	adds r5, r7, 0
	ands r5, r0
	lsls r0, r5, 2
	adds r0, r4
	ldr r0, [r0]
	ands r0, r6
	cmp r0, 0
	bne _080284C4
	ldr r4, _08028538 @ =gUnknown_02024BEA
	ldr r2, _0802853C @ =gBattleMons
	lsls r1, r5, 1
	ldr r0, _08028540 @ =gUnknown_02024C07
	ldrb r3, [r0]
	movs r0, 0x58
	muls r0, r3
	adds r1, r0
	adds r2, 0xC
	adds r1, r2
	ldrh r0, [r1]
	strh r0, [r4]
	ldr r0, _08028544 @ =gUnknown_02024BE4
	strb r5, [r0]
	ldr r2, _08028548 @ =gUnknown_02024C6C
	ldr r0, [r2]
	ldr r1, _0802854C @ =0xfffffbff
	ands r0, r1
	str r0, [r2]
	ldrh r0, [r4]
	movs r1, 0
	bl sub_801B5C0
	ldr r1, _08028550 @ =gUnknown_02024C08
	strb r0, [r1]
	ldr r3, _08028554 @ =gUnknown_02024C10
	ldr r2, [r3]
	ldrb r1, [r2, 0x1]
	ldrb r0, [r2, 0x2]
	lsls r0, 8
	orrs r1, r0
	ldrb r0, [r2, 0x3]
	lsls r0, 16
	orrs r1, r0
	ldrb r0, [r2, 0x4]
	lsls r0, 24
	orrs r1, r0
	str r1, [r3]
_08028524:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028534: .4byte gBitTable
_08028538: .4byte gUnknown_02024BEA
_0802853C: .4byte gBattleMons
_08028540: .4byte gUnknown_02024C07
_08028544: .4byte gUnknown_02024BE4
_08028548: .4byte gUnknown_02024C6C
_0802854C: .4byte 0xfffffbff
_08028550: .4byte gUnknown_02024C08
_08028554: .4byte gUnknown_02024C10
	thumb_func_end sub_8028420

	thumb_func_start sub_8028558
sub_8028558: @ 8028558
	ldr r1, _0802857C @ =gBattleMons
	ldr r0, _08028580 @ =gUnknown_02024C07
	ldrb r2, [r0]
	movs r0, 0x58
	muls r2, r0
	adds r1, 0x50
	adds r2, r1
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 18
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08028584 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	bx lr
	.align 2, 0
_0802857C: .4byte gBattleMons
_08028580: .4byte gUnknown_02024C07
_08028584: .4byte gUnknown_02024C10
	thumb_func_end sub_8028558

	thumb_func_start b_feature_update_destiny_bond
b_feature_update_destiny_bond: @ 8028588
	push {r4,r5,lr}
	ldr r0, _080285D8 @ =gUnknown_02024C07
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r4, _080285DC @ =gUnknown_02024C08
	ldrb r0, [r4]
	bl battle_side_get_owner
	lsls r0, 24
	lsrs r3, r0, 24
	ldr r1, _080285E0 @ =gBattleMons
	ldrb r2, [r4]
	movs r0, 0x58
	muls r0, r2
	adds r1, 0x50
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 18
	ands r0, r1
	cmp r0, 0
	beq _080285D2
	cmp r5, r3
	beq _080285D2
	ldr r2, _080285E4 @ =gUnknown_02024C6C
	ldr r1, [r2]
	movs r0, 0x80
	lsls r0, 17
	ands r0, r1
	cmp r0, 0
	bne _080285D2
	movs r0, 0x40
	orrs r1, r0
	str r1, [r2]
_080285D2:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080285D8: .4byte gUnknown_02024C07
_080285DC: .4byte gUnknown_02024C08
_080285E0: .4byte gBattleMons
_080285E4: .4byte gUnknown_02024C6C
	thumb_func_end b_feature_update_destiny_bond

	thumb_func_start atkAB_802A458
atkAB_802A458: @ 80285E8
	push {lr}
	bl b_feature_update_destiny_bond
	ldr r1, _080285FC @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080285FC: .4byte gUnknown_02024C10
	thumb_func_end atkAB_802A458

	thumb_func_start atkAC_remaininghptopower
atkAC_remaininghptopower: @ 8028600
	push {lr}
	ldr r2, _08028654 @ =gBattleMons
	ldr r0, _08028658 @ =gUnknown_02024C07
	ldrb r1, [r0]
	movs r0, 0x58
	muls r1, r0
	adds r1, r2
	movs r2, 0x28
	ldrsh r0, [r1, r2]
	movs r2, 0x2C
	ldrsh r1, [r1, r2]
	movs r2, 0x30
	bl sub_80461D4
	lsls r0, 24
	lsrs r1, r0, 24
	movs r3, 0
	ldr r0, _0802865C @ =gUnknown_081FAD26
	ldrb r2, [r0]
	cmp r1, r2
	ble _0802863A
	adds r2, r0, 0
_0802862C:
	adds r3, 0x2
	cmp r3, 0xB
	bgt _0802863A
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r1, r0
	bgt _0802862C
_0802863A:
	ldr r2, _08028660 @ =gUnknown_02024DEC
	ldr r1, _0802865C @ =gUnknown_081FAD26
	adds r0, r3, 0x1
	adds r0, r1
	ldrb r0, [r0]
	strh r0, [r2]
	ldr r1, _08028664 @ =gUnknown_02024C10
	ldr r0, [r1]
	adds r0, 0x1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08028654: .4byte gBattleMons
_08028658: .4byte gUnknown_02024C07
_0802865C: .4byte gUnknown_081FAD26
_08028660: .4byte gUnknown_02024DEC
_08028664: .4byte gUnknown_02024C10
	thumb_func_end atkAC_remaininghptopower

	thumb_func_start sub_8028668
sub_8028668: @ 8028668
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	ldr r4, _080287F8 @ =gUnknown_02024C34
	ldrb r2, [r1]
	lsls r0, r2, 1
