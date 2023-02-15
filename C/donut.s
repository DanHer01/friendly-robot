	.file	"donut.c"
	.comm	_k, 4, 2
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC1:
	.ascii "\33[2J\0"
LC14:
	.ascii "\33[d\0"
LC10:
	.ascii ".,-~:;=!*#$@\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB13:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	movl	$8912, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	call	___main
	fldz
	fstps	8908(%esp)
	fldz
	fstps	8904(%esp)
	movl	$LC1, (%esp)
	call	_printf
L12:
	movl	$1760, 8(%esp)
	movl	$32, 4(%esp)
	leal	36(%esp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	$7040, 8(%esp)
	movl	$0, 4(%esp)
	leal	1796(%esp), %eax
	movl	%eax, (%esp)
	call	_memset
	fldz
	fstps	8896(%esp)
	jmp	L2
L7:
	fldz
	fstps	8900(%esp)
	jmp	L3
L6:
	flds	8900(%esp)
	fstpl	(%esp)
	call	_sin
	fstps	8892(%esp)
	flds	8896(%esp)
	fstpl	(%esp)
	call	_cos
	fstps	8888(%esp)
	flds	8908(%esp)
	fstpl	(%esp)
	call	_sin
	fstps	8884(%esp)
	flds	8896(%esp)
	fstpl	(%esp)
	call	_sin
	fstps	8880(%esp)
	flds	8908(%esp)
	fstpl	(%esp)
	call	_cos
	fstps	8876(%esp)
	flds	8888(%esp)
	flds	LC2
	faddp	%st, %st(1)
	fstps	8872(%esp)
	flds	8892(%esp)
	fmuls	8872(%esp)
	fmuls	8884(%esp)
	flds	8880(%esp)
	fmuls	8876(%esp)
	faddp	%st, %st(1)
	flds	LC3
	faddp	%st, %st(1)
	fld1
	fdivp	%st, %st(1)
	fstps	8868(%esp)
	flds	8900(%esp)
	fstpl	(%esp)
	call	_cos
	fstps	8864(%esp)
	flds	8904(%esp)
	fstpl	(%esp)
	call	_cos
	fstps	8860(%esp)
	flds	8904(%esp)
	fstpl	(%esp)
	call	_sin
	fstps	8856(%esp)
	flds	8892(%esp)
	fmuls	8872(%esp)
	fmuls	8876(%esp)
	flds	8880(%esp)
	fmuls	8884(%esp)
	fsubrp	%st, %st(1)
	fstps	8852(%esp)
	flds	8868(%esp)
	flds	LC5
	fmulp	%st, %st(1)
	flds	8864(%esp)
	fmuls	8872(%esp)
	fmuls	8860(%esp)
	flds	8852(%esp)
	fmuls	8856(%esp)
	fsubrp	%st, %st(1)
	fmulp	%st, %st(1)
	flds	LC6
	faddp	%st, %st(1)
	fnstcw	26(%esp)
	movzwl	26(%esp), %eax
	movb	$12, %ah
	movw	%ax, 24(%esp)
	fldcw	24(%esp)
	fistpl	8848(%esp)
	fldcw	26(%esp)
	flds	8868(%esp)
	flds	LC7
	fmulp	%st, %st(1)
	flds	8864(%esp)
	fmuls	8872(%esp)
	fmuls	8856(%esp)
	flds	8852(%esp)
	fmuls	8860(%esp)
	faddp	%st, %st(1)
	fmulp	%st, %st(1)
	flds	LC8
	faddp	%st, %st(1)
	fldcw	24(%esp)
	fistpl	8844(%esp)
	fldcw	26(%esp)
	movl	8844(%esp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	8848(%esp), %eax
	addl	%edx, %eax
	movl	%eax, 8840(%esp)
	flds	8880(%esp)
	fmuls	8884(%esp)
	flds	8892(%esp)
	fmuls	8888(%esp)
	fmuls	8876(%esp)
	fsubrp	%st, %st(1)
	fmuls	8860(%esp)
	flds	8892(%esp)
	fmuls	8888(%esp)
	fmuls	8884(%esp)
	fsubrp	%st, %st(1)
	flds	8880(%esp)
	fmuls	8876(%esp)
	fsubrp	%st, %st(1)
	flds	8864(%esp)
	fmuls	8888(%esp)
	fmuls	8856(%esp)
	fsubrp	%st, %st(1)
	flds	LC9
	fmulp	%st, %st(1)
	fldcw	24(%esp)
	fistpl	8836(%esp)
	fldcw	26(%esp)
	cmpl	$21, 8844(%esp)
	jg	L4
	cmpl	$0, 8844(%esp)
	jle	L4
	cmpl	$0, 8848(%esp)
	jle	L4
	cmpl	$79, 8848(%esp)
	jg	L4
	movl	8840(%esp), %eax
	flds	1796(%esp,%eax,4)
	flds	8868(%esp)
	fucompp
	fnstsw	%ax
	sahf
	jbe	L4
	movl	8840(%esp), %eax
	flds	8868(%esp)
	fstps	1796(%esp,%eax,4)
	movl	8836(%esp), %eax
	sarl	$31, %eax
	notl	%eax
	andl	8836(%esp), %eax
	movzbl	LC10(%eax), %eax
	leal	36(%esp), %ecx
	movl	8840(%esp), %edx
	addl	%ecx, %edx
	movb	%al, (%edx)
L4:
	flds	8900(%esp)
	fldl	LC11
	faddp	%st, %st(1)
	fstps	8900(%esp)
L3:
	flds	8900(%esp)
	fldl	LC12
	fucompp
	fnstsw	%ax
	sahf
	ja	L6
	flds	8896(%esp)
	fldl	LC13
	faddp	%st, %st(1)
	fstps	8896(%esp)
L2:
	flds	8896(%esp)
	fldl	LC12
	fucompp
	fnstsw	%ax
	sahf
	ja	L7
	movl	$LC14, (%esp)
	call	_printf
	movl	$0, _k
	jmp	L8
L11:
	movl	_k, %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$4, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	je	L9
	movl	_k, %eax
	movzbl	36(%esp,%eax), %eax
	movsbl	%al, %eax
	jmp	L10
L9:
	movl	$10, %eax
L10:
	movl	%eax, (%esp)
	call	_putchar
	movl	_k, %eax
	addl	$1, %eax
	movl	%eax, _k
L8:
	movl	_k, %eax
	cmpl	$1760, %eax
	jle	L11
	flds	8908(%esp)
	fldl	LC15
	faddp	%st, %st(1)
	fstps	8908(%esp)
	flds	8904(%esp)
	fldl	LC11
	faddp	%st, %st(1)
	fstps	8904(%esp)
	jmp	L12
	.cfi_endproc
LFE13:
	.section .rdata,"dr"
	.align 4
LC2:
	.long	1073741824
	.align 4
LC3:
	.long	1084227584
	.align 4
LC5:
	.long	1106247680
	.align 4
LC6:
	.long	1109393408
	.align 4
LC7:
	.long	1097859072
	.align 4
LC8:
	.long	1094713344
	.align 4
LC9:
	.long	1090519040
	.align 8
LC11:
	.long	1202590843
	.long	1066695393
	.align 8
LC12:
	.long	1374389535
	.long	1075388088
	.align 8
LC13:
	.long	515396076
	.long	1068624773
	.align 8
LC15:
	.long	1202590843
	.long	1067743969
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_sin;	.scl	2;	.type	32;	.endef
	.def	_cos;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
