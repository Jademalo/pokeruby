	.include "constants/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_807E4EC
sub_807E4EC: @ 807E4EC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	adds r7, r0, 0
	movs r1, 0x30
	ldrsh r0, [r7, r1]
	cmp r0, 0
	bne _0807E500
	ldr r0, _0807E5A4 @ =0x00000169
	strh r0, [r7, 0x30]
_0807E500:
	movs r2, 0x30
	ldrsh r1, [r7, r2]
	ldr r0, _0807E5A8 @ =0x41c64e6d
	muls r0, r1
	ldr r3, _0807E5AC @ =0x00003039
	adds r0, r3
	lsls r0, 1
	lsrs r0, 17
	movs r1, 0x96
	lsls r1, 2
	bl __umodsi3
	movs r1, 0
	mov r8, r1
	strh r0, [r7, 0x30]
	ldr r1, _0807E5B0 @ =gUnknown_0839AAC4
	ldr r0, _0807E5B4 @ =gUnknown_08396FC4
	ldr r5, [r0]
	ldr r2, _0807E5B8 @ =0x000006dc
	adds r5, r2
	ldrb r0, [r5]
	lsls r0, 2
	adds r0, r1
	ldrh r6, [r0]
	movs r3, 0x30
	ldrsh r0, [r7, r3]
	movs r1, 0x1E
	bl __modsi3
	adds r4, r0, 0
	lsls r4, 16
	asrs r4, 16
	lsls r0, r4, 3
	strh r0, [r7, 0x32]
	movs r1, 0x30
	ldrsh r0, [r7, r1]
	movs r1, 0x1E
	bl __divsi3
	lsls r0, 16
	lsls r4, 7
	strh r4, [r7, 0x32]
	asrs r0, 9
	strh r0, [r7, 0x34]
	ldr r2, _0807E5BC @ =gUnknown_0839AABC
	ldrb r1, [r5]
	lsls r1, 2
	adds r1, r2
	movs r3, 0
	ldrsh r1, [r1, r3]
	muls r1, r6
	subs r4, r1
	strh r4, [r7, 0x32]
	ldrb r1, [r5]
	lsls r1, 2
	adds r2, 0x2
	adds r1, r2
	movs r2, 0
	ldrsh r1, [r1, r2]
	muls r1, r6
	subs r0, r1
	strh r0, [r7, 0x34]
	adds r0, r7, 0
	movs r1, 0
	bl StartSpriteAnim
	mov r3, r8
	strh r3, [r7, 0x36]
	adds r2, r7, 0
	adds r2, 0x3E
	ldrb r1, [r2]
	movs r0, 0x3
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	strh r6, [r7, 0x2E]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E5A4: .4byte 0x00000169
_0807E5A8: .4byte 0x41c64e6d
_0807E5AC: .4byte 0x00003039
_0807E5B0: .4byte gUnknown_0839AAC4
_0807E5B4: .4byte gUnknown_08396FC4
_0807E5B8: .4byte 0x000006dc
_0807E5BC: .4byte gUnknown_0839AABC
	thumb_func_end sub_807E4EC

	thumb_func_start sub_807E5C0
sub_807E5C0: @ 807E5C0
	push {r4,r5,lr}
	adds r5, r0, 0
	movs r1, 0x36
	ldrsh r0, [r5, r1]
	cmp r0, 0
	bne _0807E69C
	ldr r3, _0807E634 @ =gUnknown_0839AABC
	ldr r4, _0807E638 @ =gUnknown_08396FC4
	ldr r2, [r4]
	ldr r0, _0807E63C @ =0x000006dc
	adds r2, r0
	ldrb r0, [r2]
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r0]
	ldrh r0, [r5, 0x32]
	adds r1, r0
	strh r1, [r5, 0x32]
	ldrb r0, [r2]
	lsls r0, 2
	adds r3, 0x2
	adds r0, r3
	ldrh r0, [r0]
	ldrh r2, [r5, 0x34]
	adds r0, r2
	strh r0, [r5, 0x34]
	lsls r1, 16
	asrs r1, 20
	strh r1, [r5, 0x20]
	lsls r0, 16
	asrs r2, r0, 20
	strh r2, [r5, 0x22]
	movs r3, 0x38
	ldrsh r0, [r5, r3]
	adds r3, r4, 0
	cmp r0, 0
	beq _0807E640
	adds r0, r1, 0
	adds r0, 0x8
	lsls r0, 16
	movs r1, 0x80
	lsls r1, 17
	cmp r0, r1
	bhi _0807E640
	adds r1, r2, 0
	movs r0, 0x10
	negs r0, r0
	cmp r1, r0
	blt _0807E640
	cmp r1, 0xB0
	bgt _0807E640
	adds r0, r5, 0
	adds r0, 0x3E
	ldrb r2, [r0]
	movs r1, 0x5
	negs r1, r1
	ands r1, r2
	b _0807E64A
	.align 2, 0
_0807E634: .4byte gUnknown_0839AABC
_0807E638: .4byte gUnknown_08396FC4
_0807E63C: .4byte 0x000006dc
_0807E640:
	adds r0, r5, 0
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
_0807E64A:
	strb r1, [r0]
	adds r4, r0, 0
	ldrh r0, [r5, 0x2E]
	subs r0, 0x1
	strh r0, [r5, 0x2E]
	lsls r0, 16
	cmp r0, 0
	bne _0807E6BC
	ldr r0, [r3]
	ldr r1, _0807E690 @ =0x000006dc
	adds r0, r1
	ldrb r1, [r0]
	adds r1, 0x1
	lsls r1, 24
	lsrs r1, 24
	adds r0, r5, 0
	bl StartSpriteAnim
	movs r0, 0x1
	strh r0, [r5, 0x36]
	ldr r1, _0807E694 @ =gSpriteCoordOffsetX
	ldrh r0, [r5, 0x20]
	ldrh r1, [r1]
	subs r0, r1
	strh r0, [r5, 0x20]
	ldr r1, _0807E698 @ =gSpriteCoordOffsetY
	ldrh r0, [r5, 0x22]
	ldrh r1, [r1]
	subs r0, r1
	strh r0, [r5, 0x22]
	ldrb r0, [r4]
	movs r1, 0x2
	orrs r0, r1
	strb r0, [r4]
	b _0807E6BC
	.align 2, 0
_0807E690: .4byte 0x000006dc
_0807E694: .4byte gSpriteCoordOffsetX
_0807E698: .4byte gSpriteCoordOffsetY
_0807E69C:
	adds r0, r5, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _0807E6BC
	adds r2, r5, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, 0
	bl sub_807E4EC
_0807E6BC:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_807E5C0

	thumb_func_start sub_807E6C4
sub_807E6C4: @ 807E6C4
	push {r4,lr}
	adds r4, r0, 0
	ldrh r1, [r4, 0x2E]
	movs r2, 0x2E
	ldrsh r0, [r4, r2]
	cmp r0, 0
	bne _0807E6E4
	adds r0, r4, 0
	bl sub_807E4EC
	ldr r0, _0807E6E0 @ =sub_807E5C0
	str r0, [r4, 0x1C]
	b _0807E6E8
	.align 2, 0
_0807E6E0: .4byte sub_807E5C0
_0807E6E4:
	subs r0, r1, 0x1
	strh r0, [r4, 0x2E]
_0807E6E8:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_807E6C4

	thumb_func_start sub_807E6F0
sub_807E6F0: @ 807E6F0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	adds r7, r0, 0
	lsls r5, r1, 16
	lsrs r5, 16
	ldr r2, _0807E774 @ =gUnknown_0839AAC4
	ldr r0, _0807E778 @ =gUnknown_08396FC4
	ldr r0, [r0]
	ldr r1, _0807E77C @ =0x000006dc
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 2
	adds r1, r0, r2
	ldrh r1, [r1]
	mov r8, r1
	adds r2, 0x2
	adds r0, r2
	ldrh r4, [r0]
	add r4, r8
	adds r0, r5, 0
	adds r1, r4, 0
	bl __divsi3
	lsls r0, 16
	lsrs r6, r0, 16
	adds r0, r5, 0
	adds r1, r4, 0
	bl __modsi3
	lsls r0, 16
	lsrs r4, r0, 16
	subs r0, r6, 0x1
	lsls r0, 16
	lsrs r6, r0, 16
	ldr r0, _0807E780 @ =0x0000ffff
	cmp r6, r0
	beq _0807E74E
	adds r5, r0, 0
_0807E73E:
	adds r0, r7, 0
	bl sub_807E4EC
	subs r0, r6, 0x1
	lsls r0, 16
	lsrs r6, r0, 16
	cmp r6, r5
	bne _0807E73E
_0807E74E:
	cmp r4, r8
	bcs _0807E784
	subs r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	ldr r0, _0807E780 @ =0x0000ffff
	cmp r4, r0
	beq _0807E770
	adds r5, r0, 0
_0807E760:
	adds r0, r7, 0
	bl sub_807E5C0
	subs r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, r5
	bne _0807E760
_0807E770:
	movs r0, 0
	b _0807E798
	.align 2, 0
_0807E774: .4byte gUnknown_0839AAC4
_0807E778: .4byte gUnknown_08396FC4
_0807E77C: .4byte 0x000006dc
_0807E780: .4byte 0x0000ffff
_0807E784:
	mov r1, r8
	subs r0, r4, r1
	strh r0, [r7, 0x2E]
	adds r2, r7, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2]
	movs r0, 0x1
_0807E798:
	strh r0, [r7, 0x3A]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_807E6F0

	thumb_func_start sub_807E7A4
sub_807E7A4: @ 807E7A4
	push {lr}
	ldr r0, _0807E7B0 @ =gUnknown_0839AACC
	bl LoadSpriteSheet
	pop {r0}
	bx r0
	.align 2, 0
_0807E7B0: .4byte gUnknown_0839AACC
	thumb_func_end sub_807E7A4

	thumb_func_start sub_807E7B4
sub_807E7B4: @ 807E7B4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r0, _0807E860 @ =gUnknown_08396FC4
	ldr r4, [r0]
	ldr r0, _0807E864 @ =0x000006da
	adds r2, r4, r0
	ldrb r0, [r2]
	cmp r0, 0x18
	bne _0807E7CE
	b _0807E8D4
_0807E7CE:
	ldrb r7, [r2]
	ldr r0, _0807E868 @ =gSpriteTemplate_839AAA4
	ldr r2, _0807E86C @ =gUnknown_0839AA08
	lsls r6, r7, 2
	adds r2, r6, r2
	movs r3, 0
	ldrsh r1, [r2, r3]
	movs r3, 0x2
	ldrsh r2, [r2, r3]
	movs r3, 0x4E
	bl CreateSpriteAtEnd
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x40
	beq _0807E87C
	ldr r3, _0807E870 @ =gSprites
	lsls r4, r5, 4
	adds r1, r4, r5
	lsls r1, 2
	adds r1, r3
	movs r0, 0
	strh r0, [r1, 0x38]
	lsls r2, r7, 3
	adds r0, r2, r7
	lsls r0, 4
	adds r0, r7
	strh r0, [r1, 0x30]
	lsls r0, 16
	asrs r0, 16
	ldr r1, _0807E874 @ =0x00000257
	mov r10, r6
	mov r9, r3
	mov r12, r4
	mov r8, r2
	cmp r0, r1
	ble _0807E832
	adds r2, r1, 0
_0807E81A:
	adds r0, r4, r5
	lsls r0, 2
	ldr r6, _0807E870 @ =gSprites
	adds r0, r6
	ldr r3, _0807E878 @ =0xfffffda8
	ldrh r6, [r0, 0x30]
	adds r1, r3, r6
	strh r1, [r0, 0x30]
	lsls r1, 16
	asrs r1, 16
	cmp r1, r2
	bgt _0807E81A
_0807E832:
	mov r0, r12
	adds r4, r0, r5
	lsls r4, 2
	add r4, r9
	adds r0, r4, 0
	bl sub_807E4EC
	mov r3, r8
	adds r1, r3, r7
	adds r0, r4, 0
	bl sub_807E6F0
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0807E860 @ =gUnknown_08396FC4
	ldr r0, [r0]
	add r0, r10
	str r4, [r0]
	b _0807E882
	.align 2, 0
_0807E860: .4byte gUnknown_08396FC4
_0807E864: .4byte 0x000006da
_0807E868: .4byte gSpriteTemplate_839AAA4
_0807E86C: .4byte gUnknown_0839AA08
_0807E870: .4byte gSprites
_0807E874: .4byte 0x00000257
_0807E878: .4byte 0xfffffda8
_0807E87C:
	adds r1, r4, r6
	movs r0, 0
	str r0, [r1]
_0807E882:
	ldr r0, _0807E8B8 @ =gUnknown_08396FC4
	ldr r2, [r0]
	ldr r6, _0807E8BC @ =0x000006da
	adds r1, r2, r6
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x18
	bne _0807E8D8
	movs r3, 0
	adds r1, r2, 0
	ldr r5, _0807E8C0 @ =sub_807E5C0
	ldr r4, _0807E8C4 @ =sub_807E6C4
_0807E8A0:
	lsls r0, r3, 2
	adds r0, r1, r0
	ldr r2, [r0]
	cmp r2, 0
	beq _0807E8CA
	movs r6, 0x3A
	ldrsh r0, [r2, r6]
	cmp r0, 0
	bne _0807E8C8
	str r5, [r2, 0x1C]
	b _0807E8CA
	.align 2, 0
_0807E8B8: .4byte gUnknown_08396FC4
_0807E8BC: .4byte 0x000006da
_0807E8C0: .4byte sub_807E5C0
_0807E8C4: .4byte sub_807E6C4
_0807E8C8:
	str r4, [r2, 0x1C]
_0807E8CA:
	adds r0, r3, 0x1
	lsls r0, 16
	lsrs r3, r0, 16
	cmp r3, 0x17
	bls _0807E8A0
_0807E8D4:
	movs r0, 0
	b _0807E8DA
_0807E8D8:
	movs r0, 0x1
_0807E8DA:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_807E7B4

	thumb_func_start sub_807E8E8
sub_807E8E8: @ 807E8E8
	push {r4-r7,lr}
	ldr r0, _0807E904 @ =gUnknown_08396FC4
	ldr r3, [r0]
	movs r0, 0xDB
	lsls r0, 3
	adds r4, r3, r0
	ldr r1, _0807E908 @ =0x000006d9
	adds r5, r3, r1
	ldrb r0, [r4]
	ldrb r7, [r5]
	cmp r0, r7
	bne _0807E90C
	movs r0, 0
	b _0807E96E
	.align 2, 0
_0807E904: .4byte gUnknown_08396FC4
_0807E908: .4byte 0x000006d9
_0807E90C:
	ldr r0, _0807E944 @ =0x000006d6
	adds r2, r3, r0
	ldrh r0, [r2]
	adds r0, 0x1
	movs r6, 0
	strh r0, [r2]
	ldr r7, _0807E948 @ =0x000006db
	adds r1, r3, r7
	lsls r0, 16
	lsrs r0, 16
	ldrb r1, [r1]
	cmp r0, r1
	bls _0807E96C
	strh r6, [r2]
	ldrb r0, [r4]
	adds r1, r0, 0
	ldrb r5, [r5]
	cmp r1, r5
	bcs _0807E94C
	adds r0, 0x1
	strb r0, [r4]
	lsls r0, r1, 2
	adds r0, r3, r0
	ldr r1, [r0]
	movs r0, 0x1
	strh r0, [r1, 0x38]
	b _0807E96C
	.align 2, 0
