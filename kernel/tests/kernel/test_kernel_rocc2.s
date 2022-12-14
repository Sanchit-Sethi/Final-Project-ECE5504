	.file	"test_kernel_rocc2.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC2:
	.string	"tmp[%d]:%d\n"
	.text
	.align	1
	.globl	VEC_VEC_MULADD
	.type	VEC_VEC_MULADD, @function
VEC_VEC_MULADD:
	addi	sp,sp,-192
	sd	ra,184(sp)
	sd	s0,176(sp)
	sd	s1,168(sp)
	sd	s2,160(sp)
	sd	s3,152(sp)
	sd	s4,144(sp)
	sd	s5,136(sp)
	sd	s6,128(sp)
	sd	s7,120(sp)
	addi	s0,sp,192
	sd	a0,-168(s0)
	sd	a1,-176(s0)
	sd	a3,-192(s0)
	mv	a3,a2
	sw	a3,-180(s0)
	mv	a3,sp
	mv	s1,a3
	li	a3,4
	sw	a3,-108(s0)
	lw	a2,-180(s0)
	lw	a3,-108(s0)
	divw	a3,a2,a3
	sw	a3,-104(s0)
	lw	a2,-180(s0)
	lw	a3,-108(s0)
	remw	a3,a2,a3
	sw	a3,-112(s0)
	lw	a3,-108(s0)
	mv	a2,a3
	addi	a2,a2,-1
	sd	a2,-120(s0)
	mv	a2,a3
	mv	s6,a2
	li	s7,0
	srli	a2,s6,59
	slli	t4,s7,5
	or	t4,a2,t4
	slli	t3,s6,5
	mv	a2,a3
	mv	s4,a2
	li	s5,0
	srli	a2,s4,59
	slli	t2,s5,5
	or	t2,a2,t2
	slli	t1,s4,5
	slli	a3,a3,2
	addi	a3,a3,15
	srli	a3,a3,4
	slli	a3,a3,4
	sub	sp,sp,a3
	mv	a3,sp
	addi	a3,a3,3
	srli	a3,a3,2
	slli	a3,a3,2
	sd	a3,-128(s0)
	lw	a3,-108(s0)
	mv	a2,a3
	addi	a2,a2,-1
	sd	a2,-136(s0)
	mv	a2,a3
	mv	s2,a2
	li	s3,0
	srli	a2,s2,59
	slli	a7,s3,5
	or	a7,a2,a7
	slli	a6,s2,5
	mv	a2,a3
	mv	t5,a2
	li	t6,0
	srli	a2,t5,59
	slli	a5,t6,5
	or	a5,a2,a5
	slli	a4,t5,5
	mv	a5,a3
	slli	a5,a5,2
	addi	a5,a5,15
	srli	a5,a5,4
	slli	a5,a5,4
	sub	sp,sp,a5
	mv	a5,sp
	addi	a5,a5,3
	srli	a5,a5,2
	slli	a5,a5,2
	sd	a5,-144(s0)
	sw	zero,-148(s0)
	lw	a5,-112(s0)
	sext.w	a5,a5
	ble	a5,zero,.L2
	lw	a5,-104(s0)
	addiw	a5,a5,1
	sw	a5,-104(s0)
	sw	zero,-92(s0)
	j	.L3
