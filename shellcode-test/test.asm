	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.intel_syntax noprefix
	.file	"main.cpp"
	.def	 main;
	.scl	2;
	.type	32;
	.endef
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
.seh_proc main
# %bb.0:
	sub	rsp, 104
	.seh_stackalloc 104
	.seh_endprologue
	mov	dword ptr [rsp + 68], 0
	mov	dword ptr [rsp + 64], 1723602811
	mov	dword ptr [rsp + 60], 1844401716
	mov	rax, qword ptr gs:[96]
	mov	qword ptr [rsp + 88], rax
	mov	rax, qword ptr [rsp + 88]
	mov	rax, qword ptr [rax + 24]
	mov	rax, qword ptr [rax + 16]
	mov	qword ptr [rsp + 80], rax
	mov	rax, qword ptr [rsp + 80]
	mov	qword ptr [rsp + 72], rax
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rsp + 80]
	mov	rax, qword ptr [rax + 96]
	movzx	eax, word ptr [rax]
	cmp	eax, 75
	jne	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rsp + 80]
	mov	rax, qword ptr [rax + 96]
	movzx	eax, word ptr [rax + 16]
	cmp	eax, 46
	jne	.LBB0_4
# %bb.3:
	mov	rax, qword ptr [rsp + 80]
	mov	rax, qword ptr [rax + 48]
	mov	qword ptr [rsp + 96], rax
	jmp	.LBB0_8
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rsp + 80]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rsp + 80], rax
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	qword ptr [rsp + 80], 0
	mov	byte ptr [rsp + 39], al         # 1-byte Spill
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rsp + 80]
	cmp	rax, qword ptr [rsp + 72]
	setne	al
	mov	byte ptr [rsp + 39], al         # 1-byte Spill
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rsp + 39]         # 1-byte Reload
	test	al, 1
	jne	.LBB0_1
# %bb.7:
	mov	qword ptr [rsp + 96], 0
.LBB0_8:
	mov	rcx, qword ptr [rsp + 96]
	mov	edx, 1723602811
	call	"?find_function@native@@YAPEAXPEAXI@Z"
	mov	qword ptr [rsp + 48], rax
	lea	rcx, [rip + "??_C@_0L@GMPLCCII@user32?4dll?$AA@"]
	call	qword ptr [rsp + 48]
	mov	rcx, rax
	mov	edx, 1844401716
	call	"?find_function@native@@YAPEAXPEAXI@Z"
	mov	qword ptr [rsp + 40], rax
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rip + "??_C@_03GBBIHDEJ@foo?$AA@"]
	lea	r8, [rip + "??_C@_03BLIIKFAI@bar?$AA@"]
	xor	r9d, r9d
	call	qword ptr [rsp + 40]
	xor	eax, eax
	add	rsp, 104
	ret
	.seh_endproc
                                        # -- End function
	.def	 "?find_function@native@@YAPEAXPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?find_function@native@@YAPEAXPEAXI@Z"
	.globl	"?find_function@native@@YAPEAXPEAXI@Z" # -- Begin function ?find_function@native@@YAPEAXPEAXI@Z
	.p2align	4, 0x90
"?find_function@native@@YAPEAXPEAXI@Z": # @"?find_function@native@@YAPEAXPEAXI@Z"
.seh_proc "?find_function@native@@YAPEAXPEAXI@Z"
# %bb.0:
	sub	rsp, 104
	.seh_stackalloc 104
	.seh_endprologue
	mov	dword ptr [rsp + 92], edx
	mov	qword ptr [rsp + 80], rcx
	mov	rax, qword ptr [rsp + 80]
	mov	qword ptr [rsp + 72], rax
	mov	rax, qword ptr [rsp + 80]
	mov	rcx, qword ptr [rsp + 72]
	movsxd	rcx, dword ptr [rcx + 60]
	add	rax, rcx
	mov	qword ptr [rsp + 64], rax
	mov	rax, qword ptr [rsp + 64]
	add	rax, 24
	add	rax, 112
	mov	qword ptr [rsp + 56], rax
	mov	rax, qword ptr [rsp + 56]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 80]
	mov	ecx, ecx
                                        # kill: def $rcx killed $ecx
	add	rax, rcx
	mov	qword ptr [rsp + 48], rax
	mov	dword ptr [rsp + 44], 0
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rsp + 44]
	mov	rcx, qword ptr [rsp + 48]
	cmp	eax, dword ptr [rcx + 24]
	jae	.LBB1_6
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rsp + 48]
	mov	ecx, dword ptr [rax + 32]
	mov	rax, qword ptr [rsp + 80]
	mov	ecx, ecx
                                        # kill: def $rcx killed $ecx
	add	rax, rcx
	mov	ecx, dword ptr [rsp + 44]
                                        # kill: def $rcx killed $ecx
	shl	rcx, 2
	mov	eax, dword ptr [rax + rcx]
	mov	dword ptr [rsp + 40], eax
	mov	eax, dword ptr [rsp + 40]
	mov	rcx, qword ptr [rsp + 80]
	mov	eax, eax
                                        # kill: def $rax killed $eax
	add	rcx, rax
	call	"??$r_hash@D@@YAIPEAD@Z"
	cmp	eax, dword ptr [rsp + 92]
	jne	.LBB1_4