_0807E944: .4byte 0x000006d6
_0807E948: .4byte 0x000006db
_0807E94C:
	subs r0, 0x1
	strb r0, [r4]
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r3, r0
	ldr r0, [r0]
	strh r6, [r0, 0x38]
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r3, r0
	ldr r1, [r0]
	adds r1, 0x3E
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
_0807E96C:
	movs r0, 0x1
_0807E96E:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_807E8E8

	thumb_func_start sub_807E974
sub_807E974: @ 807E974
	push {r4-r7,lr}
	movs r4, 0
	ldr r0, _0807E9BC @ =gUnknown_08396FC4
	ldr r2, [r0]
	ldr r3, _0807E9C0 @ =0x000006da
	adds r1, r2, r3
	adds r7, r0, 0
	ldrb r1, [r1]
	cmp r4, r1
	bcs _0807E9A6
	adds r5, r2, 0
	adds r6, r5, r3
_0807E98C:
	lsls r0, r4, 2
	adds r0, r5, r0
	ldr r0, [r0]
	cmp r0, 0
	beq _0807E99A
	bl DestroySprite
_0807E99A:
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	ldrb r0, [r6]
	cmp r4, r0
	bcc _0807E98C
_0807E9A6:
	ldr r0, [r7]
	ldr r1, _0807E9C0 @ =0x000006da
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
	ldr r0, _0807E9C4 @ =0x00001206
	bl FreeSpriteTilesByTag
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E9BC: .4byte gUnknown_08396FC4
_0807E9C0: .4byte 0x000006da
_0807E9C4: .4byte 0x00001206
	thumb_func_end sub_807E974

	thumb_func_start sub_807E9C8
sub_807E9C8: @ 807E9C8
	push {r4,lr}
	ldr r0, _0807EA04 @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r2, _0807EA08 @ =0x000006cc
	adds r0, r1, r2
	movs r2, 0
	movs r3, 0
	strh r3, [r0]
	ldr r4, _0807EA0C @ =0x000006d2
	adds r0, r1, r4
	strb r2, [r0]
	ldr r0, _0807EA10 @ =0x000006c1
	adds r2, r1, r0
	movs r0, 0x3
	strb r0, [r2]
	subs r4, 0x10
	adds r2, r1, r4
	movs r0, 0x14
	strb r0, [r2]
	ldr r0, _0807EA14 @ =0x000006e5
	adds r2, r1, r0
	movs r0, 0x10
	strb r0, [r2]
	movs r2, 0xDC
	lsls r2, 3
	adds r1, r2
	strh r3, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807EA04: .4byte gUnknown_08396FC4
_0807EA08: .4byte 0x000006cc
_0807EA0C: .4byte 0x000006d2
_0807EA10: .4byte 0x000006c1
_0807EA14: .4byte 0x000006e5
	thumb_func_end sub_807E9C8

	thumb_func_start sub_807EA18
sub_807EA18: @ 807EA18
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	bl sub_807E9C8
	ldr r2, _0807EA78 @ =gUnknown_08396FC4
	ldr r1, [r2]
	ldr r3, _0807EA7C @ =0x000006d2
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, 0
	bne _0807EA6E
	mov r8, r2
	adds r7, r1, r3
_0807EA34:
	bl snowflakes_progress2
	movs r4, 0
	mov r1, r8
	ldr r0, [r1]
	ldr r3, _0807EA80 @ =0x000006e4
	adds r0, r3
	ldrb r0, [r0]
	cmp r4, r0
	bcs _0807EA68
	ldr r0, _0807EA78 @ =gUnknown_08396FC4
	ldr r5, [r0]
	adds r6, r5, r3
_0807EA4E:
	lsls r1, r4, 2
	adds r0, r5, 0
	adds r0, 0x60
	adds r0, r1
	ldr r0, [r0]
	bl sub_807ED48
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	ldrb r0, [r6]
	cmp r4, r0
	bcc _0807EA4E
_0807EA68:
	ldrb r0, [r7]
	cmp r0, 0
	beq _0807EA34
_0807EA6E:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807EA78: .4byte gUnknown_08396FC4
_0807EA7C: .4byte 0x000006d2
_0807EA80: .4byte 0x000006e4
	thumb_func_end sub_807EA18

	thumb_func_start snowflakes_progress2
snowflakes_progress2: @ 807EA84
	push {r4,r5,lr}
	ldr r0, _0807EAB4 @ =gUnknown_08396FC4
	ldr r5, [r0]
	ldr r0, _0807EAB8 @ =0x000006cc
	adds r4, r5, r0
	ldrh r0, [r4]
	cmp r0, 0
	bne _0807EAAC
	bl snowflakes_progress
	lsls r0, 24
	cmp r0, 0
	bne _0807EAAC
	ldr r0, _0807EABC @ =0x000006d2
	adds r1, r5, r0
	movs r0, 0x1
	strb r0, [r1]
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
_0807EAAC:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807EAB4: .4byte gUnknown_08396FC4
_0807EAB8: .4byte 0x000006cc
_0807EABC: .4byte 0x000006d2
	thumb_func_end snowflakes_progress2

	thumb_func_start sub_807EAC0
sub_807EAC0: @ 807EAC0
	push {r4,lr}
	ldr r0, _0807EAD8 @ =gUnknown_08396FC4
	ldr r2, [r0]
	ldr r0, _0807EADC @ =0x000006ce
	adds r3, r2, r0
	ldrh r1, [r3]
	cmp r1, 0
	beq _0807EAE0
	cmp r1, 0x1
	beq _0807EAF2
	movs r0, 0
	b _0807EB1E
	.align 2, 0
_0807EAD8: .4byte gUnknown_08396FC4
_0807EADC: .4byte 0x000006ce
_0807EAE0:
	ldr r4, _0807EB10 @ =0x000006e5
	adds r0, r2, r4
	strb r1, [r0]
	subs r4, 0x5
	adds r0, r2, r4
	strh r1, [r0]
	ldrh r0, [r3]
	adds r0, 0x1
	strh r0, [r3]
_0807EAF2:
	bl snowflakes_progress
	lsls r0, 24
	cmp r0, 0
	bne _0807EB1C
	ldr r0, _0807EB14 @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r0, _0807EB18 @ =0x000006ce
	adds r1, r0
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
	movs r0, 0
	b _0807EB1E
	.align 2, 0
_0807EB10: .4byte 0x000006e5
_0807EB14: .4byte gUnknown_08396FC4
_0807EB18: .4byte 0x000006ce
_0807EB1C:
	movs r0, 0x1
_0807EB1E:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_807EAC0

	thumb_func_start snowflakes_progress
snowflakes_progress: @ 807EB24
	push {r4,lr}
	ldr r0, _0807EB40 @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r0, _0807EB44 @ =0x000006e4
	adds r3, r1, r0
	ldr r4, _0807EB48 @ =0x000006e5
	adds r2, r1, r4
	ldrb r0, [r3]
	ldrb r4, [r2]
	cmp r0, r4
	bne _0807EB4C
	movs r0, 0
	b _0807EB8E
	.align 2, 0
_0807EB40: .4byte gUnknown_08396FC4
_0807EB44: .4byte 0x000006e4
_0807EB48: .4byte 0x000006e5
_0807EB4C:
	movs r0, 0xDC
	lsls r0, 3
	adds r1, r0
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x24
	bls _0807EB76
	movs r0, 0
	strh r0, [r1]
	ldrb r0, [r3]
	ldrb r2, [r2]
	cmp r0, r2
	bcs _0807EB72
	bl snowflake_add
	b _0807EB76
_0807EB72:
	bl snowflake_remove
_0807EB76:
	ldr r0, _0807EB94 @ =gUnknown_08396FC4
	ldr r0, [r0]
	ldr r2, _0807EB98 @ =0x000006e4
	adds r1, r0, r2
	ldr r4, _0807EB9C @ =0x000006e5
	adds r0, r4
	ldrb r1, [r1]
	ldrb r0, [r0]
	eors r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
_0807EB8E:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0807EB94: .4byte gUnknown_08396FC4
_0807EB98: .4byte 0x000006e4
_0807EB9C: .4byte 0x000006e5
	thumb_func_end snowflakes_progress

	thumb_func_start snowflake_add
snowflake_add: @ 807EBA0
	push {r4-r6,lr}
	ldr r0, _0807EBF4 @ =gSpriteTemplate_839AB04
	movs r1, 0
	movs r2, 0
	movs r3, 0x4E
	bl CreateSpriteAtEnd
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x40
	beq _0807EC04
	ldr r0, _0807EBF8 @ =gSprites
	lsls r4, r1, 4
	adds r4, r1
	lsls r4, 2
	adds r4, r0
	ldr r0, _0807EBFC @ =gUnknown_08396FC4
	ldr r5, [r0]
	ldr r0, _0807EC00 @ =0x000006e4
	adds r6, r5, r0
	ldrb r0, [r6]
	strh r0, [r4, 0x36]
	adds r0, r4, 0
	bl sub_807EC40
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r6]
	adds r1, r0, 0x1
	strb r1, [r6]
	lsls r0, 24
	lsrs r0, 22
	adds r5, 0x60
	adds r5, r0
	str r4, [r5]
	movs r0, 0x1
	b _0807EC06
	.align 2, 0
_0807EBF4: .4byte gSpriteTemplate_839AB04
_0807EBF8: .4byte gSprites
_0807EBFC: .4byte gUnknown_08396FC4
_0807EC00: .4byte 0x000006e4
_0807EC04:
	movs r0, 0
_0807EC06:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end snowflake_add

	thumb_func_start snowflake_remove
snowflake_remove: @ 807EC0C
	push {lr}
	ldr r0, _0807EC20 @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r0, _0807EC24 @ =0x000006e4
	adds r2, r1, r0
	ldrb r0, [r2]
	cmp r0, 0
	bne _0807EC28
	movs r0, 0
	b _0807EC3C
	.align 2, 0
_0807EC20: .4byte gUnknown_08396FC4
_0807EC24: .4byte 0x000006e4
_0807EC28:
	subs r0, 0x1
	strb r0, [r2]
	lsls r0, 24
	lsrs r0, 22
	adds r1, 0x60
	adds r1, r0
	ldr r0, [r1]
	bl DestroySprite
	movs r0, 0x1
_0807EC3C:
	pop {r1}
	bx r1
	thumb_func_end snowflake_remove

	thumb_func_start sub_807EC40
sub_807EC40: @ 807EC40
	push {r4-r7,lr}
	adds r5, r0, 0
	bl Random
	movs r1, 0x36
	ldrsh r2, [r5, r1]
	lsls r1, r2, 2
	adds r1, r2
	movs r2, 0x7
	ands r1, r2
	lsls r4, r1, 4
	subs r4, r1
	lsls r4, 1
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x1E
	bl __umodsi3
	adds r4, r0
	lsls r4, 16
	lsrs r4, 16
	ldr r1, _0807ECE4 @ =gSpriteCoordOffsetY
	adds r0, r5, 0
	adds r0, 0x29
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	ldrh r1, [r1]
	adds r0, r1
	movs r2, 0x3
	negs r2, r2
	adds r1, r2, 0
	subs r1, r0
	movs r7, 0
	strh r1, [r5, 0x22]
	ldr r1, _0807ECE8 @ =gSpriteCoordOffsetX
	adds r0, r5, 0
	adds r0, 0x28
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	ldrh r1, [r1]
	adds r0, r1
	subs r4, r0
	strh r4, [r5, 0x20]
	movs r1, 0x22
	ldrsh r0, [r5, r1]
	lsls r0, 7
	strh r0, [r5, 0x2E]
	strh r7, [r5, 0x24]
	bl Random
	lsls r0, 16
	lsrs r0, 16
	adds r6, r0, 0
	movs r4, 0x3
	ands r4, r6
	lsls r0, r4, 2
	adds r0, r4
	adds r0, 0x40
	strh r0, [r5, 0x30]
	strh r0, [r5, 0x3C]
	movs r1, 0x1
	bics r1, r6
	adds r0, r5, 0
	bl StartSpriteAnim
	strh r7, [r5, 0x34]
	movs r0, 0x1
	cmp r4, 0
	bne _0807ECD0
	movs r0, 0x2
_0807ECD0:
	strh r0, [r5, 0x32]
	movs r0, 0x1F
	ands r0, r6
	adds r0, 0xD2
	strh r0, [r5, 0x3A]
	strh r7, [r5, 0x38]
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807ECE4: .4byte gSpriteCoordOffsetY
_0807ECE8: .4byte gSpriteCoordOffsetX
	thumb_func_end sub_807EC40

	thumb_func_start sub_807ECEC
sub_807ECEC: @ 807ECEC
	push {r4,lr}
	adds r3, r0, 0
	ldr r0, _0807ED38 @ =gUnknown_08396FC4
	ldr r0, [r0]
	ldr r1, _0807ED3C @ =0x000006e2
	adds r4, r0, r1
	ldrh r0, [r4]
	cmp r0, 0x12
	bls _0807ED32
	adds r2, r3, 0
	adds r2, 0x3E
	ldrb r1, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0807ED40 @ =sub_807ED48
	str r0, [r3, 0x1C]
	ldr r1, _0807ED44 @ =gSpriteCoordOffsetY
	adds r0, r3, 0
	adds r0, 0x29
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	ldrh r1, [r1]
	adds r0, r1
	movs r1, 0xFA
	subs r1, r0
	movs r2, 0
	strh r1, [r3, 0x22]
	movs r1, 0x22
	ldrsh r0, [r3, r1]
	lsls r0, 7
	strh r0, [r3, 0x2E]
	strh r2, [r4]
_0807ED32:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807ED38: .4byte gUnknown_08396FC4
_0807ED3C: .4byte 0x000006e2
_0807ED40: .4byte sub_807ED48
_0807ED44: .4byte gSpriteCoordOffsetY
	thumb_func_end sub_807ECEC

	thumb_func_start sub_807ED48
sub_807ED48: @ 807ED48
	push {r4,r5,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x30]
	ldrh r1, [r4, 0x2E]
	adds r0, r1
	strh r0, [r4, 0x2E]
	lsls r0, 16
	asrs r0, 23
	strh r0, [r4, 0x22]
	ldrh r0, [r4, 0x32]
	ldrh r2, [r4, 0x34]
	adds r0, r2
	movs r1, 0xFF
	ands r0, r1
	strh r0, [r4, 0x34]
	ldr r1, _0807EDC0 @ =gSineTable
	movs r3, 0x34
	ldrsh r0, [r4, r3]
	lsls r0, 1
	adds r0, r1
	movs r1, 0
	ldrsh r0, [r0, r1]
	cmp r0, 0
	bge _0807ED7A
	adds r0, 0x3F
_0807ED7A:
	asrs r0, 6
	strh r0, [r4, 0x24]
	adds r0, r4, 0
	adds r0, 0x28
	movs r5, 0
	ldrsb r5, [r0, r5]
	ldrh r0, [r4, 0x20]
	adds r0, r5
	ldr r1, _0807EDC4 @ =gSpriteCoordOffsetX
	ldrh r1, [r1]
	adds r3, r1, r0
	ldr r2, _0807EDC8 @ =0x000001ff
	adds r0, r2, 0
	ands r3, r0
	adds r2, r3, 0
	movs r0, 0x80
	lsls r0, 1
	ands r0, r2
	cmp r0, 0
	beq _0807EDAC
	ldr r3, _0807EDCC @ =0xffffff00
	adds r0, r3, 0
	orrs r2, r0
	lsls r0, r2, 16
	lsrs r3, r0, 16
