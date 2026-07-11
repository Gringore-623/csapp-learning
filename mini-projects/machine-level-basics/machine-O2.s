	.file	"machine.c"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	add_numbers
	.type	add_numbers, @function
add_numbers:
.LFB12:
	.cfi_startproc
	endbr64
	lea	rax, [rdi+rsi]
	ret
	.cfi_endproc
.LFE12:
	.size	add_numbers, .-add_numbers
	.p2align 4
	.globl	get_element
	.type	get_element, @function
get_element:
.LFB13:
	.cfi_startproc
	endbr64
	mov	rax, QWORD PTR [rdi+rsi*8]
	ret
	.cfi_endproc
.LFE13:
	.size	get_element, .-get_element
	.p2align 4
	.globl	sum_array
	.type	sum_array, @function
sum_array:
.LFB14:
	.cfi_startproc
	endbr64
	test	rsi, rsi
	jle	.L7
	lea	rdx, [rdi+rsi*8]
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L6:
	add	rax, QWORD PTR [rdi]
	add	rdi, 8
	cmp	rdi, rdx
	jne	.L6
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	xor	eax, eax
	ret
	.cfi_endproc
.LFE14:
	.size	sum_array, .-sum_array
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
