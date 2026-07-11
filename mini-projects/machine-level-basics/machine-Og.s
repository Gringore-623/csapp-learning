	.file	"machine.c"
	.intel_syntax noprefix
	.text
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
	.globl	sum_array
	.type	sum_array, @function
sum_array:
.LFB14:
	.cfi_startproc
	endbr64
	mov	eax, 0
	mov	edx, 0
	jmp	.L4
.L5:
	add	rdx, QWORD PTR [rdi+rax*8]
	add	rax, 1
.L4:
	cmp	rax, rsi
	jl	.L5
	mov	rax, rdx
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