_0807EDAC:
	lsls r0, r3, 16
	asrs r0, 16
	movs r2, 0x3
	negs r2, r2
	cmp r0, r2
	bge _0807EDD0
	adds r1, r5
	movs r0, 0xF2
	subs r0, r1
	b _0807EDD8
	.align 2, 0
_0807EDC0: .4byte gSineTable
_0807EDC4: .4byte gSpriteCoordOffsetX
_0807EDC8: .4byte 0x000001ff
_0807EDCC: .4byte 0xffffff00
_0807EDD0:
	cmp r0, 0xF2
	ble _0807EDDA
	adds r0, r1, r5
	subs r0, r2, r0
_0807EDD8:
	strh r0, [r4, 0x20]
_0807EDDA:
	adds r0, r4, 0
	adds r0, 0x29
	movs r3, 0
	ldrsb r3, [r0, r3]
	ldrh r0, [r4, 0x22]
	adds r0, r3
	ldr r1, _0807EE18 @ =gSpriteCoordOffsetY
	ldrh r1, [r1]
	adds r2, r1, r0
	movs r0, 0xFF
	ands r2, r0
	adds r0, r2, 0
	subs r0, 0xA4
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x6
	bhi _0807EE1C
	adds r1, r3
	movs r0, 0xFA
	subs r0, r1
	movs r1, 0
	strh r0, [r4, 0x22]
	movs r2, 0x22
	ldrsh r0, [r4, r2]
	lsls r0, 7
	strh r0, [r4, 0x2E]
	strh r1, [r4, 0x38]
	movs r0, 0xDC
	strh r0, [r4, 0x3A]
	b _0807EE48
	.align 2, 0
_0807EE18: .4byte gSpriteCoordOffsetY
_0807EE1C:
	adds r0, r2, 0
	subs r0, 0xF3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x6
	bhi _0807EE48
	movs r1, 0
	movs r0, 0xA3
	strh r0, [r4, 0x22]
	lsls r0, 7
	strh r0, [r4, 0x2E]
	strh r1, [r4, 0x38]
	movs r0, 0xDC
	strh r0, [r4, 0x3A]
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0807EE7C @ =sub_807ECEC
	str r0, [r4, 0x1C]
_0807EE48:
	ldrh r0, [r4, 0x38]
	adds r0, 0x1
	strh r0, [r4, 0x38]
	lsls r0, 16
	asrs r0, 16
	movs r3, 0x3A
	ldrsh r1, [r4, r3]
	cmp r0, r1
	bne _0807EE74
	adds r0, r4, 0
	bl sub_807EC40
	movs r0, 0xFA
	strh r0, [r4, 0x22]
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0807EE7C @ =sub_807ECEC
	str r0, [r4, 0x1C]
_0807EE74:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807EE7C: .4byte sub_807ECEC
	thumb_func_end sub_807ED48

	thumb_func_start sub_807EE80
sub_807EE80: @ 807EE80
	push {r4,r5,lr}
	ldr r0, _0807EED8 @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r2, _0807EEDC @ =0x000006cc
	adds r0, r1, r2
	movs r3, 0
	movs r2, 0
	strh r2, [r0]
	ldr r5, _0807EEE0 @ =0x000006d2
	adds r4, r1, r5
	strb r3, [r4]
	adds r5, 0x4
	adds r0, r1, r5
	strh r2, [r0]
	ldr r0, _0807EEE4 @ =0x000006db
	adds r2, r1, r0
	movs r0, 0x4
	strb r0, [r2]
	ldr r2, _0807EEE8 @ =0x000006dc
	adds r0, r1, r2
	strb r3, [r0]
	adds r5, 0x3
	adds r2, r1, r5
	movs r0, 0x10
	strb r0, [r2]
	ldr r0, _0807EEEC @ =0x000006c1
	adds r2, r1, r0
	movs r0, 0x3
	strb r0, [r2]
	subs r5, 0x17
	adds r2, r1, r5
	movs r0, 0x14
	strb r0, [r2]
	strb r3, [r4]
	ldr r0, _0807EEF0 @ =0x000006ed
	adds r1, r0
	strb r3, [r1]
	movs r0, 0x51
	bl sub_807DD5C
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807EED8: .4byte gUnknown_08396FC4
_0807EEDC: .4byte 0x000006cc
_0807EEE0: .4byte 0x000006d2
_0807EEE4: .4byte 0x000006db
_0807EEE8: .4byte 0x000006dc
_0807EEEC: .4byte 0x000006c1
_0807EEF0: .4byte 0x000006ed
	thumb_func_end sub_807EE80

	thumb_func_start sub_807EEF4
sub_807EEF4: @ 807EEF4
	push {r4,lr}
	bl sub_807EE80
	ldr r0, _0807EF1C @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r2, _0807EF20 @ =0x000006d2
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0
	bne _0807EF14
	adds r4, r1, r2
_0807EF0A:
	bl sub_807EFC0
	ldrb r0, [r4]
	cmp r0, 0
	beq _0807EF0A
_0807EF14:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807EF1C: .4byte gUnknown_08396FC4
_0807EF20: .4byte 0x000006d2
	thumb_func_end sub_807EEF4

	thumb_func_start sub_807EF24
sub_807EF24: @ 807EF24
	push {r4,r5,lr}
	ldr r0, _0807EF78 @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r2, _0807EF7C @ =0x000006cc
	adds r0, r1, r2
	movs r4, 0
	movs r2, 0
	strh r2, [r0]
	ldr r5, _0807EF80 @ =0x000006d2
	adds r3, r1, r5
	strb r4, [r3]
	adds r5, 0x4
	adds r0, r1, r5
	strh r2, [r0]
	ldr r0, _0807EF84 @ =0x000006db
	adds r2, r1, r0
	movs r0, 0x4
	strb r0, [r2]
	adds r5, 0x6
	adds r2, r1, r5
	movs r0, 0x1
	strb r0, [r2]
	ldr r0, _0807EF88 @ =0x000006d9
	adds r2, r1, r0
	movs r0, 0x18
	strb r0, [r2]
	subs r5, 0x1B
	adds r2, r1, r5
	movs r0, 0x3
	strb r0, [r2]
	ldr r0, _0807EF8C @ =0x000006c2
	adds r1, r0
	movs r0, 0x14
	strb r0, [r1]
	strb r4, [r3]
	movs r0, 0x53
	bl sub_807DD5C
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807EF78: .4byte gUnknown_08396FC4
_0807EF7C: .4byte 0x000006cc
_0807EF80: .4byte 0x000006d2
_0807EF84: .4byte 0x000006db
_0807EF88: .4byte 0x000006d9
_0807EF8C: .4byte 0x000006c2
	thumb_func_end sub_807EF24

	thumb_func_start sub_807EF90
sub_807EF90: @ 807EF90
	push {r4,lr}
	bl sub_807EF24
	ldr r0, _0807EFB8 @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r2, _0807EFBC @ =0x000006d2
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0
	bne _0807EFB0
	adds r4, r1, r2
_0807EFA6:
	bl sub_807EFC0
	ldrb r0, [r4]
	cmp r0, 0
	beq _0807EFA6
_0807EFB0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807EFB8: .4byte gUnknown_08396FC4
_0807EFBC: .4byte 0x000006d2
	thumb_func_end sub_807EF90

	thumb_func_start sub_807EFC0
sub_807EFC0: @ 807EFC0
	push {r4,r5,lr}
	bl sub_807F434
	ldr r0, _0807EFE0 @ =gUnknown_08396FC4
	ldr r0, [r0]
	ldr r1, _0807EFE4 @ =0x000006cc
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, 0xE
	bls _0807EFD6
	b _0807F336
_0807EFD6:
	lsls r0, 2
	ldr r1, _0807EFE8 @ =_0807EFEC
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807EFE0: .4byte gUnknown_08396FC4
_0807EFE4: .4byte 0x000006cc
_0807EFE8: .4byte _0807EFEC
	.align 2, 0
_0807EFEC:
	.4byte _0807F028
	.4byte _0807F044
	.4byte _0807F068
	.4byte _0807F098
	.4byte _0807F0BC
	.4byte _0807F0EC
	.4byte _0807F11C
	.4byte _0807F148
	.4byte _0807F166
	.4byte _0807F1C4
	.4byte _0807F248
	.4byte _0807F270
	.4byte _0807F2A0
	.4byte _0807F2E4
	.4byte _0807F318
_0807F028:
	bl sub_807E7A4
	ldr r0, _0807F03C @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r2, _0807F040 @ =0x000006cc
	adds r1, r2
	ldrh r0, [r1]
	adds r0, 0x1
	b _0807F334
	.align 2, 0
_0807F03C: .4byte gUnknown_08396FC4
_0807F040: .4byte 0x000006cc
_0807F044:
	bl sub_807E7B4
	lsls r0, 24
	cmp r0, 0
	beq _0807F050
	b _0807F336
_0807F050:
	ldr r0, _0807F060 @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r3, _0807F064 @ =0x000006cc
	adds r1, r3
	ldrh r0, [r1]
	adds r0, 0x1
	b _0807F334
	.align 2, 0
_0807F060: .4byte gUnknown_08396FC4
_0807F064: .4byte 0x000006cc
_0807F068:
	bl sub_807E8E8
	lsls r0, 24
	cmp r0, 0
	beq _0807F074
	b _0807F336
_0807F074:
	ldr r0, _0807F08C @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r0, _0807F090 @ =0x000006d2
	adds r2, r1, r0
	movs r0, 0x1
	strb r0, [r2]
	ldr r2, _0807F094 @ =0x000006cc
	adds r1, r2
	ldrh r0, [r1]
	adds r0, 0x1
	b _0807F334
	.align 2, 0
_0807F08C: .4byte gUnknown_08396FC4
_0807F090: .4byte 0x000006d2
_0807F094: .4byte 0x000006cc
_0807F098:
	ldr r0, _0807F0B0 @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r3, _0807F0B4 @ =0x000006c6
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, 0
	bne _0807F0A8
	b _0807F336
_0807F0A8:
	ldr r0, _0807F0B8 @ =0x000006cc
	adds r1, r0
	movs r0, 0x6
	b _0807F334
	.align 2, 0
_0807F0B0: .4byte gUnknown_08396FC4
_0807F0B4: .4byte 0x000006c6
_0807F0B8: .4byte 0x000006cc
_0807F0BC:
	ldr r0, _0807F10C @ =gUnknown_08396FC4
	ldr r4, [r0]
	ldr r2, _0807F110 @ =0x000006ea
	adds r1, r4, r2
	movs r0, 0x1
	strb r0, [r1]
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r5, 0xB4
	lsls r5, 1
	adds r1, r5, 0
	bl __umodsi3
	adds r0, r5
	ldr r3, _0807F114 @ =0x000006e6
	adds r1, r4, r3
	strh r0, [r1]
	ldr r0, _0807F118 @ =0x000006cc
	adds r4, r0
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
_0807F0EC:
	ldr r0, _0807F10C @ =gUnknown_08396FC4
	ldr r2, [r0]
	ldr r3, _0807F114 @ =0x000006e6
	adds r1, r2, r3
	ldrh r0, [r1]
	subs r0, 0x1
	strh r0, [r1]
	lsls r0, 16
	cmp r0, 0
	beq _0807F102
	b _0807F336
_0807F102:
	ldr r0, _0807F118 @ =0x000006cc
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, 0x1
	b _0807F334
	.align 2, 0
_0807F10C: .4byte gUnknown_08396FC4
_0807F110: .4byte 0x000006ea
_0807F114: .4byte 0x000006e6
_0807F118: .4byte 0x000006cc
_0807F11C:
	ldr r0, _0807F13C @ =gUnknown_08396FC4
	ldr r4, [r0]
	ldr r1, _0807F140 @ =0x000006ea
	adds r0, r4, r1
	movs r5, 0x1
	strb r5, [r0]
	bl Random
	lsls r0, 16
	lsrs r0, 16
	ands r0, r5
	ldr r2, _0807F144 @ =0x000006eb
	adds r1, r4, r2
	strb r0, [r1]
	b _0807F1A4
	.align 2, 0
_0807F13C: .4byte gUnknown_08396FC4
_0807F140: .4byte 0x000006ea
_0807F144: .4byte 0x000006eb
_0807F148:
	bl Random
	ldr r1, _0807F1B0 @ =gUnknown_08396FC4
	ldr r2, [r1]
	movs r1, 0x1
	ands r1, r0
	adds r1, 0x1
	ldr r3, _0807F1B4 @ =0x000006ec
	adds r0, r2, r3
	strb r1, [r0]
	ldr r0, _0807F1B8 @ =0x000006cc
	adds r2, r0
	ldrh r0, [r2]
	adds r0, 0x1
	strh r0, [r2]
_0807F166:
	movs r0, 0x13
	bl sub_807D5BC
	ldr r0, _0807F1B0 @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r2, _0807F1BC @ =0x000006eb
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0
	bne _0807F18A
	ldr r3, _0807F1B4 @ =0x000006ec
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _0807F18A
	movs r0, 0x14
	bl sub_807F3F8
_0807F18A:
	bl Random
	ldr r1, _0807F1B0 @ =gUnknown_08396FC4
	ldr r4, [r1]
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	adds r0, 0x6
	ldr r2, _0807F1C0 @ =0x000006e6
	adds r1, r4, r2
	strh r0, [r1]
_0807F1A4:
	ldr r3, _0807F1B8 @ =0x000006cc
	adds r4, r3
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
	b _0807F336
	.align 2, 0
_0807F1B0: .4byte gUnknown_08396FC4
_0807F1B4: .4byte 0x000006ec
_0807F1B8: .4byte 0x000006cc
_0807F1BC: .4byte 0x000006eb
_0807F1C0: .4byte 0x000006e6
_0807F1C4:
	ldr r0, _0807F210 @ =gUnknown_08396FC4
	ldr r4, [r0]
	ldr r0, _0807F214 @ =0x000006e6
	adds r5, r4, r0
	ldrh r0, [r5]
	subs r0, 0x1
	strh r0, [r5]
	lsls r0, 16
	cmp r0, 0
	beq _0807F1DA
	b _0807F336
_0807F1DA:
	movs r0, 0x3
	bl sub_807D5BC
	ldr r2, _0807F218 @ =0x000006ea
	adds r1, r4, r2
	movs r0, 0x1
	strb r0, [r1]
	ldr r3, _0807F21C @ =0x000006ec
	adds r1, r4, r3
	ldrb r0, [r1]
	subs r0, 0x1
	strb r0, [r1]
	lsls r0, 24
	cmp r0, 0
	beq _0807F224
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xF
	ands r0, r1
	adds r0, 0x3C
	strh r0, [r5]
	ldr r0, _0807F220 @ =0x000006cc
	adds r1, r4, r0
	movs r0, 0xA
	b _0807F334
	.align 2, 0
_0807F210: .4byte gUnknown_08396FC4
_0807F214: .4byte 0x000006e6
_0807F218: .4byte 0x000006ea
_0807F21C: .4byte 0x000006ec
_0807F220: .4byte 0x000006cc
_0807F224:
	ldr r1, _0807F234 @ =0x000006eb
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _0807F23C
	ldr r2, _0807F238 @ =0x000006cc
	adds r1, r4, r2
	b _0807F332
	.align 2, 0
_0807F234: .4byte 0x000006eb
_0807F238: .4byte 0x000006cc
_0807F23C:
	ldr r3, _0807F244 @ =0x000006cc
	adds r1, r4, r3
	movs r0, 0xB
	b _0807F334
	.align 2, 0