.L4:
	lw	a4,-180(s0)
	lw	a5,-112(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-92(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	slli	a5,a5,2
	ld	a4,-168(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	ld	a3,-128(s0)
	lw	a5,-92(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a4,-180(s0)
	lw	a5,-112(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-92(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	slli	a5,a5,2
	ld	a4,-176(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	ld	a3,-144(s0)
	lw	a5,-92(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-92(s0)
	addiw	a5,a5,1
	sw	a5,-92(s0)
.L3:
	lw	a4,-92(s0)
	lw	a5,-112(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L4
	lw	a5,-112(s0)
	sw	a5,-88(s0)
	j	.L5
.L6:
	ld	a4,-128(s0)
	lw	a5,-88(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,0(a5)
	ld	a4,-144(s0)
	lw	a5,-88(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,0(a5)
	lw	a5,-88(s0)
	addiw	a5,a5,1
	sw	a5,-88(s0)
.L5:
	lw	a4,-88(s0)
	lw	a5,-108(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
.L2:
	sw	zero,-84(s0)
	j	.L7
.L10:
 #APP
# 33 "test_kernel_rocc2.c" 1
	fence
# 0 "" 2
 #NO_APP
	lw	a5,-104(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-84(s0)
	sext.w	a5,a5
	bne	a5,a4,.L8
	lw	a5,-112(s0)
	sext.w	a5,a5
	ble	a5,zero,.L8
	ld	a5,-128(s0)
	sw	a5,-100(s0)
	ld	a5,-144(s0)
	sw	a5,-96(s0)
	j	.L9
.L8:
	lw	a5,-84(s0)
	slli	a5,a5,4
	ld	a4,-168(s0)
	add	a5,a4,a5
	sw	a5,-100(s0)
	lw	a5,-84(s0)
	slli	a5,a5,4
	ld	a4,-176(s0)
	add	a5,a4,a5
	sw	a5,-96(s0)
.L9:
	lw	a5,-100(s0)
	mv	a1,a5
	lw	a5,-96(s0)
	mv	a2,a5
 #APP
# 42 "test_kernel_rocc2.c" 1
	.word 0b0001011 | (0 << (7)) | (1 << (7+5)) | (1 << (7+5+1)) | (0 << (7+5+2)) | (11 << (7+5+3)) | (12 << (7+5+3+5)) | ((((~(~0 << 7) << 0) & 0) >> 0) << (7+5+3+5+5))
	
# 0 "" 2
 #NO_APP
	lw	a5,-108(s0)
	mv	a1,a5
 #APP
# 43 "test_kernel_rocc2.c" 1
	.word 0b0001011 | (10 << (7)) | (0 << (7+5)) | (1 << (7+5+1)) | (1 << (7+5+2)) | (11 << (7+5+3)) | (0 << (7+5+3+5)) | ((((~(~0 << 7) << 0) & 1) >> 0) << (7+5+3+5+5))
	
# 0 "" 2
 #NO_APP
	mv	a5,a0
	sw	a5,-148(s0)
 #APP
# 44 "test_kernel_rocc2.c" 1
	fence
# 0 "" 2
 #NO_APP
	lw	a4,-148(s0)
	lw	a5,-84(s0)
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	ld	a5,-192(s0)
	lw	a5,0(a5)
	lw	a4,-148(s0)
	addw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-192(s0)
	sw	a4,0(a5)
	lw	a5,-84(s0)
	addiw	a5,a5,1
	sw	a5,-84(s0)
.L7:
	lw	a4,-84(s0)
	lw	a5,-104(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L10
	mv	sp,s1
	nop
	addi	sp,s0,-192
	ld	ra,184(sp)
	ld	s0,176(sp)
	ld	s1,168(sp)
	ld	s2,160(sp)
	ld	s3,152(sp)
	ld	s4,144(sp)
	ld	s5,136(sp)
	ld	s6,128(sp)
	ld	s7,120(sp)
	addi	sp,sp,192
	jr	ra
	.size	VEC_VEC_MULADD, .-VEC_VEC_MULADD
	.section	.rodata
	.align	3
.LC3:
	.string	"[INFO] a addr: %x, b_addr: %x\n"
	.align	3
.LC4:
	.string	"result == 23"
	.align	3
.LC5:
	.string	"test_kernel_rocc2.c"
	.align	3
.LC6:
	.string	"[INFO] ***** result %d ****** success! \n"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.align	3
.LC1:
	.word	2
	.word	7
	.word	1
	.word	1
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	addi	s0,sp,64
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	ld	a4,0(a5)
	sd	a4,-40(s0)
	ld	a5,8(a5)
	sd	a5,-32(s0)
	lui	a5,%hi(.LC1)
	addi	a5,a5,%lo(.LC1)
	ld	a4,0(a5)
	sd	a4,-56(s0)
	ld	a5,8(a5)
	sd	a5,-48(s0)
	li	a5,1
	sw	a5,-20(s0)
	li	a5,4
	sw	a5,-24(s0)
	addi	a4,s0,-56
	addi	a5,s0,-40
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
 #APP
# 63 "test_kernel_rocc2.c" 1
	fence
# 0 "" 2
 #NO_APP
	addi	a5,s0,-40
	mv	a1,a5
	addi	a5,s0,-56
	mv	a2,a5
 #APP
# 64 "test_kernel_rocc2.c" 1
	.word 0b0001011 | (0 << (7)) | (1 << (7+5)) | (1 << (7+5+1)) | (0 << (7+5+2)) | (11 << (7+5+3)) | (12 << (7+5+3+5)) | ((((~(~0 << 7) << 0) & 0) >> 0) << (7+5+3+5+5))
	
# 0 "" 2
 #NO_APP
	lw	a5,-24(s0)
	mv	a1,a5
 #APP
# 65 "test_kernel_rocc2.c" 1
	.word 0b0001011 | (10 << (7)) | (0 << (7+5)) | (1 << (7+5+1)) | (1 << (7+5+2)) | (11 << (7+5+3)) | (0 << (7+5+3+5)) | ((((~(~0 << 7) << 0) & 1) >> 0) << (7+5+3+5+5))
	
# 0 "" 2
 #NO_APP
	mv	a5,a0
	sw	a5,-20(s0)
 #APP
# 66 "test_kernel_rocc2.c" 1
	fence
# 0 "" 2
 #NO_APP
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,23
	beq	a4,a5,.L12
	lui	a5,%hi(.LC4)
	addi	a3,a5,%lo(.LC4)
	lui	a5,%hi(__func__.2598)
	addi	a2,a5,%lo(__func__.2598)
	li	a1,68
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	__assert_func
.L12:
	lw	a5,-20(s0)
	mv	a1,a5
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	printf
	li	a5,0
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	main, .-main
	.section	.srodata,"a"
	.align	3
	.type	__func__.2598, @object
	.size	__func__.2598, 5
__func__.2598:
	.string	"main"
	.ident	"GCC: (GNU) 9.2.0"