# %bb.3:
	mov	rax, qword ptr [rsp + 48]
	mov	ecx, dword ptr [rax + 36]
	mov	rax, qword ptr [rsp + 80]
	mov	ecx, ecx
                                        # kill: def $rcx killed $ecx
	add	rax, rcx
	mov	ecx, dword ptr [rsp + 44]
                                        # kill: def $rcx killed $ecx
	shl	rcx, 1
	mov	ax, word ptr [rax + rcx]
	mov	word ptr [rsp + 38], ax
	mov	rax, qword ptr [rsp + 48]
	mov	ecx, dword ptr [rax + 28]
	mov	rax, qword ptr [rsp + 80]
	mov	ecx, ecx
                                        # kill: def $rcx killed $ecx
	add	rax, rcx
	movzx	ecx, word ptr [rsp + 38]
                                        # kill: def $rcx killed $ecx
	shl	rcx, 2
	mov	eax, dword ptr [rax + rcx]
	mov	dword ptr [rsp + 32], eax
	mov	rax, qword ptr [rsp + 80]
	mov	ecx, dword ptr [rsp + 32]
                                        # kill: def $rcx killed $ecx
	add	rax, rcx
	mov	qword ptr [rsp + 96], rax
	jmp	.LBB1_7
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_5
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rsp + 44]
	add	eax, 1
	mov	dword ptr [rsp + 44], eax
	jmp	.LBB1_1
.LBB1_6:
	mov	qword ptr [rsp + 96], 0
.LBB1_7:
	mov	rax, qword ptr [rsp + 96]
	add	rsp, 104
	ret
	.seh_endproc
                                        # -- End function
	.def	 "??$r_hash@D@@YAIPEAD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$r_hash@D@@YAIPEAD@Z"
	.globl	"??$r_hash@D@@YAIPEAD@Z"        # -- Begin function ??$r_hash@D@@YAIPEAD@Z
	.p2align	4, 0x90
"??$r_hash@D@@YAIPEAD@Z":               # @"??$r_hash@D@@YAIPEAD@Z"
.seh_proc "??$r_hash@D@@YAIPEAD@Z"
# %bb.0:
	sub	rsp, 56
	.seh_stackalloc 56
	.seh_endprologue
	mov	qword ptr [rsp + 48], rcx
	mov	rax, qword ptr [rsp + 48]
	cmp	byte ptr [rax], 0
	je	.LBB2_2
# %bb.1:
	mov	rax, qword ptr [rsp + 48]
	movsx	eax, byte ptr [rax]
	mov	dword ptr [rsp + 40], eax       # 4-byte Spill
	mov	rcx, qword ptr [rsp + 48]
	add	rcx, 1
	call	"??$r_hash@D@@YAIPEAD@Z"
	mov	ecx, eax
	mov	eax, dword ptr [rsp + 40]       # 4-byte Reload
	imul	ecx, ecx, 33
	add	eax, ecx
	mov	dword ptr [rsp + 44], eax       # 4-byte Spill
	jmp	.LBB2_3
.LBB2_2:
	mov	eax, 5381
	mov	dword ptr [rsp + 44], eax       # 4-byte Spill
	jmp	.LBB2_3
.LBB2_3:
	mov	eax, dword ptr [rsp + 44]       # 4-byte Reload
	add	rsp, 56
	ret
	.seh_endproc
                                        # -- End function
	.section	.rdata,"dr",discard,"??_C@_0L@GMPLCCII@user32?4dll?$AA@"
	.globl	"??_C@_0L@GMPLCCII@user32?4dll?$AA@" # @"??_C@_0L@GMPLCCII@user32?4dll?$AA@"
"??_C@_0L@GMPLCCII@user32?4dll?$AA@":
	.asciz	"user32.dll"

	.section	.rdata,"dr",discard,"??_C@_03BLIIKFAI@bar?$AA@"
	.globl	"??_C@_03BLIIKFAI@bar?$AA@"     # @"??_C@_03BLIIKFAI@bar?$AA@"
"??_C@_03BLIIKFAI@bar?$AA@":
	.asciz	"bar"

	.section	.rdata,"dr",discard,"??_C@_03GBBIHDEJ@foo?$AA@"
	.globl	"??_C@_03GBBIHDEJ@foo?$AA@"     # @"??_C@_03GBBIHDEJ@foo?$AA@"
"??_C@_03GBBIHDEJ@foo?$AA@":
	.asciz	"foo"

	.section	.drectve,"yn"
	.ascii	" /DEFAULTLIB:uuid.lib"
	.ascii	" /DEFAULTLIB:uuid.lib"
	.addrsig
	.addrsig_sym "?find_function@native@@YAPEAXPEAXI@Z"
	.addrsig_sym "??$r_hash@D@@YAIPEAD@Z"