_0807F244: .4byte 0x000006cc
_0807F248:
	ldr r0, _0807F264 @ =gUnknown_08396FC4
	ldr r2, [r0]
	ldr r0, _0807F268 @ =0x000006e6
	adds r1, r2, r0
	ldrh r0, [r1]
	subs r0, 0x1
	strh r0, [r1]
	lsls r0, 16
	cmp r0, 0
	bne _0807F336
	ldr r3, _0807F26C @ =0x000006cc
	adds r1, r2, r3
	movs r0, 0x8
	b _0807F334
	.align 2, 0
_0807F264: .4byte gUnknown_08396FC4
_0807F268: .4byte 0x000006e6
_0807F26C: .4byte 0x000006cc
_0807F270:
	bl Random
	ldr r1, _0807F294 @ =gUnknown_08396FC4
	ldr r2, [r1]
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xF
	ands r0, r1
	adds r0, 0x3C
	ldr r3, _0807F298 @ =0x000006e6
	adds r1, r2, r3
	strh r0, [r1]
	ldr r0, _0807F29C @ =0x000006cc
	adds r2, r0
	ldrh r0, [r2]
	adds r0, 0x1
	strh r0, [r2]
	b _0807F336
	.align 2, 0
_0807F294: .4byte gUnknown_08396FC4
_0807F298: .4byte 0x000006e6
_0807F29C: .4byte 0x000006cc
_0807F2A0:
	ldr r0, _0807F2D8 @ =gUnknown_08396FC4
	ldr r5, [r0]
	ldr r1, _0807F2DC @ =0x000006e6
	adds r4, r5, r1
	ldrh r0, [r4]
	subs r0, 0x1
	strh r0, [r4]
	lsls r0, 16
	cmp r0, 0
	bne _0807F336
	movs r0, 0x64
	bl sub_807F3F8
	movs r0, 0x13
	bl sub_807D5BC
	bl Random
	movs r1, 0xF
	ands r1, r0
	adds r1, 0x1E
	strh r1, [r4]
	ldr r2, _0807F2E0 @ =0x000006cc
	adds r1, r5, r2
	ldrh r0, [r1]
	adds r0, 0x1
	b _0807F334
	.align 2, 0
_0807F2D8: .4byte gUnknown_08396FC4
_0807F2DC: .4byte 0x000006e6
_0807F2E0: .4byte 0x000006cc
_0807F2E4:
	ldr r0, _0807F30C @ =gUnknown_08396FC4
	ldr r4, [r0]
	ldr r3, _0807F310 @ =0x000006e6
	adds r1, r4, r3
	ldrh r0, [r1]
	subs r0, 0x1
	strh r0, [r1]
	lsls r0, 16
	cmp r0, 0
	bne _0807F336
	movs r0, 0x13
	movs r1, 0x3
	movs r2, 0x5
	bl sub_807D5F0
	ldr r0, _0807F314 @ =0x000006cc
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, 0x1
	b _0807F334
	.align 2, 0
_0807F30C: .4byte gUnknown_08396FC4
_0807F310: .4byte 0x000006e6
_0807F314: .4byte 0x000006cc
_0807F318:
	ldr r0, _0807F33C @ =gUnknown_08396FC4
	ldr r2, [r0]
	ldr r1, _0807F340 @ =0x000006c6
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, 0x3
	bne _0807F336
	ldr r3, _0807F344 @ =0x000006ea
	adds r1, r2, r3
	movs r0, 0x1
	strb r0, [r1]
	ldr r0, _0807F348 @ =0x000006cc
	adds r1, r2, r0
_0807F332:
	movs r0, 0x4
_0807F334:
	strh r0, [r1]
_0807F336:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807F33C: .4byte gUnknown_08396FC4
_0807F340: .4byte 0x000006c6
_0807F344: .4byte 0x000006ea
_0807F348: .4byte 0x000006cc
	thumb_func_end sub_807EFC0

	thumb_func_start sub_807F34C
sub_807F34C: @ 807F34C
	push {r4-r6,lr}
	ldr r0, _0807F368 @ =gUnknown_08396FC4
	ldr r6, [r0]
	ldr r0, _0807F36C @ =0x000006ce
	adds r5, r6, r0
	ldrh r1, [r5]
	cmp r1, 0x1
	beq _0807F382
	cmp r1, 0x1
	bgt _0807F370
	cmp r1, 0
	beq _0807F376
	b _0807F3E8
	.align 2, 0
_0807F368: .4byte gUnknown_08396FC4
_0807F36C: .4byte 0x000006ce
_0807F370:
	cmp r1, 0x2
	beq _0807F3CC
	b _0807F3E8
_0807F376:
	ldr r2, _0807F3BC @ =0x000006ea
	adds r0, r6, r2
	strb r1, [r0]
	ldrh r0, [r5]
	adds r0, 0x1
	strh r0, [r5]
_0807F382:
	bl sub_807EFC0
	ldr r0, _0807F3C0 @ =gUnknown_08396FC4
	ldr r2, [r0]
	ldr r1, _0807F3BC @ =0x000006ea
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _0807F3F0
	subs r1, 0x19
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, 0x3
	beq _0807F3E8
	cmp r0, 0x5
	beq _0807F3E8
	cmp r0, 0xD
	beq _0807F3E8
	ldr r0, _0807F3C4 @ =0x000006d9
	adds r1, r2, r0
	movs r0, 0
	strb r0, [r1]
	ldr r0, _0807F3C8 @ =0x000006ce
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
	b _0807F3F0
	.align 2, 0
_0807F3BC: .4byte 0x000006ea
_0807F3C0: .4byte gUnknown_08396FC4
_0807F3C4: .4byte 0x000006d9
_0807F3C8: .4byte 0x000006ce
_0807F3CC:
	bl sub_807E8E8
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0
	bne _0807F3F0
	bl sub_807E974
	ldr r1, _0807F3EC @ =0x000006ed
	adds r0, r6, r1
	strb r4, [r0]
	ldrh r0, [r5]
	adds r0, 0x1
	strh r0, [r5]
_0807F3E8:
	movs r0, 0
	b _0807F3F2
	.align 2, 0
_0807F3EC: .4byte 0x000006ed
_0807F3F0:
	movs r0, 0x1
_0807F3F2:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_807F34C

	thumb_func_start sub_807F3F8
sub_807F3F8: @ 807F3F8
	push {r4-r6,lr}
	lsls r0, 16
	lsrs r6, r0, 16
	ldr r0, _0807F42C @ =gUnknown_08396FC4
	ldr r4, [r0]
	ldr r0, _0807F430 @ =0x000006ed
	adds r5, r4, r0
	ldrb r0, [r5]
	cmp r0, 0
	bne _0807F426
	bl Random
	lsls r0, 16
	lsrs r0, 16
	adds r1, r6, 0
	bl __umodsi3
	movs r2, 0xDD
	lsls r2, 3
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, 0x1
	strb r0, [r5]
_0807F426:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0807F42C: .4byte gUnknown_08396FC4
_0807F430: .4byte 0x000006ed
	thumb_func_end sub_807F3F8

	thumb_func_start sub_807F434
sub_807F434: @ 807F434
	push {r4,lr}
	ldr r0, _0807F46C @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r2, _0807F470 @ =0x000006ed
	adds r0, r1, r2
	ldrb r4, [r0]
	cmp r4, 0x1
	bne _0807F494
	movs r0, 0xDD
	lsls r0, 3
	adds r1, r0
	ldrh r0, [r1]
	cmp r0, 0
	bne _0807F490
	bl IsSEPlaying
	lsls r0, 24
	cmp r0, 0
	bne _0807F494
	bl Random
	ands r4, r0
	cmp r4, 0
	beq _0807F474
	movs r0, 0x57
	bl PlaySE
	b _0807F47A
	.align 2, 0
_0807F46C: .4byte gUnknown_08396FC4
_0807F470: .4byte 0x000006ed
_0807F474:
	movs r0, 0x58
	bl PlaySE
_0807F47A:
	ldr r0, _0807F488 @ =gUnknown_08396FC4
	ldr r0, [r0]
	ldr r1, _0807F48C @ =0x000006ed
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
	b _0807F494
	.align 2, 0
_0807F488: .4byte gUnknown_08396FC4
_0807F48C: .4byte 0x000006ed
_0807F490:
	subs r0, 0x1
	strh r0, [r1]
_0807F494:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_807F434

	thumb_func_start sub_807F49C
sub_807F49C: @ 807F49C
	push {lr}
	ldr r0, _0807F4E8 @ =gUnknown_08396FC4
	ldr r3, [r0]
	ldr r0, _0807F4EC @ =0x000006cc
	adds r1, r3, r0
	movs r2, 0
	movs r0, 0
	strh r0, [r1]
	ldr r1, _0807F4F0 @ =0x000006d2
	adds r0, r3, r1
	strb r2, [r0]
	subs r1, 0x11
	adds r0, r3, r1
	strb r2, [r0]
	ldr r2, _0807F4F4 @ =0x000006c2
	adds r1, r3, r2
	movs r0, 0x14
	strb r0, [r1]
	ldr r1, _0807F4F8 @ =0x000006fb
	adds r0, r3, r1
	ldrb r1, [r0]
	cmp r1, 0
	bne _0807F4E4
	adds r2, 0x2E
	adds r0, r3, r2
	strh r1, [r0]
	adds r2, 0x2
	adds r0, r3, r2
	strh r1, [r0]
	subs r2, 0x4
	adds r0, r3, r2
	strh r1, [r0]
	movs r0, 0
	movs r1, 0x10
	bl sub_807DB64
_0807F4E4:
	pop {r0}
	bx r0
	.align 2, 0
_0807F4E8: .4byte gUnknown_08396FC4
_0807F4EC: .4byte 0x000006cc
_0807F4F0: .4byte 0x000006d2
_0807F4F4: .4byte 0x000006c2
_0807F4F8: .4byte 0x000006fb
	thumb_func_end sub_807F49C

	thumb_func_start sub_807F4FC
sub_807F4FC: @ 807F4FC
	push {r4,lr}
	bl sub_807F49C
	ldr r0, _0807F524 @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r2, _0807F528 @ =0x000006d2
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0
	bne _0807F51C
	adds r4, r1, r2
_0807F512:
	bl sub_807F52C
	ldrb r0, [r4]
	cmp r0, 0
	beq _0807F512
_0807F51C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807F524: .4byte gUnknown_08396FC4
_0807F528: .4byte 0x000006d2
	thumb_func_end sub_807F4FC

	thumb_func_start sub_807F52C
sub_807F52C: @ 807F52C
	push {r4-r6,lr}
	ldr r0, _0807F578 @ =gUnknown_08396FC4
	ldr r6, [r0]
	ldr r0, _0807F57C @ =gSpriteCoordOffsetX
	ldr r1, _0807F580 @ =0x000006f2
	adds r2, r6, r1
	ldrh r0, [r0]
	ldrh r1, [r2]
	subs r0, r1
	movs r1, 0xFF
	ands r0, r1
	ldr r3, _0807F584 @ =0x000006ee
	adds r1, r6, r3
	strh r0, [r1]
	movs r0, 0xDE
	lsls r0, 3
	adds r1, r6, r0
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x3
	bls _0807F566
	movs r0, 0
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, 0x1
	strh r0, [r2]
_0807F566:
	ldr r1, _0807F588 @ =0x000006cc
	adds r5, r6, r1
	ldrh r4, [r5]
	cmp r4, 0
	beq _0807F58C
	cmp r4, 0x1
	beq _0807F5CC
	b _0807F5E2
	.align 2, 0
_0807F578: .4byte gUnknown_08396FC4
_0807F57C: .4byte gSpriteCoordOffsetX
_0807F580: .4byte 0x000006f2
_0807F584: .4byte 0x000006ee
_0807F588: .4byte 0x000006cc
_0807F58C:
	bl sub_807F6E8
	movs r3, 0xDA
	lsls r3, 3
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, 0x6
	bne _0807F5A8
	movs r0, 0xC
	movs r1, 0x8
	movs r2, 0x3
	bl sub_807DBA4
	b _0807F5B2
_0807F5A8:
	movs r0, 0x4
	movs r1, 0x10
	movs r2, 0
	bl sub_807DBA4
_0807F5B2:
	ldr r0, _0807F5C4 @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r0, _0807F5C8 @ =0x000006cc
	adds r1, r0
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
	b _0807F5E2
	.align 2, 0
_0807F5C4: .4byte gUnknown_08396FC4
_0807F5C8: .4byte 0x000006cc
_0807F5CC:
	bl sub_807DBE8
	lsls r0, 24
	cmp r0, 0
	beq _0807F5E2
	ldr r1, _0807F5E8 @ =0x000006d2
	adds r0, r6, r1
	strb r4, [r0]
	ldrh r0, [r5]
	adds r0, 0x1
	strh r0, [r5]
_0807F5E2:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0807F5E8: .4byte 0x000006d2
	thumb_func_end sub_807F52C

	thumb_func_start sub_807F5EC
sub_807F5EC: @ 807F5EC
	push {r4,lr}
	ldr r0, _0807F63C @ =gUnknown_08396FC4
	ldr r2, [r0]
	ldr r0, _0807F640 @ =gSpriteCoordOffsetX
	ldr r1, _0807F644 @ =0x000006f2
	adds r3, r2, r1
	ldrh r0, [r0]
	ldrh r1, [r3]
	subs r0, r1
	movs r1, 0xFF
	ands r0, r1
	ldr r4, _0807F648 @ =0x000006ee
	adds r1, r2, r4
	strh r0, [r1]
	movs r0, 0xDE
	lsls r0, 3
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x3
	bls _0807F626
	movs r0, 0
	strh r0, [r1]
	ldrh r0, [r3]
	adds r0, 0x1
	strh r0, [r3]
_0807F626:
	ldr r1, _0807F64C @ =0x000006ce
	adds r4, r2, r1
	ldrh r0, [r4]
	cmp r0, 0x1
	beq _0807F662
	cmp r0, 0x1
	bgt _0807F650
	cmp r0, 0
	beq _0807F656
	b _0807F67A
	.align 2, 0
_0807F63C: .4byte gUnknown_08396FC4
_0807F640: .4byte gSpriteCoordOffsetX
_0807F644: .4byte 0x000006f2
_0807F648: .4byte 0x000006ee
_0807F64C: .4byte 0x000006ce
_0807F650:
	cmp r0, 0x2
	beq _0807F66E
	b _0807F67A
_0807F656:
	movs r0, 0
	movs r1, 0x10
	movs r2, 0x3
	bl sub_807DBA4
	b _0807F672
_0807F662:
	bl sub_807DBE8
	lsls r0, 24
	cmp r0, 0
	beq _0807F67E
	b _0807F672
_0807F66E:
	bl sub_807F7A4
_0807F672:
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
	b _0807F67E
_0807F67A:
	movs r0, 0
	b _0807F680
_0807F67E:
	movs r0, 0x1
_0807F680:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_807F5EC

	thumb_func_start sub_807F688
sub_807F688: @ 807F688
	push {r4,lr}
	adds r3, r0, 0
	ldr r0, _0807F6D4 @ =gSpriteCoordOffsetY
	ldrb r0, [r0]
	strh r0, [r3, 0x26]
	ldr r0, _0807F6D8 @ =gUnknown_08396FC4
	ldr r0, [r0]
	ldr r1, _0807F6DC @ =0x000006ee
	adds r2, r0, r1
	ldrh r1, [r2]
	adds r1, 0x20
	movs r4, 0x2E
	ldrsh r0, [r3, r4]
	lsls r0, 6
	adds r1, r0
	strh r1, [r3, 0x20]
	lsls r1, 16
	ldr r0, _0807F6E0 @ =0x010f0000
	cmp r1, r0
	ble _0807F6CC
	movs r0, 0xF0
	lsls r0, 1
	adds r1, r0, 0
	ldrh r2, [r2]
	adds r1, r2
	movs r4, 0x2E
	ldrsh r2, [r3, r4]
	movs r0, 0x4
	subs r0, r2
	lsls r0, 6
	subs r1, r0
	ldr r0, _0807F6E4 @ =0x000001ff
	ands r1, r0
	strh r1, [r3, 0x20]
_0807F6CC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807F6D4: .4byte gSpriteCoordOffsetY
_0807F6D8: .4byte gUnknown_08396FC4
_0807F6DC: .4byte 0x000006ee
_0807F6E0: .4byte 0x010f0000
_0807F6E4: .4byte 0x000001ff
	thumb_func_end sub_807F688

	thumb_func_start sub_807F6E8
sub_807F6E8: @ 807F6E8
	push {r4,r5,lr}
	sub sp, 0x8
	ldr r0, _0807F75C @ =gUnknown_08396FC4
	ldr r0, [r0]
	ldr r1, _0807F760 @ =0x000006fb
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _0807F792
	ldr r0, _0807F764 @ =gUnknown_0839ABA8
	ldr r1, [r0, 0x4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, 0x4]
	mov r0, sp
	bl LoadSpriteSheet
	movs r5, 0
_0807F70C:
	ldr r0, _0807F768 @ =gSpriteTemplate_839AB90
	movs r1, 0
	movs r2, 0
	movs r3, 0xFF
	bl CreateSpriteAtEnd
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x40
	beq _0807F770
	lsls r4, r0, 4
	adds r4, r0
	lsls r4, 2
	ldr r0, _0807F76C @ =gSprites
	adds r4, r0
	adds r0, r5, 0
	movs r1, 0x5
	bl __umodsi3
	strh r0, [r4, 0x2E]
	lsls r0, 16
	lsrs r0, 10
	adds r0, 0x20
	strh r0, [r4, 0x20]
	adds r0, r5, 0
	movs r1, 0x5
	bl __udivsi3
	lsls r0, 16
	lsrs r0, 10
	adds r0, 0x20
	strh r0, [r4, 0x22]
	ldr r2, _0807F75C @ =gUnknown_08396FC4
	ldr r0, [r2]
	lsls r1, r5, 2
	adds r0, 0xA0
	adds r0, r1
	str r4, [r0]
	b _0807F77E
	.align 2, 0
_0807F75C: .4byte gUnknown_08396FC4
_0807F760: .4byte 0x000006fb
_0807F764: .4byte gUnknown_0839ABA8
_0807F768: .4byte gSpriteTemplate_839AB90
_0807F76C: .4byte gSprites
_0807F770:
	ldr r2, _0807F79C @ =gUnknown_08396FC4
	ldr r1, [r2]
	lsls r0, r5, 2
	adds r1, 0xA0
	adds r1, r0
	movs r0, 0
	str r0, [r1]
_0807F77E:
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, 0x13
	bls _0807F70C
	ldr r0, [r2]
	ldr r1, _0807F7A0 @ =0x000006fb
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
_0807F792:
	add sp, 0x8
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807F79C: .4byte gUnknown_08396FC4
_0807F7A0: .4byte 0x000006fb
	thumb_func_end sub_807F6E8

	thumb_func_start sub_807F7A4
sub_807F7A4: @ 807F7A4
	push {r4,r5,lr}
	ldr r0, _0807F7EC @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r2, _0807F7F0 @ =0x000006fb
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0
	beq _0807F7E4
	movs r4, 0
	adds r5, r1, 0
	adds r5, 0xA0
_0807F7BA:
	lsls r0, r4, 2
	adds r0, r5, r0
	ldr r0, [r0]
	cmp r0, 0
	beq _0807F7C8
	bl DestroySprite
_0807F7C8:
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x13
	bls _0807F7BA
	ldr r0, _0807F7F4 @ =0x00001201
	bl FreeSpriteTilesByTag
	ldr r0, _0807F7EC @ =gUnknown_08396FC4
	ldr r0, [r0]
	ldr r1, _0807F7F0 @ =0x000006fb
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
_0807F7E4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807F7EC: .4byte gUnknown_08396FC4
_0807F7F0: .4byte 0x000006fb
_0807F7F4: .4byte 0x00001201
	thumb_func_end sub_807F7A4

	thumb_func_start sub_807F7F8
sub_807F7F8: @ 807F7F8
	push {lr}
	ldr r0, _0807F844 @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r0, _0807F848 @ =0x000006cc
	adds r2, r1, r0
	movs r3, 0
	movs r0, 0
	strh r0, [r2]
	ldr r2, _0807F84C @ =0x000006d2
	adds r0, r1, r2
	strb r3, [r0]
	subs r2, 0x11
	adds r0, r1, r2
	strb r3, [r0]
	ldr r3, _0807F850 @ =0x000006c2
	adds r0, r1, r3
	movs r2, 0x14
	strb r2, [r0]
	adds r3, 0x3C
	adds r0, r1, r3
	strh r2, [r0]
	movs r0, 0xE0
	lsls r0, 3
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0
	bne _0807F840
	movs r0, 0
	movs r1, 0x10
	bl sub_807DB64
	ldr r1, _0807F854 @ =REG_BLDALPHA
	movs r2, 0xFD
	lsls r2, 6
	adds r0, r2, 0
	strh r0, [r1]
_0807F840:
	pop {r0}
	bx r0
	.align 2, 0
_0807F844: .4byte gUnknown_08396FC4
_0807F848: .4byte 0x000006cc
_0807F84C: .4byte 0x000006d2
_0807F850: .4byte 0x000006c2
_0807F854: .4byte REG_BLDALPHA
	thumb_func_end sub_807F7F8

	thumb_func_start sub_807F858
sub_807F858: @ 807F858
	push {r4,lr}
	bl sub_807F7F8
	ldr r0, _0807F880 @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r2, _0807F884 @ =0x000006d2
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0
	bne _0807F878
	adds r4, r1, r2
_0807F86E:
	bl sub_807F888
	ldrb r0, [r4]
	cmp r0, 0
	beq _0807F86E
_0807F878:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807F880: .4byte gUnknown_08396FC4
_0807F884: .4byte 0x000006d2
	thumb_func_end sub_807F858

	thumb_func_start sub_807F888
sub_807F888: @ 807F888
	push {r4,r5,lr}
	ldr r2, _0807F8CC @ =gUnknown_08396FC4
	ldr r1, [r2]
	ldr r0, _0807F8D0 @ =gSpriteCoordOffsetX
	ldrh r0, [r0]
	ldr r3, _0807F8D4 @ =0x000001ff
	ands r3, r0
	ldr r0, _0807F8D8 @ =0x000006fc
	adds r1, r0
	strh r3, [r1]
	cmp r3, 0xEF
	bls _0807F8B4
	adds r4, r1, 0
	adds r1, r3, 0
_0807F8A4:
	adds r3, r1, 0
	subs r3, 0xF0
	adds r1, r3, 0
	lsls r0, r3, 16
	lsrs r0, 16
	cmp r0, 0xEF
	bhi _0807F8A4
	strh r3, [r4]
_0807F8B4:
	ldr r5, [r2]
	ldr r1, _0807F8DC @ =0x000006cc
	adds r4, r5, r1
	ldrh r0, [r4]
	cmp r0, 0x1
	beq _0807F8EC
	cmp r0, 0x1
	bgt _0807F8E0
	cmp r0, 0
	beq _0807F8E6
	b _0807F928
	.align 2, 0
_0807F8CC: .4byte gUnknown_08396FC4
_0807F8D0: .4byte gSpriteCoordOffsetX
_0807F8D4: .4byte 0x000001ff
_0807F8D8: .4byte 0x000006fc
_0807F8DC: .4byte 0x000006cc
_0807F8E0:
	cmp r0, 0x2
	beq _0807F908
	b _0807F928
_0807F8E6:
	bl sub_807F99C
	b _0807F91A
_0807F8EC:
	movs r1, 0xE0
	lsls r1, 3
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _0807F8FC
	bl sub_807F9AC
_0807F8FC:
	movs r0, 0x10
	movs r1, 0
	movs r2, 0x1
	bl sub_807DBA4
	b _0807F91A
_0807F908:
	bl sub_807DBE8
	lsls r0, 24
	cmp r0, 0
	beq _0807F92C
	ldr r0, _0807F924 @ =0x000006d2
	adds r1, r5, r0
	movs r0, 0x1
	strb r0, [r1]
_0807F91A:
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
	b _0807F92C
	.align 2, 0
_0807F924: .4byte 0x000006d2
_0807F928:
	bl sub_807DBE8
_0807F92C:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_807F888

	thumb_func_start sub_807F934
sub_807F934: @ 807F934
	push {r4,lr}
	ldr r0, _0807F950 @ =gUnknown_08396FC4
	ldr r0, [r0]
	ldr r1, _0807F954 @ =0x000006ce
	adds r4, r0, r1
	ldrh r0, [r4]
	cmp r0, 0x1
	beq _0807F96A
	cmp r0, 0x1
	bgt _0807F958
	cmp r0, 0
	beq _0807F95E
	b _0807F98C
	.align 2, 0
_0807F950: .4byte gUnknown_08396FC4
_0807F954: .4byte 0x000006ce
_0807F958:
	cmp r0, 0x2
	beq _0807F980
	b _0807F98C
_0807F95E:
	movs r0, 0
	movs r1, 0x10
	movs r2, 0x1
	bl sub_807DBA4
	b _0807F978
_0807F96A:
	bl sub_807DBE8
	lsls r0, 24
	cmp r0, 0
	beq _0807F994
	bl sub_807FA54
_0807F978:
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
	b _0807F994
_0807F980:
	ldr r1, _0807F990 @ =REG_BLDALPHA
	movs r0, 0
	strh r0, [r1]
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
_0807F98C:
	movs r0, 0
	b _0807F996
	.align 2, 0
_0807F990: .4byte REG_BLDALPHA
_0807F994:
	movs r0, 0x1
_0807F996:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_807F934

	thumb_func_start sub_807F99C
sub_807F99C: @ 807F99C
	push {lr}
	ldr r0, _0807F9A8 @ =gUnknown_0839ABB0
	bl LoadSpriteSheet
	pop {r0}
	bx r0
	.align 2, 0
_0807F9A8: .4byte gUnknown_0839ABB0
	thumb_func_end sub_807F99C

	thumb_func_start sub_807F9AC
sub_807F9AC: @ 807F9AC
	push {r4,r5,lr}
	ldr r0, _0807FA18 @ =gUnknown_08396FC4
	ldr r0, [r0]
	movs r1, 0xE0
	lsls r1, 3
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _0807FA48
	movs r5, 0
_0807F9C0:
	ldr r0, _0807FA1C @ =gSpriteTemplate_839ABD0
	movs r1, 0
	movs r2, 0
	movs r3, 0x4E
	bl CreateSpriteAtEnd
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x40
	beq _0807FA24
	lsls r4, r0, 4
	adds r4, r0
	lsls r4, 2
	ldr r0, _0807FA20 @ =gSprites
	adds r4, r0
	movs r0, 0
	strh r0, [r4, 0x30]
	adds r0, r5, 0
	movs r1, 0x5
	bl __umodsi3
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4, 0x32]
	adds r0, r5, 0
	movs r1, 0x5
	bl __udivsi3
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4, 0x34]
	movs r1, 0x34
	ldrsh r0, [r4, r1]
	lsls r0, 6
	adds r0, 0x20
	strh r0, [r4, 0x2E]
	ldr r2, _0807FA18 @ =gUnknown_08396FC4
	ldr r0, [r2]
	lsls r1, r5, 2
	adds r0, 0xF0
	adds r0, r1
	str r4, [r0]
	b _0807FA32
	.align 2, 0
_0807FA18: .4byte gUnknown_08396FC4
_0807FA1C: .4byte gSpriteTemplate_839ABD0
_0807FA20: .4byte gSprites
_0807FA24:
	ldr r2, _0807FA50 @ =gUnknown_08396FC4
	ldr r1, [r2]
	lsls r0, r5, 2
	adds r1, 0xF0
	adds r1, r0
	movs r0, 0
	str r0, [r1]
_0807FA32:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x13
	bls _0807F9C0
	ldr r0, [r2]
	movs r1, 0xE0
	lsls r1, 3
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
_0807FA48:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807FA50: .4byte gUnknown_08396FC4
	thumb_func_end sub_807F9AC

	thumb_func_start sub_807FA54
sub_807FA54: @ 807FA54
	push {r4,r5,lr}
	ldr r0, _0807FAA0 @ =gUnknown_08396FC4
	ldr r1, [r0]
	movs r2, 0xE0
	lsls r2, 3
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0
	beq _0807FA98
	movs r4, 0
	adds r5, r1, 0
	adds r5, 0xF0
_0807FA6C:
	lsls r0, r4, 2
	adds r0, r5, r0
	ldr r0, [r0]
	cmp r0, 0
	beq _0807FA7A
	bl DestroySprite
_0807FA7A:
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x13
	bls _0807FA6C
	ldr r0, _0807FAA4 @ =0x00001202
	bl FreeSpriteTilesByTag
	ldr r0, _0807FAA0 @ =gUnknown_08396FC4
	ldr r0, [r0]
	movs r1, 0xE0
	lsls r1, 3
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
_0807FA98:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807FAA0: .4byte gUnknown_08396FC4
_0807FAA4: .4byte 0x00001202
	thumb_func_end sub_807FA54

	thumb_func_start sub_807FAA8
sub_807FAA8: @ 807FAA8
	push {r4,lr}
	adds r3, r0, 0
	ldrh r0, [r3, 0x30]
	adds r0, 0x1
	strh r0, [r3, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x5
	ble _0807FAC4
	movs r0, 0
	strh r0, [r3, 0x30]
	ldrh r0, [r3, 0x2E]
	adds r0, 0x1
	strh r0, [r3, 0x2E]
_0807FAC4:
	ldr r1, _0807FB10 @ =gSpriteCoordOffsetY
	ldrh r0, [r3, 0x2E]
	ldrh r1, [r1]
	adds r0, r1
	strh r0, [r3, 0x22]
	ldr r0, _0807FB14 @ =gUnknown_08396FC4
	ldr r0, [r0]
	ldr r1, _0807FB18 @ =0x000006fc
	adds r2, r0, r1
	ldrh r1, [r2]
	adds r1, 0x20
	movs r4, 0x32
	ldrsh r0, [r3, r4]
	lsls r0, 6
	adds r1, r0
	strh r1, [r3, 0x20]
	lsls r1, 16
	ldr r0, _0807FB1C @ =0x010f0000
	cmp r1, r0
	ble _0807FB08
	movs r0, 0xF0
	lsls r0, 1
	adds r1, r0, 0
	ldrh r2, [r2]
	adds r1, r2
	movs r4, 0x32
	ldrsh r2, [r3, r4]
	movs r0, 0x4
	subs r0, r2
	lsls r0, 6
	subs r1, r0
	ldr r0, _0807FB20 @ =0x000001ff
	ands r1, r0
	strh r1, [r3, 0x20]
_0807FB08:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807FB10: .4byte gSpriteCoordOffsetY
_0807FB14: .4byte gUnknown_08396FC4
_0807FB18: .4byte 0x000006fc
_0807FB1C: .4byte 0x010f0000
_0807FB20: .4byte 0x000001ff
	thumb_func_end sub_807FAA8

	thumb_func_start sub_807FB24
sub_807FB24: @ 807FB24
	push {r4,lr}
	ldr r0, _0807FB94 @ =gUnknown_08396FC4
	ldr r3, [r0]
	ldr r1, _0807FB98 @ =0x000006cc
	adds r0, r3, r1
	movs r1, 0
	movs r2, 0
	strh r2, [r0]
	ldr r4, _0807FB9C @ =0x000006d2
	adds r0, r3, r4
	strb r1, [r0]
	subs r4, 0x11
	adds r0, r3, r4
	strb r1, [r0]
	ldr r0, _0807FBA0 @ =0x000006c2
	adds r1, r3, r0
	movs r0, 0x14
	strb r0, [r1]
	movs r1, 0xDE
	lsls r1, 3
	adds r0, r3, r1
	strh r2, [r0]
	adds r4, 0x31
	adds r1, r3, r4
	movs r0, 0x1
	strh r0, [r1]
	ldr r1, _0807FBA4 @ =0x00000724
	adds r0, r3, r1
	ldrb r2, [r0]
	cmp r2, 0
	bne _0807FB8E
	adds r4, 0x2A
	adds r0, r3, r4
	strh r2, [r0]
	subs r1, 0x6
	adds r0, r3, r1
	strh r2, [r0]
	adds r4, 0x4
	adds r0, r3, r4
	strh r2, [r0]
	adds r1, 0x4
	adds r0, r3, r1
	strh r2, [r0]
	subs r4, 0x8
	adds r0, r3, r4
	strh r2, [r0]
	subs r1, 0x8
	adds r0, r3, r1
	strh r2, [r0]
	movs r0, 0
	movs r1, 0x10
	bl sub_807DB64
_0807FB8E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807FB94: .4byte gUnknown_08396FC4
_0807FB98: .4byte 0x000006cc
_0807FB9C: .4byte 0x000006d2
_0807FBA0: .4byte 0x000006c2
_0807FBA4: .4byte 0x00000724
	thumb_func_end sub_807FB24

	thumb_func_start sub_807FBA8
sub_807FBA8: @ 807FBA8
	push {r4,lr}
	bl sub_807FB24
	ldr r0, _0807FBD0 @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r2, _0807FBD4 @ =0x000006d2
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0
	bne _0807FBC8
	adds r4, r1, r2
_0807FBBE:
	bl sub_807FBD8
	ldrb r0, [r4]
	cmp r0, 0
	beq _0807FBBE
_0807FBC8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807FBD0: .4byte gUnknown_08396FC4
_0807FBD4: .4byte 0x000006d2
	thumb_func_end sub_807FBA8

	thumb_func_start sub_807FBD8
sub_807FBD8: @ 807FBD8
	push {r4,r5,lr}
	bl sub_807FC9C
	ldr r0, _0807FBF8 @ =gUnknown_08396FC4
	ldr r5, [r0]
	ldr r0, _0807FBFC @ =0x000006cc
	adds r4, r5, r0
	ldrh r0, [r4]
	cmp r0, 0x1
	beq _0807FC0C
	cmp r0, 0x1
	bgt _0807FC00
	cmp r0, 0
	beq _0807FC06
	b _0807FC30
	.align 2, 0
_0807FBF8: .4byte gUnknown_08396FC4
_0807FBFC: .4byte 0x000006cc
_0807FC00:
	cmp r0, 0x2
	beq _0807FC18
	b _0807FC30
_0807FC06:
	bl sub_807FD30
	b _0807FC2A
_0807FC0C:
	movs r0, 0xC
	movs r1, 0x8
	movs r2, 0x8
	bl sub_807DBA4
	b _0807FC2A
_0807FC18:
	bl sub_807DBE8
	lsls r0, 24
	cmp r0, 0
	beq _0807FC30
	ldr r0, _0807FC38 @ =0x000006d2
	adds r1, r5, r0
	movs r0, 0x1
	strb r0, [r1]
_0807FC2A:
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
_0807FC30:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807FC38: .4byte 0x000006d2
	thumb_func_end sub_807FBD8

	thumb_func_start sub_807FC3C
sub_807FC3C: @ 807FC3C
	push {r4,lr}
	bl sub_807FC9C
	ldr r0, _0807FC5C @ =gUnknown_08396FC4
	ldr r0, [r0]
	ldr r1, _0807FC60 @ =0x000006ce
	adds r4, r0, r1
	ldrh r0, [r4]
	cmp r0, 0x1
	beq _0807FC76
	cmp r0, 0x1
	bgt _0807FC64
	cmp r0, 0
	beq _0807FC6A
	b _0807FC8E
	.align 2, 0
_0807FC5C: .4byte gUnknown_08396FC4
_0807FC60: .4byte 0x000006ce
_0807FC64:
	cmp r0, 0x2
	beq _0807FC82
	b _0807FC8E
_0807FC6A:
	movs r0, 0
	movs r1, 0x10
	movs r2, 0x1
	bl sub_807DBA4
	b _0807FC86
_0807FC76:
	bl sub_807DBE8
	lsls r0, 24
	cmp r0, 0
	beq _0807FC92
	b _0807FC86
_0807FC82:
	bl sub_807FDE8
_0807FC86:
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
	b _0807FC92
_0807FC8E:
	movs r0, 0
	b _0807FC94
_0807FC92:
	movs r0, 0x1
_0807FC94:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_807FC3C

	thumb_func_start sub_807FC9C
sub_807FC9C: @ 807FC9C
	push {r4,r5,lr}
	ldr r0, _0807FD14 @ =gUnknown_08396FC4
	ldr r3, [r0]
	ldr r0, _0807FD18 @ =0x0000071c
	adds r2, r3, r0
	ldrh r0, [r2]
	adds r0, 0x1
	movs r5, 0
	strh r0, [r2]
	ldr r1, _0807FD1C @ =0x0000ffff
	adds r4, r1, 0
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x2
	bls _0807FCC8
	movs r0, 0xE4
	lsls r0, 3
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
	strh r5, [r2]
_0807FCC8:
	ldr r1, _0807FD20 @ =0x0000071e
	adds r2, r3, r1
	ldrh r0, [r2]
	adds r0, 0x1
	strh r0, [r2]
	ands r0, r4
	cmp r0, 0x4
	bls _0807FCE4
	ldr r0, _0807FD24 @ =0x00000722
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
	strh r5, [r2]
_0807FCE4:
	ldr r0, _0807FD28 @ =gSpriteCoordOffsetX
	movs r2, 0xE4
	lsls r2, 3
	adds r1, r3, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	subs r0, r1
	movs r1, 0xFF
	ands r0, r1
	subs r2, 0x8
	adds r1, r3, r2
	strh r0, [r1]
	ldr r1, _0807FD2C @ =gSpriteCoordOffsetY
	adds r2, 0xA
	adds r0, r3, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r1
	subs r2, 0x8
	adds r1, r3, r2
	strh r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807FD14: .4byte gUnknown_08396FC4
_0807FD18: .4byte 0x0000071c
_0807FD1C: .4byte 0x0000ffff
_0807FD20: .4byte 0x0000071e
_0807FD24: .4byte 0x00000722
_0807FD28: .4byte gSpriteCoordOffsetX
_0807FD2C: .4byte gSpriteCoordOffsetY
	thumb_func_end sub_807FC9C

	thumb_func_start sub_807FD30
sub_807FD30: @ 807FD30
	push {r4-r6,lr}
	sub sp, 0x8
	ldr r0, _0807FD9C @ =gUnknown_08396FC4
	ldr r0, [r0]
	ldr r1, _0807FDA0 @ =0x00000724
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _0807FDD6
	ldr r0, _0807FDA4 @ =gUnknown_0839ABE8
	ldr r1, [r0, 0x4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, 0x4]
	mov r0, sp
	bl LoadSpriteSheet
	movs r6, 0
_0807FD54:
	adds r0, r6, 0
	movs r1, 0x5
	bl __udivsi3
	adds r5, r0, 0
	lsls r2, r5, 22
	asrs r2, 16
	ldr r0, _0807FDA8 @ =gSpriteTemplate_839AC04
	movs r1, 0
	movs r3, 0xFF
	bl CreateSpriteAtEnd
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x40
	beq _0807FDB0
	lsls r4, r0, 4
	adds r4, r0
	lsls r4, 2
	ldr r0, _0807FDAC @ =gSprites
	adds r4, r0
	adds r0, r6, 0
	movs r1, 0x5
	bl __umodsi3
	strh r0, [r4, 0x2E]
	strh r5, [r4, 0x30]
	ldr r2, _0807FD9C @ =gUnknown_08396FC4
	ldr r0, [r2]
	lsls r1, r6, 2
	movs r3, 0xA0
	lsls r3, 1
	adds r0, r3
	adds r0, r1
	str r4, [r0]
	b _0807FDC2
	.align 2, 0
_0807FD9C: .4byte gUnknown_08396FC4
_0807FDA0: .4byte 0x00000724
_0807FDA4: .4byte gUnknown_0839ABE8
_0807FDA8: .4byte gSpriteTemplate_839AC04
_0807FDAC: .4byte gSprites
_0807FDB0:
	ldr r2, _0807FDE0 @ =gUnknown_08396FC4
	ldr r1, [r2]
	lsls r0, r6, 2
	movs r3, 0xA0
	lsls r3, 1
	adds r1, r3
	adds r1, r0
	movs r0, 0
	str r0, [r1]
_0807FDC2:
	adds r0, r6, 0x1
	lsls r0, 16
	lsrs r6, r0, 16
	cmp r6, 0x13
	bls _0807FD54
	ldr r0, [r2]
	ldr r1, _0807FDE4 @ =0x00000724
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
_0807FDD6:
	add sp, 0x8
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0807FDE0: .4byte gUnknown_08396FC4
_0807FDE4: .4byte 0x00000724
	thumb_func_end sub_807FD30

	thumb_func_start sub_807FDE8
sub_807FDE8: @ 807FDE8
	push {r4,r5,lr}
	ldr r0, _0807FE30 @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r2, _0807FE34 @ =0x00000724
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0
	beq _0807FE2A
	movs r4, 0
	movs r0, 0xA0
	lsls r0, 1
	adds r5, r1, r0
_0807FE00:
	lsls r0, r4, 2
	adds r0, r5, r0
	ldr r0, [r0]
	cmp r0, 0
	beq _0807FE0E
	bl DestroySprite
_0807FE0E:
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x13
	bls _0807FE00
	ldr r0, _0807FE38 @ =0x00001203
	bl FreeSpriteTilesByTag
	ldr r0, _0807FE30 @ =gUnknown_08396FC4
	ldr r0, [r0]
	ldr r1, _0807FE34 @ =0x00000724
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
_0807FE2A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807FE30: .4byte gUnknown_08396FC4
_0807FE34: .4byte 0x00000724
_0807FE38: .4byte 0x00001203
	thumb_func_end sub_807FDE8

	thumb_func_start sub_807FE3C
sub_807FE3C: @ 807FE3C
	push {r4,lr}
	adds r3, r0, 0
	ldr r0, _0807FE8C @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r2, _0807FE90 @ =0x0000071a
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r3, 0x26]
	movs r4, 0xE3
	lsls r4, 3
	adds r2, r1, r4
	ldrh r1, [r2]
	adds r1, 0x20
	movs r4, 0x2E
	ldrsh r0, [r3, r4]
	lsls r0, 6
	adds r1, r0
	strh r1, [r3, 0x20]
	lsls r1, 16
	ldr r0, _0807FE94 @ =0x010f0000
	cmp r1, r0
	ble _0807FE84
	movs r0, 0xF0
	lsls r0, 1
	adds r1, r0, 0
	ldrh r2, [r2]
	adds r1, r2
	movs r4, 0x2E
	ldrsh r2, [r3, r4]
	movs r0, 0x4
	subs r0, r2
	lsls r0, 6
	subs r1, r0
	ldr r0, _0807FE98 @ =0x000001ff
	ands r1, r0
	strh r1, [r3, 0x20]
_0807FE84:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807FE8C: .4byte gUnknown_08396FC4
_0807FE90: .4byte 0x0000071a
_0807FE94: .4byte 0x010f0000
_0807FE98: .4byte 0x000001ff
	thumb_func_end sub_807FE3C

	thumb_func_start sub_807FE9C
sub_807FE9C: @ 807FE9C
	push {r4,lr}
	ldr r0, _0807FF00 @ =gUnknown_08396FC4
	ldr r3, [r0]
	ldr r0, _0807FF04 @ =0x000006cc
	adds r1, r3, r0
	movs r2, 0
	movs r0, 0
	strh r0, [r1]
	ldr r1, _0807FF08 @ =0x000006d2
	adds r0, r3, r1
	strb r2, [r0]
	ldr r4, _0807FF0C @ =0x000006c1
	adds r0, r3, r4
	strb r2, [r0]
	ldr r0, _0807FF10 @ =0x000006c2
	adds r1, r3, r0
	movs r0, 0x14
	strb r0, [r1]
	ldr r1, _0807FF14 @ =0x00000716
	adds r0, r3, r1
	ldrb r2, [r0]
	cmp r2, 0
	bne _0807FEF8
	adds r4, 0x43
	adds r1, r3, r4
	adds r4, 0x4
	adds r0, r3, r4
	str r2, [r0]
	str r2, [r1]
	ldr r0, _0807FF18 @ =0x00000712
	adds r1, r3, r0
	movs r0, 0x8
	strh r0, [r1]
	adds r4, 0xC
	adds r0, r3, r4
	strh r2, [r0]
	ldrh r2, [r1]
	cmp r2, 0x5F
	bls _0807FEF0
	movs r0, 0x80
	subs r0, r2
	strh r0, [r1]
_0807FEF0:
	movs r0, 0
	movs r1, 0x10
	bl sub_807DB64
_0807FEF8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807FF00: .4byte gUnknown_08396FC4
_0807FF04: .4byte 0x000006cc
_0807FF08: .4byte 0x000006d2
_0807FF0C: .4byte 0x000006c1
_0807FF10: .4byte 0x000006c2
_0807FF14: .4byte 0x00000716
_0807FF18: .4byte 0x00000712
	thumb_func_end sub_807FE9C

	thumb_func_start sub_807FF1C
sub_807FF1C: @ 807FF1C
	push {r4,lr}
	bl sub_807FE9C
	ldr r0, _0807FF44 @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r2, _0807FF48 @ =0x000006d2
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0
	bne _0807FF3C
	adds r4, r1, r2
_0807FF32:
	bl sub_807FF4C
	ldrb r0, [r4]
	cmp r0, 0
	beq _0807FF32
_0807FF3C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807FF44: .4byte gUnknown_08396FC4
_0807FF48: .4byte 0x000006d2
	thumb_func_end sub_807FF1C

	thumb_func_start sub_807FF4C
sub_807FF4C: @ 807FF4C
	push {r4,r5,lr}
	bl sub_8080064
	bl sub_808002C
	ldr r0, _0807FF7C @ =gUnknown_08396FC4
	ldr r5, [r0]
	ldr r0, _0807FF80 @ =0x00000712
	adds r1, r5, r0
	ldrh r0, [r1]
	cmp r0, 0x5F
	bls _0807FF68
	movs r0, 0x20
	strh r0, [r1]
_0807FF68:
	ldr r0, _0807FF84 @ =0x000006cc
	adds r4, r5, r0
	ldrh r0, [r4]
	cmp r0, 0x1
	beq _0807FF98
	cmp r0, 0x1
	bgt _0807FF88
	cmp r0, 0
	beq _0807FF8E
	b _0807FFBC
	.align 2, 0
_0807FF7C: .4byte gUnknown_08396FC4
_0807FF80: .4byte 0x00000712
_0807FF84: .4byte 0x000006cc
_0807FF88:
	cmp r0, 0x2
	beq _0807FFA4
	b _0807FFBC
_0807FF8E:
	bl sub_8080178
	bl sub_8080238
	b _0807FFB6
_0807FF98:
	movs r0, 0x10
	movs r1, 0
	movs r2, 0
	bl sub_807DBA4
	b _0807FFB6
_0807FFA4:
	bl sub_807DBE8
	lsls r0, 24
	cmp r0, 0
	beq _0807FFBC
	ldr r0, _0807FFC4 @ =0x000006d2
	adds r1, r5, r0
	movs r0, 0x1
	strb r0, [r1]
_0807FFB6:
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
_0807FFBC:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807FFC4: .4byte 0x000006d2
	thumb_func_end sub_807FF4C

	thumb_func_start sub_807FFC8
sub_807FFC8: @ 807FFC8
	push {r4,lr}
	bl sub_8080064
	bl sub_808002C
	ldr r0, _0807FFEC @ =gUnknown_08396FC4
	ldr r0, [r0]
	ldr r1, _0807FFF0 @ =0x000006ce
	adds r4, r0, r1
	ldrh r0, [r4]
	cmp r0, 0x1
	beq _08080006
	cmp r0, 0x1
	bgt _0807FFF4
	cmp r0, 0
	beq _0807FFFA
	b _0808001E
	.align 2, 0
_0807FFEC: .4byte gUnknown_08396FC4
_0807FFF0: .4byte 0x000006ce
_0807FFF4:
	cmp r0, 0x2
	beq _08080012
	b _0808001E
_0807FFFA:
	movs r0, 0
	movs r1, 0x10
	movs r2, 0
	bl sub_807DBA4
	b _08080016
_08080006:
	bl sub_807DBE8
	lsls r0, 24
	cmp r0, 0
	beq _08080022
	b _08080016
_08080012:
	bl sub_80800E4
_08080016:
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
	b _08080022
_0808001E:
	movs r0, 0
	b _08080024
_08080022:
	movs r0, 0x1
_08080024:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_807FFC8

	thumb_func_start sub_808002C
sub_808002C: @ 808002C
	push {lr}
	ldr r0, _08080058 @ =gUnknown_08396FC4
	ldr r2, [r0]
	ldr r0, _0808005C @ =0x00000714
	adds r3, r2, r0
	ldrh r0, [r3]
	adds r1, r0, 0x1
	strh r1, [r3]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x4
	bls _08080052
	ldr r1, _08080060 @ =0x00000712
	adds r0, r2, r1
	ldrh r1, [r0]
	adds r1, 0x1
	movs r2, 0
	strh r1, [r0]
	strh r2, [r3]
_08080052:
	pop {r0}
	bx r0
	.align 2, 0
_08080058: .4byte gUnknown_08396FC4
_0808005C: .4byte 0x00000714
_08080060: .4byte 0x00000712
	thumb_func_end sub_808002C

	thumb_func_start sub_8080064
sub_8080064: @ 8080064
	push {r4-r6,lr}
	ldr r0, _080800C8 @ =gUnknown_08396FC4
	ldr r2, [r0]
	ldr r0, _080800CC @ =0x00000704
	adds r4, r2, r0
	ldr r6, _080800D0 @ =gSineTable
	ldr r1, _080800D4 @ =0x00000712
	adds r5, r2, r1
	ldrh r0, [r5]
	lsls r0, 1
	adds r0, r6
	movs r3, 0
	ldrsh r1, [r0, r3]
	lsls r1, 2
	ldr r0, [r4]
	subs r0, r1
	str r0, [r4]
	movs r0, 0xE1
	lsls r0, 3
	adds r3, r2, r0
	ldrh r0, [r5]
	lsls r0, 1
	adds r0, r6
	movs r5, 0
	ldrsh r1, [r0, r5]
	ldr r0, [r3]
	subs r0, r1
	str r0, [r3]
	ldr r1, _080800D8 @ =gSpriteCoordOffsetX
	ldr r0, [r4]
	lsrs r0, 8
	ldrh r1, [r1]
	adds r0, r1
	movs r1, 0xFF
	ands r0, r1
	ldr r4, _080800DC @ =0x0000070e
	adds r1, r2, r4
	strh r0, [r1]
	ldr r1, _080800E0 @ =gSpriteCoordOffsetY
	ldr r0, [r3]
	lsrs r0, 8
	ldrh r1, [r1]
	adds r0, r1
	movs r5, 0xE2
	lsls r5, 3
	adds r2, r5
	strh r0, [r2]
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080800C8: .4byte gUnknown_08396FC4
_080800CC: .4byte 0x00000704
_080800D0: .4byte gSineTable
_080800D4: .4byte 0x00000712
_080800D8: .4byte gSpriteCoordOffsetX
_080800DC: .4byte 0x0000070e
_080800E0: .4byte gSpriteCoordOffsetY
	thumb_func_end sub_8080064

	thumb_func_start sub_80800E4
sub_80800E4: @ 80800E4
	push {r4,r5,lr}
	ldr r0, _08080168 @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r2, _0808016C @ =0x00000716
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0
	beq _08080126
	movs r4, 0
	movs r0, 0xC8
	lsls r0, 1
	adds r5, r1, r0
_080800FC:
	lsls r0, r4, 2
	adds r0, r5, r0
	ldr r0, [r0]
	cmp r0, 0
	beq _0808010A
	bl DestroySprite
_0808010A:
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x13
	bls _080800FC
	ldr r0, _08080168 @ =gUnknown_08396FC4
	ldr r0, [r0]
	ldr r1, _0808016C @ =0x00000716
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
	ldr r0, _08080170 @ =0x00001204
	bl FreeSpriteTilesByTag
_08080126:
	ldr r0, _08080168 @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r2, _08080174 @ =0x00000717
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0
	beq _08080160
	movs r4, 0
	movs r0, 0xF0
	lsls r0, 1
	adds r5, r1, r0
_0808013C:
	lsls r0, r4, 2
	adds r0, r5, r0
	ldr r0, [r0]
	cmp r0, 0
	beq _0808014A
	bl DestroySprite
_0808014A:
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x4
	bls _0808013C
	ldr r0, _08080168 @ =gUnknown_08396FC4
	ldr r0, [r0]
	ldr r1, _08080174 @ =0x00000717
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
_08080160:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08080168: .4byte gUnknown_08396FC4
_0808016C: .4byte 0x00000716
_08080170: .4byte 0x00001204
_08080174: .4byte 0x00000717
	thumb_func_end sub_80800E4

	thumb_func_start sub_8080178
sub_8080178: @ 8080178
	push {r4-r7,lr}
	sub sp, 0x4
	ldr r0, _080801E8 @ =gUnknown_08396FC4
	ldr r0, [r0]
	ldr r1, _080801EC @ =0x00000716
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _08080226
	ldr r0, _080801F0 @ =gUnknown_0839AC54
	bl LoadSpriteSheet
	ldr r0, _080801F4 @ =gUnknown_08397128
	bl sub_807D8C0
	movs r7, 0
_08080198:
	adds r0, r7, 0
	movs r1, 0x5
	bl __udivsi3
	adds r6, r0, 0
	lsls r2, r6, 22
	asrs r2, 16
	ldr r0, _080801F8 @ =gSpriteTemplate_839AC3C
	movs r1, 0
	movs r3, 0x1
	bl CreateSpriteAtEnd
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x40
	beq _08080200
	ldr r2, _080801E8 @ =gUnknown_08396FC4
	ldr r5, [r2]
	lsls r0, r7, 2
	movs r3, 0xC8
	lsls r3, 1
	adds r5, r3
	adds r5, r0
	lsls r4, r1, 4
	adds r4, r1
	lsls r4, 2
	ldr r0, _080801FC @ =gSprites
	adds r4, r0
	str r4, [r5]
	adds r0, r7, 0
	movs r1, 0x5
	str r2, [sp]
	bl __umodsi3
	strh r0, [r4, 0x2E]
	ldr r0, [r5]
	strh r6, [r0, 0x30]
	ldr r2, [sp]
	b _08080212
	.align 2, 0
_080801E8: .4byte gUnknown_08396FC4
_080801EC: .4byte 0x00000716
_080801F0: .4byte gUnknown_0839AC54
_080801F4: .4byte gUnknown_08397128
_080801F8: .4byte gSpriteTemplate_839AC3C
_080801FC: .4byte gSprites
_08080200:
	ldr r2, _08080230 @ =gUnknown_08396FC4
	ldr r1, [r2]
	lsls r0, r7, 2
	movs r3, 0xC8
	lsls r3, 1
	adds r1, r3
	adds r1, r0
	movs r0, 0
	str r0, [r1]
_08080212:
	adds r0, r7, 0x1
	lsls r0, 16
	lsrs r7, r0, 16
	cmp r7, 0x13
	bls _08080198
	ldr r0, [r2]
	ldr r1, _08080234 @ =0x00000716
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
_08080226:
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08080230: .4byte gUnknown_08396FC4
_08080234: .4byte 0x00000716
	thumb_func_end sub_8080178

	thumb_func_start sub_8080238
sub_8080238: @ 8080238
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r4, _080802E0 @ =gUnknown_08396FC4
	ldr r0, [r4]
	ldr r1, _080802E4 @ =0x00000717
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _08080324
	movs r7, 0
	mov r9, r4
	movs r2, 0
	mov r10, r2
_08080258:
	lsls r0, r7, 1
	mov r8, r0
	adds r6, r0, r7
	lsls r5, r6, 4
	adds r1, r5, 0
	adds r1, 0x18
	lsls r1, 16
	asrs r1, 16
	ldr r0, _080802E8 @ =gSpriteTemplate_839AC3C
	movs r2, 0xD0
	movs r3, 0x1
	bl CreateSpriteAtEnd
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x40
	beq _080802FC
	mov r2, r9
	ldr r4, [r2]
	lsls r0, r7, 2
	movs r2, 0xF0
	lsls r2, 1
	adds r4, r2
	adds r4, r0
	lsls r2, r1, 4
	adds r2, r1
	lsls r2, 2
	ldr r0, _080802EC @ =gSprites
	adds r2, r0
	str r2, [r4]
	ldrb r1, [r2, 0x3]
	movs r0, 0x3F
	ands r0, r1
	movs r1, 0x80
	orrs r0, r1
	strb r0, [r2, 0x3]
	ldr r1, [r4]
	adds r0, r6, r5
	strh r0, [r1, 0x30]
	ldr r1, [r4]
	movs r0, 0x8
	strh r0, [r1, 0x2E]
	ldr r0, [r4]
	mov r1, r10
	strh r1, [r0, 0x32]
	ldr r1, [r4]
	ldr r0, _080802F0 @ =0x00006730
	strh r0, [r1, 0x36]
	ldr r1, [r4]
	ldr r0, _080802F4 @ =gUnknown_0839AC5C
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r1, 0x34]
	ldr r0, [r4]
	movs r1, 0x1
	bl StartSpriteAnim
	ldr r0, [r4]
	movs r1, 0
	movs r2, 0x2
	movs r3, 0
	bl CalcCenterToCornerVec
	ldr r1, [r4]
	ldr r0, _080802F8 @ =sub_8080398
	str r0, [r1, 0x1C]
	b _0808030E
	.align 2, 0
_080802E0: .4byte gUnknown_08396FC4
_080802E4: .4byte 0x00000717
_080802E8: .4byte gSpriteTemplate_839AC3C
_080802EC: .4byte gSprites
_080802F0: .4byte 0x00006730
_080802F4: .4byte gUnknown_0839AC5C
_080802F8: .4byte sub_8080398
_080802FC:
	mov r2, r9
	ldr r0, [r2]
	lsls r1, r7, 2
	movs r2, 0xF0
	lsls r2, 1
	adds r0, r2
	adds r0, r1
	mov r1, r10
	str r1, [r0]
_0808030E:
	mov r2, r9
	ldr r0, [r2]
	ldr r1, _08080334 @ =0x00000717
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
	adds r0, r7, 0x1
	lsls r0, 16
	lsrs r7, r0, 16
	cmp r7, 0x4
	bls _08080258
_08080324:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08080334: .4byte 0x00000717
	thumb_func_end sub_8080238

	thumb_func_start sub_8080338
sub_8080338: @ 8080338
	push {r4,lr}
	adds r3, r0, 0
	ldr r0, _08080388 @ =gUnknown_08396FC4
	ldr r1, [r0]
	movs r2, 0xE2
	lsls r2, 3
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r3, 0x26]
	ldr r4, _0808038C @ =0x0000070e
	adds r2, r1, r4
	ldrh r1, [r2]
	adds r1, 0x20
	movs r4, 0x2E
	ldrsh r0, [r3, r4]
	lsls r0, 6
	adds r1, r0
	strh r1, [r3, 0x20]
	lsls r1, 16
	ldr r0, _08080390 @ =0x010f0000
	cmp r1, r0
	ble _08080380
	movs r0, 0xF0
	lsls r0, 1
	adds r1, r0, 0
	ldrh r2, [r2]
	adds r1, r2
	movs r4, 0x2E
	ldrsh r2, [r3, r4]
	movs r0, 0x4
	subs r0, r2
	lsls r0, 6
	subs r1, r0
	ldr r0, _08080394 @ =0x000001ff
	ands r1, r0
	strh r1, [r3, 0x20]
_08080380:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08080388: .4byte gUnknown_08396FC4
_0808038C: .4byte 0x0000070e
_08080390: .4byte 0x010f0000
_08080394: .4byte 0x000001ff
	thumb_func_end sub_8080338

	thumb_func_start sub_8080398
sub_8080398: @ 8080398
	push {lr}
	adds r2, r0, 0
	ldrh r0, [r2, 0x34]
	subs r0, 0x1
	strh r0, [r2, 0x34]
	lsls r0, 16
	asrs r0, 16
	movs r1, 0x1
	negs r1, r1
	cmp r0, r1
	bne _080803B2
	ldr r0, _080803B8 @ =sub_80803BC
	str r0, [r2, 0x1C]
_080803B2:
	pop {r0}
	bx r0
	.align 2, 0
_080803B8: .4byte sub_80803BC
	thumb_func_end sub_8080398

	thumb_func_start sub_80803BC
sub_80803BC: @ 80803BC
	push {r4,r5,lr}
	adds r5, r0, 0
	ldrh r0, [r5, 0x22]
	subs r0, 0x1
	strh r0, [r5, 0x22]
	lsls r0, 16
	asrs r0, 16
	movs r1, 0x30
	negs r1, r1
	cmp r0, r1
	bge _080803DA
	movs r0, 0xD0
	strh r0, [r5, 0x22]
	movs r0, 0x4
	strh r0, [r5, 0x2E]
_080803DA:
	movs r0, 0x2E
	ldrsh r4, [r5, r0]
	ldr r3, _0808042C @ =gSineTable
	movs r2, 0x30
	ldrsh r1, [r5, r2]
	lsls r0, r1, 1
	adds r0, r3
	movs r2, 0
	ldrsh r0, [r0, r2]
	adds r2, r4, 0
	muls r2, r0
	adds r1, 0x40
	lsls r1, 1
	adds r1, r3
	movs r3, 0
	ldrsh r0, [r1, r3]
	muls r0, r4
	lsrs r2, 8
	strh r2, [r5, 0x24]
	lsrs r0, 8
	strh r0, [r5, 0x26]
	ldrh r0, [r5, 0x30]
	adds r0, 0xA
	movs r1, 0xFF
	ands r0, r1
	strh r0, [r5, 0x30]
	ldrh r0, [r5, 0x32]
	adds r0, 0x1
	strh r0, [r5, 0x32]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x8
	ble _08080426
	movs r0, 0
	strh r0, [r5, 0x32]
	ldrh r0, [r5, 0x2E]
	adds r0, 0x1
	strh r0, [r5, 0x2E]
_08080426:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808042C: .4byte gSineTable
	thumb_func_end sub_80803BC

	thumb_func_start sub_8080430
sub_8080430: @ 8080430
	ldr r0, _08080450 @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r0, _08080454 @ =0x000006cc
	adds r2, r1, r0
	movs r0, 0
	strh r0, [r2]
	ldr r0, _08080458 @ =0x000006c1
	adds r2, r1, r0
	movs r0, 0x3
	strb r0, [r2]
	ldr r0, _0808045C @ =0x000006c2
	adds r1, r0
	movs r0, 0x14
	strb r0, [r1]
	bx lr
	.align 2, 0
_08080450: .4byte gUnknown_08396FC4
_08080454: .4byte 0x000006cc
_08080458: .4byte 0x000006c1
_0808045C: .4byte 0x000006c2
	thumb_func_end sub_8080430

	thumb_func_start sub_8080460
sub_8080460: @ 8080460
	push {lr}
	bl sub_8080430
	pop {r0}
	bx r0
	thumb_func_end sub_8080460

	thumb_func_start nullsub_56
nullsub_56: @ 808046C
	bx lr
	thumb_func_end nullsub_56

	thumb_func_start sub_8080470
sub_8080470: @ 8080470
	movs r0, 0
	bx lr
	thumb_func_end sub_8080470

	thumb_func_start sub_8080474
sub_8080474: @ 8080474
	push {r4,r5,lr}
	bl sub_807F49C
	ldr r0, _080804B4 @ =gUnknown_08396FC4
	ldr r4, [r0]
	ldr r1, _080804B8 @ =0x0000072e
	adds r0, r4, r1
	ldrb r5, [r0]
	cmp r5, 0
	bne _080804AC
	ldr r0, _080804BC @ =gUnknown_0839AC70
	bl LoadSpriteSheet
	movs r2, 0xE5
	lsls r2, 3
	adds r0, r4, r2
	strh r5, [r0]
	ldr r0, _080804C0 @ =gUnknown_0839AC68
	ldrb r1, [r0]
	subs r2, 0x2
	adds r0, r4, r2
	strh r1, [r0]
	ldr r1, _080804C4 @ =0x0000072a
	adds r0, r4, r1
	strh r5, [r0]
	adds r2, 0x6
	adds r0, r4, r2
	strh r5, [r0]
_080804AC:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080804B4: .4byte gUnknown_08396FC4
_080804B8: .4byte 0x0000072e
_080804BC: .4byte gUnknown_0839AC70
_080804C0: .4byte gUnknown_0839AC68
_080804C4: .4byte 0x0000072a
	thumb_func_end sub_8080474

	thumb_func_start sub_80804C8
sub_80804C8: @ 80804C8
	push {r4,lr}
	bl sub_8080474
	ldr r0, _080804F0 @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r2, _080804F4 @ =0x000006d2
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0
	bne _080804E8
	adds r4, r1, r2
_080804DE:
	bl sub_80804F8
	ldrb r0, [r4]
	cmp r0, 0
	beq _080804DE
_080804E8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080804F0: .4byte gUnknown_08396FC4
_080804F4: .4byte 0x000006d2
	thumb_func_end sub_80804C8

	thumb_func_start sub_80804F8
sub_80804F8: @ 80804F8
	push {r4-r7,lr}
	bl sub_807F52C
	ldr r0, _08080558 @ =gUnknown_08396FC4
	ldr r5, [r0]
	ldr r0, _0808055C @ =0x00000726
	adds r4, r5, r0
	ldrh r0, [r4]
	adds r0, 0x1
	movs r6, 0
	strh r0, [r4]
	ldr r1, _08080560 @ =0x0000ffff
	adds r7, r1, 0
	ldr r2, _08080564 @ =gUnknown_0839AC68
	movs r1, 0xE5
	lsls r1, 3
	adds r3, r5, r1
	ldrh r1, [r3]
	adds r1, r2
	lsls r0, 16
	lsrs r0, 16
	ldrb r1, [r1]
	cmp r0, r1
	bls _08080550
	strh r6, [r4]
	ldrh r0, [r3]
	adds r0, 0x1
	strh r0, [r3]
	ands r0, r7
	cmp r0, 0x7
	bls _08080538
	strh r6, [r3]
_08080538:
	ldr r0, _08080568 @ =0x0000072a
	adds r4, r5, r0
	ldrh r0, [r4]
	bl sub_8080588
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
	ands r0, r7
	cmp r0, 0xC
	bls _08080550
	strh r6, [r4]
_08080550:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08080558: .4byte gUnknown_08396FC4
_0808055C: .4byte 0x00000726
_08080560: .4byte 0x0000ffff
_08080564: .4byte gUnknown_0839AC68
_08080568: .4byte 0x0000072a
	thumb_func_end sub_80804F8

	thumb_func_start sub_808056C
sub_808056C: @ 808056C
	push {lr}
	bl sub_807F5EC
	lsls r0, 24
	cmp r0, 0
	beq _0808057C
	movs r0, 0x1
	b _08080582
_0808057C:
	bl sub_8080610
	movs r0, 0
_08080582:
	pop {r1}
	bx r1
	thumb_func_end sub_808056C

	thumb_func_start sub_8080588
sub_8080588: @ 8080588
	push {r4,lr}
	lsls r0, 16
	ldr r1, _080805F8 @ =gUnknown_0839AC78
	lsrs r0, 14
	adds r3, r0, r1
	adds r1, 0x2
	adds r0, r1
	ldr r1, _080805FC @ =gSpriteCoordOffsetY
	ldrh r2, [r0]
	ldrh r0, [r1]
	subs r2, r0
	ldr r0, _08080600 @ =gSpriteTemplate_839ACBC
	movs r4, 0
	ldrsh r1, [r3, r4]
	lsls r2, 16
	asrs r2, 16
	movs r3, 0
	bl CreateSpriteAtEnd
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x40
	beq _080805F0
	ldr r0, _08080604 @ =gSprites
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r2, [r1, 0x5]
	movs r0, 0xD
	negs r0, r0
	ands r0, r2
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1, 0x5]
	adds r3, r1, 0
	adds r3, 0x3E
	ldrb r0, [r3]
	movs r2, 0x2
	orrs r0, r2
	strb r0, [r3]
	movs r0, 0
	strh r0, [r1, 0x2E]
	strh r0, [r1, 0x30]
	strh r0, [r1, 0x32]
	ldr r0, _08080608 @ =gUnknown_08396FC4
	ldr r1, [r0]
	ldr r0, _0808060C @ =0x0000072c
	adds r1, r0
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
_080805F0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080805F8: .4byte gUnknown_0839AC78
_080805FC: .4byte gSpriteCoordOffsetY
_08080600: .4byte gSpriteTemplate_839ACBC
_08080604: .4byte gSprites
_08080608: .4byte gUnknown_08396FC4
_0808060C: .4byte 0x0000072c
	thumb_func_end sub_8080588

	thumb_func_start sub_8080610
sub_8080610: @ 8080610
	push {r4,r5,lr}
	movs r4, 0
	ldr r5, _08080648 @ =gSprites
_08080616:
	lsls r0, r4, 4
	adds r0, r4
	lsls r2, r0, 2
	adds r0, r5, 0
	adds r0, 0x14
	adds r0, r2, r0
	ldr r1, [r0]
	ldr r0, _0808064C @ =gSpriteTemplate_839ACBC
	cmp r1, r0
	bne _08080630
	adds r0, r2, r5
	bl DestroySprite
_08080630:
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x3F
	bls _08080616
	ldr r0, _08080650 @ =0x00001205
	bl FreeSpriteTilesByTag
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08080648: .4byte gSprites
_0808064C: .4byte gSpriteTemplate_839ACBC
_08080650: .4byte 0x00001205
	thumb_func_end sub_8080610

	thumb_func_start unc_0807DAB4
unc_0807DAB4: @ 8080654
	push {lr}
	adds r1, r0, 0
	ldrh r0, [r1, 0x2E]
	movs r2, 0
	adds r0, 0x2
	strh r0, [r1, 0x2E]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x8
	ble _08080694
	strh r2, [r1, 0x2E]
	movs r3, 0x30
	ldrsh r0, [r1, r3]
	cmp r0, 0
	bne _08080686
	ldrh r0, [r1, 0x24]
	adds r0, 0x1
	strh r0, [r1, 0x24]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x4
	ble _08080694
	movs r0, 0x1
	strh r0, [r1, 0x30]
	b _08080694
_08080686:
	ldrh r0, [r1, 0x24]
	subs r0, 0x1
	strh r0, [r1, 0x24]
	lsls r0, 16
	cmp r0, 0
	bgt _08080694
	strh r2, [r1, 0x30]
_08080694:
	ldrh r0, [r1, 0x22]
	subs r0, 0x3
	strh r0, [r1, 0x22]
	ldrh r0, [r1, 0x32]
	adds r0, 0x1
	strh r0, [r1, 0x32]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x77
	ble _080806AE
	adds r0, r1, 0
	bl DestroySprite
_080806AE:
	pop {r0}
	bx r0
	thumb_func_end unc_0807DAB4

	thumb_func_start SetSav1Weather
SetSav1Weather: @ 80806B4
	push {r4,r5,lr}
	ldr r4, _080806D4 @ =gSaveBlock1
	adds r4, 0x2E
	ldrb r5, [r4]
	lsls r0, 24
	lsrs r0, 24
	bl TranslateWeatherNum
	strb r0, [r4]
	ldrb r0, [r4]
	adds r1, r5, 0
	bl UpdateRainCounter
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080806D4: .4byte gSaveBlock1
	thumb_func_end SetSav1Weather

	thumb_func_start GetSav1Weather
GetSav1Weather: @ 80806D8
	ldr r0, _080806E0 @ =gSaveBlock1
	adds r0, 0x2E
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080806E0: .4byte gSaveBlock1
	thumb_func_end GetSav1Weather

	thumb_func_start sub_80806E4
sub_80806E4: @ 80806E4
	push {r4,r5,lr}
	ldr r4, _08080704 @ =gSaveBlock1
	adds r4, 0x2E
	ldrb r5, [r4]
	ldr r0, _08080708 @ =gMapHeader
	ldrb r0, [r0, 0x16]
	bl TranslateWeatherNum
	strb r0, [r4]
	ldrb r0, [r4]
	adds r1, r5, 0
	bl UpdateRainCounter
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08080704: .4byte gSaveBlock1
_08080708: .4byte gMapHeader
	thumb_func_end sub_80806E4

	thumb_func_start SetWeather
SetWeather: @ 808070C
	push {lr}
	bl SetSav1Weather
	bl GetSav1Weather
	lsls r0, 24
	lsrs r0, 24
	bl DoWeatherEffect
	pop {r0}
	bx r0
	thumb_func_end SetWeather

	thumb_func_start SetWeather_Unused
SetWeather_Unused: @ 8080724
	push {lr}
	bl SetSav1Weather
	bl GetSav1Weather
	lsls r0, 24
	lsrs r0, 24
	bl sub_807C988
	pop {r0}
	bx r0
	thumb_func_end SetWeather_Unused

	thumb_func_start DoCurrentWeather
DoCurrentWeather: @ 808073C
	push {lr}
	bl GetSav1Weather
	lsls r0, 24
	lsrs r0, 24
	bl DoWeatherEffect
	pop {r0}
	bx r0
	thumb_func_end DoCurrentWeather

	thumb_func_start sub_8080750
sub_8080750: @ 8080750
	push {lr}
	bl GetSav1Weather
	lsls r0, 24
	lsrs r0, 24
	bl sub_807C988
	pop {r0}
	bx r0
	thumb_func_end sub_8080750

	thumb_func_start TranslateWeatherNum
TranslateWeatherNum: @ 8080764
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x15
	bhi _0808082C
	lsls r0, 2
	ldr r1, _08080778 @ =_0808077C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08080778: .4byte _0808077C
	.align 2, 0
_0808077C:
	.4byte _0808082C
	.4byte _080807D4
	.4byte _080807D8
	.4byte _080807DC
	.4byte _080807E0
	.4byte _080807E4
	.4byte _080807E8
	.4byte _080807EC
	.4byte _080807F0
	.4byte _080807F4
	.4byte _080807F8
	.4byte _080807FC
	.4byte _08080800
	.4byte _08080804
	.4byte _08080808
	.4byte _0808082C
	.4byte _0808082C
	.4byte _0808082C
	.4byte _0808082C
	.4byte _0808082C
	.4byte _0808080C
	.4byte _08080814
_080807D4:
	movs r0, 0x1
	b _0808082E
_080807D8:
	movs r0, 0x2
	b _0808082E
_080807DC:
	movs r0, 0x3
	b _0808082E
_080807E0:
	movs r0, 0x4
	b _0808082E
_080807E4:
	movs r0, 0x5
	b _0808082E
_080807E8:
	movs r0, 0x6
	b _0808082E
_080807EC:
	movs r0, 0x7
	b _0808082E
_080807F0:
	movs r0, 0x8
	b _0808082E
_080807F4:
	movs r0, 0x9
	b _0808082E
_080807F8:
	movs r0, 0xA
	b _0808082E
_080807FC:
	movs r0, 0xB
	b _0808082E
_08080800:
	movs r0, 0xC
	b _0808082E
_08080804:
	movs r0, 0xD
	b _0808082E
_08080808:
	movs r0, 0xE
	b _0808082E
_0808080C:
	ldr r1, _08080810 @ =gUnknown_0839ACD4
	b _08080816
	.align 2, 0
_08080810: .4byte gUnknown_0839ACD4
_08080814:
	ldr r1, _08080824 @ =gUnknown_0839ACD8
_08080816:
	ldr r0, _08080828 @ =gSaveBlock1
	adds r0, 0x2F
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	b _0808082E
	.align 2, 0
_08080824: .4byte gUnknown_0839ACD8
_08080828: .4byte gSaveBlock1
_0808082C:
	movs r0, 0
_0808082E:
	pop {r1}
	bx r1
	thumb_func_end TranslateWeatherNum

	thumb_func_start UpdateWeatherPerDay
UpdateWeatherPerDay: @ 8080834
	lsls r0, 16
	ldr r2, _08080850 @ =gSaveBlock1
	adds r2, 0x2F
	lsrs r0, 16
	ldrb r1, [r2]
	adds r0, r1
	lsls r0, 16
	movs r1, 0xC0
	lsls r1, 10
	ands r1, r0
	lsrs r1, 16
	strb r1, [r2]
	bx lr
	.align 2, 0
_08080850: .4byte gSaveBlock1
	thumb_func_end UpdateWeatherPerDay

	thumb_func_start UpdateRainCounter
UpdateRainCounter: @ 8080854
	push {lr}
	lsls r0, 24
	lsls r1, 24
	lsrs r2, r0, 24
	cmp r0, r1
	beq _0808086E
	cmp r2, 0x3
	beq _08080868
	cmp r2, 0x5
	bne _0808086E
_08080868:
	movs r0, 0x28
	bl IncrementGameStat
_0808086E:
	pop {r0}
	bx r0
	thumb_func_end UpdateRainCounter

	.align 2, 0 @ Don't pad with nop.
