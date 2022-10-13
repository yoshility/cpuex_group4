.data
.balign	8
l.10943:	# 128.000000
	.long	0x0
	.long	0x40600000
l.10941:	# 40000.000000
	.long	0x0
	.long	0x40e38800
l.10931:	# -2.000000
	.long	0x0
	.long	0xc0000000
l.10929:	# 0.100000
	.long	0x9999999a
	.long	0x3fb99999
l.10926:	# 0.200000
	.long	0x9999999a
	.long	0x3fc99999
l.10920:	# 100000000.000000
	.long	0x0
	.long	0x4197d784
l.10917:	# 1000000000.000000
	.long	0x0
	.long	0x41cdcd65
l.10907:	# 20.000000
	.long	0x0
	.long	0x40340000
l.10905:	# 0.050000
	.long	0x9999999a
	.long	0x3fa99999
l.10900:	# 0.250000
	.long	0x0
	.long	0x3fd00000
l.10896:	# 255.000000
	.long	0x0
	.long	0x406fe000
l.10894:	# 3.141593
	.long	0x5a7ed197
	.long	0x400921fb
l.10892:	# 10.000000
	.long	0x0
	.long	0x40240000
l.10889:	# 850.000000
	.long	0x0
	.long	0x408a9000
l.10885:	# 0.500000
	.long	0x0
	.long	0x3fe00000
l.10883:	# 0.150000
	.long	0x33333333
	.long	0x3fc33333
l.10878:	# 9.549296
	.long	0x62316387
	.long	0x4023193d
l.10876:	# 15.000000
	.long	0x0
	.long	0x402e0000
l.10874:	# 0.000100
	.long	0xeb1c432d
	.long	0x3f1a36e2
l.10845:	# -0.100000
	.long	0x9999999a
	.long	0xbfb99999
l.10841:	# 0.010000
	.long	0x47ae147b
	.long	0x3f847ae1
l.10839:	# -0.200000
	.long	0x9999999a
	.long	0xbfc99999
l.10820:	# 4.000000
	.long	0x0
	.long	0x40100000
l.10807:	# 2.000000
	.long	0x0
	.long	0x40000000
l.10794:	# -1.000000
	.long	0x0
	.long	0xbff00000
l.10792:	# 1.000000
	.long	0x0
	.long	0x3ff00000
l.10769:	# 0.000000
	.long	0x0
	.long	0x0
l.10765:	# -200.000000
	.long	0x0
	.long	0xc0690000
l.10760:	# 0.017453
	.long	0xaa91ed06
	.long	0x3f91df46
.text
read_environ.2029:
	movl	$min_caml_screen, %eax # 241
	movl	%eax, 0(%ebp) # 241
	addl	$8, %ebp # 241
	call	min_caml_read_float # 241
	subl	$8, %ebp # 241
	movl	0(%ebp), %eax # 241
	movsd	%xmm0, 0(%eax) # 241
	movl	$min_caml_screen, %eax # 242
	movl	%eax, 4(%ebp) # 242
	addl	$8, %ebp # 242
	call	min_caml_read_float # 242
	subl	$8, %ebp # 242
	movl	4(%ebp), %eax # 242
	movsd	%xmm0, 8(%eax) # 242
	movl	$min_caml_screen, %eax # 243
	movl	%eax, 8(%ebp) # 243
	addl	$16, %ebp # 243
	call	min_caml_read_float # 243
	subl	$16, %ebp # 243
	movl	8(%ebp), %eax # 243
	movsd	%xmm0, 16(%eax) # 243
	addl	$16, %ebp # 245
	call	min_caml_read_float # 245
	subl	$16, %ebp # 245
	movl	$l.10760, %eax # 232
	movsd	0(%eax), %xmm1 # 232
	mulsd	%xmm1, %xmm0 # 232
	movl	$min_caml_cos_v, %eax # 246
	movsd	%xmm0, 16(%ebp) # 246
	movl	%eax, 24(%ebp) # 246
	addl	$32, %ebp # 246
	call	min_caml_cos # 246
	subl	$32, %ebp # 246
	movl	24(%ebp), %eax # 246
	movsd	%xmm0, 0(%eax) # 246
	movl	$min_caml_sin_v, %eax # 247
	movsd	16(%ebp), %xmm0 # 247
	movl	%eax, 28(%ebp) # 247
	addl	$32, %ebp # 247
	call	min_caml_sin # 247
	subl	$32, %ebp # 247
	movl	28(%ebp), %eax # 247
	movsd	%xmm0, 0(%eax) # 247
	addl	$32, %ebp # 248
	call	min_caml_read_float # 248
	subl	$32, %ebp # 248
	movl	$l.10760, %eax # 232
	movsd	0(%eax), %xmm1 # 232
	mulsd	%xmm1, %xmm0 # 232
	movl	$min_caml_cos_v, %eax # 249
	movsd	%xmm0, 32(%ebp) # 249
	movl	%eax, 40(%ebp) # 249
	addl	$48, %ebp # 249
	call	min_caml_cos # 249
	subl	$48, %ebp # 249
	movl	40(%ebp), %eax # 249
	movsd	%xmm0, 8(%eax) # 249
	movl	$min_caml_sin_v, %eax # 250
	movsd	32(%ebp), %xmm0 # 250
	movl	%eax, 44(%ebp) # 250
	addl	$48, %ebp # 250
	call	min_caml_sin # 250
	subl	$48, %ebp # 250
	movl	44(%ebp), %eax # 250
	movsd	%xmm0, 8(%eax) # 250
	addl	$48, %ebp # 252
	call	min_caml_read_float # 252
	subl	$48, %ebp # 252
	addl	$48, %ebp # 255
	call	min_caml_read_float # 255
	subl	$48, %ebp # 255
	movl	$l.10760, %eax # 232
	movsd	0(%eax), %xmm1 # 232
	mulsd	%xmm1, %xmm0 # 232
	movsd	%xmm0, 48(%ebp) # 256
	addl	$56, %ebp # 256
	call	min_caml_sin # 256
	subl	$56, %ebp # 256
	movl	$min_caml_light, %eax # 257
	xorpd	min_caml_fnegd, %xmm0 # 257
	movsd	%xmm0, 8(%eax) # 257
	addl	$56, %ebp # 258
	call	min_caml_read_float # 258
	subl	$56, %ebp # 258
	movl	$l.10760, %eax # 232
	movsd	0(%eax), %xmm1 # 232
	mulsd	%xmm1, %xmm0 # 232
	movsd	48(%ebp), %xmm1 # 259
	movsd	%xmm0, 56(%ebp) # 259
	movsd	%xmm1, %xmm0
	addl	$64, %ebp # 259
	call	min_caml_cos # 259
	subl	$64, %ebp # 259
	movsd	56(%ebp), %xmm1 # 260
	movsd	%xmm0, 64(%ebp) # 260
	movsd	%xmm1, %xmm0
	addl	$72, %ebp # 260
	call	min_caml_sin # 260
	subl	$72, %ebp # 260
	movl	$min_caml_light, %eax # 261
	movsd	64(%ebp), %xmm1 # 261
	mulsd	%xmm1, %xmm0 # 261
	movsd	%xmm0, 0(%eax) # 261
	movsd	56(%ebp), %xmm0 # 262
	addl	$72, %ebp # 262
	call	min_caml_cos # 262
	subl	$72, %ebp # 262
	movl	$min_caml_light, %eax # 263
	movsd	64(%ebp), %xmm1 # 263
	mulsd	%xmm0, %xmm1 # 263
	movsd	%xmm1, 16(%eax) # 263
	movl	$min_caml_beam, %eax # 264
	movl	%eax, 72(%ebp) # 264
	addl	$80, %ebp # 264
	call	min_caml_read_float # 264
	subl	$80, %ebp # 264
	movl	72(%ebp), %eax # 264
	movsd	%xmm0, 0(%eax) # 264
	movl	$min_caml_vp, %eax # 267
	movl	$min_caml_cos_v, %ebx # 267
	movsd	0(%ebx), %xmm0 # 267
	movl	$min_caml_sin_v, %ebx # 267
	movsd	8(%ebx), %xmm1 # 267
	mulsd	%xmm1, %xmm0 # 267
	movl	$l.10765, %ebx # 267
	movsd	0(%ebx), %xmm1 # 267
	mulsd	%xmm1, %xmm0 # 267
	movsd	%xmm0, 0(%eax) # 267
	movl	$min_caml_vp, %eax # 268
	movl	$min_caml_sin_v, %ebx # 268
	movsd	0(%ebx), %xmm0 # 268
	xorpd	min_caml_fnegd, %xmm0 # 268
	movl	$l.10765, %ebx # 268
	movsd	0(%ebx), %xmm1 # 268
	mulsd	%xmm1, %xmm0 # 268
	movsd	%xmm0, 8(%eax) # 268
	movl	$min_caml_vp, %eax # 269
	movl	$min_caml_cos_v, %ebx # 269
	movsd	0(%ebx), %xmm0 # 269
	movl	$min_caml_cos_v, %ebx # 269
	movsd	8(%ebx), %xmm1 # 269
	mulsd	%xmm1, %xmm0 # 269
	movl	$l.10765, %ebx # 269
	movsd	0(%ebx), %xmm1 # 269
	mulsd	%xmm1, %xmm0 # 269
	movsd	%xmm0, 16(%eax) # 269
	movl	$min_caml_view, %eax # 272
	movl	$min_caml_vp, %ebx # 272
	movsd	0(%ebx), %xmm0 # 272
	movl	$min_caml_screen, %ebx # 272
	movsd	0(%ebx), %xmm1 # 272
	addsd	%xmm1, %xmm0 # 272
	movsd	%xmm0, 0(%eax) # 272
	movl	$min_caml_view, %eax # 273
	movl	$min_caml_vp, %ebx # 273
	movsd	8(%ebx), %xmm0 # 273
	movl	$min_caml_screen, %ebx # 273
	movsd	8(%ebx), %xmm1 # 273
	addsd	%xmm1, %xmm0 # 273
	movsd	%xmm0, 8(%eax) # 273
	movl	$min_caml_view, %eax # 274
	movl	$min_caml_vp, %ebx # 274
	movsd	16(%ebx), %xmm0 # 274
	movl	$min_caml_screen, %ebx # 274
	movsd	16(%ebx), %xmm1 # 274
	addsd	%xmm1, %xmm0 # 274
	movsd	%xmm0, 16(%eax) # 274
	ret # 274
read_nth_object.2031:
	movl	%eax, 0(%ebp) # 283
	addl	$8, %ebp # 283
	call	min_caml_read_int # 283
	subl	$8, %ebp # 283
	cmpl	$-1, %eax # 284
	jne	je_else.11638
	movl	$0, %eax # 403
	ret # 403
je_else.11638:
	movl	%eax, 4(%ebp) # 286
	addl	$8, %ebp # 286
	call	min_caml_read_int # 286
	subl	$8, %ebp # 286
	movl	%eax, 8(%ebp) # 287
	addl	$16, %ebp # 287
	call	min_caml_read_int # 287
	subl	$16, %ebp # 287
	movl	%eax, 12(%ebp) # 288
	addl	$16, %ebp # 288
	call	min_caml_read_int # 288
	subl	$16, %ebp # 288
	movl	$3, %ebx # 290
	movl	$l.10769, %ecx # 290
	movsd	0(%ecx), %xmm0 # 290
	movl	%eax, 16(%ebp) # 290
	movl	%ebx, %eax
	addl	$24, %ebp # 290
	call	min_caml_create_float_array # 290
	subl	$24, %ebp # 290
	movl	%eax, 20(%ebp) # 292
	addl	$24, %ebp # 292
	call	min_caml_read_float # 292
	subl	$24, %ebp # 292
	movl	20(%ebp), %eax # 292
	movsd	%xmm0, 0(%eax) # 292
	addl	$24, %ebp # 293
	call	min_caml_read_float # 293
	subl	$24, %ebp # 293
	movl	20(%ebp), %eax # 293
	movsd	%xmm0, 8(%eax) # 293
	addl	$24, %ebp # 294
	call	min_caml_read_float # 294
	subl	$24, %ebp # 294
	movl	20(%ebp), %eax # 294
	movsd	%xmm0, 16(%eax) # 294
	movl	$3, %ebx # 296
	movl	$l.10769, %ecx # 296
	movsd	0(%ecx), %xmm0 # 296
	movl	%ebx, %eax
	addl	$24, %ebp # 296
	call	min_caml_create_float_array # 296
	subl	$24, %ebp # 296
	movl	%eax, 24(%ebp) # 298
	addl	$32, %ebp # 298
	call	min_caml_read_float # 298
	subl	$32, %ebp # 298
	movl	24(%ebp), %eax # 298
	movsd	%xmm0, 0(%eax) # 298
	addl	$32, %ebp # 299
	call	min_caml_read_float # 299
	subl	$32, %ebp # 299
	movl	24(%ebp), %eax # 299
	movsd	%xmm0, 8(%eax) # 299
	addl	$32, %ebp # 300
	call	min_caml_read_float # 300
	subl	$32, %ebp # 300
	movl	24(%ebp), %eax # 300
	movsd	%xmm0, 16(%eax) # 300
	movl	$l.10769, %ebx # 302
	movsd	0(%ebx), %xmm0 # 302
	movsd	%xmm0, 32(%ebp) # 302
	addl	$40, %ebp # 302
	call	min_caml_read_float # 302
	subl	$40, %ebp # 302
	movsd	32(%ebp), %xmm1 # 302
	comisd	%xmm0, %xmm1 # 302
	ja	jbe_else.11640
	movl	$0, %eax # 302
	jmp	jbe_cont.11641
jbe_else.11640:
	movl	$1, %eax # 302
jbe_cont.11641:
	movl	$2, %ebx # 304
	movl	$l.10769, %ecx # 304
	movsd	0(%ecx), %xmm0 # 304
	movl	%eax, 40(%ebp) # 304
	movl	%ebx, %eax
	addl	$48, %ebp # 304
	call	min_caml_create_float_array # 304
	subl	$48, %ebp # 304
	movl	%eax, 44(%ebp) # 306
	addl	$48, %ebp # 306
	call	min_caml_read_float # 306
	subl	$48, %ebp # 306
	movl	44(%ebp), %eax # 306
	movsd	%xmm0, 0(%eax) # 306
	addl	$48, %ebp # 307
	call	min_caml_read_float # 307
	subl	$48, %ebp # 307
	movl	44(%ebp), %eax # 307
	movsd	%xmm0, 8(%eax) # 307
	movl	$3, %ebx # 309
	movl	$l.10769, %ecx # 309
	movsd	0(%ecx), %xmm0 # 309
	movl	%ebx, %eax
	addl	$48, %ebp # 309
	call	min_caml_create_float_array # 309
	subl	$48, %ebp # 309
	movl	%eax, 48(%ebp) # 311
	addl	$56, %ebp # 311
	call	min_caml_read_float # 311
	subl	$56, %ebp # 311
	movl	48(%ebp), %eax # 311
	movsd	%xmm0, 0(%eax) # 311
	addl	$56, %ebp # 312
	call	min_caml_read_float # 312
	subl	$56, %ebp # 312
	movl	48(%ebp), %eax # 312
	movsd	%xmm0, 8(%eax) # 312
	addl	$56, %ebp # 313
	call	min_caml_read_float # 313
	subl	$56, %ebp # 313
	movl	48(%ebp), %eax # 313
	movsd	%xmm0, 16(%eax) # 313
	movl	$3, %ebx # 315
	movl	$l.10769, %ecx # 315
	movsd	0(%ecx), %xmm0 # 315
	movl	%ebx, %eax
	addl	$56, %ebp # 315
	call	min_caml_create_float_array # 315
	subl	$56, %ebp # 315
	movl	16(%ebp), %ebx # 316
	cmpl	$0, %ebx # 316
	jne	je_else.11642
	jmp	je_cont.11643
je_else.11642:
	movl	%eax, 52(%ebp) # 318
	addl	$56, %ebp # 318
	call	min_caml_read_float # 318
	subl	$56, %ebp # 318
	movl	$l.10760, %eax # 232
	movsd	0(%eax), %xmm1 # 232
	mulsd	%xmm1, %xmm0 # 232
	movl	52(%ebp), %eax # 318
	movsd	%xmm0, 0(%eax) # 318
	addl	$56, %ebp # 319
	call	min_caml_read_float # 319
	subl	$56, %ebp # 319
	movl	$l.10760, %eax # 232
	movsd	0(%eax), %xmm1 # 232
	mulsd	%xmm1, %xmm0 # 232
	movl	52(%ebp), %eax # 319
	movsd	%xmm0, 8(%eax) # 319
	addl	$56, %ebp # 320
	call	min_caml_read_float # 320
	subl	$56, %ebp # 320
	movl	$l.10760, %eax # 232
	movsd	0(%eax), %xmm1 # 232
	mulsd	%xmm1, %xmm0 # 232
	movl	52(%ebp), %eax # 320
	movsd	%xmm0, 16(%eax) # 320
je_cont.11643:
	movl	8(%ebp), %ebx # 327
	cmpl	$2, %ebx # 327
	jne	je_else.11644
	movl	$1, %ecx # 327
	jmp	je_cont.11645
je_else.11644:
	movl	40(%ebp), %ecx # 327
je_cont.11645:
	movl	min_caml_hp, %edx # 331
	addl	$40, min_caml_hp # 331
	movl	%eax, 36(%edx) # 331
	movl	48(%ebp), %esi # 331
	movl	%esi, 32(%edx) # 331
	movl	44(%ebp), %esi # 331
	movl	%esi, 28(%edx) # 331
	movl	%ecx, 24(%edx) # 331
	movl	24(%ebp), %ecx # 331
	movl	%ecx, 20(%edx) # 331
	movl	20(%ebp), %ecx # 331
	movl	%ecx, 16(%edx) # 331
	movl	16(%ebp), %esi # 331
	movl	%esi, 12(%edx) # 331
	movl	12(%ebp), %edi # 331
	movl	%edi, 8(%edx) # 331
	movl	%ebx, 4(%edx) # 331
	movl	4(%ebp), %edi # 331
	movl	%edi, 0(%edx) # 331
	movl	$min_caml_objects, %edi # 338
	movl	%eax, 52(%ebp) # 338
	movl	0(%ebp), %eax # 338
	movl	%edx, (%edi,%eax,4) # 338
	cmpl	$3, %ebx # 340
	jne	je_else.11646
	movsd	0(%ecx), %xmm0 # 343
	movl	$l.10769, %eax # 344
	movsd	0(%eax), %xmm1 # 344
	comisd	%xmm0, %xmm1 # 344
	jne	je_else.11648
	movl	$l.10769, %eax # 344
	movsd	0(%eax), %xmm1 # 344
	jmp	je_cont.11649
je_else.11648:
	movl	$l.10769, %eax # 225
	movsd	0(%eax), %xmm1 # 225
	comisd	%xmm1, %xmm0 # 225
	ja	jbe_else.11650
	movl	$l.10794, %eax # 226
	movsd	0(%eax), %xmm1 # 226
	jmp	jbe_cont.11651
jbe_else.11650:
	movl	$l.10792, %eax # 225
	movsd	0(%eax), %xmm1 # 225
jbe_cont.11651:
	mulsd	%xmm0, %xmm0 # 344
	divsd	%xmm0, %xmm1 # 344
je_cont.11649:
	movsd	%xmm1, 0(%ecx) # 344
	movsd	8(%ecx), %xmm0 # 345
	movl	$l.10769, %eax # 346
	movsd	0(%eax), %xmm1 # 346
	comisd	%xmm0, %xmm1 # 346
	jne	je_else.11652
	movl	$l.10769, %eax # 346
	movsd	0(%eax), %xmm1 # 346
	jmp	je_cont.11653
je_else.11652:
	movl	$l.10769, %eax # 225
	movsd	0(%eax), %xmm1 # 225
	comisd	%xmm1, %xmm0 # 225
	ja	jbe_else.11654
	movl	$l.10794, %eax # 226
	movsd	0(%eax), %xmm1 # 226
	jmp	jbe_cont.11655
jbe_else.11654:
	movl	$l.10792, %eax # 225
	movsd	0(%eax), %xmm1 # 225
jbe_cont.11655:
	mulsd	%xmm0, %xmm0 # 346
	divsd	%xmm0, %xmm1 # 346
je_cont.11653:
	movsd	%xmm1, 8(%ecx) # 346
	movsd	16(%ecx), %xmm0 # 347
	movl	$l.10769, %eax # 348
	movsd	0(%eax), %xmm1 # 348
	comisd	%xmm0, %xmm1 # 348
	jne	je_else.11656
	movl	$l.10769, %eax # 348
	movsd	0(%eax), %xmm1 # 348
	jmp	je_cont.11657
je_else.11656:
	movl	$l.10769, %eax # 225
	movsd	0(%eax), %xmm1 # 225
	comisd	%xmm1, %xmm0 # 225
	ja	jbe_else.11658
	movl	$l.10794, %eax # 226
	movsd	0(%eax), %xmm1 # 226
	jmp	jbe_cont.11659
jbe_else.11658:
	movl	$l.10792, %eax # 225
	movsd	0(%eax), %xmm1 # 225
jbe_cont.11659:
	mulsd	%xmm0, %xmm0 # 348
	divsd	%xmm0, %xmm1 # 348
je_cont.11657:
	movsd	%xmm1, 16(%ecx) # 348
	jmp	je_cont.11647
je_else.11646:
	cmpl	$2, %ebx # 350
	jne	je_else.11660
	movl	40(%ebp), %eax # 352
	cmpl	$0, %eax # 352
	jne	je_else.11662
	movl	$1, %eax # 352
	jmp	je_cont.11663
je_else.11662:
	movl	$0, %eax # 352
je_cont.11663:
	movsd	0(%ecx), %xmm0 # 216
	mulsd	%xmm0, %xmm0 # 216
	movsd	8(%ecx), %xmm1 # 216
	mulsd	%xmm1, %xmm1 # 216
	addsd	%xmm1, %xmm0 # 216
	movsd	16(%ecx), %xmm1 # 216
	mulsd	%xmm1, %xmm1 # 216
	addsd	%xmm1, %xmm0 # 216
	movl	%eax, 56(%ebp) # 216
	addl	$64, %ebp # 216
	call	min_caml_sqrt # 216
	subl	$64, %ebp # 216
	movl	56(%ebp), %eax # 217
	cmpl	$0, %eax # 217
	jne	je_else.11664
	jmp	je_cont.11665
je_else.11664:
	xorpd	min_caml_fnegd, %xmm0 # 217
je_cont.11665:
	movl	20(%ebp), %eax # 218
	movsd	0(%eax), %xmm1 # 218
	divsd	%xmm0, %xmm1 # 218
	movsd	%xmm1, 0(%eax) # 218
	movsd	8(%eax), %xmm1 # 219
	divsd	%xmm0, %xmm1 # 219
	movsd	%xmm1, 8(%eax) # 219
	movsd	16(%eax), %xmm1 # 220
	divsd	%xmm0, %xmm1 # 220
	movsd	%xmm1, 16(%eax) # 220
	jmp	je_cont.11661
je_else.11660:
je_cont.11661:
je_cont.11647:
	movl	16(%ebp), %eax # 356
	cmpl	$0, %eax # 356
	jne	je_else.11666
	jmp	je_cont.11667
je_else.11666:
	movl	$min_caml_cs_temp, %eax # 358
	movl	52(%ebp), %ebx # 358
	movsd	0(%ebx), %xmm0 # 358
	movl	%eax, 60(%ebp) # 358
	addl	$64, %ebp # 358
	call	min_caml_cos # 358
	subl	$64, %ebp # 358
	movl	60(%ebp), %eax # 358
	movsd	%xmm0, 80(%eax) # 358
	movl	$min_caml_cs_temp, %eax # 359
	movl	52(%ebp), %ebx # 359
	movsd	0(%ebx), %xmm0 # 359
	movl	%eax, 64(%ebp) # 359
	addl	$72, %ebp # 359
	call	min_caml_sin # 359
	subl	$72, %ebp # 359
	movl	64(%ebp), %eax # 359
	movsd	%xmm0, 88(%eax) # 359
	movl	$min_caml_cs_temp, %eax # 360
	movl	52(%ebp), %ebx # 360
	movsd	8(%ebx), %xmm0 # 360
	movl	%eax, 68(%ebp) # 360
	addl	$72, %ebp # 360
	call	min_caml_cos # 360
	subl	$72, %ebp # 360
	movl	68(%ebp), %eax # 360
	movsd	%xmm0, 96(%eax) # 360
	movl	$min_caml_cs_temp, %eax # 361
	movl	52(%ebp), %ebx # 361
	movsd	8(%ebx), %xmm0 # 361
	movl	%eax, 72(%ebp) # 361
	addl	$80, %ebp # 361
	call	min_caml_sin # 361
	subl	$80, %ebp # 361
	movl	72(%ebp), %eax # 361
	movsd	%xmm0, 104(%eax) # 361
	movl	$min_caml_cs_temp, %eax # 362
	movl	52(%ebp), %ebx # 362
	movsd	16(%ebx), %xmm0 # 362
	movl	%eax, 76(%ebp) # 362
	addl	$80, %ebp # 362
	call	min_caml_cos # 362
	subl	$80, %ebp # 362
	movl	76(%ebp), %eax # 362
	movsd	%xmm0, 112(%eax) # 362
	movl	$min_caml_cs_temp, %eax # 363
	movl	52(%ebp), %ebx # 363
	movsd	16(%ebx), %xmm0 # 363
	movl	%eax, 80(%ebp) # 363
	addl	$88, %ebp # 363
	call	min_caml_sin # 363
	subl	$88, %ebp # 363
	movl	80(%ebp), %eax # 363
	movsd	%xmm0, 120(%eax) # 363
	movl	$min_caml_cs_temp, %eax # 364
	movl	$min_caml_cs_temp, %ebx # 364
	movsd	96(%ebx), %xmm0 # 364
	movl	$min_caml_cs_temp, %ebx # 364
	movsd	112(%ebx), %xmm1 # 364
	mulsd	%xmm1, %xmm0 # 364
	movsd	%xmm0, 0(%eax) # 364
	movl	$min_caml_cs_temp, %eax # 365
	movl	$min_caml_cs_temp, %ebx # 366
	movsd	88(%ebx), %xmm0 # 366
	movl	$min_caml_cs_temp, %ebx # 366
	movsd	104(%ebx), %xmm1 # 366
	mulsd	%xmm1, %xmm0 # 366
	movl	$min_caml_cs_temp, %ebx # 366
	movsd	112(%ebx), %xmm1 # 366
	mulsd	%xmm1, %xmm0 # 366
	movl	$min_caml_cs_temp, %ebx # 366
	movsd	80(%ebx), %xmm1 # 366
	movl	$min_caml_cs_temp, %ebx # 366
	movsd	120(%ebx), %xmm2 # 366
	mulsd	%xmm2, %xmm1 # 366
	subsd	%xmm1, %xmm0 # 366
	movsd	%xmm0, 8(%eax) # 365
	movl	$min_caml_cs_temp, %eax # 367
	movl	$min_caml_cs_temp, %ebx # 368
	movsd	80(%ebx), %xmm0 # 368
	movl	$min_caml_cs_temp, %ebx # 368
	movsd	104(%ebx), %xmm1 # 368
	mulsd	%xmm1, %xmm0 # 368
	movl	$min_caml_cs_temp, %ebx # 368
	movsd	112(%ebx), %xmm1 # 368
	mulsd	%xmm1, %xmm0 # 368
	movl	$min_caml_cs_temp, %ebx # 368
	movsd	88(%ebx), %xmm1 # 368
	movl	$min_caml_cs_temp, %ebx # 368
	movsd	120(%ebx), %xmm2 # 368
	mulsd	%xmm2, %xmm1 # 368
	addsd	%xmm1, %xmm0 # 368
	movsd	%xmm0, 16(%eax) # 367
	movl	$min_caml_cs_temp, %eax # 369
	movl	$min_caml_cs_temp, %ebx # 369
	movsd	96(%ebx), %xmm0 # 369
	movl	$min_caml_cs_temp, %ebx # 369
	movsd	120(%ebx), %xmm1 # 369
	mulsd	%xmm1, %xmm0 # 369
	movsd	%xmm0, 24(%eax) # 369
	movl	$min_caml_cs_temp, %eax # 370
	movl	$min_caml_cs_temp, %ebx # 371
	movsd	88(%ebx), %xmm0 # 371
	movl	$min_caml_cs_temp, %ebx # 371
	movsd	104(%ebx), %xmm1 # 371
	mulsd	%xmm1, %xmm0 # 371
	movl	$min_caml_cs_temp, %ebx # 371
	movsd	120(%ebx), %xmm1 # 371
	mulsd	%xmm1, %xmm0 # 371
	movl	$min_caml_cs_temp, %ebx # 371
	movsd	80(%ebx), %xmm1 # 371
	movl	$min_caml_cs_temp, %ebx # 371
	movsd	112(%ebx), %xmm2 # 371
	mulsd	%xmm2, %xmm1 # 371
	addsd	%xmm1, %xmm0 # 371
	movsd	%xmm0, 32(%eax) # 370
	movl	$min_caml_cs_temp, %eax # 372
	movl	$min_caml_cs_temp, %ebx # 373
	movsd	80(%ebx), %xmm0 # 373
	movl	$min_caml_cs_temp, %ebx # 373
	movsd	104(%ebx), %xmm1 # 373
	mulsd	%xmm1, %xmm0 # 373
	movl	$min_caml_cs_temp, %ebx # 373
	movsd	120(%ebx), %xmm1 # 373
	mulsd	%xmm1, %xmm0 # 373
	movl	$min_caml_cs_temp, %ebx # 373
	movsd	88(%ebx), %xmm1 # 373
	movl	$min_caml_cs_temp, %ebx # 373
	movsd	112(%ebx), %xmm2 # 373
	mulsd	%xmm2, %xmm1 # 373
	subsd	%xmm1, %xmm0 # 373
	movsd	%xmm0, 40(%eax) # 372
	movl	$min_caml_cs_temp, %eax # 374
	movl	$min_caml_cs_temp, %ebx # 374
	movsd	104(%ebx), %xmm0 # 374
	xorpd	min_caml_fnegd, %xmm0 # 374
	movsd	%xmm0, 48(%eax) # 374
	movl	$min_caml_cs_temp, %eax # 375
	movl	$min_caml_cs_temp, %ebx # 375
	movsd	88(%ebx), %xmm0 # 375
	movl	$min_caml_cs_temp, %ebx # 375
	movsd	96(%ebx), %xmm1 # 375
	mulsd	%xmm1, %xmm0 # 375
	movsd	%xmm0, 56(%eax) # 375
	movl	$min_caml_cs_temp, %eax # 376
	movl	$min_caml_cs_temp, %ebx # 376
	movsd	80(%ebx), %xmm0 # 376
	movl	$min_caml_cs_temp, %ebx # 376
	movsd	96(%ebx), %xmm1 # 376
	mulsd	%xmm1, %xmm0 # 376
	movsd	%xmm0, 64(%eax) # 376
	movl	20(%ebp), %eax # 377
	movsd	0(%eax), %xmm0 # 377
	movsd	8(%eax), %xmm1 # 378
	movsd	16(%eax), %xmm2 # 379
	movl	$min_caml_cs_temp, %ebx # 380
	movsd	0(%ebx), %xmm3 # 380
	mulsd	%xmm3, %xmm3 # 380
	mulsd	%xmm0, %xmm3 # 380
	movl	$min_caml_cs_temp, %ebx # 380
	movsd	24(%ebx), %xmm4 # 380
	mulsd	%xmm4, %xmm4 # 380
	mulsd	%xmm1, %xmm4 # 380
	addsd	%xmm4, %xmm3 # 380
	movl	$min_caml_cs_temp, %ebx # 380
	movsd	48(%ebx), %xmm4 # 380
	mulsd	%xmm4, %xmm4 # 380
	mulsd	%xmm2, %xmm4 # 380
	addsd	%xmm4, %xmm3 # 380
	movsd	%xmm3, 0(%eax) # 380
	movl	$min_caml_cs_temp, %ebx # 381
	movsd	8(%ebx), %xmm3 # 381
	mulsd	%xmm3, %xmm3 # 381
	mulsd	%xmm0, %xmm3 # 381
	movl	$min_caml_cs_temp, %ebx # 381
	movsd	32(%ebx), %xmm4 # 381
	mulsd	%xmm4, %xmm4 # 381
	mulsd	%xmm1, %xmm4 # 381
	addsd	%xmm4, %xmm3 # 381
	movl	$min_caml_cs_temp, %ebx # 381
	movsd	56(%ebx), %xmm4 # 381
	mulsd	%xmm4, %xmm4 # 381
	mulsd	%xmm2, %xmm4 # 381
	addsd	%xmm4, %xmm3 # 381
	movsd	%xmm3, 8(%eax) # 381
	movl	$min_caml_cs_temp, %ebx # 382
	movsd	16(%ebx), %xmm3 # 382
	mulsd	%xmm3, %xmm3 # 382
	mulsd	%xmm0, %xmm3 # 382
	movl	$min_caml_cs_temp, %ebx # 382
	movsd	40(%ebx), %xmm4 # 382
	mulsd	%xmm4, %xmm4 # 382
	mulsd	%xmm1, %xmm4 # 382
	addsd	%xmm4, %xmm3 # 382
	movl	$min_caml_cs_temp, %ebx # 382
	movsd	64(%ebx), %xmm4 # 382
	mulsd	%xmm4, %xmm4 # 382
	mulsd	%xmm2, %xmm4 # 382
	addsd	%xmm4, %xmm3 # 382
	movsd	%xmm3, 16(%eax) # 382
	movl	$l.10807, %eax # 383
	movsd	0(%eax), %xmm3 # 383
	movl	$min_caml_cs_temp, %eax # 383
	movsd	8(%eax), %xmm4 # 383
	mulsd	%xmm0, %xmm4 # 383
	movl	$min_caml_cs_temp, %eax # 383
	movsd	16(%eax), %xmm5 # 383
	mulsd	%xmm5, %xmm4 # 383
	movl	$min_caml_cs_temp, %eax # 384
	movsd	32(%eax), %xmm5 # 384
	mulsd	%xmm1, %xmm5 # 384
	movl	$min_caml_cs_temp, %eax # 384
	movsd	40(%eax), %xmm6 # 384
	mulsd	%xmm6, %xmm5 # 384
	addsd	%xmm5, %xmm4 # 383
	movl	$min_caml_cs_temp, %eax # 385
	movsd	56(%eax), %xmm5 # 385
	mulsd	%xmm2, %xmm5 # 385
	movl	$min_caml_cs_temp, %eax # 385
	movsd	64(%eax), %xmm6 # 385
	mulsd	%xmm6, %xmm5 # 385
	addsd	%xmm5, %xmm4 # 383
	mulsd	%xmm4, %xmm3 # 383
	movl	52(%ebp), %eax # 383
	movsd	%xmm3, 0(%eax) # 383
	movl	$l.10807, %ebx # 386
	movsd	0(%ebx), %xmm3 # 386
	movl	$min_caml_cs_temp, %ebx # 386
	movsd	0(%ebx), %xmm4 # 386
	mulsd	%xmm0, %xmm4 # 386
	movl	$min_caml_cs_temp, %ebx # 386
	movsd	16(%ebx), %xmm5 # 386
	mulsd	%xmm5, %xmm4 # 386
	movl	$min_caml_cs_temp, %ebx # 387
	movsd	24(%ebx), %xmm5 # 387
	mulsd	%xmm1, %xmm5 # 387
	movl	$min_caml_cs_temp, %ebx # 387
	movsd	40(%ebx), %xmm6 # 387
	mulsd	%xmm6, %xmm5 # 387
	addsd	%xmm5, %xmm4 # 386
	movl	$min_caml_cs_temp, %ebx # 388
	movsd	48(%ebx), %xmm5 # 388
	mulsd	%xmm2, %xmm5 # 388
	movl	$min_caml_cs_temp, %ebx # 388
	movsd	64(%ebx), %xmm6 # 388
	mulsd	%xmm6, %xmm5 # 388
	addsd	%xmm5, %xmm4 # 386
	mulsd	%xmm4, %xmm3 # 386
	movsd	%xmm3, 8(%eax) # 386
	movl	$l.10807, %ebx # 389
	movsd	0(%ebx), %xmm3 # 389
	movl	$min_caml_cs_temp, %ebx # 389
	movsd	0(%ebx), %xmm4 # 389
	mulsd	%xmm4, %xmm0 # 389
	movl	$min_caml_cs_temp, %ebx # 389
	movsd	8(%ebx), %xmm4 # 389
	mulsd	%xmm4, %xmm0 # 389
	movl	$min_caml_cs_temp, %ebx # 390
	movsd	24(%ebx), %xmm4 # 390
	mulsd	%xmm4, %xmm1 # 390
	movl	$min_caml_cs_temp, %ebx # 390
	movsd	32(%ebx), %xmm4 # 390
	mulsd	%xmm4, %xmm1 # 390
	addsd	%xmm1, %xmm0 # 389
	movl	$min_caml_cs_temp, %ebx # 391
	movsd	48(%ebx), %xmm1 # 391
	mulsd	%xmm1, %xmm2 # 391
	movl	$min_caml_cs_temp, %ebx # 391
	movsd	56(%ebx), %xmm1 # 391
	mulsd	%xmm1, %xmm2 # 391
	addsd	%xmm2, %xmm0 # 389
	mulsd	%xmm0, %xmm3 # 389
	movsd	%xmm3, 16(%eax) # 389
je_cont.11667:
	movl	$1, %eax # 400
	ret # 400
read_object.2033:
	cmpl	$61, %eax # 409
	jl	jge_else.11668
	ret # 413
jge_else.11668:
	movl	%eax, 0(%ebp) # 410
	addl	$8, %ebp # 410
	call	read_nth_object.2031 # 410
	subl	$8, %ebp # 410
	cmpl	$0, %eax # 410
	jne	je_else.11670
	ret # 412
je_else.11670:
	movl	0(%ebp), %eax # 411
	addl	$1, %eax # 411
	cmpl	$61, %eax # 409
	jl	jge_else.11672
	ret # 413
jge_else.11672:
	movl	%eax, 4(%ebp) # 410
	addl	$8, %ebp # 410
	call	read_nth_object.2031 # 410
	subl	$8, %ebp # 410
	cmpl	$0, %eax # 410
	jne	je_else.11674
	ret # 412
je_else.11674:
	movl	4(%ebp), %eax # 411
	addl	$1, %eax # 411
	cmpl	$61, %eax # 409
	jl	jge_else.11676
	ret # 413
jge_else.11676:
	movl	%eax, 8(%ebp) # 410
	addl	$16, %ebp # 410
	call	read_nth_object.2031 # 410
	subl	$16, %ebp # 410
	cmpl	$0, %eax # 410
	jne	je_else.11678
	ret # 412
je_else.11678:
	movl	8(%ebp), %eax # 411
	addl	$1, %eax # 411
	cmpl	$61, %eax # 409
	jl	jge_else.11680
	ret # 413
jge_else.11680:
	movl	%eax, 12(%ebp) # 410
	addl	$16, %ebp # 410
	call	read_nth_object.2031 # 410
	subl	$16, %ebp # 410
	cmpl	$0, %eax # 410
	jne	je_else.11682
	ret # 412
je_else.11682:
	movl	12(%ebp), %eax # 411
	addl	$1, %eax # 411
	cmpl	$61, %eax # 409
	jl	jge_else.11684
	ret # 413
jge_else.11684:
	movl	%eax, 16(%ebp) # 410
	addl	$24, %ebp # 410
	call	read_nth_object.2031 # 410
	subl	$24, %ebp # 410
	cmpl	$0, %eax # 410
	jne	je_else.11686
	ret # 412
je_else.11686:
	movl	16(%ebp), %eax # 411
	addl	$1, %eax # 411
	cmpl	$61, %eax # 409
	jl	jge_else.11688
	ret # 413
jge_else.11688:
	movl	%eax, 20(%ebp) # 410
	addl	$24, %ebp # 410
	call	read_nth_object.2031 # 410
	subl	$24, %ebp # 410
	cmpl	$0, %eax # 410
	jne	je_else.11690
	ret # 412
je_else.11690:
	movl	20(%ebp), %eax # 411
	addl	$1, %eax # 411
	cmpl	$61, %eax # 409
	jl	jge_else.11692
	ret # 413
jge_else.11692:
	movl	%eax, 24(%ebp) # 410
	addl	$32, %ebp # 410
	call	read_nth_object.2031 # 410
	subl	$32, %ebp # 410
	cmpl	$0, %eax # 410
	jne	je_else.11694
	ret # 412
je_else.11694:
	movl	24(%ebp), %eax # 411
	addl	$1, %eax # 411
	cmpl	$61, %eax # 409
	jl	jge_else.11696
	ret # 413
jge_else.11696:
	movl	%eax, 28(%ebp) # 410
	addl	$32, %ebp # 410
	call	read_nth_object.2031 # 410
	subl	$32, %ebp # 410
	cmpl	$0, %eax # 410
	jne	je_else.11698
	ret # 412
je_else.11698:
	movl	28(%ebp), %eax # 411
	addl	$1, %eax # 411
	jmp	read_object.2033 # 411
read_net_item.2037:
	movl	%eax, 0(%ebp) # 426
	addl	$8, %ebp # 426
	call	min_caml_read_int # 426
	subl	$8, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11700
	movl	0(%ebp), %eax # 427
	addl	$1, %eax # 427
	movl	$-1, %ebx # 427
	jmp	min_caml_create_array # 427
je_else.11700:
	movl	0(%ebp), %ebx # 429
	movl	%ebx, %ecx # 429
	addl	$1, %ecx # 429
	movl	%eax, 4(%ebp) # 426
	movl	%ecx, 8(%ebp) # 426
	addl	$16, %ebp # 426
	call	min_caml_read_int # 426
	subl	$16, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11701
	movl	8(%ebp), %eax # 427
	addl	$1, %eax # 427
	movl	$-1, %ebx # 427
	addl	$16, %ebp # 427
	call	min_caml_create_array # 427
	subl	$16, %ebp # 427
	jmp	je_cont.11702
je_else.11701:
	movl	8(%ebp), %ebx # 429
	movl	%ebx, %ecx # 429
	addl	$1, %ecx # 429
	movl	%eax, 12(%ebp) # 426
	movl	%ecx, 16(%ebp) # 426
	addl	$24, %ebp # 426
	call	min_caml_read_int # 426
	subl	$24, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11703
	movl	16(%ebp), %eax # 427
	addl	$1, %eax # 427
	movl	$-1, %ebx # 427
	addl	$24, %ebp # 427
	call	min_caml_create_array # 427
	subl	$24, %ebp # 427
	jmp	je_cont.11704
je_else.11703:
	movl	16(%ebp), %ebx # 429
	movl	%ebx, %ecx # 429
	addl	$1, %ecx # 429
	movl	%eax, 20(%ebp) # 426
	movl	%ecx, 24(%ebp) # 426
	addl	$32, %ebp # 426
	call	min_caml_read_int # 426
	subl	$32, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11705
	movl	24(%ebp), %eax # 427
	addl	$1, %eax # 427
	movl	$-1, %ebx # 427
	addl	$32, %ebp # 427
	call	min_caml_create_array # 427
	subl	$32, %ebp # 427
	jmp	je_cont.11706
je_else.11705:
	movl	24(%ebp), %ebx # 429
	movl	%ebx, %ecx # 429
	addl	$1, %ecx # 429
	movl	%eax, 28(%ebp) # 426
	movl	%ecx, 32(%ebp) # 426
	addl	$40, %ebp # 426
	call	min_caml_read_int # 426
	subl	$40, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11707
	movl	32(%ebp), %eax # 427
	addl	$1, %eax # 427
	movl	$-1, %ebx # 427
	addl	$40, %ebp # 427
	call	min_caml_create_array # 427
	subl	$40, %ebp # 427
	jmp	je_cont.11708
je_else.11707:
	movl	32(%ebp), %ebx # 429
	movl	%ebx, %ecx # 429
	addl	$1, %ecx # 429
	movl	%eax, 36(%ebp) # 426
	movl	%ecx, 40(%ebp) # 426
	addl	$48, %ebp # 426
	call	min_caml_read_int # 426
	subl	$48, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11709
	movl	40(%ebp), %eax # 427
	addl	$1, %eax # 427
	movl	$-1, %ebx # 427
	addl	$48, %ebp # 427
	call	min_caml_create_array # 427
	subl	$48, %ebp # 427
	jmp	je_cont.11710
je_else.11709:
	movl	40(%ebp), %ebx # 429
	movl	%ebx, %ecx # 429
	addl	$1, %ecx # 429
	movl	%eax, 44(%ebp) # 426
	movl	%ecx, 48(%ebp) # 426
	addl	$56, %ebp # 426
	call	min_caml_read_int # 426
	subl	$56, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11711
	movl	48(%ebp), %eax # 427
	addl	$1, %eax # 427
	movl	$-1, %ebx # 427
	addl	$56, %ebp # 427
	call	min_caml_create_array # 427
	subl	$56, %ebp # 427
	jmp	je_cont.11712
je_else.11711:
	movl	48(%ebp), %ebx # 429
	movl	%ebx, %ecx # 429
	addl	$1, %ecx # 429
	movl	%eax, 52(%ebp) # 426
	movl	%ecx, 56(%ebp) # 426
	addl	$64, %ebp # 426
	call	min_caml_read_int # 426
	subl	$64, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11713
	movl	56(%ebp), %eax # 427
	addl	$1, %eax # 427
	movl	$-1, %ebx # 427
	addl	$64, %ebp # 427
	call	min_caml_create_array # 427
	subl	$64, %ebp # 427
	jmp	je_cont.11714
je_else.11713:
	movl	56(%ebp), %ebx # 429
	movl	%ebx, %ecx # 429
	addl	$1, %ecx # 429
	movl	%eax, 60(%ebp) # 429
	movl	%ecx, %eax
	addl	$64, %ebp # 429
	call	read_net_item.2037 # 429
	subl	$64, %ebp # 429
	movl	56(%ebp), %ebx # 430
	movl	60(%ebp), %ecx # 430
	movl	%ecx, (%eax,%ebx,4) # 430
je_cont.11714:
	movl	48(%ebp), %ebx # 430
	movl	52(%ebp), %ecx # 430
	movl	%ecx, (%eax,%ebx,4) # 430
je_cont.11712:
	movl	40(%ebp), %ebx # 430
	movl	44(%ebp), %ecx # 430
	movl	%ecx, (%eax,%ebx,4) # 430
je_cont.11710:
	movl	32(%ebp), %ebx # 430
	movl	36(%ebp), %ecx # 430
	movl	%ecx, (%eax,%ebx,4) # 430
je_cont.11708:
	movl	24(%ebp), %ebx # 430
	movl	28(%ebp), %ecx # 430
	movl	%ecx, (%eax,%ebx,4) # 430
je_cont.11706:
	movl	16(%ebp), %ebx # 430
	movl	20(%ebp), %ecx # 430
	movl	%ecx, (%eax,%ebx,4) # 430
je_cont.11704:
	movl	8(%ebp), %ebx # 430
	movl	12(%ebp), %ecx # 430
	movl	%ecx, (%eax,%ebx,4) # 430
je_cont.11702:
	movl	0(%ebp), %ebx # 430
	movl	4(%ebp), %ecx # 430
	movl	%ecx, (%eax,%ebx,4) # 430
	ret # 430
read_or_network.2039:
	movl	%eax, 0(%ebp) # 426
	addl	$8, %ebp # 426
	call	min_caml_read_int # 426
	subl	$8, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11715
	movl	$1, %eax # 427
	movl	$-1, %ebx # 427
	addl	$8, %ebp # 427
	call	min_caml_create_array # 427
	subl	$8, %ebp # 427
	movl	%eax, %ebx # 427
	jmp	je_cont.11716
je_else.11715:
	movl	%eax, 4(%ebp) # 426
	addl	$8, %ebp # 426
	call	min_caml_read_int # 426
	subl	$8, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11717
	movl	$2, %eax # 427
	movl	$-1, %ebx # 427
	addl	$8, %ebp # 427
	call	min_caml_create_array # 427
	subl	$8, %ebp # 427
	jmp	je_cont.11718
je_else.11717:
	movl	%eax, 8(%ebp) # 426
	addl	$16, %ebp # 426
	call	min_caml_read_int # 426
	subl	$16, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11719
	movl	$3, %eax # 427
	movl	$-1, %ebx # 427
	addl	$16, %ebp # 427
	call	min_caml_create_array # 427
	subl	$16, %ebp # 427
	jmp	je_cont.11720
je_else.11719:
	movl	%eax, 12(%ebp) # 426
	addl	$16, %ebp # 426
	call	min_caml_read_int # 426
	subl	$16, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11721
	movl	$4, %eax # 427
	movl	$-1, %ebx # 427
	addl	$16, %ebp # 427
	call	min_caml_create_array # 427
	subl	$16, %ebp # 427
	jmp	je_cont.11722
je_else.11721:
	movl	%eax, 16(%ebp) # 426
	addl	$24, %ebp # 426
	call	min_caml_read_int # 426
	subl	$24, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11723
	movl	$5, %eax # 427
	movl	$-1, %ebx # 427
	addl	$24, %ebp # 427
	call	min_caml_create_array # 427
	subl	$24, %ebp # 427
	jmp	je_cont.11724
je_else.11723:
	movl	%eax, 20(%ebp) # 426
	addl	$24, %ebp # 426
	call	min_caml_read_int # 426
	subl	$24, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11725
	movl	$6, %eax # 427
	movl	$-1, %ebx # 427
	addl	$24, %ebp # 427
	call	min_caml_create_array # 427
	subl	$24, %ebp # 427
	jmp	je_cont.11726
je_else.11725:
	movl	%eax, 24(%ebp) # 426
	addl	$32, %ebp # 426
	call	min_caml_read_int # 426
	subl	$32, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11727
	movl	$7, %eax # 427
	movl	$-1, %ebx # 427
	addl	$32, %ebp # 427
	call	min_caml_create_array # 427
	subl	$32, %ebp # 427
	jmp	je_cont.11728
je_else.11727:
	movl	$7, %ebx # 429
	movl	%eax, 28(%ebp) # 429
	movl	%ebx, %eax
	addl	$32, %ebp # 429
	call	read_net_item.2037 # 429
	subl	$32, %ebp # 429
	movl	28(%ebp), %ebx # 430
	movl	%ebx, 24(%eax) # 430
je_cont.11728:
	movl	24(%ebp), %ebx # 430
	movl	%ebx, 20(%eax) # 430
je_cont.11726:
	movl	20(%ebp), %ebx # 430
	movl	%ebx, 16(%eax) # 430
je_cont.11724:
	movl	16(%ebp), %ebx # 430
	movl	%ebx, 12(%eax) # 430
je_cont.11722:
	movl	12(%ebp), %ebx # 430
	movl	%ebx, 8(%eax) # 430
je_cont.11720:
	movl	8(%ebp), %ebx # 430
	movl	%ebx, 4(%eax) # 430
je_cont.11718:
	movl	4(%ebp), %ebx # 430
	movl	%ebx, 0(%eax) # 430
	movl	%eax, %ebx # 430
je_cont.11716:
	movl	0(%ebx), %eax # 436
	cmpl	$-1, %eax # 436
	jne	je_else.11729
	movl	0(%ebp), %eax # 437
	addl	$1, %eax # 437
	jmp	min_caml_create_array # 437
je_else.11729:
	movl	0(%ebp), %eax # 439
	movl	%eax, %ecx # 439
	addl	$1, %ecx # 439
	movl	%ebx, 32(%ebp) # 426
	movl	%ecx, 36(%ebp) # 426
	addl	$40, %ebp # 426
	call	min_caml_read_int # 426
	subl	$40, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11730
	movl	$1, %eax # 427
	movl	$-1, %ebx # 427
	addl	$40, %ebp # 427
	call	min_caml_create_array # 427
	subl	$40, %ebp # 427
	movl	%eax, %ebx # 427
	jmp	je_cont.11731
je_else.11730:
	movl	%eax, 40(%ebp) # 426
	addl	$48, %ebp # 426
	call	min_caml_read_int # 426
	subl	$48, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11732
	movl	$2, %eax # 427
	movl	$-1, %ebx # 427
	addl	$48, %ebp # 427
	call	min_caml_create_array # 427
	subl	$48, %ebp # 427
	jmp	je_cont.11733
je_else.11732:
	movl	%eax, 44(%ebp) # 426
	addl	$48, %ebp # 426
	call	min_caml_read_int # 426
	subl	$48, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11734
	movl	$3, %eax # 427
	movl	$-1, %ebx # 427
	addl	$48, %ebp # 427
	call	min_caml_create_array # 427
	subl	$48, %ebp # 427
	jmp	je_cont.11735
je_else.11734:
	movl	%eax, 48(%ebp) # 426
	addl	$56, %ebp # 426
	call	min_caml_read_int # 426
	subl	$56, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11736
	movl	$4, %eax # 427
	movl	$-1, %ebx # 427
	addl	$56, %ebp # 427
	call	min_caml_create_array # 427
	subl	$56, %ebp # 427
	jmp	je_cont.11737
je_else.11736:
	movl	%eax, 52(%ebp) # 426
	addl	$56, %ebp # 426
	call	min_caml_read_int # 426
	subl	$56, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11738
	movl	$5, %eax # 427
	movl	$-1, %ebx # 427
	addl	$56, %ebp # 427
	call	min_caml_create_array # 427
	subl	$56, %ebp # 427
	jmp	je_cont.11739
je_else.11738:
	movl	%eax, 56(%ebp) # 426
	addl	$64, %ebp # 426
	call	min_caml_read_int # 426
	subl	$64, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11740
	movl	$6, %eax # 427
	movl	$-1, %ebx # 427
	addl	$64, %ebp # 427
	call	min_caml_create_array # 427
	subl	$64, %ebp # 427
	jmp	je_cont.11741
je_else.11740:
	movl	$6, %ebx # 429
	movl	%eax, 60(%ebp) # 429
	movl	%ebx, %eax
	addl	$64, %ebp # 429
	call	read_net_item.2037 # 429
	subl	$64, %ebp # 429
	movl	60(%ebp), %ebx # 430
	movl	%ebx, 20(%eax) # 430
je_cont.11741:
	movl	56(%ebp), %ebx # 430
	movl	%ebx, 16(%eax) # 430
je_cont.11739:
	movl	52(%ebp), %ebx # 430
	movl	%ebx, 12(%eax) # 430
je_cont.11737:
	movl	48(%ebp), %ebx # 430
	movl	%ebx, 8(%eax) # 430
je_cont.11735:
	movl	44(%ebp), %ebx # 430
	movl	%ebx, 4(%eax) # 430
je_cont.11733:
	movl	40(%ebp), %ebx # 430
	movl	%ebx, 0(%eax) # 430
	movl	%eax, %ebx # 430
je_cont.11731:
	movl	0(%ebx), %eax # 436
	cmpl	$-1, %eax # 436
	jne	je_else.11742
	movl	36(%ebp), %eax # 437
	addl	$1, %eax # 437
	addl	$64, %ebp # 437
	call	min_caml_create_array # 437
	subl	$64, %ebp # 437
	jmp	je_cont.11743
je_else.11742:
	movl	36(%ebp), %eax # 439
	movl	%eax, %ecx # 439
	addl	$1, %ecx # 439
	movl	%ebx, 64(%ebp) # 426
	movl	%ecx, 68(%ebp) # 426
	addl	$72, %ebp # 426
	call	min_caml_read_int # 426
	subl	$72, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11744
	movl	$1, %eax # 427
	movl	$-1, %ebx # 427
	addl	$72, %ebp # 427
	call	min_caml_create_array # 427
	subl	$72, %ebp # 427
	movl	%eax, %ebx # 427
	jmp	je_cont.11745
je_else.11744:
	movl	%eax, 72(%ebp) # 426
	addl	$80, %ebp # 426
	call	min_caml_read_int # 426
	subl	$80, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11746
	movl	$2, %eax # 427
	movl	$-1, %ebx # 427
	addl	$80, %ebp # 427
	call	min_caml_create_array # 427
	subl	$80, %ebp # 427
	jmp	je_cont.11747
je_else.11746:
	movl	%eax, 76(%ebp) # 426
	addl	$80, %ebp # 426
	call	min_caml_read_int # 426
	subl	$80, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11748
	movl	$3, %eax # 427
	movl	$-1, %ebx # 427
	addl	$80, %ebp # 427
	call	min_caml_create_array # 427
	subl	$80, %ebp # 427
	jmp	je_cont.11749
je_else.11748:
	movl	%eax, 80(%ebp) # 426
	addl	$88, %ebp # 426
	call	min_caml_read_int # 426
	subl	$88, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11750
	movl	$4, %eax # 427
	movl	$-1, %ebx # 427
	addl	$88, %ebp # 427
	call	min_caml_create_array # 427
	subl	$88, %ebp # 427
	jmp	je_cont.11751
je_else.11750:
	movl	%eax, 84(%ebp) # 426
	addl	$88, %ebp # 426
	call	min_caml_read_int # 426
	subl	$88, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11752
	movl	$5, %eax # 427
	movl	$-1, %ebx # 427
	addl	$88, %ebp # 427
	call	min_caml_create_array # 427
	subl	$88, %ebp # 427
	jmp	je_cont.11753
je_else.11752:
	movl	$5, %ebx # 429
	movl	%eax, 88(%ebp) # 429
	movl	%ebx, %eax
	addl	$96, %ebp # 429
	call	read_net_item.2037 # 429
	subl	$96, %ebp # 429
	movl	88(%ebp), %ebx # 430
	movl	%ebx, 16(%eax) # 430
je_cont.11753:
	movl	84(%ebp), %ebx # 430
	movl	%ebx, 12(%eax) # 430
je_cont.11751:
	movl	80(%ebp), %ebx # 430
	movl	%ebx, 8(%eax) # 430
je_cont.11749:
	movl	76(%ebp), %ebx # 430
	movl	%ebx, 4(%eax) # 430
je_cont.11747:
	movl	72(%ebp), %ebx # 430
	movl	%ebx, 0(%eax) # 430
	movl	%eax, %ebx # 430
je_cont.11745:
	movl	0(%ebx), %eax # 436
	cmpl	$-1, %eax # 436
	jne	je_else.11754
	movl	68(%ebp), %eax # 437
	addl	$1, %eax # 437
	addl	$96, %ebp # 437
	call	min_caml_create_array # 437
	subl	$96, %ebp # 437
	jmp	je_cont.11755
je_else.11754:
	movl	68(%ebp), %eax # 439
	movl	%eax, %ecx # 439
	addl	$1, %ecx # 439
	movl	%ebx, 92(%ebp) # 426
	movl	%ecx, 96(%ebp) # 426
	addl	$104, %ebp # 426
	call	min_caml_read_int # 426
	subl	$104, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11756
	movl	$1, %eax # 427
	movl	$-1, %ebx # 427
	addl	$104, %ebp # 427
	call	min_caml_create_array # 427
	subl	$104, %ebp # 427
	movl	%eax, %ebx # 427
	jmp	je_cont.11757
je_else.11756:
	movl	%eax, 100(%ebp) # 426
	addl	$104, %ebp # 426
	call	min_caml_read_int # 426
	subl	$104, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11758
	movl	$2, %eax # 427
	movl	$-1, %ebx # 427
	addl	$104, %ebp # 427
	call	min_caml_create_array # 427
	subl	$104, %ebp # 427
	jmp	je_cont.11759
je_else.11758:
	movl	%eax, 104(%ebp) # 426
	addl	$112, %ebp # 426
	call	min_caml_read_int # 426
	subl	$112, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11760
	movl	$3, %eax # 427
	movl	$-1, %ebx # 427
	addl	$112, %ebp # 427
	call	min_caml_create_array # 427
	subl	$112, %ebp # 427
	jmp	je_cont.11761
je_else.11760:
	movl	%eax, 108(%ebp) # 426
	addl	$112, %ebp # 426
	call	min_caml_read_int # 426
	subl	$112, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11762
	movl	$4, %eax # 427
	movl	$-1, %ebx # 427
	addl	$112, %ebp # 427
	call	min_caml_create_array # 427
	subl	$112, %ebp # 427
	jmp	je_cont.11763
je_else.11762:
	movl	$4, %ebx # 429
	movl	%eax, 112(%ebp) # 429
	movl	%ebx, %eax
	addl	$120, %ebp # 429
	call	read_net_item.2037 # 429
	subl	$120, %ebp # 429
	movl	112(%ebp), %ebx # 430
	movl	%ebx, 12(%eax) # 430
je_cont.11763:
	movl	108(%ebp), %ebx # 430
	movl	%ebx, 8(%eax) # 430
je_cont.11761:
	movl	104(%ebp), %ebx # 430
	movl	%ebx, 4(%eax) # 430
je_cont.11759:
	movl	100(%ebp), %ebx # 430
	movl	%ebx, 0(%eax) # 430
	movl	%eax, %ebx # 430
je_cont.11757:
	movl	0(%ebx), %eax # 436
	cmpl	$-1, %eax # 436
	jne	je_else.11764
	movl	96(%ebp), %eax # 437
	addl	$1, %eax # 437
	addl	$120, %ebp # 437
	call	min_caml_create_array # 437
	subl	$120, %ebp # 437
	jmp	je_cont.11765
je_else.11764:
	movl	96(%ebp), %eax # 439
	movl	%eax, %ecx # 439
	addl	$1, %ecx # 439
	movl	%ebx, 116(%ebp) # 439
	movl	%ecx, %eax
	addl	$120, %ebp # 439
	call	read_or_network.2039 # 439
	subl	$120, %ebp # 439
	movl	96(%ebp), %ebx # 440
	movl	116(%ebp), %ecx # 440
	movl	%ecx, (%eax,%ebx,4) # 440
je_cont.11765:
	movl	68(%ebp), %ebx # 440
	movl	92(%ebp), %ecx # 440
	movl	%ecx, (%eax,%ebx,4) # 440
je_cont.11755:
	movl	36(%ebp), %ebx # 440
	movl	64(%ebp), %ecx # 440
	movl	%ecx, (%eax,%ebx,4) # 440
je_cont.11743:
	movl	0(%ebp), %ebx # 440
	movl	32(%ebp), %ecx # 440
	movl	%ecx, (%eax,%ebx,4) # 440
	ret # 440
read_and_network.2041:
	movl	%eax, 0(%ebp) # 426
	addl	$8, %ebp # 426
	call	min_caml_read_int # 426
	subl	$8, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11766
	movl	$1, %eax # 427
	movl	$-1, %ebx # 427
	addl	$8, %ebp # 427
	call	min_caml_create_array # 427
	subl	$8, %ebp # 427
	jmp	je_cont.11767
je_else.11766:
	movl	%eax, 4(%ebp) # 426
	addl	$8, %ebp # 426
	call	min_caml_read_int # 426
	subl	$8, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11768
	movl	$2, %eax # 427
	movl	$-1, %ebx # 427
	addl	$8, %ebp # 427
	call	min_caml_create_array # 427
	subl	$8, %ebp # 427
	jmp	je_cont.11769
je_else.11768:
	movl	%eax, 8(%ebp) # 426
	addl	$16, %ebp # 426
	call	min_caml_read_int # 426
	subl	$16, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11770
	movl	$3, %eax # 427
	movl	$-1, %ebx # 427
	addl	$16, %ebp # 427
	call	min_caml_create_array # 427
	subl	$16, %ebp # 427
	jmp	je_cont.11771
je_else.11770:
	movl	%eax, 12(%ebp) # 426
	addl	$16, %ebp # 426
	call	min_caml_read_int # 426
	subl	$16, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11772
	movl	$4, %eax # 427
	movl	$-1, %ebx # 427
	addl	$16, %ebp # 427
	call	min_caml_create_array # 427
	subl	$16, %ebp # 427
	jmp	je_cont.11773
je_else.11772:
	movl	%eax, 16(%ebp) # 426
	addl	$24, %ebp # 426
	call	min_caml_read_int # 426
	subl	$24, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11774
	movl	$5, %eax # 427
	movl	$-1, %ebx # 427
	addl	$24, %ebp # 427
	call	min_caml_create_array # 427
	subl	$24, %ebp # 427
	jmp	je_cont.11775
je_else.11774:
	movl	%eax, 20(%ebp) # 426
	addl	$24, %ebp # 426
	call	min_caml_read_int # 426
	subl	$24, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11776
	movl	$6, %eax # 427
	movl	$-1, %ebx # 427
	addl	$24, %ebp # 427
	call	min_caml_create_array # 427
	subl	$24, %ebp # 427
	jmp	je_cont.11777
je_else.11776:
	movl	%eax, 24(%ebp) # 426
	addl	$32, %ebp # 426
	call	min_caml_read_int # 426
	subl	$32, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11778
	movl	$7, %eax # 427
	movl	$-1, %ebx # 427
	addl	$32, %ebp # 427
	call	min_caml_create_array # 427
	subl	$32, %ebp # 427
	jmp	je_cont.11779
je_else.11778:
	movl	$7, %ebx # 429
	movl	%eax, 28(%ebp) # 429
	movl	%ebx, %eax
	addl	$32, %ebp # 429
	call	read_net_item.2037 # 429
	subl	$32, %ebp # 429
	movl	28(%ebp), %ebx # 430
	movl	%ebx, 24(%eax) # 430
je_cont.11779:
	movl	24(%ebp), %ebx # 430
	movl	%ebx, 20(%eax) # 430
je_cont.11777:
	movl	20(%ebp), %ebx # 430
	movl	%ebx, 16(%eax) # 430
je_cont.11775:
	movl	16(%ebp), %ebx # 430
	movl	%ebx, 12(%eax) # 430
je_cont.11773:
	movl	12(%ebp), %ebx # 430
	movl	%ebx, 8(%eax) # 430
je_cont.11771:
	movl	8(%ebp), %ebx # 430
	movl	%ebx, 4(%eax) # 430
je_cont.11769:
	movl	4(%ebp), %ebx # 430
	movl	%ebx, 0(%eax) # 430
je_cont.11767:
	movl	0(%eax), %ebx # 446
	cmpl	$-1, %ebx # 446
	jne	je_else.11780
	ret # 446
je_else.11780:
	movl	$min_caml_and_net, %ebx # 448
	movl	0(%ebp), %ecx # 448
	movl	%eax, (%ebx,%ecx,4) # 448
	addl	$1, %ecx # 449
	movl	%ecx, 32(%ebp) # 426
	addl	$40, %ebp # 426
	call	min_caml_read_int # 426
	subl	$40, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11782
	movl	$1, %eax # 427
	movl	$-1, %ebx # 427
	addl	$40, %ebp # 427
	call	min_caml_create_array # 427
	subl	$40, %ebp # 427
	jmp	je_cont.11783
je_else.11782:
	movl	%eax, 36(%ebp) # 426
	addl	$40, %ebp # 426
	call	min_caml_read_int # 426
	subl	$40, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11784
	movl	$2, %eax # 427
	movl	$-1, %ebx # 427
	addl	$40, %ebp # 427
	call	min_caml_create_array # 427
	subl	$40, %ebp # 427
	jmp	je_cont.11785
je_else.11784:
	movl	%eax, 40(%ebp) # 426
	addl	$48, %ebp # 426
	call	min_caml_read_int # 426
	subl	$48, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11786
	movl	$3, %eax # 427
	movl	$-1, %ebx # 427
	addl	$48, %ebp # 427
	call	min_caml_create_array # 427
	subl	$48, %ebp # 427
	jmp	je_cont.11787
je_else.11786:
	movl	%eax, 44(%ebp) # 426
	addl	$48, %ebp # 426
	call	min_caml_read_int # 426
	subl	$48, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11788
	movl	$4, %eax # 427
	movl	$-1, %ebx # 427
	addl	$48, %ebp # 427
	call	min_caml_create_array # 427
	subl	$48, %ebp # 427
	jmp	je_cont.11789
je_else.11788:
	movl	%eax, 48(%ebp) # 426
	addl	$56, %ebp # 426
	call	min_caml_read_int # 426
	subl	$56, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11790
	movl	$5, %eax # 427
	movl	$-1, %ebx # 427
	addl	$56, %ebp # 427
	call	min_caml_create_array # 427
	subl	$56, %ebp # 427
	jmp	je_cont.11791
je_else.11790:
	movl	%eax, 52(%ebp) # 426
	addl	$56, %ebp # 426
	call	min_caml_read_int # 426
	subl	$56, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11792
	movl	$6, %eax # 427
	movl	$-1, %ebx # 427
	addl	$56, %ebp # 427
	call	min_caml_create_array # 427
	subl	$56, %ebp # 427
	jmp	je_cont.11793
je_else.11792:
	movl	$6, %ebx # 429
	movl	%eax, 56(%ebp) # 429
	movl	%ebx, %eax
	addl	$64, %ebp # 429
	call	read_net_item.2037 # 429
	subl	$64, %ebp # 429
	movl	56(%ebp), %ebx # 430
	movl	%ebx, 20(%eax) # 430
je_cont.11793:
	movl	52(%ebp), %ebx # 430
	movl	%ebx, 16(%eax) # 430
je_cont.11791:
	movl	48(%ebp), %ebx # 430
	movl	%ebx, 12(%eax) # 430
je_cont.11789:
	movl	44(%ebp), %ebx # 430
	movl	%ebx, 8(%eax) # 430
je_cont.11787:
	movl	40(%ebp), %ebx # 430
	movl	%ebx, 4(%eax) # 430
je_cont.11785:
	movl	36(%ebp), %ebx # 430
	movl	%ebx, 0(%eax) # 430
je_cont.11783:
	movl	0(%eax), %ebx # 446
	cmpl	$-1, %ebx # 446
	jne	je_else.11794
	ret # 446
je_else.11794:
	movl	$min_caml_and_net, %ebx # 448
	movl	32(%ebp), %ecx # 448
	movl	%eax, (%ebx,%ecx,4) # 448
	addl	$1, %ecx # 449
	movl	%ecx, 60(%ebp) # 426
	addl	$64, %ebp # 426
	call	min_caml_read_int # 426
	subl	$64, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11796
	movl	$1, %eax # 427
	movl	$-1, %ebx # 427
	addl	$64, %ebp # 427
	call	min_caml_create_array # 427
	subl	$64, %ebp # 427
	jmp	je_cont.11797
je_else.11796:
	movl	%eax, 64(%ebp) # 426
	addl	$72, %ebp # 426
	call	min_caml_read_int # 426
	subl	$72, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11798
	movl	$2, %eax # 427
	movl	$-1, %ebx # 427
	addl	$72, %ebp # 427
	call	min_caml_create_array # 427
	subl	$72, %ebp # 427
	jmp	je_cont.11799
je_else.11798:
	movl	%eax, 68(%ebp) # 426
	addl	$72, %ebp # 426
	call	min_caml_read_int # 426
	subl	$72, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11800
	movl	$3, %eax # 427
	movl	$-1, %ebx # 427
	addl	$72, %ebp # 427
	call	min_caml_create_array # 427
	subl	$72, %ebp # 427
	jmp	je_cont.11801
je_else.11800:
	movl	%eax, 72(%ebp) # 426
	addl	$80, %ebp # 426
	call	min_caml_read_int # 426
	subl	$80, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11802
	movl	$4, %eax # 427
	movl	$-1, %ebx # 427
	addl	$80, %ebp # 427
	call	min_caml_create_array # 427
	subl	$80, %ebp # 427
	jmp	je_cont.11803
je_else.11802:
	movl	%eax, 76(%ebp) # 426
	addl	$80, %ebp # 426
	call	min_caml_read_int # 426
	subl	$80, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11804
	movl	$5, %eax # 427
	movl	$-1, %ebx # 427
	addl	$80, %ebp # 427
	call	min_caml_create_array # 427
	subl	$80, %ebp # 427
	jmp	je_cont.11805
je_else.11804:
	movl	$5, %ebx # 429
	movl	%eax, 80(%ebp) # 429
	movl	%ebx, %eax
	addl	$88, %ebp # 429
	call	read_net_item.2037 # 429
	subl	$88, %ebp # 429
	movl	80(%ebp), %ebx # 430
	movl	%ebx, 16(%eax) # 430
je_cont.11805:
	movl	76(%ebp), %ebx # 430
	movl	%ebx, 12(%eax) # 430
je_cont.11803:
	movl	72(%ebp), %ebx # 430
	movl	%ebx, 8(%eax) # 430
je_cont.11801:
	movl	68(%ebp), %ebx # 430
	movl	%ebx, 4(%eax) # 430
je_cont.11799:
	movl	64(%ebp), %ebx # 430
	movl	%ebx, 0(%eax) # 430
je_cont.11797:
	movl	0(%eax), %ebx # 446
	cmpl	$-1, %ebx # 446
	jne	je_else.11806
	ret # 446
je_else.11806:
	movl	$min_caml_and_net, %ebx # 448
	movl	60(%ebp), %ecx # 448
	movl	%eax, (%ebx,%ecx,4) # 448
	addl	$1, %ecx # 449
	movl	%ecx, 84(%ebp) # 426
	addl	$88, %ebp # 426
	call	min_caml_read_int # 426
	subl	$88, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11808
	movl	$1, %eax # 427
	movl	$-1, %ebx # 427
	addl	$88, %ebp # 427
	call	min_caml_create_array # 427
	subl	$88, %ebp # 427
	jmp	je_cont.11809
je_else.11808:
	movl	%eax, 88(%ebp) # 426
	addl	$96, %ebp # 426
	call	min_caml_read_int # 426
	subl	$96, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11810
	movl	$2, %eax # 427
	movl	$-1, %ebx # 427
	addl	$96, %ebp # 427
	call	min_caml_create_array # 427
	subl	$96, %ebp # 427
	jmp	je_cont.11811
je_else.11810:
	movl	%eax, 92(%ebp) # 426
	addl	$96, %ebp # 426
	call	min_caml_read_int # 426
	subl	$96, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11812
	movl	$3, %eax # 427
	movl	$-1, %ebx # 427
	addl	$96, %ebp # 427
	call	min_caml_create_array # 427
	subl	$96, %ebp # 427
	jmp	je_cont.11813
je_else.11812:
	movl	%eax, 96(%ebp) # 426
	addl	$104, %ebp # 426
	call	min_caml_read_int # 426
	subl	$104, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.11814
	movl	$4, %eax # 427
	movl	$-1, %ebx # 427
	addl	$104, %ebp # 427
	call	min_caml_create_array # 427
	subl	$104, %ebp # 427
	jmp	je_cont.11815
je_else.11814:
	movl	$4, %ebx # 429
	movl	%eax, 100(%ebp) # 429
	movl	%ebx, %eax
	addl	$104, %ebp # 429
	call	read_net_item.2037 # 429
	subl	$104, %ebp # 429
	movl	100(%ebp), %ebx # 430
	movl	%ebx, 12(%eax) # 430
je_cont.11815:
	movl	96(%ebp), %ebx # 430
	movl	%ebx, 8(%eax) # 430
je_cont.11813:
	movl	92(%ebp), %ebx # 430
	movl	%ebx, 4(%eax) # 430
je_cont.11811:
	movl	88(%ebp), %ebx # 430
	movl	%ebx, 0(%eax) # 430
je_cont.11809:
	movl	0(%eax), %ebx # 446
	cmpl	$-1, %ebx # 446
	jne	je_else.11816
	ret # 446
je_else.11816:
	movl	$min_caml_and_net, %ebx # 448
	movl	84(%ebp), %ecx # 448
	movl	%eax, (%ebx,%ecx,4) # 448
	movl	%ecx, %eax # 449
	addl	$1, %eax # 449
	jmp	read_and_network.2041 # 449
solver_rect.2045:
	movl	$l.10769, %ecx # 480
	movsd	0(%ecx), %xmm0 # 480
	movsd	0(%ebx), %xmm1 # 480
	movl	%eax, 0(%ebp) # 480
	movl	%ebx, 4(%ebp) # 480
	comisd	%xmm1, %xmm0 # 480
	jne	je_else.11818
	movl	$0, %eax # 480
	jmp	je_cont.11819
je_else.11818:
	movl	24(%eax), %ecx # 481
	movl	$l.10769, %edx # 482
	movsd	0(%edx), %xmm0 # 482
	movsd	0(%ebx), %xmm1 # 482
	comisd	%xmm1, %xmm0 # 482
	ja	jbe_else.11820
	movl	$0, %edx # 482
	jmp	jbe_cont.11821
jbe_else.11820:
	movl	$1, %edx # 482
jbe_cont.11821:
	cmpl	$0, %ecx # 14
	jne	je_else.11822
	jmp	je_cont.11823
je_else.11822:
	cmpl	$0, %edx # 14
	jne	je_else.11824
	movl	$1, %edx # 14
	jmp	je_cont.11825
je_else.11824:
	movl	$0, %edx # 14
je_cont.11825:
je_cont.11823:
	cmpl	$0, %edx # 482
	jne	je_else.11826
	movl	16(%eax), %ecx # 482
	movsd	0(%ecx), %xmm0 # 81
	xorpd	min_caml_fnegd, %xmm0 # 482
	jmp	je_cont.11827
je_else.11826:
	movl	16(%eax), %ecx # 482
	movsd	0(%ecx), %xmm0 # 81
je_cont.11827:
	movl	$min_caml_solver_w_vec, %ecx # 484
	movsd	0(%ecx), %xmm1 # 484
	subsd	%xmm1, %xmm0 # 484
	movsd	0(%ebx), %xmm1 # 484
	divsd	%xmm1, %xmm0 # 484
	movl	16(%eax), %ecx # 486
	movsd	8(%ecx), %xmm1 # 91
	movsd	8(%ebx), %xmm2 # 486
	mulsd	%xmm0, %xmm2 # 486
	movl	$min_caml_solver_w_vec, %ecx # 486
	movsd	8(%ecx), %xmm3 # 486
	addsd	%xmm3, %xmm2 # 486
	movsd	%xmm0, 8(%ebp) # 486
	movsd	%xmm1, 16(%ebp) # 486
	movsd	%xmm2, %xmm0
	addl	$24, %ebp # 486
	call	min_caml_abs_float # 486
	subl	$24, %ebp # 486
	movsd	16(%ebp), %xmm1 # 486
	comisd	%xmm0, %xmm1 # 486
	ja	jbe_else.11828
	movl	$0, %eax # 490
	jmp	jbe_cont.11829
jbe_else.11828:
	movl	0(%ebp), %eax # 487
	movl	16(%eax), %ebx # 487
	movsd	16(%ebx), %xmm0 # 101
	movl	4(%ebp), %ebx # 487
	movsd	16(%ebx), %xmm1 # 487
	movsd	8(%ebp), %xmm2 # 487
	mulsd	%xmm2, %xmm1 # 487
	movl	$min_caml_solver_w_vec, %ecx # 487
	movsd	16(%ecx), %xmm3 # 487
	addsd	%xmm3, %xmm1 # 487
	movsd	%xmm0, 24(%ebp) # 487
	movsd	%xmm1, %xmm0
	addl	$32, %ebp # 487
	call	min_caml_abs_float # 487
	subl	$32, %ebp # 487
	movsd	24(%ebp), %xmm1 # 487
	comisd	%xmm0, %xmm1 # 487
	ja	jbe_else.11830
	movl	$0, %eax # 489
	jmp	jbe_cont.11831
jbe_else.11830:
	movl	$min_caml_solver_dist, %eax # 488
	movsd	8(%ebp), %xmm0 # 488
	movsd	%xmm0, 0(%eax) # 488
	movl	$1, %eax # 488
jbe_cont.11831:
jbe_cont.11829:
je_cont.11819:
	cmpl	$0, %eax # 493
	jne	je_else.11832
	movl	$l.10769, %eax # 497
	movsd	0(%eax), %xmm0 # 497
	movl	4(%ebp), %eax # 497
	movsd	8(%eax), %xmm1 # 497
	comisd	%xmm1, %xmm0 # 497
	jne	je_else.11833
	movl	$0, %eax # 497
	jmp	je_cont.11834
je_else.11833:
	movl	0(%ebp), %ebx # 498
	movl	24(%ebx), %ecx # 498
	movl	$l.10769, %edx # 499
	movsd	0(%edx), %xmm0 # 499
	movsd	8(%eax), %xmm1 # 499
	comisd	%xmm1, %xmm0 # 499
	ja	jbe_else.11835
	movl	$0, %edx # 499
	jmp	jbe_cont.11836
jbe_else.11835:
	movl	$1, %edx # 499
jbe_cont.11836:
	cmpl	$0, %ecx # 14
	jne	je_else.11837
	jmp	je_cont.11838
je_else.11837:
	cmpl	$0, %edx # 14
	jne	je_else.11839
	movl	$1, %edx # 14
	jmp	je_cont.11840
je_else.11839:
	movl	$0, %edx # 14
je_cont.11840:
je_cont.11838:
	cmpl	$0, %edx # 499
	jne	je_else.11841
	movl	16(%ebx), %ecx # 499
	movsd	8(%ecx), %xmm0 # 91
	xorpd	min_caml_fnegd, %xmm0 # 499
	jmp	je_cont.11842
je_else.11841:
	movl	16(%ebx), %ecx # 499
	movsd	8(%ecx), %xmm0 # 91
je_cont.11842:
	movl	$min_caml_solver_w_vec, %ecx # 501
	movsd	8(%ecx), %xmm1 # 501
	subsd	%xmm1, %xmm0 # 501
	movsd	8(%eax), %xmm1 # 501
	divsd	%xmm1, %xmm0 # 501
	movl	16(%ebx), %ecx # 503
	movsd	16(%ecx), %xmm1 # 101
	movsd	16(%eax), %xmm2 # 503
	mulsd	%xmm0, %xmm2 # 503
	movl	$min_caml_solver_w_vec, %ecx # 503
	movsd	16(%ecx), %xmm3 # 503
	addsd	%xmm3, %xmm2 # 503
	movsd	%xmm0, 32(%ebp) # 503
	movsd	%xmm1, 40(%ebp) # 503
	movsd	%xmm2, %xmm0
	addl	$48, %ebp # 503
	call	min_caml_abs_float # 503
	subl	$48, %ebp # 503
	movsd	40(%ebp), %xmm1 # 503
	comisd	%xmm0, %xmm1 # 503
	ja	jbe_else.11843
	movl	$0, %eax # 507
	jmp	jbe_cont.11844
jbe_else.11843:
	movl	0(%ebp), %eax # 504
	movl	16(%eax), %ebx # 504
	movsd	0(%ebx), %xmm0 # 81
	movl	4(%ebp), %ebx # 504
	movsd	0(%ebx), %xmm1 # 504
	movsd	32(%ebp), %xmm2 # 504
	mulsd	%xmm2, %xmm1 # 504
	movl	$min_caml_solver_w_vec, %ecx # 504
	movsd	0(%ecx), %xmm3 # 504
	addsd	%xmm3, %xmm1 # 504
	movsd	%xmm0, 48(%ebp) # 504
	movsd	%xmm1, %xmm0
	addl	$56, %ebp # 504
	call	min_caml_abs_float # 504
	subl	$56, %ebp # 504
	movsd	48(%ebp), %xmm1 # 504
	comisd	%xmm0, %xmm1 # 504
	ja	jbe_else.11845
	movl	$0, %eax # 506
	jmp	jbe_cont.11846
jbe_else.11845:
	movl	$min_caml_solver_dist, %eax # 505
	movsd	32(%ebp), %xmm0 # 505
	movsd	%xmm0, 0(%eax) # 505
	movl	$1, %eax # 505
jbe_cont.11846:
jbe_cont.11844:
je_cont.11834:
	cmpl	$0, %eax # 510
	jne	je_else.11847
	movl	$l.10769, %eax # 514
	movsd	0(%eax), %xmm0 # 514
	movl	4(%ebp), %eax # 514
	movsd	16(%eax), %xmm1 # 514
	comisd	%xmm1, %xmm0 # 514
	jne	je_else.11848
	movl	$0, %eax # 514
	jmp	je_cont.11849
je_else.11848:
	movl	0(%ebp), %ebx # 515
	movl	24(%ebx), %ecx # 515
	movl	$l.10769, %edx # 516
	movsd	0(%edx), %xmm0 # 516
	movsd	16(%eax), %xmm1 # 516
	comisd	%xmm1, %xmm0 # 516
	ja	jbe_else.11850
	movl	$0, %edx # 516
	jmp	jbe_cont.11851
jbe_else.11850:
	movl	$1, %edx # 516
jbe_cont.11851:
	cmpl	$0, %ecx # 14
	jne	je_else.11852
	jmp	je_cont.11853
je_else.11852:
	cmpl	$0, %edx # 14
	jne	je_else.11854
	movl	$1, %edx # 14
	jmp	je_cont.11855
je_else.11854:
	movl	$0, %edx # 14
je_cont.11855:
je_cont.11853:
	cmpl	$0, %edx # 516
	jne	je_else.11856
	movl	16(%ebx), %ecx # 516
	movsd	16(%ecx), %xmm0 # 101
	xorpd	min_caml_fnegd, %xmm0 # 516
	jmp	je_cont.11857
je_else.11856:
	movl	16(%ebx), %ecx # 516
	movsd	16(%ecx), %xmm0 # 101
je_cont.11857:
	movl	$min_caml_solver_w_vec, %ecx # 518
	movsd	16(%ecx), %xmm1 # 518
	subsd	%xmm1, %xmm0 # 518
	movsd	16(%eax), %xmm1 # 518
	divsd	%xmm1, %xmm0 # 518
	movl	16(%ebx), %ecx # 520
	movsd	0(%ecx), %xmm1 # 81
	movsd	0(%eax), %xmm2 # 520
	mulsd	%xmm0, %xmm2 # 520
	movl	$min_caml_solver_w_vec, %ecx # 520
	movsd	0(%ecx), %xmm3 # 520
	addsd	%xmm3, %xmm2 # 520
	movsd	%xmm0, 56(%ebp) # 520
	movsd	%xmm1, 64(%ebp) # 520
	movsd	%xmm2, %xmm0
	addl	$72, %ebp # 520
	call	min_caml_abs_float # 520
	subl	$72, %ebp # 520
	movsd	64(%ebp), %xmm1 # 520
	comisd	%xmm0, %xmm1 # 520
	ja	jbe_else.11858
	movl	$0, %eax # 524
	jmp	jbe_cont.11859
jbe_else.11858:
	movl	0(%ebp), %eax # 521
	movl	16(%eax), %eax # 521
	movsd	8(%eax), %xmm0 # 91
	movl	4(%ebp), %eax # 521
	movsd	8(%eax), %xmm1 # 521
	movsd	56(%ebp), %xmm2 # 521
	mulsd	%xmm2, %xmm1 # 521
	movl	$min_caml_solver_w_vec, %eax # 521
	movsd	8(%eax), %xmm3 # 521
	addsd	%xmm3, %xmm1 # 521
	movsd	%xmm0, 72(%ebp) # 521
	movsd	%xmm1, %xmm0
	addl	$80, %ebp # 521
	call	min_caml_abs_float # 521
	subl	$80, %ebp # 521
	movsd	72(%ebp), %xmm1 # 521
	comisd	%xmm0, %xmm1 # 521
	ja	jbe_else.11860
	movl	$0, %eax # 523
	jmp	jbe_cont.11861
jbe_else.11860:
	movl	$min_caml_solver_dist, %eax # 522
	movsd	56(%ebp), %xmm0 # 522
	movsd	%xmm0, 0(%eax) # 522
	movl	$1, %eax # 522
jbe_cont.11861:
jbe_cont.11859:
je_cont.11849:
	cmpl	$0, %eax # 527
	jne	je_else.11862
	movl	$0, %eax # 527
	ret # 527
je_else.11862:
	movl	$3, %eax # 527
	ret # 527
je_else.11847:
	movl	$2, %eax # 510
	ret # 510
je_else.11832:
	movl	$1, %eax # 493
	ret # 493
solver2nd_rot_b.2060:
	movl	$min_caml_solver_w_vec, %ecx # 567
	movsd	16(%ecx), %xmm0 # 567
	movsd	8(%ebx), %xmm1 # 567
	mulsd	%xmm1, %xmm0 # 567
	movl	$min_caml_solver_w_vec, %ecx # 567
	movsd	8(%ecx), %xmm1 # 567
	movsd	16(%ebx), %xmm2 # 567
	mulsd	%xmm2, %xmm1 # 567
	addsd	%xmm1, %xmm0 # 567
	movl	36(%eax), %ecx # 567
	movsd	0(%ecx), %xmm1 # 191
	mulsd	%xmm1, %xmm0 # 567
	movl	$min_caml_solver_w_vec, %ecx # 568
	movsd	0(%ecx), %xmm1 # 568
	movsd	16(%ebx), %xmm2 # 568
	mulsd	%xmm2, %xmm1 # 568
	movl	$min_caml_solver_w_vec, %ecx # 568
	movsd	16(%ecx), %xmm2 # 568
	movsd	0(%ebx), %xmm3 # 568
	mulsd	%xmm3, %xmm2 # 568
	addsd	%xmm2, %xmm1 # 568
	movl	36(%eax), %ecx # 568
	movsd	8(%ecx), %xmm2 # 201
	mulsd	%xmm2, %xmm1 # 568
	addsd	%xmm1, %xmm0 # 567
	movl	$min_caml_solver_w_vec, %ecx # 569
	movsd	0(%ecx), %xmm1 # 569
	movsd	8(%ebx), %xmm2 # 569
	mulsd	%xmm2, %xmm1 # 569
	movl	$min_caml_solver_w_vec, %ecx # 569
	movsd	8(%ecx), %xmm2 # 569
	movsd	0(%ebx), %xmm3 # 569
	mulsd	%xmm3, %xmm2 # 569
	addsd	%xmm2, %xmm1 # 569
	movl	36(%eax), %eax # 569
	movsd	16(%eax), %xmm2 # 211
	mulsd	%xmm2, %xmm1 # 569
	addsd	%xmm1, %xmm0 # 567
	ret # 567
solver_second.2063:
	movsd	0(%ebx), %xmm0 # 546
	mulsd	%xmm0, %xmm0 # 546
	movl	16(%eax), %ecx # 546
	movsd	0(%ecx), %xmm1 # 81
	mulsd	%xmm1, %xmm0 # 546
	movsd	8(%ebx), %xmm1 # 547
	mulsd	%xmm1, %xmm1 # 547
	movl	16(%eax), %ecx # 547
	movsd	8(%ecx), %xmm2 # 91
	mulsd	%xmm2, %xmm1 # 547
	addsd	%xmm1, %xmm0 # 546
	movsd	16(%ebx), %xmm1 # 548
	mulsd	%xmm1, %xmm1 # 548
	movl	16(%eax), %ecx # 548
	movsd	16(%ecx), %xmm2 # 101
	mulsd	%xmm2, %xmm1 # 548
	addsd	%xmm1, %xmm0 # 546
	movl	12(%eax), %ecx # 575
	cmpl	$0, %ecx # 576
	jne	je_else.11863
	jmp	je_cont.11864
je_else.11863:
	movsd	8(%ebx), %xmm1 # 553
	movsd	16(%ebx), %xmm2 # 553
	mulsd	%xmm2, %xmm1 # 553
	movl	36(%eax), %ecx # 553
	movsd	0(%ecx), %xmm2 # 191
	mulsd	%xmm2, %xmm1 # 553
	movsd	0(%ebx), %xmm2 # 554
	movsd	16(%ebx), %xmm3 # 554
	mulsd	%xmm3, %xmm2 # 554
	movl	36(%eax), %ecx # 554
	movsd	8(%ecx), %xmm3 # 201
	mulsd	%xmm3, %xmm2 # 554
	addsd	%xmm2, %xmm1 # 553
	movsd	0(%ebx), %xmm2 # 555
	movsd	8(%ebx), %xmm3 # 555
	mulsd	%xmm3, %xmm2 # 555
	movl	36(%eax), %ecx # 555
	movsd	16(%ecx), %xmm3 # 211
	mulsd	%xmm3, %xmm2 # 555
	addsd	%xmm2, %xmm1 # 553
	addsd	%xmm1, %xmm0 # 576
je_cont.11864:
	movl	$l.10769, %ecx # 579
	movsd	0(%ecx), %xmm1 # 579
	comisd	%xmm0, %xmm1 # 579
	jne	je_else.11865
	movl	$0, %eax # 580
	ret # 580
je_else.11865:
	movl	$l.10807, %ecx # 583
	movsd	0(%ecx), %xmm1 # 583
	movl	$min_caml_solver_w_vec, %ecx # 560
	movsd	0(%ecx), %xmm2 # 560
	movsd	0(%ebx), %xmm3 # 560
	mulsd	%xmm3, %xmm2 # 560
	movl	16(%eax), %ecx # 560
	movsd	0(%ecx), %xmm3 # 81
	mulsd	%xmm3, %xmm2 # 560
	movl	$min_caml_solver_w_vec, %ecx # 561
	movsd	8(%ecx), %xmm3 # 561
	movsd	8(%ebx), %xmm4 # 561
	mulsd	%xmm4, %xmm3 # 561
	movl	16(%eax), %ecx # 561
	movsd	8(%ecx), %xmm4 # 91
	mulsd	%xmm4, %xmm3 # 561
	addsd	%xmm3, %xmm2 # 560
	movl	$min_caml_solver_w_vec, %ecx # 562
	movsd	16(%ecx), %xmm3 # 562
	movsd	16(%ebx), %xmm4 # 562
	mulsd	%xmm4, %xmm3 # 562
	movl	16(%eax), %ecx # 562
	movsd	16(%ecx), %xmm4 # 101
	mulsd	%xmm4, %xmm3 # 562
	addsd	%xmm3, %xmm2 # 560
	mulsd	%xmm2, %xmm1 # 583
	movl	12(%eax), %ecx # 585
	cmpl	$0, %ecx # 586
	jne	je_else.11866
	jmp	je_cont.11867
je_else.11866:
	movl	$min_caml_solver_w_vec, %ecx # 567
	movsd	16(%ecx), %xmm2 # 567
	movsd	8(%ebx), %xmm3 # 567
	mulsd	%xmm3, %xmm2 # 567
	movl	$min_caml_solver_w_vec, %ecx # 567
	movsd	8(%ecx), %xmm3 # 567
	movsd	16(%ebx), %xmm4 # 567
	mulsd	%xmm4, %xmm3 # 567
	addsd	%xmm3, %xmm2 # 567
	movl	36(%eax), %ecx # 567
	movsd	0(%ecx), %xmm3 # 191
	mulsd	%xmm3, %xmm2 # 567
	movl	$min_caml_solver_w_vec, %ecx # 568
	movsd	0(%ecx), %xmm3 # 568
	movsd	16(%ebx), %xmm4 # 568
	mulsd	%xmm4, %xmm3 # 568
	movl	$min_caml_solver_w_vec, %ecx # 568
	movsd	16(%ecx), %xmm4 # 568
	movsd	0(%ebx), %xmm5 # 568
	mulsd	%xmm5, %xmm4 # 568
	addsd	%xmm4, %xmm3 # 568
	movl	36(%eax), %ecx # 568
	movsd	8(%ecx), %xmm4 # 201
	mulsd	%xmm4, %xmm3 # 568
	addsd	%xmm3, %xmm2 # 567
	movl	$min_caml_solver_w_vec, %ecx # 569
	movsd	0(%ecx), %xmm3 # 569
	movsd	8(%ebx), %xmm4 # 569
	mulsd	%xmm4, %xmm3 # 569
	movl	$min_caml_solver_w_vec, %ecx # 569
	movsd	8(%ecx), %xmm4 # 569
	movsd	0(%ebx), %xmm5 # 569
	mulsd	%xmm5, %xmm4 # 569
	addsd	%xmm4, %xmm3 # 569
	movl	36(%eax), %ebx # 569
	movsd	16(%ebx), %xmm4 # 211
	mulsd	%xmm4, %xmm3 # 569
	addsd	%xmm3, %xmm2 # 567
	addsd	%xmm2, %xmm1 # 586
je_cont.11867:
	movl	$min_caml_solver_w_vec, %ebx # 589
	movsd	0(%ebx), %xmm2 # 546
	mulsd	%xmm2, %xmm2 # 546
	movl	16(%eax), %ecx # 546
	movsd	0(%ecx), %xmm3 # 81
	mulsd	%xmm3, %xmm2 # 546
	movsd	8(%ebx), %xmm3 # 547
	mulsd	%xmm3, %xmm3 # 547
	movl	16(%eax), %ecx # 547
	movsd	8(%ecx), %xmm4 # 91
	mulsd	%xmm4, %xmm3 # 547
	addsd	%xmm3, %xmm2 # 546
	movsd	16(%ebx), %xmm3 # 548
	mulsd	%xmm3, %xmm3 # 548
	movl	16(%eax), %ebx # 548
	movsd	16(%ebx), %xmm4 # 101
	mulsd	%xmm4, %xmm3 # 548
	addsd	%xmm3, %xmm2 # 546
	movl	12(%eax), %ebx # 590
	cmpl	$0, %ebx # 591
	jne	je_else.11868
	jmp	je_cont.11869
je_else.11868:
	movl	$min_caml_solver_w_vec, %ebx # 592
	movsd	8(%ebx), %xmm3 # 553
	movsd	16(%ebx), %xmm4 # 553
	mulsd	%xmm4, %xmm3 # 553
	movl	36(%eax), %ecx # 553
	movsd	0(%ecx), %xmm4 # 191
	mulsd	%xmm4, %xmm3 # 553
	movsd	0(%ebx), %xmm4 # 554
	movsd	16(%ebx), %xmm5 # 554
	mulsd	%xmm5, %xmm4 # 554
	movl	36(%eax), %ecx # 554
	movsd	8(%ecx), %xmm5 # 201
	mulsd	%xmm5, %xmm4 # 554
	addsd	%xmm4, %xmm3 # 553
	movsd	0(%ebx), %xmm4 # 555
	movsd	8(%ebx), %xmm5 # 555
	mulsd	%xmm5, %xmm4 # 555
	movl	36(%eax), %ebx # 555
	movsd	16(%ebx), %xmm5 # 211
	mulsd	%xmm5, %xmm4 # 555
	addsd	%xmm4, %xmm3 # 553
	addsd	%xmm3, %xmm2 # 592
je_cont.11869:
	movl	4(%eax), %ebx # 594
	cmpl	$3, %ebx # 595
	jne	je_else.11870
	movl	$l.10792, %ebx # 596
	movsd	0(%ebx), %xmm3 # 596
	subsd	%xmm3, %xmm2 # 596
	jmp	je_cont.11871
je_else.11870:
je_cont.11871:
	movl	$l.10820, %ebx # 599
	movsd	0(%ebx), %xmm3 # 599
	mulsd	%xmm0, %xmm3 # 599
	mulsd	%xmm2, %xmm3 # 599
	movsd	%xmm1, %xmm2 # 600
	mulsd	%xmm1, %xmm2 # 600
	subsd	%xmm3, %xmm2 # 600
	movl	$l.10769, %ebx # 602
	movsd	0(%ebx), %xmm3 # 602
	comisd	%xmm3, %xmm2 # 602
	ja	jbe_else.11872
	movl	$0, %eax # 609
	ret # 609
jbe_else.11872:
	movsd	%xmm0, 0(%ebp) # 605
	movsd	%xmm1, 8(%ebp) # 605
	movl	%eax, 16(%ebp) # 605
	movsd	%xmm2, %xmm0
	addl	$24, %ebp # 605
	call	min_caml_sqrt # 605
	subl	$24, %ebp # 605
	movl	16(%ebp), %eax # 606
	movl	24(%eax), %eax # 606
	cmpl	$0, %eax # 606
	jne	je_else.11873
	xorpd	min_caml_fnegd, %xmm0 # 606
	jmp	je_cont.11874
je_else.11873:
je_cont.11874:
	movl	$min_caml_solver_dist, %eax # 607
	movsd	8(%ebp), %xmm1 # 607
	subsd	%xmm1, %xmm0 # 607
	movl	$l.10807, %ebx # 607
	movsd	0(%ebx), %xmm1 # 607
	divsd	%xmm1, %xmm0 # 607
	movsd	0(%ebp), %xmm1 # 607
	divsd	%xmm1, %xmm0 # 607
	movsd	%xmm0, 0(%eax) # 607
	movl	$1, %eax # 607
	ret # 607
solver.2066:
	movl	$min_caml_objects, %edx # 616
	movl	(%edx,%eax,4), %eax # 616
	movl	$min_caml_solver_w_vec, %edx # 617
	movsd	0(%ecx), %xmm0 # 617
	movl	20(%eax), %esi # 617
	movsd	0(%esi), %xmm1 # 111
	subsd	%xmm1, %xmm0 # 617
	movsd	%xmm0, 0(%edx) # 617
	movl	$min_caml_solver_w_vec, %edx # 618
	movsd	8(%ecx), %xmm0 # 618
	movl	20(%eax), %esi # 618
	movsd	8(%esi), %xmm1 # 121
	subsd	%xmm1, %xmm0 # 618
	movsd	%xmm0, 8(%edx) # 618
	movl	$min_caml_solver_w_vec, %edx # 619
	movsd	16(%ecx), %xmm0 # 619
	movl	20(%eax), %ecx # 619
	movsd	16(%ecx), %xmm1 # 131
	subsd	%xmm1, %xmm0 # 619
	movsd	%xmm0, 16(%edx) # 619
	movl	4(%eax), %ecx # 620
	cmpl	$1, %ecx # 621
	jne	je_else.11875
	jmp	solver_rect.2045 # 621
je_else.11875:
	cmpl	$2, %ecx # 622
	jne	je_else.11876
	movsd	0(%ebx), %xmm0 # 535
	movl	16(%eax), %ecx # 535
	movsd	0(%ecx), %xmm1 # 81
	mulsd	%xmm1, %xmm0 # 535
	movsd	8(%ebx), %xmm1 # 535
	movl	16(%eax), %ecx # 535
	movsd	8(%ecx), %xmm2 # 91
	mulsd	%xmm2, %xmm1 # 535
	addsd	%xmm1, %xmm0 # 535
	movsd	16(%ebx), %xmm1 # 535
	movl	16(%eax), %ebx # 535
	movsd	16(%ebx), %xmm2 # 101
	mulsd	%xmm2, %xmm1 # 535
	addsd	%xmm1, %xmm0 # 535
	movl	$l.10769, %ebx # 536
	movsd	0(%ebx), %xmm1 # 536
	comisd	%xmm1, %xmm0 # 536
	ja	jbe_else.11877
	movl	$0, %eax # 539
	ret # 539
jbe_else.11877:
	movl	$min_caml_solver_w_vec, %ebx # 537
	movsd	0(%ebx), %xmm1 # 537
	movl	16(%eax), %ebx # 537
	movsd	0(%ebx), %xmm2 # 81
	mulsd	%xmm2, %xmm1 # 537
	movl	$min_caml_solver_w_vec, %ebx # 537
	movsd	8(%ebx), %xmm2 # 537
	movl	16(%eax), %ebx # 537
	movsd	8(%ebx), %xmm3 # 91
	mulsd	%xmm3, %xmm2 # 537
	addsd	%xmm2, %xmm1 # 537
	movl	$min_caml_solver_w_vec, %ebx # 537
	movsd	16(%ebx), %xmm2 # 537
	movl	16(%eax), %eax # 537
	movsd	16(%eax), %xmm3 # 101
	mulsd	%xmm3, %xmm2 # 537
	addsd	%xmm2, %xmm1 # 537
	divsd	%xmm0, %xmm1 # 537
	movl	$min_caml_solver_dist, %eax # 538
	xorpd	min_caml_fnegd, %xmm1 # 538
	movsd	%xmm1, 0(%eax) # 538
	movl	$1, %eax # 538
	ret # 538
je_else.11876:
	movsd	0(%ebx), %xmm0 # 546
	mulsd	%xmm0, %xmm0 # 546
	movl	16(%eax), %ecx # 546
	movsd	0(%ecx), %xmm1 # 81
	mulsd	%xmm1, %xmm0 # 546
	movsd	8(%ebx), %xmm1 # 547
	mulsd	%xmm1, %xmm1 # 547
	movl	16(%eax), %ecx # 547
	movsd	8(%ecx), %xmm2 # 91
	mulsd	%xmm2, %xmm1 # 547
	addsd	%xmm1, %xmm0 # 546
	movsd	16(%ebx), %xmm1 # 548
	mulsd	%xmm1, %xmm1 # 548
	movl	16(%eax), %ecx # 548
	movsd	16(%ecx), %xmm2 # 101
	mulsd	%xmm2, %xmm1 # 548
	addsd	%xmm1, %xmm0 # 546
	movl	12(%eax), %ecx # 575
	cmpl	$0, %ecx # 576
	jne	je_else.11878
	jmp	je_cont.11879
je_else.11878:
	movsd	8(%ebx), %xmm1 # 553
	movsd	16(%ebx), %xmm2 # 553
	mulsd	%xmm2, %xmm1 # 553
	movl	36(%eax), %ecx # 553
	movsd	0(%ecx), %xmm2 # 191
	mulsd	%xmm2, %xmm1 # 553
	movsd	0(%ebx), %xmm2 # 554
	movsd	16(%ebx), %xmm3 # 554
	mulsd	%xmm3, %xmm2 # 554
	movl	36(%eax), %ecx # 554
	movsd	8(%ecx), %xmm3 # 201
	mulsd	%xmm3, %xmm2 # 554
	addsd	%xmm2, %xmm1 # 553
	movsd	0(%ebx), %xmm2 # 555
	movsd	8(%ebx), %xmm3 # 555
	mulsd	%xmm3, %xmm2 # 555
	movl	36(%eax), %ecx # 555
	movsd	16(%ecx), %xmm3 # 211
	mulsd	%xmm3, %xmm2 # 555
	addsd	%xmm2, %xmm1 # 553
	addsd	%xmm1, %xmm0 # 576
je_cont.11879:
	movl	$l.10769, %ecx # 579
	movsd	0(%ecx), %xmm1 # 579
	comisd	%xmm0, %xmm1 # 579
	jne	je_else.11880
	movl	$0, %eax # 580
	ret # 580
je_else.11880:
	movl	$l.10807, %ecx # 583
	movsd	0(%ecx), %xmm1 # 583
	movl	$min_caml_solver_w_vec, %ecx # 560
	movsd	0(%ecx), %xmm2 # 560
	movsd	0(%ebx), %xmm3 # 560
	mulsd	%xmm3, %xmm2 # 560
	movl	16(%eax), %ecx # 560
	movsd	0(%ecx), %xmm3 # 81
	mulsd	%xmm3, %xmm2 # 560
	movl	$min_caml_solver_w_vec, %ecx # 561
	movsd	8(%ecx), %xmm3 # 561
	movsd	8(%ebx), %xmm4 # 561
	mulsd	%xmm4, %xmm3 # 561
	movl	16(%eax), %ecx # 561
	movsd	8(%ecx), %xmm4 # 91
	mulsd	%xmm4, %xmm3 # 561
	addsd	%xmm3, %xmm2 # 560
	movl	$min_caml_solver_w_vec, %ecx # 562
	movsd	16(%ecx), %xmm3 # 562
	movsd	16(%ebx), %xmm4 # 562
	mulsd	%xmm4, %xmm3 # 562
	movl	16(%eax), %ecx # 562
	movsd	16(%ecx), %xmm4 # 101
	mulsd	%xmm4, %xmm3 # 562
	addsd	%xmm3, %xmm2 # 560
	mulsd	%xmm2, %xmm1 # 583
	movl	12(%eax), %ecx # 585
	movsd	%xmm0, 0(%ebp) # 586
	movl	%eax, 8(%ebp) # 586
	cmpl	$0, %ecx # 586
	jne	je_else.11881
	jmp	je_cont.11882
je_else.11881:
	movsd	%xmm1, 16(%ebp) # 586
	addl	$24, %ebp # 586
	call	solver2nd_rot_b.2060 # 586
	subl	$24, %ebp # 586
	movsd	16(%ebp), %xmm1 # 586
	addsd	%xmm0, %xmm1 # 586
je_cont.11882:
	movl	$min_caml_solver_w_vec, %eax # 589
	movsd	0(%eax), %xmm0 # 546
	mulsd	%xmm0, %xmm0 # 546
	movl	8(%ebp), %ebx # 546
	movl	16(%ebx), %ecx # 546
	movsd	0(%ecx), %xmm2 # 81
	mulsd	%xmm2, %xmm0 # 546
	movsd	8(%eax), %xmm2 # 547
	mulsd	%xmm2, %xmm2 # 547
	movl	16(%ebx), %ecx # 547
	movsd	8(%ecx), %xmm3 # 91
	mulsd	%xmm3, %xmm2 # 547
	addsd	%xmm2, %xmm0 # 546
	movsd	16(%eax), %xmm2 # 548
	mulsd	%xmm2, %xmm2 # 548
	movl	16(%ebx), %eax # 548
	movsd	16(%eax), %xmm3 # 101
	mulsd	%xmm3, %xmm2 # 548
	addsd	%xmm2, %xmm0 # 546
	movl	12(%ebx), %eax # 590
	cmpl	$0, %eax # 591
	jne	je_else.11884
	jmp	je_cont.11885
je_else.11884:
	movl	$min_caml_solver_w_vec, %eax # 592
	movsd	8(%eax), %xmm2 # 553
	movsd	16(%eax), %xmm3 # 553
	mulsd	%xmm3, %xmm2 # 553
	movl	36(%ebx), %ecx # 553
	movsd	0(%ecx), %xmm3 # 191
	mulsd	%xmm3, %xmm2 # 553
	movsd	0(%eax), %xmm3 # 554
	movsd	16(%eax), %xmm4 # 554
	mulsd	%xmm4, %xmm3 # 554
	movl	36(%ebx), %ecx # 554
	movsd	8(%ecx), %xmm4 # 201
	mulsd	%xmm4, %xmm3 # 554
	addsd	%xmm3, %xmm2 # 553
	movsd	0(%eax), %xmm3 # 555
	movsd	8(%eax), %xmm4 # 555
	mulsd	%xmm4, %xmm3 # 555
	movl	36(%ebx), %eax # 555
	movsd	16(%eax), %xmm4 # 211
	mulsd	%xmm4, %xmm3 # 555
	addsd	%xmm3, %xmm2 # 553
	addsd	%xmm2, %xmm0 # 592
je_cont.11885:
	movl	4(%ebx), %eax # 594
	cmpl	$3, %eax # 595
	jne	je_else.11886
	movl	$l.10792, %eax # 596
	movsd	0(%eax), %xmm2 # 596
	subsd	%xmm2, %xmm0 # 596
	jmp	je_cont.11887
je_else.11886:
je_cont.11887:
	movl	$l.10820, %eax # 599
	movsd	0(%eax), %xmm2 # 599
	movsd	0(%ebp), %xmm3 # 599
	mulsd	%xmm3, %xmm2 # 599
	mulsd	%xmm0, %xmm2 # 599
	movsd	%xmm1, %xmm0 # 600
	mulsd	%xmm1, %xmm0 # 600
	subsd	%xmm2, %xmm0 # 600
	movl	$l.10769, %eax # 602
	movsd	0(%eax), %xmm2 # 602
	comisd	%xmm2, %xmm0 # 602
	ja	jbe_else.11888
	movl	$0, %eax # 609
	ret # 609
jbe_else.11888:
	movsd	%xmm1, 24(%ebp) # 605
	addl	$32, %ebp # 605
	call	min_caml_sqrt # 605
	subl	$32, %ebp # 605
	movl	8(%ebp), %eax # 606
	movl	24(%eax), %eax # 606
	cmpl	$0, %eax # 606
	jne	je_else.11889
	xorpd	min_caml_fnegd, %xmm0 # 606
	jmp	je_cont.11890
je_else.11889:
je_cont.11890:
	movl	$min_caml_solver_dist, %eax # 607
	movsd	24(%ebp), %xmm1 # 607
	subsd	%xmm1, %xmm0 # 607
	movl	$l.10807, %ebx # 607
	movsd	0(%ebx), %xmm1 # 607
	divsd	%xmm1, %xmm0 # 607
	movsd	0(%ebp), %xmm1 # 607
	divsd	%xmm1, %xmm0 # 607
	movsd	%xmm0, 0(%eax) # 607
	movl	$1, %eax # 607
	ret # 607
is_second_outside.2074:
	movl	$min_caml_isoutside_q, %ebx # 653
	movsd	0(%ebx), %xmm0 # 546
	mulsd	%xmm0, %xmm0 # 546
	movl	16(%eax), %ecx # 546
	movsd	0(%ecx), %xmm1 # 81
	mulsd	%xmm1, %xmm0 # 546
	movsd	8(%ebx), %xmm1 # 547
	mulsd	%xmm1, %xmm1 # 547
	movl	16(%eax), %ecx # 547
	movsd	8(%ecx), %xmm2 # 91
	mulsd	%xmm2, %xmm1 # 547
	addsd	%xmm1, %xmm0 # 546
	movsd	16(%ebx), %xmm1 # 548
	mulsd	%xmm1, %xmm1 # 548
	movl	16(%eax), %ebx # 548
	movsd	16(%ebx), %xmm2 # 101
	mulsd	%xmm2, %xmm1 # 548
	addsd	%xmm1, %xmm0 # 546
	movl	4(%eax), %ebx # 654
	cmpl	$3, %ebx # 654
	jne	je_else.11891
	movl	$l.10792, %ebx # 654
	movsd	0(%ebx), %xmm1 # 654
	subsd	%xmm1, %xmm0 # 654
	jmp	je_cont.11892
je_else.11891:
je_cont.11892:
	movl	12(%eax), %ebx # 655
	cmpl	$0, %ebx # 656
	jne	je_else.11893
	jmp	je_cont.11894
je_else.11893:
	movl	$min_caml_isoutside_q, %ebx # 657
	movsd	8(%ebx), %xmm1 # 553
	movsd	16(%ebx), %xmm2 # 553
	mulsd	%xmm2, %xmm1 # 553
	movl	36(%eax), %ecx # 553
	movsd	0(%ecx), %xmm2 # 191
	mulsd	%xmm2, %xmm1 # 553
	movsd	0(%ebx), %xmm2 # 554
	movsd	16(%ebx), %xmm3 # 554
	mulsd	%xmm3, %xmm2 # 554
	movl	36(%eax), %ecx # 554
	movsd	8(%ecx), %xmm3 # 201
	mulsd	%xmm3, %xmm2 # 554
	addsd	%xmm2, %xmm1 # 553
	movsd	0(%ebx), %xmm2 # 555
	movsd	8(%ebx), %xmm3 # 555
	mulsd	%xmm3, %xmm2 # 555
	movl	36(%eax), %ebx # 555
	movsd	16(%ebx), %xmm3 # 211
	mulsd	%xmm3, %xmm2 # 555
	addsd	%xmm2, %xmm1 # 553
	addsd	%xmm1, %xmm0 # 657
je_cont.11894:
	movl	$l.10769, %ebx # 661
	movsd	0(%ebx), %xmm1 # 661
	comisd	%xmm0, %xmm1 # 661
	ja	jbe_else.11895
	movl	$0, %ebx # 661
	jmp	jbe_cont.11896
jbe_else.11895:
	movl	$1, %ebx # 661
jbe_cont.11896:
	movl	24(%eax), %eax # 662
	cmpl	$0, %eax # 14
	jne	je_else.11897
	jmp	je_cont.11898
je_else.11897:
	cmpl	$0, %ebx # 14
	jne	je_else.11899
	movl	$1, %ebx # 14
	jmp	je_cont.11900
je_else.11899:
	movl	$0, %ebx # 14
je_cont.11900:
je_cont.11898:
	cmpl	$0, %ebx # 662
	jne	je_else.11901
	movl	$1, %eax # 662
	ret # 662
je_else.11901:
	movl	$0, %eax # 662
	ret # 662
is_outside.2076:
	movl	$min_caml_isoutside_q, %ebx # 667
	movl	$min_caml_chkinside_p, %ecx # 667
	movsd	0(%ecx), %xmm0 # 667
	movl	20(%eax), %ecx # 667
	movsd	0(%ecx), %xmm1 # 111
	subsd	%xmm1, %xmm0 # 667
	movsd	%xmm0, 0(%ebx) # 667
	movl	$min_caml_isoutside_q, %ebx # 668
	movl	$min_caml_chkinside_p, %ecx # 668
	movsd	8(%ecx), %xmm0 # 668
	movl	20(%eax), %ecx # 668
	movsd	8(%ecx), %xmm1 # 121
	subsd	%xmm1, %xmm0 # 668
	movsd	%xmm0, 8(%ebx) # 668
	movl	$min_caml_isoutside_q, %ebx # 669
	movl	$min_caml_chkinside_p, %ecx # 669
	movsd	16(%ecx), %xmm0 # 669
	movl	20(%eax), %ecx # 669
	movsd	16(%ecx), %xmm1 # 131
	subsd	%xmm1, %xmm0 # 669
	movsd	%xmm0, 16(%ebx) # 669
	movl	4(%eax), %ebx # 670
	cmpl	$1, %ebx # 671
	jne	je_else.11902
	movl	16(%eax), %ebx # 672
	movsd	0(%ebx), %xmm0 # 81
	movl	$min_caml_isoutside_q, %ebx # 633
	movsd	0(%ebx), %xmm1 # 633
	movl	%eax, 0(%ebp) # 633
	movsd	%xmm0, 8(%ebp) # 633
	movsd	%xmm1, %xmm0
	addl	$16, %ebp # 633
	call	min_caml_abs_float # 633
	subl	$16, %ebp # 633
	movsd	8(%ebp), %xmm1 # 633
	comisd	%xmm0, %xmm1 # 633
	ja	jbe_else.11904
	movl	$0, %eax # 637
	jmp	jbe_cont.11905
jbe_else.11904:
	movl	0(%ebp), %eax # 634
	movl	16(%eax), %ebx # 634
	movsd	8(%ebx), %xmm0 # 91
	movl	$min_caml_isoutside_q, %ebx # 634
	movsd	8(%ebx), %xmm1 # 634
	movsd	%xmm0, 16(%ebp) # 634
	movsd	%xmm1, %xmm0
	addl	$24, %ebp # 634
	call	min_caml_abs_float # 634
	subl	$24, %ebp # 634
	movsd	16(%ebp), %xmm1 # 634
	comisd	%xmm0, %xmm1 # 634
	ja	jbe_else.11906
	movl	$0, %eax # 636
	jmp	jbe_cont.11907
jbe_else.11906:
	movl	0(%ebp), %eax # 635
	movl	16(%eax), %ebx # 635
	movsd	16(%ebx), %xmm0 # 101
	movl	$min_caml_isoutside_q, %ebx # 635
	movsd	16(%ebx), %xmm1 # 635
	movsd	%xmm0, 24(%ebp) # 635
	movsd	%xmm1, %xmm0
	addl	$32, %ebp # 635
	call	min_caml_abs_float # 635
	subl	$32, %ebp # 635
	movsd	24(%ebp), %xmm1 # 635
	comisd	%xmm0, %xmm1 # 635
	ja	jbe_else.11908
	movl	$0, %eax # 635
	jmp	jbe_cont.11909
jbe_else.11908:
	movl	$1, %eax # 635
jbe_cont.11909:
jbe_cont.11907:
jbe_cont.11905:
	cmpl	$0, %eax # 632
	jne	je_else.11910
	movl	0(%ebp), %eax # 639
	movl	24(%eax), %eax # 639
	cmpl	$0, %eax # 639
	jne	je_else.11911
	movl	$1, %eax # 639
	ret # 639
je_else.11911:
	movl	$0, %eax # 639
	ret # 639
je_else.11910:
	movl	0(%ebp), %eax # 639
	movl	24(%eax), %eax # 639
	ret # 62
je_else.11902:
	cmpl	$2, %ebx # 673
	jne	je_else.11912
	movl	16(%eax), %ebx # 674
	movsd	0(%ebx), %xmm0 # 81
	movl	$min_caml_isoutside_q, %ebx # 644
	movsd	0(%ebx), %xmm1 # 644
	mulsd	%xmm1, %xmm0 # 644
	movl	16(%eax), %ebx # 645
	movsd	8(%ebx), %xmm1 # 91
	movl	$min_caml_isoutside_q, %ebx # 645
	movsd	8(%ebx), %xmm2 # 645
	mulsd	%xmm2, %xmm1 # 645
	addsd	%xmm1, %xmm0 # 644
	movl	16(%eax), %ebx # 646
	movsd	16(%ebx), %xmm1 # 101
	movl	$min_caml_isoutside_q, %ebx # 646
	movsd	16(%ebx), %xmm2 # 646
	mulsd	%xmm2, %xmm1 # 646
	addsd	%xmm1, %xmm0 # 644
	movl	$l.10769, %ebx # 647
	movsd	0(%ebx), %xmm1 # 647
	comisd	%xmm0, %xmm1 # 647
	ja	jbe_else.11913
	movl	$0, %ebx # 647
	jmp	jbe_cont.11914
jbe_else.11913:
	movl	$1, %ebx # 647
jbe_cont.11914:
	movl	24(%eax), %eax # 648
	cmpl	$0, %eax # 14
	jne	je_else.11915
	jmp	je_cont.11916
je_else.11915:
	cmpl	$0, %ebx # 14
	jne	je_else.11917
	movl	$1, %ebx # 14
	jmp	je_cont.11918
je_else.11917:
	movl	$0, %ebx # 14
je_cont.11918:
je_cont.11916:
	cmpl	$0, %ebx # 648
	jne	je_else.11919
	movl	$1, %eax # 648
	ret # 648
je_else.11919:
	movl	$0, %eax # 648
	ret # 648
je_else.11912:
	movl	$min_caml_isoutside_q, %ebx # 653
	movsd	0(%ebx), %xmm0 # 546
	mulsd	%xmm0, %xmm0 # 546
	movl	16(%eax), %ecx # 546
	movsd	0(%ecx), %xmm1 # 81
	mulsd	%xmm1, %xmm0 # 546
	movsd	8(%ebx), %xmm1 # 547
	mulsd	%xmm1, %xmm1 # 547
	movl	16(%eax), %ecx # 547
	movsd	8(%ecx), %xmm2 # 91
	mulsd	%xmm2, %xmm1 # 547
	addsd	%xmm1, %xmm0 # 546
	movsd	16(%ebx), %xmm1 # 548
	mulsd	%xmm1, %xmm1 # 548
	movl	16(%eax), %ebx # 548
	movsd	16(%ebx), %xmm2 # 101
	mulsd	%xmm2, %xmm1 # 548
	addsd	%xmm1, %xmm0 # 546
	movl	4(%eax), %ebx # 654
	cmpl	$3, %ebx # 654
	jne	je_else.11920
	movl	$l.10792, %ebx # 654
	movsd	0(%ebx), %xmm1 # 654
	subsd	%xmm1, %xmm0 # 654
	jmp	je_cont.11921
je_else.11920:
je_cont.11921:
	movl	12(%eax), %ebx # 655
	cmpl	$0, %ebx # 656
	jne	je_else.11922
	jmp	je_cont.11923
je_else.11922:
	movl	$min_caml_isoutside_q, %ebx # 657
	movsd	8(%ebx), %xmm1 # 553
	movsd	16(%ebx), %xmm2 # 553
	mulsd	%xmm2, %xmm1 # 553
	movl	36(%eax), %ecx # 553
	movsd	0(%ecx), %xmm2 # 191
	mulsd	%xmm2, %xmm1 # 553
	movsd	0(%ebx), %xmm2 # 554
	movsd	16(%ebx), %xmm3 # 554
	mulsd	%xmm3, %xmm2 # 554
	movl	36(%eax), %ecx # 554
	movsd	8(%ecx), %xmm3 # 201
	mulsd	%xmm3, %xmm2 # 554
	addsd	%xmm2, %xmm1 # 553
	movsd	0(%ebx), %xmm2 # 555
	movsd	8(%ebx), %xmm3 # 555
	mulsd	%xmm3, %xmm2 # 555
	movl	36(%eax), %ebx # 555
	movsd	16(%ebx), %xmm3 # 211
	mulsd	%xmm3, %xmm2 # 555
	addsd	%xmm2, %xmm1 # 553
	addsd	%xmm1, %xmm0 # 657
je_cont.11923:
	movl	$l.10769, %ebx # 661
	movsd	0(%ebx), %xmm1 # 661
	comisd	%xmm0, %xmm1 # 661
	ja	jbe_else.11924
	movl	$0, %ebx # 661
	jmp	jbe_cont.11925
jbe_else.11924:
	movl	$1, %ebx # 661
jbe_cont.11925:
	movl	24(%eax), %eax # 662
	cmpl	$0, %eax # 14
	jne	je_else.11926
	jmp	je_cont.11927
je_else.11926:
	cmpl	$0, %ebx # 14
	jne	je_else.11928
	movl	$1, %ebx # 14
	jmp	je_cont.11929
je_else.11928:
	movl	$0, %ebx # 14
je_cont.11929:
je_cont.11927:
	cmpl	$0, %ebx # 662
	jne	je_else.11930
	movl	$1, %eax # 662
	ret # 662
je_else.11930:
	movl	$0, %eax # 662
	ret # 662
check_all_inside.2078:
	movl	(%ebx,%eax,4), %ecx # 682
	cmpl	$-1, %ecx # 683
	jne	je_else.11931
	movl	$1, %eax # 683
	ret # 683
je_else.11931:
	movl	$min_caml_objects, %edx # 684
	movl	(%edx,%ecx,4), %ecx # 684
	movl	$min_caml_isoutside_q, %edx # 667
	movl	$min_caml_chkinside_p, %esi # 667
	movsd	0(%esi), %xmm0 # 667
	movl	20(%ecx), %esi # 667
	movsd	0(%esi), %xmm1 # 111
	subsd	%xmm1, %xmm0 # 667
	movsd	%xmm0, 0(%edx) # 667
	movl	$min_caml_isoutside_q, %edx # 668
	movl	$min_caml_chkinside_p, %esi # 668
	movsd	8(%esi), %xmm0 # 668
	movl	20(%ecx), %esi # 668
	movsd	8(%esi), %xmm1 # 121
	subsd	%xmm1, %xmm0 # 668
	movsd	%xmm0, 8(%edx) # 668
	movl	$min_caml_isoutside_q, %edx # 669
	movl	$min_caml_chkinside_p, %esi # 669
	movsd	16(%esi), %xmm0 # 669
	movl	20(%ecx), %esi # 669
	movsd	16(%esi), %xmm1 # 131
	subsd	%xmm1, %xmm0 # 669
	movsd	%xmm0, 16(%edx) # 669
	movl	4(%ecx), %edx # 670
	movl	%ebx, 0(%ebp) # 671
	movl	%eax, 4(%ebp) # 671
	cmpl	$1, %edx # 671
	jne	je_else.11932
	movl	16(%ecx), %edx # 672
	movsd	0(%edx), %xmm0 # 81
	movl	$min_caml_isoutside_q, %edx # 633
	movsd	0(%edx), %xmm1 # 633
	movl	%ecx, 8(%ebp) # 633
	movsd	%xmm0, 16(%ebp) # 633
	movsd	%xmm1, %xmm0
	addl	$24, %ebp # 633
	call	min_caml_abs_float # 633
	subl	$24, %ebp # 633
	movsd	16(%ebp), %xmm1 # 633
	comisd	%xmm0, %xmm1 # 633
	ja	jbe_else.11935
	movl	$0, %eax # 637
	jmp	jbe_cont.11936
jbe_else.11935:
	movl	8(%ebp), %eax # 634
	movl	16(%eax), %ebx # 634
	movsd	8(%ebx), %xmm0 # 91
	movl	$min_caml_isoutside_q, %ebx # 634
	movsd	8(%ebx), %xmm1 # 634
	movsd	%xmm0, 24(%ebp) # 634
	movsd	%xmm1, %xmm0
	addl	$32, %ebp # 634
	call	min_caml_abs_float # 634
	subl	$32, %ebp # 634
	movsd	24(%ebp), %xmm1 # 634
	comisd	%xmm0, %xmm1 # 634
	ja	jbe_else.11937
	movl	$0, %eax # 636
	jmp	jbe_cont.11938
jbe_else.11937:
	movl	8(%ebp), %eax # 635
	movl	16(%eax), %ebx # 635
	movsd	16(%ebx), %xmm0 # 101
	movl	$min_caml_isoutside_q, %ebx # 635
	movsd	16(%ebx), %xmm1 # 635
	movsd	%xmm0, 32(%ebp) # 635
	movsd	%xmm1, %xmm0
	addl	$40, %ebp # 635
	call	min_caml_abs_float # 635
	subl	$40, %ebp # 635
	movsd	32(%ebp), %xmm1 # 635
	comisd	%xmm0, %xmm1 # 635
	ja	jbe_else.11939
	movl	$0, %eax # 635
	jmp	jbe_cont.11940
jbe_else.11939:
	movl	$1, %eax # 635
jbe_cont.11940:
jbe_cont.11938:
jbe_cont.11936:
	cmpl	$0, %eax # 632
	jne	je_else.11941
	movl	8(%ebp), %eax # 639
	movl	24(%eax), %eax # 639
	cmpl	$0, %eax # 639
	jne	je_else.11943
	movl	$1, %eax # 639
	jmp	je_cont.11944
je_else.11943:
	movl	$0, %eax # 639
je_cont.11944:
	jmp	je_cont.11942
je_else.11941:
	movl	8(%ebp), %eax # 639
	movl	24(%eax), %eax # 639
je_cont.11942:
	jmp	je_cont.11933
je_else.11932:
	cmpl	$2, %edx # 673
	jne	je_else.11945
	movl	16(%ecx), %edx # 674
	movsd	0(%edx), %xmm0 # 81
	movl	$min_caml_isoutside_q, %edx # 644
	movsd	0(%edx), %xmm1 # 644
	mulsd	%xmm1, %xmm0 # 644
	movl	16(%ecx), %edx # 645
	movsd	8(%edx), %xmm1 # 91
	movl	$min_caml_isoutside_q, %edx # 645
	movsd	8(%edx), %xmm2 # 645
	mulsd	%xmm2, %xmm1 # 645
	addsd	%xmm1, %xmm0 # 644
	movl	16(%ecx), %edx # 646
	movsd	16(%edx), %xmm1 # 101
	movl	$min_caml_isoutside_q, %edx # 646
	movsd	16(%edx), %xmm2 # 646
	mulsd	%xmm2, %xmm1 # 646
	addsd	%xmm1, %xmm0 # 644
	movl	$l.10769, %edx # 647
	movsd	0(%edx), %xmm1 # 647
	comisd	%xmm0, %xmm1 # 647
	ja	jbe_else.11947
	movl	$0, %edx # 647
	jmp	jbe_cont.11948
jbe_else.11947:
	movl	$1, %edx # 647
jbe_cont.11948:
	movl	24(%ecx), %ecx # 648
	cmpl	$0, %ecx # 14
	jne	je_else.11949
	jmp	je_cont.11950
je_else.11949:
	cmpl	$0, %edx # 14
	jne	je_else.11951
	movl	$1, %edx # 14
	jmp	je_cont.11952
je_else.11951:
	movl	$0, %edx # 14
je_cont.11952:
je_cont.11950:
	cmpl	$0, %edx # 648
	jne	je_else.11953
	movl	$1, %eax # 648
	jmp	je_cont.11954
je_else.11953:
	movl	$0, %eax # 648
je_cont.11954:
	jmp	je_cont.11946
je_else.11945:
	movl	%ecx, %eax
	addl	$40, %ebp # 676
	call	is_second_outside.2074 # 676
	subl	$40, %ebp # 676
je_cont.11946:
je_cont.11933:
	cmpl	$0, %eax # 684
	jne	je_else.11955
	movl	4(%ebp), %eax # 685
	addl	$1, %eax # 685
	movl	0(%ebp), %ebx # 682
	movl	(%ebx,%eax,4), %ecx # 682
	cmpl	$-1, %ecx # 683
	jne	je_else.11956
	movl	$1, %eax # 683
	ret # 683
je_else.11956:
	movl	$min_caml_objects, %edx # 684
	movl	(%edx,%ecx,4), %ecx # 684
	movl	%eax, 40(%ebp) # 684
	movl	%ecx, %eax
	addl	$48, %ebp # 684
	call	is_outside.2076 # 684
	subl	$48, %ebp # 684
	cmpl	$0, %eax # 684
	jne	je_else.11957
	movl	40(%ebp), %eax # 685
	addl	$1, %eax # 685
	movl	0(%ebp), %ebx # 682
	movl	(%ebx,%eax,4), %ecx # 682
	cmpl	$-1, %ecx # 683
	jne	je_else.11958
	movl	$1, %eax # 683
	ret # 683
je_else.11958:
	movl	$min_caml_objects, %edx # 684
	movl	(%edx,%ecx,4), %ecx # 684
	movl	$min_caml_isoutside_q, %edx # 667
	movl	$min_caml_chkinside_p, %esi # 667
	movsd	0(%esi), %xmm0 # 667
	movl	20(%ecx), %esi # 667
	movsd	0(%esi), %xmm1 # 111
	subsd	%xmm1, %xmm0 # 667
	movsd	%xmm0, 0(%edx) # 667
	movl	$min_caml_isoutside_q, %edx # 668
	movl	$min_caml_chkinside_p, %esi # 668
	movsd	8(%esi), %xmm0 # 668
	movl	20(%ecx), %esi # 668
	movsd	8(%esi), %xmm1 # 121
	subsd	%xmm1, %xmm0 # 668
	movsd	%xmm0, 8(%edx) # 668
	movl	$min_caml_isoutside_q, %edx # 669
	movl	$min_caml_chkinside_p, %esi # 669
	movsd	16(%esi), %xmm0 # 669
	movl	20(%ecx), %esi # 669
	movsd	16(%esi), %xmm1 # 131
	subsd	%xmm1, %xmm0 # 669
	movsd	%xmm0, 16(%edx) # 669
	movl	4(%ecx), %edx # 670
	movl	%eax, 44(%ebp) # 671
	cmpl	$1, %edx # 671
	jne	je_else.11959
	movl	16(%ecx), %edx # 672
	movsd	0(%edx), %xmm0 # 81
	movl	$min_caml_isoutside_q, %edx # 633
	movsd	0(%edx), %xmm1 # 633
	movl	%ecx, 48(%ebp) # 633
	movsd	%xmm0, 56(%ebp) # 633
	movsd	%xmm1, %xmm0
	addl	$64, %ebp # 633
	call	min_caml_abs_float # 633
	subl	$64, %ebp # 633
	movsd	56(%ebp), %xmm1 # 633
	comisd	%xmm0, %xmm1 # 633
	ja	jbe_else.11962
	movl	$0, %eax # 637
	jmp	jbe_cont.11963
jbe_else.11962:
	movl	48(%ebp), %eax # 634
	movl	16(%eax), %ebx # 634
	movsd	8(%ebx), %xmm0 # 91
	movl	$min_caml_isoutside_q, %ebx # 634
	movsd	8(%ebx), %xmm1 # 634
	movsd	%xmm0, 64(%ebp) # 634
	movsd	%xmm1, %xmm0
	addl	$72, %ebp # 634
	call	min_caml_abs_float # 634
	subl	$72, %ebp # 634
	movsd	64(%ebp), %xmm1 # 634
	comisd	%xmm0, %xmm1 # 634
	ja	jbe_else.11964
	movl	$0, %eax # 636
	jmp	jbe_cont.11965
jbe_else.11964:
	movl	48(%ebp), %eax # 635
	movl	16(%eax), %ebx # 635
	movsd	16(%ebx), %xmm0 # 101
	movl	$min_caml_isoutside_q, %ebx # 635
	movsd	16(%ebx), %xmm1 # 635
	movsd	%xmm0, 72(%ebp) # 635
	movsd	%xmm1, %xmm0
	addl	$80, %ebp # 635
	call	min_caml_abs_float # 635
	subl	$80, %ebp # 635
	movsd	72(%ebp), %xmm1 # 635
	comisd	%xmm0, %xmm1 # 635
	ja	jbe_else.11966
	movl	$0, %eax # 635
	jmp	jbe_cont.11967
jbe_else.11966:
	movl	$1, %eax # 635
jbe_cont.11967:
jbe_cont.11965:
jbe_cont.11963:
	cmpl	$0, %eax # 632
	jne	je_else.11968
	movl	48(%ebp), %eax # 639
	movl	24(%eax), %eax # 639
	cmpl	$0, %eax # 639
	jne	je_else.11970
	movl	$1, %eax # 639
	jmp	je_cont.11971
je_else.11970:
	movl	$0, %eax # 639
je_cont.11971:
	jmp	je_cont.11969
je_else.11968:
	movl	48(%ebp), %eax # 639
	movl	24(%eax), %eax # 639
je_cont.11969:
	jmp	je_cont.11960
je_else.11959:
	cmpl	$2, %edx # 673
	jne	je_else.11972
	movl	16(%ecx), %edx # 674
	movsd	0(%edx), %xmm0 # 81
	movl	$min_caml_isoutside_q, %edx # 644
	movsd	0(%edx), %xmm1 # 644
	mulsd	%xmm1, %xmm0 # 644
	movl	16(%ecx), %edx # 645
	movsd	8(%edx), %xmm1 # 91
	movl	$min_caml_isoutside_q, %edx # 645
	movsd	8(%edx), %xmm2 # 645
	mulsd	%xmm2, %xmm1 # 645
	addsd	%xmm1, %xmm0 # 644
	movl	16(%ecx), %edx # 646
	movsd	16(%edx), %xmm1 # 101
	movl	$min_caml_isoutside_q, %edx # 646
	movsd	16(%edx), %xmm2 # 646
	mulsd	%xmm2, %xmm1 # 646
	addsd	%xmm1, %xmm0 # 644
	movl	$l.10769, %edx # 647
	movsd	0(%edx), %xmm1 # 647
	comisd	%xmm0, %xmm1 # 647
	ja	jbe_else.11974
	movl	$0, %edx # 647
	jmp	jbe_cont.11975
jbe_else.11974:
	movl	$1, %edx # 647
jbe_cont.11975:
	movl	24(%ecx), %ecx # 648
	cmpl	$0, %ecx # 14
	jne	je_else.11976
	jmp	je_cont.11977
je_else.11976:
	cmpl	$0, %edx # 14
	jne	je_else.11978
	movl	$1, %edx # 14
	jmp	je_cont.11979
je_else.11978:
	movl	$0, %edx # 14
je_cont.11979:
je_cont.11977:
	cmpl	$0, %edx # 648
	jne	je_else.11980
	movl	$1, %eax # 648
	jmp	je_cont.11981
je_else.11980:
	movl	$0, %eax # 648
je_cont.11981:
	jmp	je_cont.11973
je_else.11972:
	movl	%ecx, %eax
	addl	$80, %ebp # 676
	call	is_second_outside.2074 # 676
	subl	$80, %ebp # 676
je_cont.11973:
je_cont.11960:
	cmpl	$0, %eax # 684
	jne	je_else.11982
	movl	44(%ebp), %eax # 685
	addl	$1, %eax # 685
	movl	0(%ebp), %ebx # 682
	movl	(%ebx,%eax,4), %ecx # 682
	cmpl	$-1, %ecx # 683
	jne	je_else.11983
	movl	$1, %eax # 683
	ret # 683
je_else.11983:
	movl	$min_caml_objects, %edx # 684
	movl	(%edx,%ecx,4), %ecx # 684
	movl	%eax, 80(%ebp) # 684
	movl	%ecx, %eax
	addl	$88, %ebp # 684
	call	is_outside.2076 # 684
	subl	$88, %ebp # 684
	cmpl	$0, %eax # 684
	jne	je_else.11984
	movl	80(%ebp), %eax # 685
	addl	$1, %eax # 685
	movl	0(%ebp), %ebx # 685
	jmp	check_all_inside.2078 # 685
je_else.11984:
	movl	$0, %eax # 684
	ret # 684
je_else.11982:
	movl	$0, %eax # 684
	ret # 684
je_else.11957:
	movl	$0, %eax # 684
	ret # 684
je_else.11955:
	movl	$0, %eax # 684
	ret # 684
shadow_check_and_group.2081:
	movl	(%ebx,%eax,4), %edx # 697
	cmpl	$-1, %edx # 697
	jne	je_else.11985
	movl	$0, %eax # 698
	ret # 698
je_else.11985:
	movl	(%ebx,%eax,4), %edx # 700
	movl	$min_caml_light, %esi # 706
	movl	$min_caml_objects, %edi # 616
	movl	(%edi,%edx,4), %edi # 616
	movl	%ebx, 0(%ebp) # 617
	movl	$min_caml_solver_w_vec, %ebx # 617
	movsd	0(%ecx), %xmm0 # 617
	movl	%eax, 4(%ebp) # 617
	movl	20(%edi), %eax # 617
	movsd	0(%eax), %xmm1 # 111
	subsd	%xmm1, %xmm0 # 617
	movsd	%xmm0, 0(%ebx) # 617
	movl	$min_caml_solver_w_vec, %eax # 618
	movsd	8(%ecx), %xmm0 # 618
	movl	20(%edi), %ebx # 618
	movsd	8(%ebx), %xmm1 # 121
	subsd	%xmm1, %xmm0 # 618
	movsd	%xmm0, 8(%eax) # 618
	movl	$min_caml_solver_w_vec, %eax # 619
	movsd	16(%ecx), %xmm0 # 619
	movl	20(%edi), %ebx # 619
	movsd	16(%ebx), %xmm1 # 131
	subsd	%xmm1, %xmm0 # 619
	movsd	%xmm0, 16(%eax) # 619
	movl	4(%edi), %eax # 620
	movl	%ecx, 8(%ebp) # 621
	movl	%edx, 12(%ebp) # 621
	cmpl	$1, %eax # 621
	jne	je_else.11986
	movl	%esi, %ebx
	movl	%edi, %eax
	addl	$16, %ebp # 621
	call	solver_rect.2045 # 621
	subl	$16, %ebp # 621
	jmp	je_cont.11987
je_else.11986:
	cmpl	$2, %eax # 622
	jne	je_else.11988
	movsd	0(%esi), %xmm0 # 535
	movl	16(%edi), %eax # 535
	movsd	0(%eax), %xmm1 # 81
	mulsd	%xmm1, %xmm0 # 535
	movsd	8(%esi), %xmm1 # 535
	movl	16(%edi), %eax # 535
	movsd	8(%eax), %xmm2 # 91
	mulsd	%xmm2, %xmm1 # 535
	addsd	%xmm1, %xmm0 # 535
	movsd	16(%esi), %xmm1 # 535
	movl	16(%edi), %eax # 535
	movsd	16(%eax), %xmm2 # 101
	mulsd	%xmm2, %xmm1 # 535
	addsd	%xmm1, %xmm0 # 535
	movl	$l.10769, %eax # 536
	movsd	0(%eax), %xmm1 # 536
	comisd	%xmm1, %xmm0 # 536
	ja	jbe_else.11990
	movl	$0, %eax # 539
	jmp	jbe_cont.11991
jbe_else.11990:
	movl	$min_caml_solver_w_vec, %eax # 537
	movsd	0(%eax), %xmm1 # 537
	movl	16(%edi), %eax # 537
	movsd	0(%eax), %xmm2 # 81
	mulsd	%xmm2, %xmm1 # 537
	movl	$min_caml_solver_w_vec, %eax # 537
	movsd	8(%eax), %xmm2 # 537
	movl	16(%edi), %eax # 537
	movsd	8(%eax), %xmm3 # 91
	mulsd	%xmm3, %xmm2 # 537
	addsd	%xmm2, %xmm1 # 537
	movl	$min_caml_solver_w_vec, %eax # 537
	movsd	16(%eax), %xmm2 # 537
	movl	16(%edi), %eax # 537
	movsd	16(%eax), %xmm3 # 101
	mulsd	%xmm3, %xmm2 # 537
	addsd	%xmm2, %xmm1 # 537
	divsd	%xmm0, %xmm1 # 537
	movl	$min_caml_solver_dist, %eax # 538
	xorpd	min_caml_fnegd, %xmm1 # 538
	movsd	%xmm1, 0(%eax) # 538
	movl	$1, %eax # 538
jbe_cont.11991:
	jmp	je_cont.11989
je_else.11988:
	movl	%esi, %ebx
	movl	%edi, %eax
	addl	$16, %ebp # 623
	call	solver_second.2063 # 623
	subl	$16, %ebp # 623
je_cont.11989:
je_cont.11987:
	movl	$min_caml_solver_dist, %ebx # 707
	movsd	0(%ebx), %xmm0 # 707
	cmpl	$0, %eax # 708
	jne	je_else.11992
	movl	$0, %eax # 708
	jmp	je_cont.11993
je_else.11992:
	movl	$l.10839, %eax # 708
	movsd	0(%eax), %xmm1 # 708
	comisd	%xmm0, %xmm1 # 708
	ja	jbe_else.11994
	movl	$0, %eax # 708
	jmp	jbe_cont.11995
jbe_else.11994:
	movl	$1, %eax # 708
jbe_cont.11995:
je_cont.11993:
	cmpl	$0, %eax # 708
	jne	je_else.11996
	movl	$min_caml_objects, %eax # 724
	movl	12(%ebp), %ebx # 724
	movl	(%eax,%ebx,4), %eax # 724
	movl	24(%eax), %eax # 724
	cmpl	$0, %eax # 724
	jne	je_else.11997
	movl	$0, %eax # 726
	ret # 726
je_else.11997:
	movl	4(%ebp), %eax # 725
	addl	$1, %eax # 725
	movl	0(%ebp), %ebx # 725
	movl	8(%ebp), %ecx # 725
	jmp	shadow_check_and_group.2081 # 725
je_else.11996:
	movl	$l.10841, %eax # 712
	movsd	0(%eax), %xmm1 # 712
	addsd	%xmm1, %xmm0 # 712
	movl	$min_caml_chkinside_p, %eax # 713
	movl	$min_caml_light, %ebx # 713
	movsd	0(%ebx), %xmm1 # 713
	mulsd	%xmm0, %xmm1 # 713
	movl	8(%ebp), %ecx # 713
	movsd	0(%ecx), %xmm2 # 713
	addsd	%xmm2, %xmm1 # 713
	movsd	%xmm1, 0(%eax) # 713
	movl	$min_caml_chkinside_p, %eax # 714
	movl	$min_caml_light, %ebx # 714
	movsd	8(%ebx), %xmm1 # 714
	mulsd	%xmm0, %xmm1 # 714
	movsd	8(%ecx), %xmm2 # 714
	addsd	%xmm2, %xmm1 # 714
	movsd	%xmm1, 8(%eax) # 714
	movl	$min_caml_chkinside_p, %eax # 715
	movl	$min_caml_light, %ebx # 715
	movsd	16(%ebx), %xmm1 # 715
	mulsd	%xmm0, %xmm1 # 715
	movsd	16(%ecx), %xmm0 # 715
	addsd	%xmm0, %xmm1 # 715
	movsd	%xmm1, 16(%eax) # 715
	movl	0(%ebp), %ebx # 682
	movl	0(%ebx), %eax # 682
	cmpl	$-1, %eax # 683
	jne	je_else.11998
	movl	$1, %eax # 683
	jmp	je_cont.11999
je_else.11998:
	movl	$min_caml_objects, %edx # 684
	movl	(%edx,%eax,4), %eax # 684
	addl	$16, %ebp # 684
	call	is_outside.2076 # 684
	subl	$16, %ebp # 684
	cmpl	$0, %eax # 684
	jne	je_else.12000
	movl	0(%ebp), %ebx # 682
	movl	4(%ebx), %eax # 682
	cmpl	$-1, %eax # 683
	jne	je_else.12002
	movl	$1, %eax # 683
	jmp	je_cont.12003
je_else.12002:
	movl	$min_caml_objects, %ecx # 684
	movl	(%ecx,%eax,4), %eax # 684
	movl	$min_caml_isoutside_q, %ecx # 667
	movl	$min_caml_chkinside_p, %edx # 667
	movsd	0(%edx), %xmm0 # 667
	movl	20(%eax), %edx # 667
	movsd	0(%edx), %xmm1 # 111
	subsd	%xmm1, %xmm0 # 667
	movsd	%xmm0, 0(%ecx) # 667
	movl	$min_caml_isoutside_q, %ecx # 668
	movl	$min_caml_chkinside_p, %edx # 668
	movsd	8(%edx), %xmm0 # 668
	movl	20(%eax), %edx # 668
	movsd	8(%edx), %xmm1 # 121
	subsd	%xmm1, %xmm0 # 668
	movsd	%xmm0, 8(%ecx) # 668
	movl	$min_caml_isoutside_q, %ecx # 669
	movl	$min_caml_chkinside_p, %edx # 669
	movsd	16(%edx), %xmm0 # 669
	movl	20(%eax), %edx # 669
	movsd	16(%edx), %xmm1 # 131
	subsd	%xmm1, %xmm0 # 669
	movsd	%xmm0, 16(%ecx) # 669
	movl	4(%eax), %ecx # 670
	cmpl	$1, %ecx # 671
	jne	je_else.12004
	movl	16(%eax), %ecx # 672
	movsd	0(%ecx), %xmm0 # 81
	movl	$min_caml_isoutside_q, %ecx # 633
	movsd	0(%ecx), %xmm1 # 633
	movl	%eax, 16(%ebp) # 633
	movsd	%xmm0, 24(%ebp) # 633
	movsd	%xmm1, %xmm0
	addl	$32, %ebp # 633
	call	min_caml_abs_float # 633
	subl	$32, %ebp # 633
	movsd	24(%ebp), %xmm1 # 633
	comisd	%xmm0, %xmm1 # 633
	ja	jbe_else.12007
	movl	$0, %eax # 637
	jmp	jbe_cont.12008
jbe_else.12007:
	movl	16(%ebp), %eax # 634
	movl	16(%eax), %ebx # 634
	movsd	8(%ebx), %xmm0 # 91
	movl	$min_caml_isoutside_q, %ebx # 634
	movsd	8(%ebx), %xmm1 # 634
	movsd	%xmm0, 32(%ebp) # 634
	movsd	%xmm1, %xmm0
	addl	$40, %ebp # 634
	call	min_caml_abs_float # 634
	subl	$40, %ebp # 634
	movsd	32(%ebp), %xmm1 # 634
	comisd	%xmm0, %xmm1 # 634
	ja	jbe_else.12009
	movl	$0, %eax # 636
	jmp	jbe_cont.12010
jbe_else.12009:
	movl	16(%ebp), %eax # 635
	movl	16(%eax), %ebx # 635
	movsd	16(%ebx), %xmm0 # 101
	movl	$min_caml_isoutside_q, %ebx # 635
	movsd	16(%ebx), %xmm1 # 635
	movsd	%xmm0, 40(%ebp) # 635
	movsd	%xmm1, %xmm0
	addl	$48, %ebp # 635
	call	min_caml_abs_float # 635
	subl	$48, %ebp # 635
	movsd	40(%ebp), %xmm1 # 635
	comisd	%xmm0, %xmm1 # 635
	ja	jbe_else.12011
	movl	$0, %eax # 635
	jmp	jbe_cont.12012
jbe_else.12011:
	movl	$1, %eax # 635
jbe_cont.12012:
jbe_cont.12010:
jbe_cont.12008:
	cmpl	$0, %eax # 632
	jne	je_else.12013
	movl	16(%ebp), %eax # 639
	movl	24(%eax), %eax # 639
	cmpl	$0, %eax # 639
	jne	je_else.12015
	movl	$1, %eax # 639
	jmp	je_cont.12016
je_else.12015:
	movl	$0, %eax # 639
je_cont.12016:
	jmp	je_cont.12014
je_else.12013:
	movl	16(%ebp), %eax # 639
	movl	24(%eax), %eax # 639
je_cont.12014:
	jmp	je_cont.12005
je_else.12004:
	cmpl	$2, %ecx # 673
	jne	je_else.12017
	movl	16(%eax), %ecx # 674
	movsd	0(%ecx), %xmm0 # 81
	movl	$min_caml_isoutside_q, %ecx # 644
	movsd	0(%ecx), %xmm1 # 644
	mulsd	%xmm1, %xmm0 # 644
	movl	16(%eax), %ecx # 645
	movsd	8(%ecx), %xmm1 # 91
	movl	$min_caml_isoutside_q, %ecx # 645
	movsd	8(%ecx), %xmm2 # 645
	mulsd	%xmm2, %xmm1 # 645
	addsd	%xmm1, %xmm0 # 644
	movl	16(%eax), %ecx # 646
	movsd	16(%ecx), %xmm1 # 101
	movl	$min_caml_isoutside_q, %ecx # 646
	movsd	16(%ecx), %xmm2 # 646
	mulsd	%xmm2, %xmm1 # 646
	addsd	%xmm1, %xmm0 # 644
	movl	$l.10769, %ecx # 647
	movsd	0(%ecx), %xmm1 # 647
	comisd	%xmm0, %xmm1 # 647
	ja	jbe_else.12019
	movl	$0, %ecx # 647
	jmp	jbe_cont.12020
jbe_else.12019:
	movl	$1, %ecx # 647
jbe_cont.12020:
	movl	24(%eax), %eax # 648
	cmpl	$0, %eax # 14
	jne	je_else.12021
	jmp	je_cont.12022
je_else.12021:
	cmpl	$0, %ecx # 14
	jne	je_else.12023
	movl	$1, %ecx # 14
	jmp	je_cont.12024
je_else.12023:
	movl	$0, %ecx # 14
je_cont.12024:
je_cont.12022:
	cmpl	$0, %ecx # 648
	jne	je_else.12025
	movl	$1, %eax # 648
	jmp	je_cont.12026
je_else.12025:
	movl	$0, %eax # 648
je_cont.12026:
	jmp	je_cont.12018
je_else.12017:
	addl	$48, %ebp # 676
	call	is_second_outside.2074 # 676
	subl	$48, %ebp # 676
je_cont.12018:
je_cont.12005:
	cmpl	$0, %eax # 684
	jne	je_else.12027
	movl	0(%ebp), %ebx # 682
	movl	8(%ebx), %eax # 682
	cmpl	$-1, %eax # 683
	jne	je_else.12029
	movl	$1, %eax # 683
	jmp	je_cont.12030
je_else.12029:
	movl	$min_caml_objects, %ecx # 684
	movl	(%ecx,%eax,4), %eax # 684
	addl	$48, %ebp # 684
	call	is_outside.2076 # 684
	subl	$48, %ebp # 684
	cmpl	$0, %eax # 684
	jne	je_else.12031
	movl	$3, %eax # 685
	movl	0(%ebp), %ebx # 685
	addl	$48, %ebp # 685
	call	check_all_inside.2078 # 685
	subl	$48, %ebp # 685
	jmp	je_cont.12032
je_else.12031:
	movl	$0, %eax # 684
je_cont.12032:
je_cont.12030:
	jmp	je_cont.12028
je_else.12027:
	movl	$0, %eax # 684
je_cont.12028:
je_cont.12003:
	jmp	je_cont.12001
je_else.12000:
	movl	$0, %eax # 684
je_cont.12001:
je_cont.11999:
	cmpl	$0, %eax # 716
	jne	je_else.12033
	movl	4(%ebp), %eax # 718
	addl	$1, %eax # 718
	movl	0(%ebp), %ebx # 718
	movl	8(%ebp), %ecx # 718
	jmp	shadow_check_and_group.2081 # 718
je_else.12033:
	movl	$1, %eax # 717
	ret # 717
shadow_check_one_or_group.2085:
	movl	(%ebx,%eax,4), %edx # 732
	cmpl	$-1, %edx # 733
	jne	je_else.12034
	movl	$0, %eax # 734
	ret # 734
je_else.12034:
	movl	$min_caml_and_net, %esi # 736
	movl	(%esi,%edx,4), %edx # 736
	movl	$0, %esi # 737
	movl	%ecx, 0(%ebp) # 737
	movl	%ebx, 4(%ebp) # 737
	movl	%eax, 8(%ebp) # 737
	movl	%edx, %ebx
	movl	%esi, %eax
	addl	$16, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$16, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12035
	movl	8(%ebp), %eax # 739
	addl	$1, %eax # 739
	movl	4(%ebp), %ebx # 732
	movl	(%ebx,%eax,4), %ecx # 732
	cmpl	$-1, %ecx # 733
	jne	je_else.12036
	movl	$0, %eax # 734
	ret # 734
je_else.12036:
	movl	$min_caml_and_net, %edx # 736
	movl	(%edx,%ecx,4), %ecx # 736
	movl	$0, %edx # 737
	movl	0(%ebp), %esi # 737
	movl	%eax, 12(%ebp) # 737
	movl	%ecx, %ebx
	movl	%edx, %eax
	movl	%esi, %ecx
	addl	$16, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$16, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12037
	movl	12(%ebp), %eax # 739
	addl	$1, %eax # 739
	movl	4(%ebp), %ebx # 732
	movl	(%ebx,%eax,4), %ecx # 732
	cmpl	$-1, %ecx # 733
	jne	je_else.12038
	movl	$0, %eax # 734
	ret # 734
je_else.12038:
	movl	$min_caml_and_net, %edx # 736
	movl	(%edx,%ecx,4), %ecx # 736
	movl	$0, %edx # 737
	movl	0(%ebp), %esi # 737
	movl	%eax, 16(%ebp) # 737
	movl	%ecx, %ebx
	movl	%edx, %eax
	movl	%esi, %ecx
	addl	$24, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$24, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12039
	movl	16(%ebp), %eax # 739
	addl	$1, %eax # 739
	movl	4(%ebp), %ebx # 732
	movl	(%ebx,%eax,4), %ecx # 732
	cmpl	$-1, %ecx # 733
	jne	je_else.12040
	movl	$0, %eax # 734
	ret # 734
je_else.12040:
	movl	$min_caml_and_net, %edx # 736
	movl	(%edx,%ecx,4), %ecx # 736
	movl	$0, %edx # 737
	movl	0(%ebp), %esi # 737
	movl	%eax, 20(%ebp) # 737
	movl	%ecx, %ebx
	movl	%edx, %eax
	movl	%esi, %ecx
	addl	$24, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$24, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12041
	movl	20(%ebp), %eax # 739
	addl	$1, %eax # 739
	movl	4(%ebp), %ebx # 732
	movl	(%ebx,%eax,4), %ecx # 732
	cmpl	$-1, %ecx # 733
	jne	je_else.12042
	movl	$0, %eax # 734
	ret # 734
je_else.12042:
	movl	$min_caml_and_net, %edx # 736
	movl	(%edx,%ecx,4), %ecx # 736
	movl	$0, %edx # 737
	movl	0(%ebp), %esi # 737
	movl	%eax, 24(%ebp) # 737
	movl	%ecx, %ebx
	movl	%edx, %eax
	movl	%esi, %ecx
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12043
	movl	24(%ebp), %eax # 739
	addl	$1, %eax # 739
	movl	4(%ebp), %ebx # 732
	movl	(%ebx,%eax,4), %ecx # 732
	cmpl	$-1, %ecx # 733
	jne	je_else.12044
	movl	$0, %eax # 734
	ret # 734
je_else.12044:
	movl	$min_caml_and_net, %edx # 736
	movl	(%edx,%ecx,4), %ecx # 736
	movl	$0, %edx # 737
	movl	0(%ebp), %esi # 737
	movl	%eax, 28(%ebp) # 737
	movl	%ecx, %ebx
	movl	%edx, %eax
	movl	%esi, %ecx
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12045
	movl	28(%ebp), %eax # 739
	addl	$1, %eax # 739
	movl	4(%ebp), %ebx # 732
	movl	(%ebx,%eax,4), %ecx # 732
	cmpl	$-1, %ecx # 733
	jne	je_else.12046
	movl	$0, %eax # 734
	ret # 734
je_else.12046:
	movl	$min_caml_and_net, %edx # 736
	movl	(%edx,%ecx,4), %ecx # 736
	movl	$0, %edx # 737
	movl	0(%ebp), %esi # 737
	movl	%eax, 32(%ebp) # 737
	movl	%ecx, %ebx
	movl	%edx, %eax
	movl	%esi, %ecx
	addl	$40, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$40, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12047
	movl	32(%ebp), %eax # 739
	addl	$1, %eax # 739
	movl	4(%ebp), %ebx # 732
	movl	(%ebx,%eax,4), %ecx # 732
	cmpl	$-1, %ecx # 733
	jne	je_else.12048
	movl	$0, %eax # 734
	ret # 734
je_else.12048:
	movl	$min_caml_and_net, %edx # 736
	movl	(%edx,%ecx,4), %ecx # 736
	movl	$0, %edx # 737
	movl	0(%ebp), %esi # 737
	movl	%eax, 36(%ebp) # 737
	movl	%ecx, %ebx
	movl	%edx, %eax
	movl	%esi, %ecx
	addl	$40, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$40, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12049
	movl	36(%ebp), %eax # 739
	addl	$1, %eax # 739
	movl	4(%ebp), %ebx # 739
	movl	0(%ebp), %ecx # 739
	jmp	shadow_check_one_or_group.2085 # 739
je_else.12049:
	movl	$1, %eax # 738
	ret # 738
je_else.12047:
	movl	$1, %eax # 738
	ret # 738
je_else.12045:
	movl	$1, %eax # 738
	ret # 738
je_else.12043:
	movl	$1, %eax # 738
	ret # 738
je_else.12041:
	movl	$1, %eax # 738
	ret # 738
je_else.12039:
	movl	$1, %eax # 738
	ret # 738
je_else.12037:
	movl	$1, %eax # 738
	ret # 738
je_else.12035:
	movl	$1, %eax # 738
	ret # 738
shadow_check_one_or_matrix.2089:
	movl	(%ebx,%eax,4), %edx # 746
	movl	0(%edx), %esi # 747
	cmpl	$-1, %esi # 748
	jne	je_else.12050
	movl	$0, %eax # 748
	ret # 748
je_else.12050:
	cmpl	$99, %esi # 750
	jne	je_else.12051
	movl	4(%edx), %esi # 732
	movl	%ecx, 0(%ebp) # 733
	movl	%ebx, 4(%ebp) # 733
	movl	%eax, 8(%ebp) # 733
	cmpl	$-1, %esi # 733
	jne	je_else.12052
	movl	$0, %eax # 734
	jmp	je_cont.12053
je_else.12052:
	movl	$min_caml_and_net, %edi # 736
	movl	(%edi,%esi,4), %esi # 736
	movl	$0, %edi # 737
	movl	%edx, 12(%ebp) # 737
	movl	%esi, %ebx
	movl	%edi, %eax
	addl	$16, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$16, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12054
	movl	12(%ebp), %eax # 732
	movl	8(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12056
	movl	$0, %eax # 734
	jmp	je_cont.12057
je_else.12056:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$16, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$16, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12058
	movl	12(%ebp), %eax # 732
	movl	12(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12060
	movl	$0, %eax # 734
	jmp	je_cont.12061
je_else.12060:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$16, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$16, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12062
	movl	12(%ebp), %eax # 732
	movl	16(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12064
	movl	$0, %eax # 734
	jmp	je_cont.12065
je_else.12064:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$16, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$16, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12066
	movl	12(%ebp), %eax # 732
	movl	20(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12068
	movl	$0, %eax # 734
	jmp	je_cont.12069
je_else.12068:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$16, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$16, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12070
	movl	12(%ebp), %eax # 732
	movl	24(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12072
	movl	$0, %eax # 734
	jmp	je_cont.12073
je_else.12072:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$16, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$16, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12074
	movl	12(%ebp), %eax # 732
	movl	28(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12076
	movl	$0, %eax # 734
	jmp	je_cont.12077
je_else.12076:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$16, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$16, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12078
	movl	$8, %eax # 739
	movl	12(%ebp), %ebx # 739
	movl	0(%ebp), %ecx # 739
	addl	$16, %ebp # 739
	call	shadow_check_one_or_group.2085 # 739
	subl	$16, %ebp # 739
	jmp	je_cont.12079
je_else.12078:
	movl	$1, %eax # 738
je_cont.12079:
je_cont.12077:
	jmp	je_cont.12075
je_else.12074:
	movl	$1, %eax # 738
je_cont.12075:
je_cont.12073:
	jmp	je_cont.12071
je_else.12070:
	movl	$1, %eax # 738
je_cont.12071:
je_cont.12069:
	jmp	je_cont.12067
je_else.12066:
	movl	$1, %eax # 738
je_cont.12067:
je_cont.12065:
	jmp	je_cont.12063
je_else.12062:
	movl	$1, %eax # 738
je_cont.12063:
je_cont.12061:
	jmp	je_cont.12059
je_else.12058:
	movl	$1, %eax # 738
je_cont.12059:
je_cont.12057:
	jmp	je_cont.12055
je_else.12054:
	movl	$1, %eax # 738
je_cont.12055:
je_cont.12053:
	cmpl	$0, %eax # 753
	jne	je_else.12080
	movl	8(%ebp), %eax # 755
	addl	$1, %eax # 755
	movl	4(%ebp), %ebx # 746
	movl	(%ebx,%eax,4), %ecx # 746
	movl	0(%ecx), %edx # 747
	cmpl	$-1, %edx # 748
	jne	je_else.12081
	movl	$0, %eax # 748
	ret # 748
je_else.12081:
	cmpl	$99, %edx # 750
	jne	je_else.12082
	movl	4(%ecx), %edx # 732
	movl	%eax, 16(%ebp) # 733
	cmpl	$-1, %edx # 733
	jne	je_else.12083
	movl	$0, %eax # 734
	jmp	je_cont.12084
je_else.12083:
	movl	$min_caml_and_net, %esi # 736
	movl	(%esi,%edx,4), %edx # 736
	movl	$0, %esi # 737
	movl	0(%ebp), %edi # 737
	movl	%ecx, 20(%ebp) # 737
	movl	%edi, %ecx
	movl	%edx, %ebx
	movl	%esi, %eax
	addl	$24, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$24, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12085
	movl	20(%ebp), %eax # 732
	movl	8(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12087
	movl	$0, %eax # 734
	jmp	je_cont.12088
je_else.12087:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$24, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$24, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12089
	movl	20(%ebp), %eax # 732
	movl	12(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12091
	movl	$0, %eax # 734
	jmp	je_cont.12092
je_else.12091:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$24, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$24, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12093
	movl	20(%ebp), %eax # 732
	movl	16(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12095
	movl	$0, %eax # 734
	jmp	je_cont.12096
je_else.12095:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$24, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$24, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12097
	movl	20(%ebp), %eax # 732
	movl	20(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12099
	movl	$0, %eax # 734
	jmp	je_cont.12100
je_else.12099:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$24, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$24, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12101
	movl	20(%ebp), %eax # 732
	movl	24(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12103
	movl	$0, %eax # 734
	jmp	je_cont.12104
je_else.12103:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$24, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$24, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12105
	movl	$7, %eax # 739
	movl	20(%ebp), %ebx # 739
	movl	0(%ebp), %ecx # 739
	addl	$24, %ebp # 739
	call	shadow_check_one_or_group.2085 # 739
	subl	$24, %ebp # 739
	jmp	je_cont.12106
je_else.12105:
	movl	$1, %eax # 738
je_cont.12106:
je_cont.12104:
	jmp	je_cont.12102
je_else.12101:
	movl	$1, %eax # 738
je_cont.12102:
je_cont.12100:
	jmp	je_cont.12098
je_else.12097:
	movl	$1, %eax # 738
je_cont.12098:
je_cont.12096:
	jmp	je_cont.12094
je_else.12093:
	movl	$1, %eax # 738
je_cont.12094:
je_cont.12092:
	jmp	je_cont.12090
je_else.12089:
	movl	$1, %eax # 738
je_cont.12090:
je_cont.12088:
	jmp	je_cont.12086
je_else.12085:
	movl	$1, %eax # 738
je_cont.12086:
je_cont.12084:
	cmpl	$0, %eax # 753
	jne	je_else.12107
	movl	16(%ebp), %eax # 755
	addl	$1, %eax # 755
	movl	4(%ebp), %ebx # 755
	movl	0(%ebp), %ecx # 755
	jmp	shadow_check_one_or_matrix.2089 # 755
je_else.12107:
	movl	$1, %eax # 754
	ret # 754
je_else.12082:
	movl	$min_caml_light, %esi # 758
	movl	0(%ebp), %edi # 758
	movl	%ecx, 20(%ebp) # 758
	movl	%eax, 16(%ebp) # 758
	movl	%edi, %ecx
	movl	%esi, %ebx
	movl	%edx, %eax
	addl	$24, %ebp # 758
	call	solver.2066 # 758
	subl	$24, %ebp # 758
	cmpl	$0, %eax # 761
	jne	je_else.12108
	movl	16(%ebp), %eax # 768
	addl	$1, %eax # 768
	movl	4(%ebp), %ebx # 768
	movl	0(%ebp), %ecx # 768
	jmp	shadow_check_one_or_matrix.2089 # 768
je_else.12108:
	movl	$l.10845, %eax # 762
	movsd	0(%eax), %xmm0 # 762
	movl	$min_caml_solver_dist, %eax # 762
	movsd	0(%eax), %xmm1 # 762
	comisd	%xmm1, %xmm0 # 762
	ja	jbe_else.12109
	movl	16(%ebp), %eax # 767
	addl	$1, %eax # 767
	movl	4(%ebp), %ebx # 767
	movl	0(%ebp), %ecx # 767
	jmp	shadow_check_one_or_matrix.2089 # 767
jbe_else.12109:
	movl	20(%ebp), %eax # 732
	movl	4(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12110
	movl	$0, %eax # 734
	jmp	je_cont.12111
je_else.12110:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$24, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$24, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12112
	movl	20(%ebp), %eax # 732
	movl	8(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12114
	movl	$0, %eax # 734
	jmp	je_cont.12115
je_else.12114:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$24, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$24, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12116
	movl	20(%ebp), %eax # 732
	movl	12(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12118
	movl	$0, %eax # 734
	jmp	je_cont.12119
je_else.12118:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$24, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$24, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12120
	movl	20(%ebp), %eax # 732
	movl	16(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12122
	movl	$0, %eax # 734
	jmp	je_cont.12123
je_else.12122:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$24, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$24, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12124
	movl	20(%ebp), %eax # 732
	movl	20(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12126
	movl	$0, %eax # 734
	jmp	je_cont.12127
je_else.12126:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$24, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$24, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12128
	movl	20(%ebp), %eax # 732
	movl	24(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12130
	movl	$0, %eax # 734
	jmp	je_cont.12131
je_else.12130:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$24, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$24, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12132
	movl	$7, %eax # 739
	movl	20(%ebp), %ebx # 739
	movl	0(%ebp), %ecx # 739
	addl	$24, %ebp # 739
	call	shadow_check_one_or_group.2085 # 739
	subl	$24, %ebp # 739
	jmp	je_cont.12133
je_else.12132:
	movl	$1, %eax # 738
je_cont.12133:
je_cont.12131:
	jmp	je_cont.12129
je_else.12128:
	movl	$1, %eax # 738
je_cont.12129:
je_cont.12127:
	jmp	je_cont.12125
je_else.12124:
	movl	$1, %eax # 738
je_cont.12125:
je_cont.12123:
	jmp	je_cont.12121
je_else.12120:
	movl	$1, %eax # 738
je_cont.12121:
je_cont.12119:
	jmp	je_cont.12117
je_else.12116:
	movl	$1, %eax # 738
je_cont.12117:
je_cont.12115:
	jmp	je_cont.12113
je_else.12112:
	movl	$1, %eax # 738
je_cont.12113:
je_cont.12111:
	cmpl	$0, %eax # 764
	jne	je_else.12134
	movl	16(%ebp), %eax # 766
	addl	$1, %eax # 766
	movl	4(%ebp), %ebx # 766
	movl	0(%ebp), %ecx # 766
	jmp	shadow_check_one_or_matrix.2089 # 766
je_else.12134:
	movl	$1, %eax # 765
	ret # 765
je_else.12080:
	movl	$1, %eax # 754
	ret # 754
je_else.12051:
	movl	$min_caml_light, %edi # 758
	movl	%edx, 12(%ebp) # 616
	movl	$min_caml_objects, %edx # 616
	movl	(%edx,%esi,4), %edx # 616
	movl	$min_caml_solver_w_vec, %esi # 617
	movsd	0(%ecx), %xmm0 # 617
	movl	%ebx, 4(%ebp) # 617
	movl	20(%edx), %ebx # 617
	movsd	0(%ebx), %xmm1 # 111
	subsd	%xmm1, %xmm0 # 617
	movsd	%xmm0, 0(%esi) # 617
	movl	$min_caml_solver_w_vec, %ebx # 618
	movsd	8(%ecx), %xmm0 # 618
	movl	20(%edx), %esi # 618
	movsd	8(%esi), %xmm1 # 121
	subsd	%xmm1, %xmm0 # 618
	movsd	%xmm0, 8(%ebx) # 618
	movl	$min_caml_solver_w_vec, %ebx # 619
	movsd	16(%ecx), %xmm0 # 619
	movl	20(%edx), %esi # 619
	movsd	16(%esi), %xmm1 # 131
	subsd	%xmm1, %xmm0 # 619
	movsd	%xmm0, 16(%ebx) # 619
	movl	4(%edx), %ebx # 620
	movl	%ecx, 0(%ebp) # 621
	movl	%eax, 8(%ebp) # 621
	cmpl	$1, %ebx # 621
	jne	je_else.12135
	movl	%edi, %ebx
	movl	%edx, %eax
	addl	$24, %ebp # 621
	call	solver_rect.2045 # 621
	subl	$24, %ebp # 621
	jmp	je_cont.12136
je_else.12135:
	cmpl	$2, %ebx # 622
	jne	je_else.12137
	movsd	0(%edi), %xmm0 # 535
	movl	16(%edx), %ebx # 535
	movsd	0(%ebx), %xmm1 # 81
	mulsd	%xmm1, %xmm0 # 535
	movsd	8(%edi), %xmm1 # 535
	movl	16(%edx), %ebx # 535
	movsd	8(%ebx), %xmm2 # 91
	mulsd	%xmm2, %xmm1 # 535
	addsd	%xmm1, %xmm0 # 535
	movsd	16(%edi), %xmm1 # 535
	movl	16(%edx), %ebx # 535
	movsd	16(%ebx), %xmm2 # 101
	mulsd	%xmm2, %xmm1 # 535
	addsd	%xmm1, %xmm0 # 535
	movl	$l.10769, %ebx # 536
	movsd	0(%ebx), %xmm1 # 536
	comisd	%xmm1, %xmm0 # 536
	ja	jbe_else.12139
	movl	$0, %eax # 539
	jmp	jbe_cont.12140
jbe_else.12139:
	movl	$min_caml_solver_w_vec, %ebx # 537
	movsd	0(%ebx), %xmm1 # 537
	movl	16(%edx), %ebx # 537
	movsd	0(%ebx), %xmm2 # 81
	mulsd	%xmm2, %xmm1 # 537
	movl	$min_caml_solver_w_vec, %ebx # 537
	movsd	8(%ebx), %xmm2 # 537
	movl	16(%edx), %ebx # 537
	movsd	8(%ebx), %xmm3 # 91
	mulsd	%xmm3, %xmm2 # 537
	addsd	%xmm2, %xmm1 # 537
	movl	$min_caml_solver_w_vec, %ebx # 537
	movsd	16(%ebx), %xmm2 # 537
	movl	16(%edx), %ebx # 537
	movsd	16(%ebx), %xmm3 # 101
	mulsd	%xmm3, %xmm2 # 537
	addsd	%xmm2, %xmm1 # 537
	divsd	%xmm0, %xmm1 # 537
	movl	$min_caml_solver_dist, %ebx # 538
	xorpd	min_caml_fnegd, %xmm1 # 538
	movsd	%xmm1, 0(%ebx) # 538
	movl	$1, %eax # 538
jbe_cont.12140:
	jmp	je_cont.12138
je_else.12137:
	movl	%edi, %ebx
	movl	%edx, %eax
	addl	$24, %ebp # 623
	call	solver_second.2063 # 623
	subl	$24, %ebp # 623
je_cont.12138:
je_cont.12136:
	cmpl	$0, %eax # 761
	jne	je_else.12141
	movl	8(%ebp), %eax # 768
	addl	$1, %eax # 768
	movl	4(%ebp), %ebx # 746
	movl	(%ebx,%eax,4), %ecx # 746
	movl	0(%ecx), %edx # 747
	cmpl	$-1, %edx # 748
	jne	je_else.12142
	movl	$0, %eax # 748
	ret # 748
je_else.12142:
	cmpl	$99, %edx # 750
	jne	je_else.12143
	movl	4(%ecx), %edx # 732
	movl	%eax, 24(%ebp) # 733
	cmpl	$-1, %edx # 733
	jne	je_else.12144
	movl	$0, %eax # 734
	jmp	je_cont.12145
je_else.12144:
	movl	$min_caml_and_net, %esi # 736
	movl	(%esi,%edx,4), %edx # 736
	movl	$0, %esi # 737
	movl	0(%ebp), %edi # 737
	movl	%ecx, 28(%ebp) # 737
	movl	%edi, %ecx
	movl	%edx, %ebx
	movl	%esi, %eax
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12146
	movl	28(%ebp), %eax # 732
	movl	8(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12148
	movl	$0, %eax # 734
	jmp	je_cont.12149
je_else.12148:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12150
	movl	28(%ebp), %eax # 732
	movl	12(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12152
	movl	$0, %eax # 734
	jmp	je_cont.12153
je_else.12152:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12154
	movl	28(%ebp), %eax # 732
	movl	16(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12156
	movl	$0, %eax # 734
	jmp	je_cont.12157
je_else.12156:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12158
	movl	28(%ebp), %eax # 732
	movl	20(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12160
	movl	$0, %eax # 734
	jmp	je_cont.12161
je_else.12160:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12162
	movl	28(%ebp), %eax # 732
	movl	24(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12164
	movl	$0, %eax # 734
	jmp	je_cont.12165
je_else.12164:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12166
	movl	$7, %eax # 739
	movl	28(%ebp), %ebx # 739
	movl	0(%ebp), %ecx # 739
	addl	$32, %ebp # 739
	call	shadow_check_one_or_group.2085 # 739
	subl	$32, %ebp # 739
	jmp	je_cont.12167
je_else.12166:
	movl	$1, %eax # 738
je_cont.12167:
je_cont.12165:
	jmp	je_cont.12163
je_else.12162:
	movl	$1, %eax # 738
je_cont.12163:
je_cont.12161:
	jmp	je_cont.12159
je_else.12158:
	movl	$1, %eax # 738
je_cont.12159:
je_cont.12157:
	jmp	je_cont.12155
je_else.12154:
	movl	$1, %eax # 738
je_cont.12155:
je_cont.12153:
	jmp	je_cont.12151
je_else.12150:
	movl	$1, %eax # 738
je_cont.12151:
je_cont.12149:
	jmp	je_cont.12147
je_else.12146:
	movl	$1, %eax # 738
je_cont.12147:
je_cont.12145:
	cmpl	$0, %eax # 753
	jne	je_else.12168
	movl	24(%ebp), %eax # 755
	addl	$1, %eax # 755
	movl	4(%ebp), %ebx # 755
	movl	0(%ebp), %ecx # 755
	jmp	shadow_check_one_or_matrix.2089 # 755
je_else.12168:
	movl	$1, %eax # 754
	ret # 754
je_else.12143:
	movl	$min_caml_light, %esi # 758
	movl	0(%ebp), %edi # 758
	movl	%ecx, 28(%ebp) # 758
	movl	%eax, 24(%ebp) # 758
	movl	%edi, %ecx
	movl	%esi, %ebx
	movl	%edx, %eax
	addl	$32, %ebp # 758
	call	solver.2066 # 758
	subl	$32, %ebp # 758
	cmpl	$0, %eax # 761
	jne	je_else.12169
	movl	24(%ebp), %eax # 768
	addl	$1, %eax # 768
	movl	4(%ebp), %ebx # 768
	movl	0(%ebp), %ecx # 768
	jmp	shadow_check_one_or_matrix.2089 # 768
je_else.12169:
	movl	$l.10845, %eax # 762
	movsd	0(%eax), %xmm0 # 762
	movl	$min_caml_solver_dist, %eax # 762
	movsd	0(%eax), %xmm1 # 762
	comisd	%xmm1, %xmm0 # 762
	ja	jbe_else.12170
	movl	24(%ebp), %eax # 767
	addl	$1, %eax # 767
	movl	4(%ebp), %ebx # 767
	movl	0(%ebp), %ecx # 767
	jmp	shadow_check_one_or_matrix.2089 # 767
jbe_else.12170:
	movl	28(%ebp), %eax # 732
	movl	4(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12171
	movl	$0, %eax # 734
	jmp	je_cont.12172
je_else.12171:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12173
	movl	28(%ebp), %eax # 732
	movl	8(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12175
	movl	$0, %eax # 734
	jmp	je_cont.12176
je_else.12175:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12177
	movl	28(%ebp), %eax # 732
	movl	12(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12179
	movl	$0, %eax # 734
	jmp	je_cont.12180
je_else.12179:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12181
	movl	28(%ebp), %eax # 732
	movl	16(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12183
	movl	$0, %eax # 734
	jmp	je_cont.12184
je_else.12183:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12185
	movl	28(%ebp), %eax # 732
	movl	20(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12187
	movl	$0, %eax # 734
	jmp	je_cont.12188
je_else.12187:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12189
	movl	28(%ebp), %eax # 732
	movl	24(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12191
	movl	$0, %eax # 734
	jmp	je_cont.12192
je_else.12191:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12193
	movl	$7, %eax # 739
	movl	28(%ebp), %ebx # 739
	movl	0(%ebp), %ecx # 739
	addl	$32, %ebp # 739
	call	shadow_check_one_or_group.2085 # 739
	subl	$32, %ebp # 739
	jmp	je_cont.12194
je_else.12193:
	movl	$1, %eax # 738
je_cont.12194:
je_cont.12192:
	jmp	je_cont.12190
je_else.12189:
	movl	$1, %eax # 738
je_cont.12190:
je_cont.12188:
	jmp	je_cont.12186
je_else.12185:
	movl	$1, %eax # 738
je_cont.12186:
je_cont.12184:
	jmp	je_cont.12182
je_else.12181:
	movl	$1, %eax # 738
je_cont.12182:
je_cont.12180:
	jmp	je_cont.12178
je_else.12177:
	movl	$1, %eax # 738
je_cont.12178:
je_cont.12176:
	jmp	je_cont.12174
je_else.12173:
	movl	$1, %eax # 738
je_cont.12174:
je_cont.12172:
	cmpl	$0, %eax # 764
	jne	je_else.12195
	movl	24(%ebp), %eax # 766
	addl	$1, %eax # 766
	movl	4(%ebp), %ebx # 766
	movl	0(%ebp), %ecx # 766
	jmp	shadow_check_one_or_matrix.2089 # 766
je_else.12195:
	movl	$1, %eax # 765
	ret # 765
je_else.12141:
	movl	$l.10845, %eax # 762
	movsd	0(%eax), %xmm0 # 762
	movl	$min_caml_solver_dist, %eax # 762
	movsd	0(%eax), %xmm1 # 762
	comisd	%xmm1, %xmm0 # 762
	ja	jbe_else.12196
	movl	8(%ebp), %eax # 767
	addl	$1, %eax # 767
	movl	4(%ebp), %ebx # 746
	movl	(%ebx,%eax,4), %ecx # 746
	movl	0(%ecx), %edx # 747
	cmpl	$-1, %edx # 748
	jne	je_else.12197
	movl	$0, %eax # 748
	ret # 748
je_else.12197:
	cmpl	$99, %edx # 750
	jne	je_else.12198
	movl	4(%ecx), %edx # 732
	movl	%eax, 32(%ebp) # 733
	cmpl	$-1, %edx # 733
	jne	je_else.12199
	movl	$0, %eax # 734
	jmp	je_cont.12200
je_else.12199:
	movl	$min_caml_and_net, %esi # 736
	movl	(%esi,%edx,4), %edx # 736
	movl	$0, %esi # 737
	movl	0(%ebp), %edi # 737
	movl	%ecx, 36(%ebp) # 737
	movl	%edi, %ecx
	movl	%edx, %ebx
	movl	%esi, %eax
	addl	$40, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$40, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12201
	movl	36(%ebp), %eax # 732
	movl	8(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12203
	movl	$0, %eax # 734
	jmp	je_cont.12204
je_else.12203:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$40, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$40, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12205
	movl	36(%ebp), %eax # 732
	movl	12(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12207
	movl	$0, %eax # 734
	jmp	je_cont.12208
je_else.12207:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$40, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$40, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12209
	movl	36(%ebp), %eax # 732
	movl	16(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12211
	movl	$0, %eax # 734
	jmp	je_cont.12212
je_else.12211:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$40, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$40, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12213
	movl	36(%ebp), %eax # 732
	movl	20(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12215
	movl	$0, %eax # 734
	jmp	je_cont.12216
je_else.12215:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$40, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$40, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12217
	movl	36(%ebp), %eax # 732
	movl	24(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12219
	movl	$0, %eax # 734
	jmp	je_cont.12220
je_else.12219:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$40, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$40, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12221
	movl	$7, %eax # 739
	movl	36(%ebp), %ebx # 739
	movl	0(%ebp), %ecx # 739
	addl	$40, %ebp # 739
	call	shadow_check_one_or_group.2085 # 739
	subl	$40, %ebp # 739
	jmp	je_cont.12222
je_else.12221:
	movl	$1, %eax # 738
je_cont.12222:
je_cont.12220:
	jmp	je_cont.12218
je_else.12217:
	movl	$1, %eax # 738
je_cont.12218:
je_cont.12216:
	jmp	je_cont.12214
je_else.12213:
	movl	$1, %eax # 738
je_cont.12214:
je_cont.12212:
	jmp	je_cont.12210
je_else.12209:
	movl	$1, %eax # 738
je_cont.12210:
je_cont.12208:
	jmp	je_cont.12206
je_else.12205:
	movl	$1, %eax # 738
je_cont.12206:
je_cont.12204:
	jmp	je_cont.12202
je_else.12201:
	movl	$1, %eax # 738
je_cont.12202:
je_cont.12200:
	cmpl	$0, %eax # 753
	jne	je_else.12223
	movl	32(%ebp), %eax # 755
	addl	$1, %eax # 755
	movl	4(%ebp), %ebx # 755
	movl	0(%ebp), %ecx # 755
	jmp	shadow_check_one_or_matrix.2089 # 755
je_else.12223:
	movl	$1, %eax # 754
	ret # 754
je_else.12198:
	movl	$min_caml_light, %esi # 758
	movl	0(%ebp), %edi # 758
	movl	%ecx, 36(%ebp) # 758
	movl	%eax, 32(%ebp) # 758
	movl	%edi, %ecx
	movl	%esi, %ebx
	movl	%edx, %eax
	addl	$40, %ebp # 758
	call	solver.2066 # 758
	subl	$40, %ebp # 758
	cmpl	$0, %eax # 761
	jne	je_else.12224
	movl	32(%ebp), %eax # 768
	addl	$1, %eax # 768
	movl	4(%ebp), %ebx # 768
	movl	0(%ebp), %ecx # 768
	jmp	shadow_check_one_or_matrix.2089 # 768
je_else.12224:
	movl	$l.10845, %eax # 762
	movsd	0(%eax), %xmm0 # 762
	movl	$min_caml_solver_dist, %eax # 762
	movsd	0(%eax), %xmm1 # 762
	comisd	%xmm1, %xmm0 # 762
	ja	jbe_else.12225
	movl	32(%ebp), %eax # 767
	addl	$1, %eax # 767
	movl	4(%ebp), %ebx # 767
	movl	0(%ebp), %ecx # 767
	jmp	shadow_check_one_or_matrix.2089 # 767
jbe_else.12225:
	movl	36(%ebp), %eax # 732
	movl	4(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12226
	movl	$0, %eax # 734
	jmp	je_cont.12227
je_else.12226:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$40, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$40, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12228
	movl	36(%ebp), %eax # 732
	movl	8(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12230
	movl	$0, %eax # 734
	jmp	je_cont.12231
je_else.12230:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$40, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$40, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12232
	movl	36(%ebp), %eax # 732
	movl	12(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12234
	movl	$0, %eax # 734
	jmp	je_cont.12235
je_else.12234:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$40, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$40, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12236
	movl	36(%ebp), %eax # 732
	movl	16(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12238
	movl	$0, %eax # 734
	jmp	je_cont.12239
je_else.12238:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$40, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$40, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12240
	movl	36(%ebp), %eax # 732
	movl	20(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12242
	movl	$0, %eax # 734
	jmp	je_cont.12243
je_else.12242:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$40, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$40, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12244
	movl	36(%ebp), %eax # 732
	movl	24(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12246
	movl	$0, %eax # 734
	jmp	je_cont.12247
je_else.12246:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$40, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$40, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12248
	movl	$7, %eax # 739
	movl	36(%ebp), %ebx # 739
	movl	0(%ebp), %ecx # 739
	addl	$40, %ebp # 739
	call	shadow_check_one_or_group.2085 # 739
	subl	$40, %ebp # 739
	jmp	je_cont.12249
je_else.12248:
	movl	$1, %eax # 738
je_cont.12249:
je_cont.12247:
	jmp	je_cont.12245
je_else.12244:
	movl	$1, %eax # 738
je_cont.12245:
je_cont.12243:
	jmp	je_cont.12241
je_else.12240:
	movl	$1, %eax # 738
je_cont.12241:
je_cont.12239:
	jmp	je_cont.12237
je_else.12236:
	movl	$1, %eax # 738
je_cont.12237:
je_cont.12235:
	jmp	je_cont.12233
je_else.12232:
	movl	$1, %eax # 738
je_cont.12233:
je_cont.12231:
	jmp	je_cont.12229
je_else.12228:
	movl	$1, %eax # 738
je_cont.12229:
je_cont.12227:
	cmpl	$0, %eax # 764
	jne	je_else.12250
	movl	32(%ebp), %eax # 766
	addl	$1, %eax # 766
	movl	4(%ebp), %ebx # 766
	movl	0(%ebp), %ecx # 766
	jmp	shadow_check_one_or_matrix.2089 # 766
je_else.12250:
	movl	$1, %eax # 765
	ret # 765
jbe_else.12196:
	movl	12(%ebp), %eax # 732
	movl	4(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12251
	movl	$0, %eax # 734
	jmp	je_cont.12252
je_else.12251:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$40, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$40, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12253
	movl	12(%ebp), %eax # 732
	movl	8(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12255
	movl	$0, %eax # 734
	jmp	je_cont.12256
je_else.12255:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$40, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$40, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12257
	movl	12(%ebp), %eax # 732
	movl	12(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12259
	movl	$0, %eax # 734
	jmp	je_cont.12260
je_else.12259:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$40, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$40, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12261
	movl	12(%ebp), %eax # 732
	movl	16(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12263
	movl	$0, %eax # 734
	jmp	je_cont.12264
je_else.12263:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$40, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$40, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12265
	movl	12(%ebp), %eax # 732
	movl	20(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12267
	movl	$0, %eax # 734
	jmp	je_cont.12268
je_else.12267:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$40, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$40, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12269
	movl	12(%ebp), %eax # 732
	movl	24(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12271
	movl	$0, %eax # 734
	jmp	je_cont.12272
je_else.12271:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$40, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$40, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12273
	movl	12(%ebp), %eax # 732
	movl	28(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12275
	movl	$0, %eax # 734
	jmp	je_cont.12276
je_else.12275:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$40, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$40, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12277
	movl	$8, %eax # 739
	movl	12(%ebp), %ebx # 739
	movl	0(%ebp), %ecx # 739
	addl	$40, %ebp # 739
	call	shadow_check_one_or_group.2085 # 739
	subl	$40, %ebp # 739
	jmp	je_cont.12278
je_else.12277:
	movl	$1, %eax # 738
je_cont.12278:
je_cont.12276:
	jmp	je_cont.12274
je_else.12273:
	movl	$1, %eax # 738
je_cont.12274:
je_cont.12272:
	jmp	je_cont.12270
je_else.12269:
	movl	$1, %eax # 738
je_cont.12270:
je_cont.12268:
	jmp	je_cont.12266
je_else.12265:
	movl	$1, %eax # 738
je_cont.12266:
je_cont.12264:
	jmp	je_cont.12262
je_else.12261:
	movl	$1, %eax # 738
je_cont.12262:
je_cont.12260:
	jmp	je_cont.12258
je_else.12257:
	movl	$1, %eax # 738
je_cont.12258:
je_cont.12256:
	jmp	je_cont.12254
je_else.12253:
	movl	$1, %eax # 738
je_cont.12254:
je_cont.12252:
	cmpl	$0, %eax # 764
	jne	je_else.12279
	movl	8(%ebp), %eax # 766
	addl	$1, %eax # 766
	movl	4(%ebp), %ebx # 746
	movl	(%ebx,%eax,4), %ecx # 746
	movl	0(%ecx), %edx # 747
	cmpl	$-1, %edx # 748
	jne	je_else.12280
	movl	$0, %eax # 748
	ret # 748
je_else.12280:
	cmpl	$99, %edx # 750
	jne	je_else.12281
	movl	4(%ecx), %edx # 732
	movl	%eax, 40(%ebp) # 733
	cmpl	$-1, %edx # 733
	jne	je_else.12282
	movl	$0, %eax # 734
	jmp	je_cont.12283
je_else.12282:
	movl	$min_caml_and_net, %esi # 736
	movl	(%esi,%edx,4), %edx # 736
	movl	$0, %esi # 737
	movl	0(%ebp), %edi # 737
	movl	%ecx, 44(%ebp) # 737
	movl	%edi, %ecx
	movl	%edx, %ebx
	movl	%esi, %eax
	addl	$48, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$48, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12284
	movl	44(%ebp), %eax # 732
	movl	8(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12286
	movl	$0, %eax # 734
	jmp	je_cont.12287
je_else.12286:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$48, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$48, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12288
	movl	44(%ebp), %eax # 732
	movl	12(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12290
	movl	$0, %eax # 734
	jmp	je_cont.12291
je_else.12290:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$48, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$48, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12292
	movl	44(%ebp), %eax # 732
	movl	16(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12294
	movl	$0, %eax # 734
	jmp	je_cont.12295
je_else.12294:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$48, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$48, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12296
	movl	44(%ebp), %eax # 732
	movl	20(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12298
	movl	$0, %eax # 734
	jmp	je_cont.12299
je_else.12298:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$48, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$48, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12300
	movl	44(%ebp), %eax # 732
	movl	24(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12302
	movl	$0, %eax # 734
	jmp	je_cont.12303
je_else.12302:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$48, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$48, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12304
	movl	$7, %eax # 739
	movl	44(%ebp), %ebx # 739
	movl	0(%ebp), %ecx # 739
	addl	$48, %ebp # 739
	call	shadow_check_one_or_group.2085 # 739
	subl	$48, %ebp # 739
	jmp	je_cont.12305
je_else.12304:
	movl	$1, %eax # 738
je_cont.12305:
je_cont.12303:
	jmp	je_cont.12301
je_else.12300:
	movl	$1, %eax # 738
je_cont.12301:
je_cont.12299:
	jmp	je_cont.12297
je_else.12296:
	movl	$1, %eax # 738
je_cont.12297:
je_cont.12295:
	jmp	je_cont.12293
je_else.12292:
	movl	$1, %eax # 738
je_cont.12293:
je_cont.12291:
	jmp	je_cont.12289
je_else.12288:
	movl	$1, %eax # 738
je_cont.12289:
je_cont.12287:
	jmp	je_cont.12285
je_else.12284:
	movl	$1, %eax # 738
je_cont.12285:
je_cont.12283:
	cmpl	$0, %eax # 753
	jne	je_else.12306
	movl	40(%ebp), %eax # 755
	addl	$1, %eax # 755
	movl	4(%ebp), %ebx # 755
	movl	0(%ebp), %ecx # 755
	jmp	shadow_check_one_or_matrix.2089 # 755
je_else.12306:
	movl	$1, %eax # 754
	ret # 754
je_else.12281:
	movl	$min_caml_light, %esi # 758
	movl	0(%ebp), %edi # 758
	movl	%ecx, 44(%ebp) # 758
	movl	%eax, 40(%ebp) # 758
	movl	%edi, %ecx
	movl	%esi, %ebx
	movl	%edx, %eax
	addl	$48, %ebp # 758
	call	solver.2066 # 758
	subl	$48, %ebp # 758
	cmpl	$0, %eax # 761
	jne	je_else.12307
	movl	40(%ebp), %eax # 768
	addl	$1, %eax # 768
	movl	4(%ebp), %ebx # 768
	movl	0(%ebp), %ecx # 768
	jmp	shadow_check_one_or_matrix.2089 # 768
je_else.12307:
	movl	$l.10845, %eax # 762
	movsd	0(%eax), %xmm0 # 762
	movl	$min_caml_solver_dist, %eax # 762
	movsd	0(%eax), %xmm1 # 762
	comisd	%xmm1, %xmm0 # 762
	ja	jbe_else.12308
	movl	40(%ebp), %eax # 767
	addl	$1, %eax # 767
	movl	4(%ebp), %ebx # 767
	movl	0(%ebp), %ecx # 767
	jmp	shadow_check_one_or_matrix.2089 # 767
jbe_else.12308:
	movl	44(%ebp), %eax # 732
	movl	4(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12309
	movl	$0, %eax # 734
	jmp	je_cont.12310
je_else.12309:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$48, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$48, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12311
	movl	44(%ebp), %eax # 732
	movl	8(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12313
	movl	$0, %eax # 734
	jmp	je_cont.12314
je_else.12313:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$48, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$48, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12315
	movl	44(%ebp), %eax # 732
	movl	12(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12317
	movl	$0, %eax # 734
	jmp	je_cont.12318
je_else.12317:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$48, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$48, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12319
	movl	44(%ebp), %eax # 732
	movl	16(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12321
	movl	$0, %eax # 734
	jmp	je_cont.12322
je_else.12321:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$48, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$48, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12323
	movl	44(%ebp), %eax # 732
	movl	20(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12325
	movl	$0, %eax # 734
	jmp	je_cont.12326
je_else.12325:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$48, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$48, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12327
	movl	44(%ebp), %eax # 732
	movl	24(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12329
	movl	$0, %eax # 734
	jmp	je_cont.12330
je_else.12329:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	0(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$48, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$48, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12331
	movl	$7, %eax # 739
	movl	44(%ebp), %ebx # 739
	movl	0(%ebp), %ecx # 739
	addl	$48, %ebp # 739
	call	shadow_check_one_or_group.2085 # 739
	subl	$48, %ebp # 739
	jmp	je_cont.12332
je_else.12331:
	movl	$1, %eax # 738
je_cont.12332:
je_cont.12330:
	jmp	je_cont.12328
je_else.12327:
	movl	$1, %eax # 738
je_cont.12328:
je_cont.12326:
	jmp	je_cont.12324
je_else.12323:
	movl	$1, %eax # 738
je_cont.12324:
je_cont.12322:
	jmp	je_cont.12320
je_else.12319:
	movl	$1, %eax # 738
je_cont.12320:
je_cont.12318:
	jmp	je_cont.12316
je_else.12315:
	movl	$1, %eax # 738
je_cont.12316:
je_cont.12314:
	jmp	je_cont.12312
je_else.12311:
	movl	$1, %eax # 738
je_cont.12312:
je_cont.12310:
	cmpl	$0, %eax # 764
	jne	je_else.12333
	movl	40(%ebp), %eax # 766
	addl	$1, %eax # 766
	movl	4(%ebp), %ebx # 766
	movl	0(%ebp), %ecx # 766
	jmp	shadow_check_one_or_matrix.2089 # 766
je_else.12333:
	movl	$1, %eax # 765
	ret # 765
je_else.12279:
	movl	$1, %eax # 765
	ret # 765
solve_each_element.2093:
	movl	(%ebx,%eax,4), %ecx # 778
	cmpl	$-1, %ecx # 779
	jne	je_else.12334
	ret # 779
je_else.12334:
	movl	$min_caml_vscan, %edx # 781
	movl	$min_caml_viewpoint, %esi # 781
	movl	$min_caml_objects, %edi # 616
	movl	(%edi,%ecx,4), %edi # 616
	movl	%eax, 0(%ebp) # 617
	movl	$min_caml_solver_w_vec, %eax # 617
	movsd	0(%esi), %xmm0 # 617
	movl	%ebx, 4(%ebp) # 617
	movl	20(%edi), %ebx # 617
	movsd	0(%ebx), %xmm1 # 111
	subsd	%xmm1, %xmm0 # 617
	movsd	%xmm0, 0(%eax) # 617
	movl	$min_caml_solver_w_vec, %eax # 618
	movsd	8(%esi), %xmm0 # 618
	movl	20(%edi), %ebx # 618
	movsd	8(%ebx), %xmm1 # 121
	subsd	%xmm1, %xmm0 # 618
	movsd	%xmm0, 8(%eax) # 618
	movl	$min_caml_solver_w_vec, %eax # 619
	movsd	16(%esi), %xmm0 # 619
	movl	20(%edi), %ebx # 619
	movsd	16(%ebx), %xmm1 # 131
	subsd	%xmm1, %xmm0 # 619
	movsd	%xmm0, 16(%eax) # 619
	movl	4(%edi), %eax # 620
	movl	%ecx, 8(%ebp) # 621
	cmpl	$1, %eax # 621
	jne	je_else.12336
	movl	%edx, %ebx
	movl	%edi, %eax
	addl	$16, %ebp # 621
	call	solver_rect.2045 # 621
	subl	$16, %ebp # 621
	jmp	je_cont.12337
je_else.12336:
	cmpl	$2, %eax # 622
	jne	je_else.12338
	movsd	0(%edx), %xmm0 # 535
	movl	16(%edi), %eax # 535
	movsd	0(%eax), %xmm1 # 81
	mulsd	%xmm1, %xmm0 # 535
	movsd	8(%edx), %xmm1 # 535
	movl	16(%edi), %eax # 535
	movsd	8(%eax), %xmm2 # 91
	mulsd	%xmm2, %xmm1 # 535
	addsd	%xmm1, %xmm0 # 535
	movsd	16(%edx), %xmm1 # 535
	movl	16(%edi), %eax # 535
	movsd	16(%eax), %xmm2 # 101
	mulsd	%xmm2, %xmm1 # 535
	addsd	%xmm1, %xmm0 # 535
	movl	$l.10769, %eax # 536
	movsd	0(%eax), %xmm1 # 536
	comisd	%xmm1, %xmm0 # 536
	ja	jbe_else.12340
	movl	$0, %eax # 539
	jmp	jbe_cont.12341
jbe_else.12340:
	movl	$min_caml_solver_w_vec, %eax # 537
	movsd	0(%eax), %xmm1 # 537
	movl	16(%edi), %eax # 537
	movsd	0(%eax), %xmm2 # 81
	mulsd	%xmm2, %xmm1 # 537
	movl	$min_caml_solver_w_vec, %eax # 537
	movsd	8(%eax), %xmm2 # 537
	movl	16(%edi), %eax # 537
	movsd	8(%eax), %xmm3 # 91
	mulsd	%xmm3, %xmm2 # 537
	addsd	%xmm2, %xmm1 # 537
	movl	$min_caml_solver_w_vec, %eax # 537
	movsd	16(%eax), %xmm2 # 537
	movl	16(%edi), %eax # 537
	movsd	16(%eax), %xmm3 # 101
	mulsd	%xmm3, %xmm2 # 537
	addsd	%xmm2, %xmm1 # 537
	divsd	%xmm0, %xmm1 # 537
	movl	$min_caml_solver_dist, %eax # 538
	xorpd	min_caml_fnegd, %xmm1 # 538
	movsd	%xmm1, 0(%eax) # 538
	movl	$1, %eax # 538
jbe_cont.12341:
	jmp	je_cont.12339
je_else.12338:
	movl	%edx, %ebx
	movl	%edi, %eax
	addl	$16, %ebp # 623
	call	solver_second.2063 # 623
	subl	$16, %ebp # 623
je_cont.12339:
je_cont.12337:
	cmpl	$0, %eax # 782
	jne	je_else.12342
	movl	$min_caml_objects, %eax # 811
	movl	8(%ebp), %ebx # 811
	movl	(%eax,%ebx,4), %eax # 811
	movl	24(%eax), %eax # 811
	cmpl	$0, %eax # 811
	jne	je_else.12344
	movl	$min_caml_end_flag, %eax # 811
	movl	$1, %ebx # 811
	movl	%ebx, 0(%eax) # 811
	jmp	je_cont.12345
je_else.12344:
je_cont.12345:
	jmp	je_cont.12343
je_else.12342:
	movl	$min_caml_solver_dist, %ebx # 786
	movsd	0(%ebx), %xmm0 # 786
	movl	$l.10845, %ebx # 787
	movsd	0(%ebx), %xmm1 # 787
	comisd	%xmm1, %xmm0 # 787
	ja	jbe_else.12346
	jmp	jbe_cont.12347
jbe_else.12346:
	movl	$min_caml_tmin, %ebx # 788
	movsd	0(%ebx), %xmm1 # 788
	comisd	%xmm0, %xmm1 # 788
	ja	jbe_else.12348
	jmp	jbe_cont.12349
jbe_else.12348:
	movl	$l.10841, %ebx # 790
	movsd	0(%ebx), %xmm1 # 790
	addsd	%xmm1, %xmm0 # 790
	movl	$min_caml_chkinside_p, %ebx # 791
	movl	$min_caml_vscan, %ecx # 791
	movsd	0(%ecx), %xmm1 # 791
	mulsd	%xmm0, %xmm1 # 791
	movl	$min_caml_viewpoint, %ecx # 791
	movsd	0(%ecx), %xmm2 # 791
	addsd	%xmm2, %xmm1 # 791
	movsd	%xmm1, 0(%ebx) # 791
	movl	$min_caml_chkinside_p, %ebx # 792
	movl	$min_caml_vscan, %ecx # 792
	movsd	8(%ecx), %xmm1 # 792
	mulsd	%xmm0, %xmm1 # 792
	movl	$min_caml_viewpoint, %ecx # 792
	movsd	8(%ecx), %xmm2 # 792
	addsd	%xmm2, %xmm1 # 792
	movsd	%xmm1, 8(%ebx) # 792
	movl	$min_caml_chkinside_p, %ebx # 793
	movl	$min_caml_vscan, %ecx # 793
	movsd	16(%ecx), %xmm1 # 793
	mulsd	%xmm0, %xmm1 # 793
	movl	$min_caml_viewpoint, %ecx # 793
	movsd	16(%ecx), %xmm2 # 793
	addsd	%xmm2, %xmm1 # 793
	movsd	%xmm1, 16(%ebx) # 793
	movl	4(%ebp), %ebx # 682
	movl	0(%ebx), %ecx # 682
	movl	%eax, 12(%ebp) # 683
	movsd	%xmm0, 16(%ebp) # 683
	cmpl	$-1, %ecx # 683
	jne	je_else.12350
	movl	$1, %eax # 683
	jmp	je_cont.12351
je_else.12350:
	movl	$min_caml_objects, %edx # 684
	movl	(%edx,%ecx,4), %ecx # 684
	movl	%ecx, %eax
	addl	$24, %ebp # 684
	call	is_outside.2076 # 684
	subl	$24, %ebp # 684
	cmpl	$0, %eax # 684
	jne	je_else.12352
	movl	4(%ebp), %ebx # 682
	movl	4(%ebx), %eax # 682
	cmpl	$-1, %eax # 683
	jne	je_else.12354
	movl	$1, %eax # 683
	jmp	je_cont.12355
je_else.12354:
	movl	$min_caml_objects, %ecx # 684
	movl	(%ecx,%eax,4), %eax # 684
	movl	$min_caml_isoutside_q, %ecx # 667
	movl	$min_caml_chkinside_p, %edx # 667
	movsd	0(%edx), %xmm0 # 667
	movl	20(%eax), %edx # 667
	movsd	0(%edx), %xmm1 # 111
	subsd	%xmm1, %xmm0 # 667
	movsd	%xmm0, 0(%ecx) # 667
	movl	$min_caml_isoutside_q, %ecx # 668
	movl	$min_caml_chkinside_p, %edx # 668
	movsd	8(%edx), %xmm0 # 668
	movl	20(%eax), %edx # 668
	movsd	8(%edx), %xmm1 # 121
	subsd	%xmm1, %xmm0 # 668
	movsd	%xmm0, 8(%ecx) # 668
	movl	$min_caml_isoutside_q, %ecx # 669
	movl	$min_caml_chkinside_p, %edx # 669
	movsd	16(%edx), %xmm0 # 669
	movl	20(%eax), %edx # 669
	movsd	16(%edx), %xmm1 # 131
	subsd	%xmm1, %xmm0 # 669
	movsd	%xmm0, 16(%ecx) # 669
	movl	4(%eax), %ecx # 670
	cmpl	$1, %ecx # 671
	jne	je_else.12356
	movl	16(%eax), %ecx # 672
	movsd	0(%ecx), %xmm0 # 81
	movl	$min_caml_isoutside_q, %ecx # 633
	movsd	0(%ecx), %xmm1 # 633
	movl	%eax, 24(%ebp) # 633
	movsd	%xmm0, 32(%ebp) # 633
	movsd	%xmm1, %xmm0
	addl	$40, %ebp # 633
	call	min_caml_abs_float # 633
	subl	$40, %ebp # 633
	movsd	32(%ebp), %xmm1 # 633
	comisd	%xmm0, %xmm1 # 633
	ja	jbe_else.12359
	movl	$0, %eax # 637
	jmp	jbe_cont.12360
jbe_else.12359:
	movl	24(%ebp), %eax # 634
	movl	16(%eax), %ebx # 634
	movsd	8(%ebx), %xmm0 # 91
	movl	$min_caml_isoutside_q, %ebx # 634
	movsd	8(%ebx), %xmm1 # 634
	movsd	%xmm0, 40(%ebp) # 634
	movsd	%xmm1, %xmm0
	addl	$48, %ebp # 634
	call	min_caml_abs_float # 634
	subl	$48, %ebp # 634
	movsd	40(%ebp), %xmm1 # 634
	comisd	%xmm0, %xmm1 # 634
	ja	jbe_else.12361
	movl	$0, %eax # 636
	jmp	jbe_cont.12362
jbe_else.12361:
	movl	24(%ebp), %eax # 635
	movl	16(%eax), %ebx # 635
	movsd	16(%ebx), %xmm0 # 101
	movl	$min_caml_isoutside_q, %ebx # 635
	movsd	16(%ebx), %xmm1 # 635
	movsd	%xmm0, 48(%ebp) # 635
	movsd	%xmm1, %xmm0
	addl	$56, %ebp # 635
	call	min_caml_abs_float # 635
	subl	$56, %ebp # 635
	movsd	48(%ebp), %xmm1 # 635
	comisd	%xmm0, %xmm1 # 635
	ja	jbe_else.12363
	movl	$0, %eax # 635
	jmp	jbe_cont.12364
jbe_else.12363:
	movl	$1, %eax # 635
jbe_cont.12364:
jbe_cont.12362:
jbe_cont.12360:
	cmpl	$0, %eax # 632
	jne	je_else.12365
	movl	24(%ebp), %eax # 639
	movl	24(%eax), %eax # 639
	cmpl	$0, %eax # 639
	jne	je_else.12367
	movl	$1, %eax # 639
	jmp	je_cont.12368
je_else.12367:
	movl	$0, %eax # 639
je_cont.12368:
	jmp	je_cont.12366
je_else.12365:
	movl	24(%ebp), %eax # 639
	movl	24(%eax), %eax # 639
je_cont.12366:
	jmp	je_cont.12357
je_else.12356:
	cmpl	$2, %ecx # 673
	jne	je_else.12369
	movl	16(%eax), %ecx # 674
	movsd	0(%ecx), %xmm0 # 81
	movl	$min_caml_isoutside_q, %ecx # 644
	movsd	0(%ecx), %xmm1 # 644
	mulsd	%xmm1, %xmm0 # 644
	movl	16(%eax), %ecx # 645
	movsd	8(%ecx), %xmm1 # 91
	movl	$min_caml_isoutside_q, %ecx # 645
	movsd	8(%ecx), %xmm2 # 645
	mulsd	%xmm2, %xmm1 # 645
	addsd	%xmm1, %xmm0 # 644
	movl	16(%eax), %ecx # 646
	movsd	16(%ecx), %xmm1 # 101
	movl	$min_caml_isoutside_q, %ecx # 646
	movsd	16(%ecx), %xmm2 # 646
	mulsd	%xmm2, %xmm1 # 646
	addsd	%xmm1, %xmm0 # 644
	movl	$l.10769, %ecx # 647
	movsd	0(%ecx), %xmm1 # 647
	comisd	%xmm0, %xmm1 # 647
	ja	jbe_else.12371
	movl	$0, %ecx # 647
	jmp	jbe_cont.12372
jbe_else.12371:
	movl	$1, %ecx # 647
jbe_cont.12372:
	movl	24(%eax), %eax # 648
	cmpl	$0, %eax # 14
	jne	je_else.12373
	jmp	je_cont.12374
je_else.12373:
	cmpl	$0, %ecx # 14
	jne	je_else.12375
	movl	$1, %ecx # 14
	jmp	je_cont.12376
je_else.12375:
	movl	$0, %ecx # 14
je_cont.12376:
je_cont.12374:
	cmpl	$0, %ecx # 648
	jne	je_else.12377
	movl	$1, %eax # 648
	jmp	je_cont.12378
je_else.12377:
	movl	$0, %eax # 648
je_cont.12378:
	jmp	je_cont.12370
je_else.12369:
	addl	$56, %ebp # 676
	call	is_second_outside.2074 # 676
	subl	$56, %ebp # 676
je_cont.12370:
je_cont.12357:
	cmpl	$0, %eax # 684
	jne	je_else.12379
	movl	4(%ebp), %ebx # 682
	movl	8(%ebx), %eax # 682
	cmpl	$-1, %eax # 683
	jne	je_else.12381
	movl	$1, %eax # 683
	jmp	je_cont.12382
je_else.12381:
	movl	$min_caml_objects, %ecx # 684
	movl	(%ecx,%eax,4), %eax # 684
	addl	$56, %ebp # 684
	call	is_outside.2076 # 684
	subl	$56, %ebp # 684
	cmpl	$0, %eax # 684
	jne	je_else.12383
	movl	$3, %eax # 685
	movl	4(%ebp), %ebx # 685
	addl	$56, %ebp # 685
	call	check_all_inside.2078 # 685
	subl	$56, %ebp # 685
	jmp	je_cont.12384
je_else.12383:
	movl	$0, %eax # 684
je_cont.12384:
je_cont.12382:
	jmp	je_cont.12380
je_else.12379:
	movl	$0, %eax # 684
je_cont.12380:
je_cont.12355:
	jmp	je_cont.12353
je_else.12352:
	movl	$0, %eax # 684
je_cont.12353:
je_cont.12351:
	cmpl	$0, %eax # 794
	jne	je_else.12385
	jmp	je_cont.12386
je_else.12385:
	movl	$min_caml_tmin, %eax # 796
	movsd	16(%ebp), %xmm0 # 796
	movsd	%xmm0, 0(%eax) # 796
	movl	$min_caml_crashed_point, %eax # 797
	movl	$min_caml_chkinside_p, %ebx # 797
	movsd	0(%ebx), %xmm0 # 797
	movsd	%xmm0, 0(%eax) # 797
	movl	$min_caml_crashed_point, %eax # 798
	movl	$min_caml_chkinside_p, %ebx # 798
	movsd	8(%ebx), %xmm0 # 798
	movsd	%xmm0, 8(%eax) # 798
	movl	$min_caml_crashed_point, %eax # 799
	movl	$min_caml_chkinside_p, %ebx # 799
	movsd	16(%ebx), %xmm0 # 799
	movsd	%xmm0, 16(%eax) # 799
	movl	$min_caml_intsec_rectside, %eax # 800
	movl	12(%ebp), %ebx # 800
	movl	%ebx, 0(%eax) # 800
	movl	$min_caml_crashed_object, %eax # 801
	movl	8(%ebp), %ebx # 801
	movl	%ebx, 0(%eax) # 801
je_cont.12386:
jbe_cont.12349:
jbe_cont.12347:
je_cont.12343:
	movl	$min_caml_end_flag, %eax # 813
	movl	0(%eax), %eax # 813
	cmpl	$0, %eax # 813
	jne	je_else.12387
	movl	0(%ebp), %eax # 814
	addl	$1, %eax # 814
	movl	4(%ebp), %ebx # 814
	jmp	solve_each_element.2093 # 814
je_else.12387:
	ret # 815
solve_one_or_network.2096:
	movl	(%ebx,%eax,4), %ecx # 822
	cmpl	$-1, %ecx # 823
	jne	je_else.12389
	ret # 823
je_else.12389:
	movl	$min_caml_and_net, %edx # 824
	movl	(%edx,%ecx,4), %ecx # 824
	movl	$min_caml_end_flag, %edx # 825
	movl	$0, %esi # 825
	movl	%esi, 0(%edx) # 825
	movl	$0, %edx # 826
	movl	%ebx, 0(%ebp) # 826
	movl	%eax, 4(%ebp) # 826
	movl	%ecx, %ebx
	movl	%edx, %eax
	addl	$8, %ebp # 826
	call	solve_each_element.2093 # 826
	subl	$8, %ebp # 826
	movl	4(%ebp), %eax # 827
	addl	$1, %eax # 827
	movl	0(%ebp), %ebx # 822
	movl	(%ebx,%eax,4), %ecx # 822
	cmpl	$-1, %ecx # 823
	jne	je_else.12391
	ret # 823
je_else.12391:
	movl	$min_caml_and_net, %edx # 824
	movl	(%edx,%ecx,4), %ecx # 824
	movl	$min_caml_end_flag, %edx # 825
	movl	$0, %esi # 825
	movl	%esi, 0(%edx) # 825
	movl	$0, %edx # 826
	movl	%eax, 8(%ebp) # 826
	movl	%ecx, %ebx
	movl	%edx, %eax
	addl	$16, %ebp # 826
	call	solve_each_element.2093 # 826
	subl	$16, %ebp # 826
	movl	8(%ebp), %eax # 827
	addl	$1, %eax # 827
	movl	0(%ebp), %ebx # 822
	movl	(%ebx,%eax,4), %ecx # 822
	cmpl	$-1, %ecx # 823
	jne	je_else.12393
	ret # 823
je_else.12393:
	movl	$min_caml_and_net, %edx # 824
	movl	(%edx,%ecx,4), %ecx # 824
	movl	$min_caml_end_flag, %edx # 825
	movl	$0, %esi # 825
	movl	%esi, 0(%edx) # 825
	movl	$0, %edx # 826
	movl	%eax, 12(%ebp) # 826
	movl	%ecx, %ebx
	movl	%edx, %eax
	addl	$16, %ebp # 826
	call	solve_each_element.2093 # 826
	subl	$16, %ebp # 826
	movl	12(%ebp), %eax # 827
	addl	$1, %eax # 827
	movl	0(%ebp), %ebx # 822
	movl	(%ebx,%eax,4), %ecx # 822
	cmpl	$-1, %ecx # 823
	jne	je_else.12395
	ret # 823
je_else.12395:
	movl	$min_caml_and_net, %edx # 824
	movl	(%edx,%ecx,4), %ecx # 824
	movl	$min_caml_end_flag, %edx # 825
	movl	$0, %esi # 825
	movl	%esi, 0(%edx) # 825
	movl	$0, %edx # 826
	movl	%eax, 16(%ebp) # 826
	movl	%ecx, %ebx
	movl	%edx, %eax
	addl	$24, %ebp # 826
	call	solve_each_element.2093 # 826
	subl	$24, %ebp # 826
	movl	16(%ebp), %eax # 827
	addl	$1, %eax # 827
	movl	0(%ebp), %ebx # 827
	jmp	solve_one_or_network.2096 # 827
trace_or_matrix.2099:
	movl	(%ebx,%eax,4), %ecx # 834
	movl	0(%ecx), %edx # 835
	cmpl	$-1, %edx # 836
	jne	je_else.12397
	ret # 837
je_else.12397:
	movl	%ebx, 0(%ebp) # 839
	movl	%eax, 4(%ebp) # 839
	cmpl	$99, %edx # 839
	jne	je_else.12399
	movl	4(%ecx), %edx # 822
	cmpl	$-1, %edx # 823
	jne	je_else.12401
	jmp	je_cont.12402
je_else.12401:
	movl	$min_caml_and_net, %esi # 824
	movl	(%esi,%edx,4), %edx # 824
	movl	$min_caml_end_flag, %esi # 825
	movl	$0, %edi # 825
	movl	%edi, 0(%esi) # 825
	movl	$0, %esi # 826
	movl	%ecx, 8(%ebp) # 826
	movl	%edx, %ebx
	movl	%esi, %eax
	addl	$16, %ebp # 826
	call	solve_each_element.2093 # 826
	subl	$16, %ebp # 826
	movl	8(%ebp), %eax # 822
	movl	8(%eax), %ebx # 822
	cmpl	$-1, %ebx # 823
	jne	je_else.12403
	jmp	je_cont.12404
je_else.12403:
	movl	$min_caml_and_net, %ecx # 824
	movl	(%ecx,%ebx,4), %ebx # 824
	movl	$min_caml_end_flag, %ecx # 825
	movl	$0, %edx # 825
	movl	%edx, 0(%ecx) # 825
	movl	$0, %ecx # 826
	movl	%ecx, %eax
	addl	$16, %ebp # 826
	call	solve_each_element.2093 # 826
	subl	$16, %ebp # 826
	movl	8(%ebp), %eax # 822
	movl	12(%eax), %ebx # 822
	cmpl	$-1, %ebx # 823
	jne	je_else.12405
	jmp	je_cont.12406
je_else.12405:
	movl	$min_caml_and_net, %ecx # 824
	movl	(%ecx,%ebx,4), %ebx # 824
	movl	$min_caml_end_flag, %ecx # 825
	movl	$0, %edx # 825
	movl	%edx, 0(%ecx) # 825
	movl	$0, %ecx # 826
	movl	%ecx, %eax
	addl	$16, %ebp # 826
	call	solve_each_element.2093 # 826
	subl	$16, %ebp # 826
	movl	$4, %eax # 827
	movl	8(%ebp), %ebx # 827
	addl	$16, %ebp # 827
	call	solve_one_or_network.2096 # 827
	subl	$16, %ebp # 827
je_cont.12406:
je_cont.12404:
je_cont.12402:
	jmp	je_cont.12400
je_else.12399:
	movl	$min_caml_vscan, %esi # 844
	movl	$min_caml_viewpoint, %edi # 844
	movl	$min_caml_objects, %ebx # 616
	movl	(%ebx,%edx,4), %ebx # 616
	movl	$min_caml_solver_w_vec, %edx # 617
	movsd	0(%edi), %xmm0 # 617
	movl	20(%ebx), %eax # 617
	movsd	0(%eax), %xmm1 # 111
	subsd	%xmm1, %xmm0 # 617
	movsd	%xmm0, 0(%edx) # 617
	movl	$min_caml_solver_w_vec, %eax # 618
	movsd	8(%edi), %xmm0 # 618
	movl	20(%ebx), %edx # 618
	movsd	8(%edx), %xmm1 # 121
	subsd	%xmm1, %xmm0 # 618
	movsd	%xmm0, 8(%eax) # 618
	movl	$min_caml_solver_w_vec, %eax # 619
	movsd	16(%edi), %xmm0 # 619
	movl	20(%ebx), %edx # 619
	movsd	16(%edx), %xmm1 # 131
	subsd	%xmm1, %xmm0 # 619
	movsd	%xmm0, 16(%eax) # 619
	movl	4(%ebx), %eax # 620
	movl	%ecx, 8(%ebp) # 621
	cmpl	$1, %eax # 621
	jne	je_else.12407
	movl	%ebx, %eax
	movl	%esi, %ebx
	addl	$16, %ebp # 621
	call	solver_rect.2045 # 621
	subl	$16, %ebp # 621
	jmp	je_cont.12408
je_else.12407:
	cmpl	$2, %eax # 622
	jne	je_else.12409
	movsd	0(%esi), %xmm0 # 535
	movl	16(%ebx), %eax # 535
	movsd	0(%eax), %xmm1 # 81
	mulsd	%xmm1, %xmm0 # 535
	movsd	8(%esi), %xmm1 # 535
	movl	16(%ebx), %eax # 535
	movsd	8(%eax), %xmm2 # 91
	mulsd	%xmm2, %xmm1 # 535
	addsd	%xmm1, %xmm0 # 535
	movsd	16(%esi), %xmm1 # 535
	movl	16(%ebx), %eax # 535
	movsd	16(%eax), %xmm2 # 101
	mulsd	%xmm2, %xmm1 # 535
	addsd	%xmm1, %xmm0 # 535
	movl	$l.10769, %eax # 536
	movsd	0(%eax), %xmm1 # 536
	comisd	%xmm1, %xmm0 # 536
	ja	jbe_else.12411
	movl	$0, %eax # 539
	jmp	jbe_cont.12412
jbe_else.12411:
	movl	$min_caml_solver_w_vec, %eax # 537
	movsd	0(%eax), %xmm1 # 537
	movl	16(%ebx), %eax # 537
	movsd	0(%eax), %xmm2 # 81
	mulsd	%xmm2, %xmm1 # 537
	movl	$min_caml_solver_w_vec, %eax # 537
	movsd	8(%eax), %xmm2 # 537
	movl	16(%ebx), %eax # 537
	movsd	8(%eax), %xmm3 # 91
	mulsd	%xmm3, %xmm2 # 537
	addsd	%xmm2, %xmm1 # 537
	movl	$min_caml_solver_w_vec, %eax # 537
	movsd	16(%eax), %xmm2 # 537
	movl	16(%ebx), %eax # 537
	movsd	16(%eax), %xmm3 # 101
	mulsd	%xmm3, %xmm2 # 537
	addsd	%xmm2, %xmm1 # 537
	divsd	%xmm0, %xmm1 # 537
	movl	$min_caml_solver_dist, %eax # 538
	xorpd	min_caml_fnegd, %xmm1 # 538
	movsd	%xmm1, 0(%eax) # 538
	movl	$1, %eax # 538
jbe_cont.12412:
	jmp	je_cont.12410
je_else.12409:
	movl	%ebx, %eax
	movl	%esi, %ebx
	addl	$16, %ebp # 623
	call	solver_second.2063 # 623
	subl	$16, %ebp # 623
je_cont.12410:
je_cont.12408:
	cmpl	$0, %eax # 845
	jne	je_else.12413
	jmp	je_cont.12414
je_else.12413:
	movl	$min_caml_solver_dist, %eax # 846
	movsd	0(%eax), %xmm0 # 846
	movl	$min_caml_tmin, %eax # 847
	movsd	0(%eax), %xmm1 # 847
	comisd	%xmm0, %xmm1 # 847
	ja	jbe_else.12415
	jmp	jbe_cont.12416
jbe_else.12415:
	movl	8(%ebp), %eax # 822
	movl	4(%eax), %ebx # 822
	cmpl	$-1, %ebx # 823
	jne	je_else.12417
	jmp	je_cont.12418
je_else.12417:
	movl	$min_caml_and_net, %ecx # 824
	movl	(%ecx,%ebx,4), %ebx # 824
	movl	$min_caml_end_flag, %ecx # 825
	movl	$0, %edx # 825
	movl	%edx, 0(%ecx) # 825
	movl	$0, %ecx # 826
	movl	%ecx, %eax
	addl	$16, %ebp # 826
	call	solve_each_element.2093 # 826
	subl	$16, %ebp # 826
	movl	8(%ebp), %eax # 822
	movl	8(%eax), %ebx # 822
	cmpl	$-1, %ebx # 823
	jne	je_else.12419
	jmp	je_cont.12420
je_else.12419:
	movl	$min_caml_and_net, %ecx # 824
	movl	(%ecx,%ebx,4), %ebx # 824
	movl	$min_caml_end_flag, %ecx # 825
	movl	$0, %edx # 825
	movl	%edx, 0(%ecx) # 825
	movl	$0, %ecx # 826
	movl	%ecx, %eax
	addl	$16, %ebp # 826
	call	solve_each_element.2093 # 826
	subl	$16, %ebp # 826
	movl	8(%ebp), %eax # 822
	movl	12(%eax), %ebx # 822
	cmpl	$-1, %ebx # 823
	jne	je_else.12421
	jmp	je_cont.12422
je_else.12421:
	movl	$min_caml_and_net, %ecx # 824
	movl	(%ecx,%ebx,4), %ebx # 824
	movl	$min_caml_end_flag, %ecx # 825
	movl	$0, %edx # 825
	movl	%edx, 0(%ecx) # 825
	movl	$0, %ecx # 826
	movl	%ecx, %eax
	addl	$16, %ebp # 826
	call	solve_each_element.2093 # 826
	subl	$16, %ebp # 826
	movl	$4, %eax # 827
	movl	8(%ebp), %ebx # 827
	addl	$16, %ebp # 827
	call	solve_one_or_network.2096 # 827
	subl	$16, %ebp # 827
je_cont.12422:
je_cont.12420:
je_cont.12418:
jbe_cont.12416:
je_cont.12414:
je_cont.12400:
	movl	4(%ebp), %eax # 852
	addl	$1, %eax # 852
	movl	0(%ebp), %ebx # 834
	movl	(%ebx,%eax,4), %ecx # 834
	movl	0(%ecx), %edx # 835
	cmpl	$-1, %edx # 836
	jne	je_else.12423
	ret # 837
je_else.12423:
	movl	%eax, 12(%ebp) # 839
	cmpl	$99, %edx # 839
	jne	je_else.12425
	movl	4(%ecx), %edx # 822
	cmpl	$-1, %edx # 823
	jne	je_else.12427
	jmp	je_cont.12428
je_else.12427:
	movl	$min_caml_and_net, %esi # 824
	movl	(%esi,%edx,4), %edx # 824
	movl	$min_caml_end_flag, %esi # 825
	movl	$0, %edi # 825
	movl	%edi, 0(%esi) # 825
	movl	$0, %esi # 826
	movl	%ecx, 16(%ebp) # 826
	movl	%edx, %ebx
	movl	%esi, %eax
	addl	$24, %ebp # 826
	call	solve_each_element.2093 # 826
	subl	$24, %ebp # 826
	movl	16(%ebp), %eax # 822
	movl	8(%eax), %ebx # 822
	cmpl	$-1, %ebx # 823
	jne	je_else.12429
	jmp	je_cont.12430
je_else.12429:
	movl	$min_caml_and_net, %ecx # 824
	movl	(%ecx,%ebx,4), %ebx # 824
	movl	$min_caml_end_flag, %ecx # 825
	movl	$0, %edx # 825
	movl	%edx, 0(%ecx) # 825
	movl	$0, %ecx # 826
	movl	%ecx, %eax
	addl	$24, %ebp # 826
	call	solve_each_element.2093 # 826
	subl	$24, %ebp # 826
	movl	$3, %eax # 827
	movl	16(%ebp), %ebx # 827
	addl	$24, %ebp # 827
	call	solve_one_or_network.2096 # 827
	subl	$24, %ebp # 827
je_cont.12430:
je_cont.12428:
	jmp	je_cont.12426
je_else.12425:
	movl	$min_caml_vscan, %esi # 844
	movl	$min_caml_viewpoint, %edi # 844
	movl	%ecx, 16(%ebp) # 844
	movl	%edi, %ecx
	movl	%esi, %ebx
	movl	%edx, %eax
	addl	$24, %ebp # 844
	call	solver.2066 # 844
	subl	$24, %ebp # 844
	cmpl	$0, %eax # 845
	jne	je_else.12431
	jmp	je_cont.12432
je_else.12431:
	movl	$min_caml_solver_dist, %eax # 846
	movsd	0(%eax), %xmm0 # 846
	movl	$min_caml_tmin, %eax # 847
	movsd	0(%eax), %xmm1 # 847
	comisd	%xmm0, %xmm1 # 847
	ja	jbe_else.12433
	jmp	jbe_cont.12434
jbe_else.12433:
	movl	16(%ebp), %eax # 822
	movl	4(%eax), %ebx # 822
	cmpl	$-1, %ebx # 823
	jne	je_else.12435
	jmp	je_cont.12436
je_else.12435:
	movl	$min_caml_and_net, %ecx # 824
	movl	(%ecx,%ebx,4), %ebx # 824
	movl	$min_caml_end_flag, %ecx # 825
	movl	$0, %edx # 825
	movl	%edx, 0(%ecx) # 825
	movl	$0, %ecx # 826
	movl	%ecx, %eax
	addl	$24, %ebp # 826
	call	solve_each_element.2093 # 826
	subl	$24, %ebp # 826
	movl	16(%ebp), %eax # 822
	movl	8(%eax), %ebx # 822
	cmpl	$-1, %ebx # 823
	jne	je_else.12437
	jmp	je_cont.12438
je_else.12437:
	movl	$min_caml_and_net, %ecx # 824
	movl	(%ecx,%ebx,4), %ebx # 824
	movl	$min_caml_end_flag, %ecx # 825
	movl	$0, %edx # 825
	movl	%edx, 0(%ecx) # 825
	movl	$0, %ecx # 826
	movl	%ecx, %eax
	addl	$24, %ebp # 826
	call	solve_each_element.2093 # 826
	subl	$24, %ebp # 826
	movl	$3, %eax # 827
	movl	16(%ebp), %ebx # 827
	addl	$24, %ebp # 827
	call	solve_one_or_network.2096 # 827
	subl	$24, %ebp # 827
je_cont.12438:
je_cont.12436:
jbe_cont.12434:
je_cont.12432:
je_cont.12426:
	movl	12(%ebp), %eax # 852
	addl	$1, %eax # 852
	movl	0(%ebp), %ebx # 852
	jmp	trace_or_matrix.2099 # 852
get_nvector_rect.2105:
	movl	$min_caml_intsec_rectside, %eax # 884
	movl	0(%eax), %eax # 884
	cmpl	$1, %eax # 886
	jne	je_else.12439
	movl	$min_caml_nvector, %eax # 888
	movl	$min_caml_vscan, %ebx # 888
	movsd	0(%ebx), %xmm0 # 888
	movl	$l.10769, %ebx # 225
	movsd	0(%ebx), %xmm1 # 225
	comisd	%xmm1, %xmm0 # 225
	ja	jbe_else.12440
	movl	$l.10794, %ebx # 226
	movsd	0(%ebx), %xmm0 # 226
	jmp	jbe_cont.12441
jbe_else.12440:
	movl	$l.10792, %ebx # 225
	movsd	0(%ebx), %xmm0 # 225
jbe_cont.12441:
	xorpd	min_caml_fnegd, %xmm0 # 888
	movsd	%xmm0, 0(%eax) # 888
	movl	$min_caml_nvector, %eax # 889
	movl	$l.10769, %ebx # 889
	movsd	0(%ebx), %xmm0 # 889
	movsd	%xmm0, 8(%eax) # 889
	movl	$min_caml_nvector, %eax # 890
	movl	$l.10769, %ebx # 890
	movsd	0(%ebx), %xmm0 # 890
	movsd	%xmm0, 16(%eax) # 890
	ret # 890
je_else.12439:
	cmpl	$2, %eax # 892
	jne	je_else.12443
	movl	$min_caml_nvector, %eax # 894
	movl	$l.10769, %ebx # 894
	movsd	0(%ebx), %xmm0 # 894
	movsd	%xmm0, 0(%eax) # 894
	movl	$min_caml_nvector, %eax # 895
	movl	$min_caml_vscan, %ebx # 895
	movsd	8(%ebx), %xmm0 # 895
	movl	$l.10769, %ebx # 225
	movsd	0(%ebx), %xmm1 # 225
	comisd	%xmm1, %xmm0 # 225
	ja	jbe_else.12444
	movl	$l.10794, %ebx # 226
	movsd	0(%ebx), %xmm0 # 226
	jmp	jbe_cont.12445
jbe_else.12444:
	movl	$l.10792, %ebx # 225
	movsd	0(%ebx), %xmm0 # 225
jbe_cont.12445:
	xorpd	min_caml_fnegd, %xmm0 # 895
	movsd	%xmm0, 8(%eax) # 895
	movl	$min_caml_nvector, %eax # 896
	movl	$l.10769, %ebx # 896
	movsd	0(%ebx), %xmm0 # 896
	movsd	%xmm0, 16(%eax) # 896
	ret # 896
je_else.12443:
	cmpl	$3, %eax # 898
	jne	je_else.12447
	movl	$min_caml_nvector, %eax # 900
	movl	$l.10769, %ebx # 900
	movsd	0(%ebx), %xmm0 # 900
	movsd	%xmm0, 0(%eax) # 900
	movl	$min_caml_nvector, %eax # 901
	movl	$l.10769, %ebx # 901
	movsd	0(%ebx), %xmm0 # 901
	movsd	%xmm0, 8(%eax) # 901
	movl	$min_caml_nvector, %eax # 902
	movl	$min_caml_vscan, %ebx # 902
	movsd	16(%ebx), %xmm0 # 902
	movl	$l.10769, %ebx # 225
	movsd	0(%ebx), %xmm1 # 225
	comisd	%xmm1, %xmm0 # 225
	ja	jbe_else.12448
	movl	$l.10794, %ebx # 226
	movsd	0(%ebx), %xmm0 # 226
	jmp	jbe_cont.12449
jbe_else.12448:
	movl	$l.10792, %ebx # 225
	movsd	0(%ebx), %xmm0 # 225
jbe_cont.12449:
	xorpd	min_caml_fnegd, %xmm0 # 902
	movsd	%xmm0, 16(%eax) # 902
	ret # 902
je_else.12447:
	ret # 904
get_nvector_second_norot.2109:
	movl	$min_caml_nvector, %ecx # 918
	movsd	0(%ebx), %xmm0 # 918
	movl	20(%eax), %edx # 918
	movsd	0(%edx), %xmm1 # 111
	subsd	%xmm1, %xmm0 # 918
	movl	16(%eax), %edx # 918
	movsd	0(%edx), %xmm1 # 81
	mulsd	%xmm1, %xmm0 # 918
	movsd	%xmm0, 0(%ecx) # 918
	movl	$min_caml_nvector, %ecx # 919
	movsd	8(%ebx), %xmm0 # 919
	movl	20(%eax), %edx # 919
	movsd	8(%edx), %xmm1 # 121
	subsd	%xmm1, %xmm0 # 919
	movl	16(%eax), %edx # 919
	movsd	8(%edx), %xmm1 # 91
	mulsd	%xmm1, %xmm0 # 919
	movsd	%xmm0, 8(%ecx) # 919
	movl	$min_caml_nvector, %ecx # 920
	movsd	16(%ebx), %xmm0 # 920
	movl	20(%eax), %ebx # 920
	movsd	16(%ebx), %xmm1 # 131
	subsd	%xmm1, %xmm0 # 920
	movl	16(%eax), %ebx # 920
	movsd	16(%ebx), %xmm1 # 101
	mulsd	%xmm1, %xmm0 # 920
	movsd	%xmm0, 16(%ecx) # 920
	movl	$min_caml_nvector, %ebx # 921
	movl	24(%eax), %eax # 921
	movsd	0(%ebx), %xmm0 # 216
	mulsd	%xmm0, %xmm0 # 216
	movsd	8(%ebx), %xmm1 # 216
	mulsd	%xmm1, %xmm1 # 216
	addsd	%xmm1, %xmm0 # 216
	movsd	16(%ebx), %xmm1 # 216
	mulsd	%xmm1, %xmm1 # 216
	addsd	%xmm1, %xmm0 # 216
	movl	%ebx, 0(%ebp) # 216
	movl	%eax, 4(%ebp) # 216
	addl	$8, %ebp # 216
	call	min_caml_sqrt # 216
	subl	$8, %ebp # 216
	movl	4(%ebp), %eax # 217
	cmpl	$0, %eax # 217
	jne	je_else.12452
	jmp	je_cont.12453
je_else.12452:
	xorpd	min_caml_fnegd, %xmm0 # 217
je_cont.12453:
	movl	0(%ebp), %eax # 218
	movsd	0(%eax), %xmm1 # 218
	divsd	%xmm0, %xmm1 # 218
	movsd	%xmm1, 0(%eax) # 218
	movsd	8(%eax), %xmm1 # 219
	divsd	%xmm0, %xmm1 # 219
	movsd	%xmm1, 8(%eax) # 219
	movsd	16(%eax), %xmm1 # 220
	divsd	%xmm0, %xmm1 # 220
	movsd	%xmm1, 16(%eax) # 220
	ret # 220
get_nvector_second_rot.2112:
	movl	$min_caml_nvector_w, %ecx # 926
	movsd	0(%ebx), %xmm0 # 926
	movl	20(%eax), %edx # 926
	movsd	0(%edx), %xmm1 # 111
	subsd	%xmm1, %xmm0 # 926
	movsd	%xmm0, 0(%ecx) # 926
	movl	$min_caml_nvector_w, %ecx # 927
	movsd	8(%ebx), %xmm0 # 927
	movl	20(%eax), %edx # 927
	movsd	8(%edx), %xmm1 # 121
	subsd	%xmm1, %xmm0 # 927
	movsd	%xmm0, 8(%ecx) # 927
	movl	$min_caml_nvector_w, %ecx # 928
	movsd	16(%ebx), %xmm0 # 928
	movl	20(%eax), %ebx # 928
	movsd	16(%ebx), %xmm1 # 131
	subsd	%xmm1, %xmm0 # 928
	movsd	%xmm0, 16(%ecx) # 928
	movl	$min_caml_nvector, %ebx # 929
	movl	$min_caml_nvector_w, %ecx # 929
	movsd	0(%ecx), %xmm0 # 929
	movl	16(%eax), %ecx # 929
	movsd	0(%ecx), %xmm1 # 81
	mulsd	%xmm1, %xmm0 # 929
	movl	$min_caml_nvector_w, %ecx # 930
	movsd	8(%ecx), %xmm1 # 930
	movl	36(%eax), %ecx # 930
	movsd	16(%ecx), %xmm2 # 211
	mulsd	%xmm2, %xmm1 # 930
	movl	$min_caml_nvector_w, %ecx # 931
	movsd	16(%ecx), %xmm2 # 931
	movl	36(%eax), %ecx # 931
	movsd	8(%ecx), %xmm3 # 201
	mulsd	%xmm3, %xmm2 # 931
	addsd	%xmm2, %xmm1 # 930
	movl	$l.10807, %ecx # 20
	movsd	0(%ecx), %xmm2 # 20
	divsd	%xmm2, %xmm1 # 20
	addsd	%xmm1, %xmm0 # 929
	movsd	%xmm0, 0(%ebx) # 929
	movl	$min_caml_nvector, %ebx # 932
	movl	$min_caml_nvector_w, %ecx # 932
	movsd	8(%ecx), %xmm0 # 932
	movl	16(%eax), %ecx # 932
	movsd	8(%ecx), %xmm1 # 91
	mulsd	%xmm1, %xmm0 # 932
	movl	$min_caml_nvector_w, %ecx # 933
	movsd	0(%ecx), %xmm1 # 933
	movl	36(%eax), %ecx # 933
	movsd	16(%ecx), %xmm2 # 211
	mulsd	%xmm2, %xmm1 # 933
	movl	$min_caml_nvector_w, %ecx # 934
	movsd	16(%ecx), %xmm2 # 934
	movl	36(%eax), %ecx # 934
	movsd	0(%ecx), %xmm3 # 191
	mulsd	%xmm3, %xmm2 # 934
	addsd	%xmm2, %xmm1 # 933
	movl	$l.10807, %ecx # 20
	movsd	0(%ecx), %xmm2 # 20
	divsd	%xmm2, %xmm1 # 20
	addsd	%xmm1, %xmm0 # 932
	movsd	%xmm0, 8(%ebx) # 932
	movl	$min_caml_nvector, %ebx # 935
	movl	$min_caml_nvector_w, %ecx # 935
	movsd	16(%ecx), %xmm0 # 935
	movl	16(%eax), %ecx # 935
	movsd	16(%ecx), %xmm1 # 101
	mulsd	%xmm1, %xmm0 # 935
	movl	$min_caml_nvector_w, %ecx # 936
	movsd	0(%ecx), %xmm1 # 936
	movl	36(%eax), %ecx # 936
	movsd	8(%ecx), %xmm2 # 201
	mulsd	%xmm2, %xmm1 # 936
	movl	$min_caml_nvector_w, %ecx # 937
	movsd	8(%ecx), %xmm2 # 937
	movl	36(%eax), %ecx # 937
	movsd	0(%ecx), %xmm3 # 191
	mulsd	%xmm3, %xmm2 # 937
	addsd	%xmm2, %xmm1 # 936
	movl	$l.10807, %ecx # 20
	movsd	0(%ecx), %xmm2 # 20
	divsd	%xmm2, %xmm1 # 20
	addsd	%xmm1, %xmm0 # 935
	movsd	%xmm0, 16(%ebx) # 935
	movl	$min_caml_nvector, %ebx # 938
	movl	24(%eax), %eax # 938
	movsd	0(%ebx), %xmm0 # 216
	mulsd	%xmm0, %xmm0 # 216
	movsd	8(%ebx), %xmm1 # 216
	mulsd	%xmm1, %xmm1 # 216
	addsd	%xmm1, %xmm0 # 216
	movsd	16(%ebx), %xmm1 # 216
	mulsd	%xmm1, %xmm1 # 216
	addsd	%xmm1, %xmm0 # 216
	movl	%ebx, 0(%ebp) # 216
	movl	%eax, 4(%ebp) # 216
	addl	$8, %ebp # 216
	call	min_caml_sqrt # 216
	subl	$8, %ebp # 216
	movl	4(%ebp), %eax # 217
	cmpl	$0, %eax # 217
	jne	je_else.12455
	jmp	je_cont.12456
je_else.12455:
	xorpd	min_caml_fnegd, %xmm0 # 217
je_cont.12456:
	movl	0(%ebp), %eax # 218
	movsd	0(%eax), %xmm1 # 218
	divsd	%xmm0, %xmm1 # 218
	movsd	%xmm1, 0(%eax) # 218
	movsd	8(%eax), %xmm1 # 219
	divsd	%xmm0, %xmm1 # 219
	movsd	%xmm1, 8(%eax) # 219
	movsd	16(%eax), %xmm1 # 220
	divsd	%xmm0, %xmm1 # 220
	movsd	%xmm1, 16(%eax) # 220
	ret # 220
utexture.2118:
	movl	0(%eax), %ecx # 959
	movl	$min_caml_texture_color, %edx # 961
	movl	32(%eax), %esi # 961
	movsd	0(%esi), %xmm0 # 161
	movsd	%xmm0, 0(%edx) # 961
	movl	$min_caml_texture_color, %edx # 962
	movl	32(%eax), %esi # 962
	movsd	8(%esi), %xmm0 # 171
	movsd	%xmm0, 8(%edx) # 962
	movl	$min_caml_texture_color, %edx # 963
	movl	32(%eax), %esi # 963
	movsd	16(%esi), %xmm0 # 181
	movsd	%xmm0, 16(%edx) # 963
	cmpl	$1, %ecx # 964
	jne	je_else.12458
	movsd	0(%ebx), %xmm0 # 967
	movl	20(%eax), %ecx # 967
	movsd	0(%ecx), %xmm1 # 111
	subsd	%xmm1, %xmm0 # 967
	movl	$l.10905, %ecx # 969
	movsd	0(%ecx), %xmm1 # 969
	mulsd	%xmm0, %xmm1 # 969
	movl	%eax, 0(%ebp) # 969
	movl	%ebx, 4(%ebp) # 969
	movsd	%xmm0, 8(%ebp) # 969
	movsd	%xmm1, %xmm0
	addl	$16, %ebp # 969
	call	min_caml_floor # 969
	subl	$16, %ebp # 969
	movl	$l.10907, %eax # 969
	movsd	0(%eax), %xmm1 # 969
	mulsd	%xmm1, %xmm0 # 969
	movl	$l.10892, %eax # 970
	movsd	0(%eax), %xmm1 # 970
	movsd	8(%ebp), %xmm2 # 970
	subsd	%xmm0, %xmm2 # 970
	comisd	%xmm2, %xmm1 # 970
	ja	jbe_else.12459
	movl	$0, %eax # 970
	jmp	jbe_cont.12460
jbe_else.12459:
	movl	$1, %eax # 970
jbe_cont.12460:
	movl	4(%ebp), %ebx # 972
	movsd	16(%ebx), %xmm0 # 972
	movl	0(%ebp), %ebx # 972
	movl	20(%ebx), %ebx # 972
	movsd	16(%ebx), %xmm1 # 131
	subsd	%xmm1, %xmm0 # 972
	movl	$l.10905, %ebx # 974
	movsd	0(%ebx), %xmm1 # 974
	mulsd	%xmm0, %xmm1 # 974
	movl	%eax, 16(%ebp) # 974
	movsd	%xmm0, 24(%ebp) # 974
	movsd	%xmm1, %xmm0
	addl	$32, %ebp # 974
	call	min_caml_floor # 974
	subl	$32, %ebp # 974
	movl	$l.10907, %eax # 974
	movsd	0(%eax), %xmm1 # 974
	mulsd	%xmm1, %xmm0 # 974
	movl	$l.10892, %eax # 975
	movsd	0(%eax), %xmm1 # 975
	movsd	24(%ebp), %xmm2 # 975
	subsd	%xmm0, %xmm2 # 975
	comisd	%xmm2, %xmm1 # 975
	ja	jbe_else.12462
	movl	$0, %eax # 975
	jmp	jbe_cont.12463
jbe_else.12462:
	movl	$1, %eax # 975
jbe_cont.12463:
	movl	$min_caml_texture_color, %ebx # 977
	movl	16(%ebp), %ecx # 978
	cmpl	$0, %ecx # 978
	jne	je_else.12464
	cmpl	$0, %eax # 980
	jne	je_else.12466
	movl	$l.10896, %eax # 980
	movsd	0(%eax), %xmm0 # 980
	jmp	je_cont.12467
je_else.12466:
	movl	$l.10769, %eax # 980
	movsd	0(%eax), %xmm0 # 980
je_cont.12467:
	jmp	je_cont.12465
je_else.12464:
	cmpl	$0, %eax # 979
	jne	je_else.12468
	movl	$l.10769, %eax # 979
	movsd	0(%eax), %xmm0 # 979
	jmp	je_cont.12469
je_else.12468:
	movl	$l.10896, %eax # 979
	movsd	0(%eax), %xmm0 # 979
je_cont.12469:
je_cont.12465:
	movsd	%xmm0, 8(%ebx) # 977
	ret # 977
je_else.12458:
	cmpl	$2, %ecx # 982
	jne	je_else.12471
	movsd	8(%ebx), %xmm0 # 985
	movl	$l.10900, %eax # 985
	movsd	0(%eax), %xmm1 # 985
	mulsd	%xmm1, %xmm0 # 985
	addl	$32, %ebp # 985
	call	min_caml_sin # 985
	subl	$32, %ebp # 985
	mulsd	%xmm0, %xmm0 # 985
	movl	$min_caml_texture_color, %eax # 986
	movl	$l.10896, %ebx # 986
	movsd	0(%ebx), %xmm1 # 986
	mulsd	%xmm0, %xmm1 # 986
	movsd	%xmm1, 0(%eax) # 986
	movl	$min_caml_texture_color, %eax # 987
	movl	$l.10896, %ebx # 987
	movsd	0(%ebx), %xmm1 # 987
	movl	$l.10792, %ebx # 987
	movsd	0(%ebx), %xmm2 # 987
	subsd	%xmm0, %xmm2 # 987
	mulsd	%xmm2, %xmm1 # 987
	movsd	%xmm1, 8(%eax) # 987
	ret # 987
je_else.12471:
	cmpl	$3, %ecx # 989
	jne	je_else.12473
	movsd	0(%ebx), %xmm0 # 992
	movl	20(%eax), %ecx # 992
	movsd	0(%ecx), %xmm1 # 111
	subsd	%xmm1, %xmm0 # 992
	movsd	16(%ebx), %xmm1 # 993
	movl	20(%eax), %eax # 993
	movsd	16(%eax), %xmm2 # 131
	subsd	%xmm2, %xmm1 # 993
	mulsd	%xmm0, %xmm0 # 994
	mulsd	%xmm1, %xmm1 # 994
	addsd	%xmm1, %xmm0 # 994
	addl	$32, %ebp # 994
	call	min_caml_sqrt # 994
	subl	$32, %ebp # 994
	movl	$l.10892, %eax # 994
	movsd	0(%eax), %xmm1 # 994
	divsd	%xmm1, %xmm0 # 994
	movsd	%xmm0, 32(%ebp) # 995
	addl	$40, %ebp # 995
	call	min_caml_floor # 995
	subl	$40, %ebp # 995
	movsd	32(%ebp), %xmm1 # 995
	subsd	%xmm0, %xmm1 # 995
	movl	$l.10894, %eax # 995
	movsd	0(%eax), %xmm0 # 995
	mulsd	%xmm1, %xmm0 # 995
	addl	$40, %ebp # 996
	call	min_caml_cos # 996
	subl	$40, %ebp # 996
	mulsd	%xmm0, %xmm0 # 996
	movl	$min_caml_texture_color, %eax # 997
	movl	$l.10896, %ebx # 997
	movsd	0(%ebx), %xmm1 # 997
	mulsd	%xmm0, %xmm1 # 997
	movsd	%xmm1, 8(%eax) # 997
	movl	$min_caml_texture_color, %eax # 998
	movl	$l.10792, %ebx # 998
	movsd	0(%ebx), %xmm1 # 998
	subsd	%xmm0, %xmm1 # 998
	movl	$l.10896, %ebx # 998
	movsd	0(%ebx), %xmm0 # 998
	mulsd	%xmm0, %xmm1 # 998
	movsd	%xmm1, 16(%eax) # 998
	ret # 998
je_else.12473:
	cmpl	$4, %ecx # 1000
	jne	je_else.12475
	movsd	0(%ebx), %xmm0 # 1002
	movl	20(%eax), %ecx # 1002
	movsd	0(%ecx), %xmm1 # 111
	subsd	%xmm1, %xmm0 # 1002
	movl	16(%eax), %ecx # 1002
	movsd	0(%ecx), %xmm1 # 81
	movl	%eax, 0(%ebp) # 1002
	movl	%ebx, 4(%ebp) # 1002
	movsd	%xmm0, 40(%ebp) # 1002
	movsd	%xmm1, %xmm0
	addl	$48, %ebp # 1002
	call	min_caml_sqrt # 1002
	subl	$48, %ebp # 1002
	movsd	40(%ebp), %xmm1 # 1002
	mulsd	%xmm0, %xmm1 # 1002
	movl	4(%ebp), %eax # 1003
	movsd	16(%eax), %xmm0 # 1003
	movl	0(%ebp), %ebx # 1003
	movl	20(%ebx), %ecx # 1003
	movsd	16(%ecx), %xmm2 # 131
	subsd	%xmm2, %xmm0 # 1003
	movl	16(%ebx), %ecx # 1003
	movsd	16(%ecx), %xmm2 # 101
	movsd	%xmm1, 48(%ebp) # 1003
	movsd	%xmm0, 56(%ebp) # 1003
	movsd	%xmm2, %xmm0
	addl	$64, %ebp # 1003
	call	min_caml_sqrt # 1003
	subl	$64, %ebp # 1003
	movsd	56(%ebp), %xmm1 # 1003
	mulsd	%xmm0, %xmm1 # 1003
	movsd	48(%ebp), %xmm0 # 1004
	movsd	%xmm0, %xmm2 # 1004
	mulsd	%xmm0, %xmm2 # 1004
	movsd	%xmm1, %xmm3 # 1004
	mulsd	%xmm1, %xmm3 # 1004
	addsd	%xmm3, %xmm2 # 1004
	movsd	%xmm1, 64(%ebp) # 1004
	movsd	%xmm2, %xmm0
	addl	$72, %ebp # 1004
	call	min_caml_sqrt # 1004
	subl	$72, %ebp # 1004
	movl	$l.10874, %eax # 1006
	movsd	0(%eax), %xmm1 # 1006
	movsd	48(%ebp), %xmm2 # 1006
	movsd	%xmm0, 72(%ebp) # 1006
	movsd	%xmm1, 80(%ebp) # 1006
	movsd	%xmm2, %xmm0
	addl	$88, %ebp # 1006
	call	min_caml_abs_float # 1006
	subl	$88, %ebp # 1006
	movsd	80(%ebp), %xmm1 # 1006
	comisd	%xmm0, %xmm1 # 1006
	ja	jbe_else.12476
	movsd	48(%ebp), %xmm0 # 1009
	movsd	64(%ebp), %xmm1 # 1009
	movsd	%xmm0, 88(%ebp) # 1009
	movsd	%xmm1, %xmm0 # 1009
	divsd	88(%ebp), %xmm0 # 1009
	addl	$88, %ebp # 1009
	call	min_caml_abs_float # 1009
	subl	$88, %ebp # 1009
	addl	$88, %ebp # 1011
	call	min_caml_atan # 1011
	subl	$88, %ebp # 1011
	movl	$l.10878, %eax # 1011
	movsd	0(%eax), %xmm1 # 1011
	mulsd	%xmm1, %xmm0 # 1011
	jmp	jbe_cont.12477
jbe_else.12476:
	movl	$l.10876, %eax # 1007
	movsd	0(%eax), %xmm0 # 1007
jbe_cont.12477:
	movsd	%xmm0, 88(%ebp) # 1013
	addl	$96, %ebp # 1013
	call	min_caml_floor # 1013
	subl	$96, %ebp # 1013
	movsd	88(%ebp), %xmm1 # 1013
	movsd	%xmm0, 96(%ebp) # 1013
	movsd	%xmm1, %xmm0 # 1013
	subsd	96(%ebp), %xmm0 # 1013
	movl	4(%ebp), %eax # 1015
	movsd	8(%eax), %xmm2 # 1015
	movl	0(%ebp), %eax # 1015
	movl	20(%eax), %ebx # 1015
	movsd	8(%ebx), %xmm3 # 121
	subsd	%xmm3, %xmm2 # 1015
	movl	16(%eax), %eax # 1015
	movsd	8(%eax), %xmm3 # 91
	movsd	%xmm0, 96(%ebp) # 1015
	movsd	%xmm2, 104(%ebp) # 1015
	movsd	%xmm3, %xmm0
	addl	$112, %ebp # 1015
	call	min_caml_sqrt # 1015
	subl	$112, %ebp # 1015
	movsd	104(%ebp), %xmm1 # 1015
	mulsd	%xmm0, %xmm1 # 1015
	movl	$l.10874, %eax # 1017
	movsd	0(%eax), %xmm0 # 1017
	movsd	88(%ebp), %xmm2 # 1017
	movsd	%xmm1, 112(%ebp) # 1017
	movsd	%xmm0, 120(%ebp) # 1017
	movsd	%xmm2, %xmm0
	addl	$128, %ebp # 1017
	call	min_caml_abs_float # 1017
	subl	$128, %ebp # 1017
	movsd	120(%ebp), %xmm1 # 1017
	comisd	%xmm0, %xmm1 # 1017
	ja	jbe_else.12478
	movsd	72(%ebp), %xmm0 # 1020
	movsd	112(%ebp), %xmm1 # 1020
	movsd	%xmm0, 128(%ebp) # 1020
	movsd	%xmm1, %xmm0 # 1020
	divsd	128(%ebp), %xmm0 # 1020
	addl	$128, %ebp # 1020
	call	min_caml_abs_float # 1020
	subl	$128, %ebp # 1020
	addl	$128, %ebp # 1021
	call	min_caml_atan # 1021
	subl	$128, %ebp # 1021
	movl	$l.10878, %eax # 1021
	movsd	0(%eax), %xmm1 # 1021
	mulsd	%xmm1, %xmm0 # 1021
	jmp	jbe_cont.12479
jbe_else.12478:
	movl	$l.10876, %eax # 1018
	movsd	0(%eax), %xmm0 # 1018
jbe_cont.12479:
	movsd	%xmm0, 128(%ebp) # 1023
	addl	$136, %ebp # 1023
	call	min_caml_floor # 1023
	subl	$136, %ebp # 1023
	movsd	128(%ebp), %xmm1 # 1023
	subsd	%xmm0, %xmm1 # 1023
	movl	$l.10883, %eax # 1024
	movsd	0(%eax), %xmm0 # 1024
	movl	$l.10885, %eax # 1024
	movsd	0(%eax), %xmm2 # 1024
	movsd	96(%ebp), %xmm3 # 1024
	subsd	%xmm3, %xmm2 # 1024
	mulsd	%xmm2, %xmm2 # 1024
	subsd	%xmm2, %xmm0 # 1024
	movl	$l.10885, %eax # 1024
	movsd	0(%eax), %xmm2 # 1024
	subsd	%xmm1, %xmm2 # 1024
	mulsd	%xmm2, %xmm2 # 1024
	subsd	%xmm2, %xmm0 # 1024
	movl	$min_caml_texture_color, %eax # 1025
	movl	$l.10769, %ebx # 1025
	movsd	0(%ebx), %xmm1 # 1025
	comisd	%xmm1, %xmm0 # 1025
	ja	jbe_else.12480
	movl	$l.10769, %ebx # 1025
	movsd	0(%ebx), %xmm0 # 1025
	jmp	jbe_cont.12481
jbe_else.12480:
	movl	$l.10889, %ebx # 1025
	movsd	0(%ebx), %xmm1 # 1025
	mulsd	%xmm1, %xmm0 # 1025
jbe_cont.12481:
	movsd	%xmm0, 16(%eax) # 1025
	ret # 1025
je_else.12475:
	ret # 1027
raytracing.2128:
	movl	$min_caml_tmin, %ebx # 863
	movl	$l.10917, %ecx # 863
	movsd	0(%ecx), %xmm1 # 863
	movsd	%xmm1, 0(%ebx) # 863
	movl	$0, %ebx # 864
	movl	$min_caml_or_net, %ecx # 864
	movl	0(%ecx), %ecx # 864
	movsd	%xmm0, 0(%ebp) # 864
	movl	%eax, 8(%ebp) # 864
	movl	%ebx, %eax
	movl	%ecx, %ebx
	addl	$16, %ebp # 864
	call	trace_or_matrix.2099 # 864
	subl	$16, %ebp # 864
	movl	$min_caml_tmin, %eax # 865
	movsd	0(%eax), %xmm0 # 865
	movl	$l.10845, %eax # 866
	movsd	0(%eax), %xmm1 # 866
	comisd	%xmm1, %xmm0 # 866
	ja	jbe_else.12484
	movl	$0, %eax # 870
	jmp	jbe_cont.12485
jbe_else.12484:
	movl	$l.10920, %eax # 867
	movsd	0(%eax), %xmm1 # 867
	comisd	%xmm0, %xmm1 # 867
	ja	jbe_else.12486
	movl	$0, %eax # 869
	jmp	jbe_cont.12487
jbe_else.12486:
	movl	$1, %eax # 868
jbe_cont.12487:
jbe_cont.12485:
	cmpl	$0, %eax # 1056
	jne	je_else.12488
	movl	8(%ebp), %ebx # 1057
	cmpl	$0, %ebx # 1057
	jne	je_else.12490
	jmp	je_cont.12491
je_else.12490:
	movl	$min_caml_vscan, %ecx # 1059
	movl	$min_caml_light, %edx # 1059
	movsd	0(%ecx), %xmm0 # 1039
	movsd	0(%edx), %xmm1 # 1039
	mulsd	%xmm1, %xmm0 # 1039
	movsd	8(%ecx), %xmm1 # 1039
	movsd	8(%edx), %xmm2 # 1039
	mulsd	%xmm2, %xmm1 # 1039
	addsd	%xmm1, %xmm0 # 1039
	movsd	16(%ecx), %xmm1 # 1039
	movsd	16(%edx), %xmm2 # 1039
	mulsd	%xmm2, %xmm1 # 1039
	addsd	%xmm1, %xmm0 # 1039
	xorpd	min_caml_fnegd, %xmm0 # 1059
	movl	$l.10769, %ecx # 1061
	movsd	0(%ecx), %xmm1 # 1061
	comisd	%xmm1, %xmm0 # 1061
	ja	jbe_else.12492
	jmp	jbe_cont.12493
jbe_else.12492:
	movsd	%xmm0, %xmm1 # 1064
	mulsd	%xmm0, %xmm1 # 1064
	mulsd	%xmm0, %xmm1 # 1064
	movsd	0(%ebp), %xmm0 # 1064
	mulsd	%xmm0, %xmm1 # 1064
	movl	$min_caml_beam, %ecx # 1064
	movsd	0(%ecx), %xmm2 # 1064
	mulsd	%xmm2, %xmm1 # 1064
	movl	$min_caml_rgb, %ecx # 1065
	movl	$min_caml_rgb, %edx # 1065
	movsd	0(%edx), %xmm2 # 1065
	addsd	%xmm1, %xmm2 # 1065
	movsd	%xmm2, 0(%ecx) # 1065
	movl	$min_caml_rgb, %ecx # 1066
	movl	$min_caml_rgb, %edx # 1066
	movsd	8(%edx), %xmm2 # 1066
	addsd	%xmm1, %xmm2 # 1066
	movsd	%xmm2, 8(%ecx) # 1066
	movl	$min_caml_rgb, %ecx # 1067
	movl	$min_caml_rgb, %edx # 1067
	movsd	16(%edx), %xmm2 # 1067
	addsd	%xmm1, %xmm2 # 1067
	movsd	%xmm2, 16(%ecx) # 1067
jbe_cont.12493:
je_cont.12491:
	jmp	je_cont.12489
je_else.12488:
je_cont.12489:
	cmpl	$0, %eax # 1074
	jne	je_else.12494
	ret # 1134
je_else.12494:
	movl	$min_caml_objects, %eax # 1078
	movl	$min_caml_crashed_object, %ebx # 1078
	movl	0(%ebx), %ebx # 1078
	movl	(%eax,%ebx,4), %eax # 1078
	movl	$min_caml_crashed_point, %ebx # 1079
	movl	4(%eax), %ecx # 1079
	movl	%eax, 12(%ebp) # 944
	cmpl	$1, %ecx # 944
	jne	je_else.12496
	addl	$16, %ebp # 945
	call	get_nvector_rect.2105 # 945
	subl	$16, %ebp # 945
	jmp	je_cont.12497
je_else.12496:
	cmpl	$2, %ecx # 946
	jne	je_else.12498
	movl	$min_caml_nvector, %ebx # 910
	movl	16(%eax), %ecx # 910
	movsd	0(%ecx), %xmm0 # 81
	xorpd	min_caml_fnegd, %xmm0 # 910
	movsd	%xmm0, 0(%ebx) # 910
	movl	$min_caml_nvector, %ebx # 911
	movl	16(%eax), %ecx # 911
	movsd	8(%ecx), %xmm0 # 91
	xorpd	min_caml_fnegd, %xmm0 # 911
	movsd	%xmm0, 8(%ebx) # 911
	movl	$min_caml_nvector, %ebx # 912
	movl	16(%eax), %ecx # 912
	movsd	16(%ecx), %xmm0 # 101
	xorpd	min_caml_fnegd, %xmm0 # 912
	movsd	%xmm0, 16(%ebx) # 912
	jmp	je_cont.12499
je_else.12498:
	movl	12(%eax), %ecx # 949
	cmpl	$0, %ecx # 949
	jne	je_else.12500
	addl	$16, %ebp # 952
	call	get_nvector_second_norot.2109 # 952
	subl	$16, %ebp # 952
	jmp	je_cont.12501
je_else.12500:
	addl	$16, %ebp # 950
	call	get_nvector_second_rot.2112 # 950
	subl	$16, %ebp # 950
je_cont.12501:
je_cont.12499:
je_cont.12497:
	movl	$min_caml_or_net, %eax # 1081
	movl	0(%eax), %ebx # 1081
	movl	$min_caml_crashed_point, %ecx # 1081
	movl	0(%ebx), %eax # 746
	movl	0(%eax), %edx # 747
	cmpl	$-1, %edx # 748
	jne	je_else.12502
	movl	$0, %eax # 748
	jmp	je_cont.12503
je_else.12502:
	cmpl	$99, %edx # 750
	jne	je_else.12504
	movl	4(%eax), %edx # 732
	movl	%ecx, 16(%ebp) # 733
	movl	%ebx, 20(%ebp) # 733
	cmpl	$-1, %edx # 733
	jne	je_else.12506
	movl	$0, %eax # 734
	jmp	je_cont.12507
je_else.12506:
	movl	$min_caml_and_net, %esi # 736
	movl	(%esi,%edx,4), %edx # 736
	movl	$0, %esi # 737
	movl	%eax, 24(%ebp) # 737
	movl	%edx, %ebx
	movl	%esi, %eax
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12508
	movl	24(%ebp), %eax # 732
	movl	8(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12510
	movl	$0, %eax # 734
	jmp	je_cont.12511
je_else.12510:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	16(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12512
	movl	24(%ebp), %eax # 732
	movl	12(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12514
	movl	$0, %eax # 734
	jmp	je_cont.12515
je_else.12514:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	16(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12516
	movl	24(%ebp), %eax # 732
	movl	16(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12518
	movl	$0, %eax # 734
	jmp	je_cont.12519
je_else.12518:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	16(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12520
	movl	24(%ebp), %eax # 732
	movl	20(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12522
	movl	$0, %eax # 734
	jmp	je_cont.12523
je_else.12522:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	16(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12524
	movl	24(%ebp), %eax # 732
	movl	24(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12526
	movl	$0, %eax # 734
	jmp	je_cont.12527
je_else.12526:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	16(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12528
	movl	$7, %eax # 739
	movl	24(%ebp), %ebx # 739
	movl	16(%ebp), %ecx # 739
	addl	$32, %ebp # 739
	call	shadow_check_one_or_group.2085 # 739
	subl	$32, %ebp # 739
	jmp	je_cont.12529
je_else.12528:
	movl	$1, %eax # 738
je_cont.12529:
je_cont.12527:
	jmp	je_cont.12525
je_else.12524:
	movl	$1, %eax # 738
je_cont.12525:
je_cont.12523:
	jmp	je_cont.12521
je_else.12520:
	movl	$1, %eax # 738
je_cont.12521:
je_cont.12519:
	jmp	je_cont.12517
je_else.12516:
	movl	$1, %eax # 738
je_cont.12517:
je_cont.12515:
	jmp	je_cont.12513
je_else.12512:
	movl	$1, %eax # 738
je_cont.12513:
je_cont.12511:
	jmp	je_cont.12509
je_else.12508:
	movl	$1, %eax # 738
je_cont.12509:
je_cont.12507:
	cmpl	$0, %eax # 753
	jne	je_else.12530
	movl	$1, %eax # 755
	movl	20(%ebp), %ebx # 755
	movl	16(%ebp), %ecx # 755
	addl	$32, %ebp # 755
	call	shadow_check_one_or_matrix.2089 # 755
	subl	$32, %ebp # 755
	jmp	je_cont.12531
je_else.12530:
	movl	$1, %eax # 754
je_cont.12531:
	jmp	je_cont.12505
je_else.12504:
	movl	$min_caml_light, %esi # 758
	movl	%eax, 24(%ebp) # 758
	movl	%ecx, 16(%ebp) # 758
	movl	%ebx, 20(%ebp) # 758
	movl	%esi, %ebx
	movl	%edx, %eax
	addl	$32, %ebp # 758
	call	solver.2066 # 758
	subl	$32, %ebp # 758
	cmpl	$0, %eax # 761
	jne	je_else.12532
	movl	$1, %eax # 768
	movl	20(%ebp), %ebx # 768
	movl	16(%ebp), %ecx # 768
	addl	$32, %ebp # 768
	call	shadow_check_one_or_matrix.2089 # 768
	subl	$32, %ebp # 768
	jmp	je_cont.12533
je_else.12532:
	movl	$l.10845, %eax # 762
	movsd	0(%eax), %xmm0 # 762
	movl	$min_caml_solver_dist, %eax # 762
	movsd	0(%eax), %xmm1 # 762
	comisd	%xmm1, %xmm0 # 762
	ja	jbe_else.12534
	movl	$1, %eax # 767
	movl	20(%ebp), %ebx # 767
	movl	16(%ebp), %ecx # 767
	addl	$32, %ebp # 767
	call	shadow_check_one_or_matrix.2089 # 767
	subl	$32, %ebp # 767
	jmp	jbe_cont.12535
jbe_else.12534:
	movl	24(%ebp), %eax # 732
	movl	4(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12536
	movl	$0, %eax # 734
	jmp	je_cont.12537
je_else.12536:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	16(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12538
	movl	24(%ebp), %eax # 732
	movl	8(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12540
	movl	$0, %eax # 734
	jmp	je_cont.12541
je_else.12540:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	16(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12542
	movl	24(%ebp), %eax # 732
	movl	12(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12544
	movl	$0, %eax # 734
	jmp	je_cont.12545
je_else.12544:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	16(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12546
	movl	24(%ebp), %eax # 732
	movl	16(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12548
	movl	$0, %eax # 734
	jmp	je_cont.12549
je_else.12548:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	16(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12550
	movl	24(%ebp), %eax # 732
	movl	20(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12552
	movl	$0, %eax # 734
	jmp	je_cont.12553
je_else.12552:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	16(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12554
	movl	24(%ebp), %eax # 732
	movl	24(%eax), %ebx # 732
	cmpl	$-1, %ebx # 733
	jne	je_else.12556
	movl	$0, %eax # 734
	jmp	je_cont.12557
je_else.12556:
	movl	$min_caml_and_net, %ecx # 736
	movl	(%ecx,%ebx,4), %ebx # 736
	movl	$0, %ecx # 737
	movl	16(%ebp), %edx # 737
	movl	%ecx, %eax
	movl	%edx, %ecx
	addl	$32, %ebp # 737
	call	shadow_check_and_group.2081 # 737
	subl	$32, %ebp # 737
	cmpl	$0, %eax # 738
	jne	je_else.12558
	movl	$7, %eax # 739
	movl	24(%ebp), %ebx # 739
	movl	16(%ebp), %ecx # 739
	addl	$32, %ebp # 739
	call	shadow_check_one_or_group.2085 # 739
	subl	$32, %ebp # 739
	jmp	je_cont.12559
je_else.12558:
	movl	$1, %eax # 738
je_cont.12559:
je_cont.12557:
	jmp	je_cont.12555
je_else.12554:
	movl	$1, %eax # 738
je_cont.12555:
je_cont.12553:
	jmp	je_cont.12551
je_else.12550:
	movl	$1, %eax # 738
je_cont.12551:
je_cont.12549:
	jmp	je_cont.12547
je_else.12546:
	movl	$1, %eax # 738
je_cont.12547:
je_cont.12545:
	jmp	je_cont.12543
je_else.12542:
	movl	$1, %eax # 738
je_cont.12543:
je_cont.12541:
	jmp	je_cont.12539
je_else.12538:
	movl	$1, %eax # 738
je_cont.12539:
je_cont.12537:
	cmpl	$0, %eax # 764
	jne	je_else.12560
	movl	$1, %eax # 766
	movl	20(%ebp), %ebx # 766
	movl	16(%ebp), %ecx # 766
	addl	$32, %ebp # 766
	call	shadow_check_one_or_matrix.2089 # 766
	subl	$32, %ebp # 766
	jmp	je_cont.12561
je_else.12560:
	movl	$1, %eax # 765
je_cont.12561:
jbe_cont.12535:
je_cont.12533:
je_cont.12505:
je_cont.12503:
	cmpl	$0, %eax # 1081
	jne	je_else.12562
	movl	$min_caml_nvector, %eax # 1085
	movl	$min_caml_light, %ebx # 1085
	movsd	0(%eax), %xmm0 # 1039
	movsd	0(%ebx), %xmm1 # 1039
	mulsd	%xmm1, %xmm0 # 1039
	movsd	8(%eax), %xmm1 # 1039
	movsd	8(%ebx), %xmm2 # 1039
	mulsd	%xmm2, %xmm1 # 1039
	addsd	%xmm1, %xmm0 # 1039
	movsd	16(%eax), %xmm1 # 1039
	movsd	16(%ebx), %xmm2 # 1039
	mulsd	%xmm2, %xmm1 # 1039
	addsd	%xmm1, %xmm0 # 1039
	xorpd	min_caml_fnegd, %xmm0 # 1085
	movl	$l.10769, %eax # 1086
	movsd	0(%eax), %xmm1 # 1086
	comisd	%xmm0, %xmm1 # 1086
	ja	jbe_else.12564
	movl	$l.10926, %eax # 1086
	movsd	0(%eax), %xmm1 # 1086
	addsd	%xmm1, %xmm0 # 1086
	jmp	jbe_cont.12565
jbe_else.12564:
	movl	$l.10926, %eax # 1086
	movsd	0(%eax), %xmm0 # 1086
jbe_cont.12565:
	movsd	0(%ebp), %xmm1 # 1087
	mulsd	%xmm1, %xmm0 # 1087
	movl	12(%ebp), %eax # 1087
	movl	28(%eax), %ebx # 1087
	movsd	0(%ebx), %xmm2 # 141
	mulsd	%xmm2, %xmm0 # 1087
	jmp	je_cont.12563
je_else.12562:
	movl	$l.10769, %eax # 1083
	movsd	0(%eax), %xmm0 # 1083
je_cont.12563:
	movl	$min_caml_crashed_point, %ebx # 1090
	movl	12(%ebp), %eax # 1090
	movsd	%xmm0, 32(%ebp) # 1090
	addl	$40, %ebp # 1090
	call	utexture.2118 # 1090
	subl	$40, %ebp # 1090
	movl	$min_caml_rgb, %eax # 1091
	movl	$min_caml_texture_color, %ebx # 1091
	movsd	0(%eax), %xmm0 # 1045
	movsd	0(%ebx), %xmm1 # 1045
	movsd	32(%ebp), %xmm2 # 1045
	mulsd	%xmm2, %xmm1 # 1045
	addsd	%xmm1, %xmm0 # 1045
	movsd	%xmm0, 0(%eax) # 1045
	movsd	8(%eax), %xmm0 # 1046
	movsd	8(%ebx), %xmm1 # 1046
	mulsd	%xmm2, %xmm1 # 1046
	addsd	%xmm1, %xmm0 # 1046
	movsd	%xmm0, 8(%eax) # 1046
	movsd	16(%eax), %xmm0 # 1047
	movsd	16(%ebx), %xmm1 # 1047
	mulsd	%xmm2, %xmm1 # 1047
	addsd	%xmm1, %xmm0 # 1047
	movsd	%xmm0, 16(%eax) # 1047
	movl	8(%ebp), %eax # 1093
	cmpl	$4, %eax # 1093
	jg	jle_else.12567
	movl	$l.10929, %ebx # 1094
	movsd	0(%ebx), %xmm0 # 1094
	movsd	0(%ebp), %xmm1 # 1094
	comisd	%xmm0, %xmm1 # 1094
	ja	jbe_else.12568
	ret # 1132
jbe_else.12568:
	movl	$l.10931, %ebx # 1097
	movsd	0(%ebx), %xmm0 # 1097
	movl	$min_caml_vscan, %ebx # 1097
	movl	$min_caml_nvector, %ecx # 1097
	movsd	0(%ebx), %xmm3 # 1039
	movsd	0(%ecx), %xmm4 # 1039
	mulsd	%xmm4, %xmm3 # 1039
	movsd	8(%ebx), %xmm4 # 1039
	movsd	8(%ecx), %xmm5 # 1039
	mulsd	%xmm5, %xmm4 # 1039
	addsd	%xmm4, %xmm3 # 1039
	movsd	16(%ebx), %xmm4 # 1039
	movsd	16(%ecx), %xmm5 # 1039
	mulsd	%xmm5, %xmm4 # 1039
	addsd	%xmm4, %xmm3 # 1039
	mulsd	%xmm3, %xmm0 # 1097
	movl	$min_caml_vscan, %ebx # 1099
	movl	$min_caml_nvector, %ecx # 1099
	movsd	0(%ebx), %xmm3 # 1045
	movsd	0(%ecx), %xmm4 # 1045
	mulsd	%xmm0, %xmm4 # 1045
	addsd	%xmm4, %xmm3 # 1045
	movsd	%xmm3, 0(%ebx) # 1045
	movsd	8(%ebx), %xmm3 # 1046
	movsd	8(%ecx), %xmm4 # 1046
	mulsd	%xmm0, %xmm4 # 1046
	addsd	%xmm4, %xmm3 # 1046
	movsd	%xmm3, 8(%ebx) # 1046
	movsd	16(%ebx), %xmm3 # 1047
	movsd	16(%ecx), %xmm4 # 1047
	mulsd	%xmm4, %xmm0 # 1047
	addsd	%xmm0, %xmm3 # 1047
	movsd	%xmm3, 16(%ebx) # 1047
	movl	12(%ebp), %ebx # 1101
	movl	8(%ebx), %ecx # 1101
	cmpl	$1, %ecx # 1102
	jne	je_else.12570
	movl	$l.10769, %eax # 1105
	movsd	0(%eax), %xmm0 # 1105
	movl	28(%ebx), %eax # 1105
	movsd	8(%eax), %xmm3 # 151
	comisd	%xmm3, %xmm0 # 1105
	jne	je_else.12571
	ret # 1106
je_else.12571:
	movl	$min_caml_vscan, %eax # 1108
	movl	$min_caml_light, %ecx # 1108
	movsd	0(%eax), %xmm0 # 1039
	movsd	0(%ecx), %xmm3 # 1039
	mulsd	%xmm3, %xmm0 # 1039
	movsd	8(%eax), %xmm3 # 1039
	movsd	8(%ecx), %xmm4 # 1039
	mulsd	%xmm4, %xmm3 # 1039
	addsd	%xmm3, %xmm0 # 1039
	movsd	16(%eax), %xmm3 # 1039
	movsd	16(%ecx), %xmm4 # 1039
	mulsd	%xmm4, %xmm3 # 1039
	addsd	%xmm3, %xmm0 # 1039
	xorpd	min_caml_fnegd, %xmm0 # 1108
	movl	$l.10769, %eax # 1109
	movsd	0(%eax), %xmm3 # 1109
	comisd	%xmm3, %xmm0 # 1109
	ja	jbe_else.12573
	ret # 1119
jbe_else.12573:
	mulsd	%xmm0, %xmm0 # 1112
	mulsd	%xmm0, %xmm0 # 1112
	mulsd	%xmm1, %xmm0 # 1112
	mulsd	%xmm2, %xmm0 # 1112
	movl	28(%ebx), %eax # 1113
	movsd	8(%eax), %xmm1 # 151
	mulsd	%xmm1, %xmm0 # 1112
	movl	$min_caml_rgb, %eax # 1115
	movl	$min_caml_rgb, %ebx # 1115
	movsd	0(%ebx), %xmm1 # 1115
	addsd	%xmm0, %xmm1 # 1115
	movsd	%xmm1, 0(%eax) # 1115
	movl	$min_caml_rgb, %eax # 1116
	movl	$min_caml_rgb, %ebx # 1116
	movsd	8(%ebx), %xmm1 # 1116
	addsd	%xmm0, %xmm1 # 1116
	movsd	%xmm1, 8(%eax) # 1116
	movl	$min_caml_rgb, %eax # 1117
	movl	$min_caml_rgb, %ebx # 1117
	movsd	16(%ebx), %xmm1 # 1117
	addsd	%xmm0, %xmm1 # 1117
	movsd	%xmm1, 16(%eax) # 1117
	ret # 1117
je_else.12570:
	cmpl	$2, %ecx # 1121
	jne	je_else.12576
	movl	$min_caml_viewpoint, %ecx # 1124
	movl	$min_caml_crashed_point, %edx # 1124
	movsd	0(%edx), %xmm0 # 1124
	movsd	%xmm0, 0(%ecx) # 1124
	movl	$min_caml_viewpoint, %ecx # 1125
	movl	$min_caml_crashed_point, %edx # 1125
	movsd	8(%edx), %xmm0 # 1125
	movsd	%xmm0, 8(%ecx) # 1125
	movl	$min_caml_viewpoint, %ecx # 1126
	movl	$min_caml_crashed_point, %edx # 1126
	movsd	16(%edx), %xmm0 # 1126
	movsd	%xmm0, 16(%ecx) # 1126
	movl	$l.10792, %ecx # 1127
	movsd	0(%ecx), %xmm0 # 1127
	movl	28(%ebx), %ebx # 1127
	movsd	0(%ebx), %xmm2 # 141
	subsd	%xmm2, %xmm0 # 1127
	mulsd	%xmm1, %xmm0 # 1127
	addl	$1, %eax # 1128
	jmp	raytracing.2128 # 1128
je_else.12576:
	ret # 1130
jle_else.12567:
	ret # 1093
scan_point.2135:
	movl	$min_caml_size, %ebx # 1173
	movl	0(%ebx), %ebx # 1173
	cmpl	%eax, %ebx # 1173
	jg	jle_else.12579
	ret # 1173
jle_else.12579:
	movl	%eax, 0(%ebp) # 1176
	addl	$8, %ebp # 1176
	call	min_caml_float_of_int # 1176
	subl	$8, %ebp # 1176
	movl	$min_caml_scan_offset, %eax # 1176
	movsd	0(%eax), %xmm1 # 1176
	subsd	%xmm1, %xmm0 # 1176
	movl	$min_caml_scan_d, %eax # 1176
	movsd	0(%eax), %xmm1 # 1176
	mulsd	%xmm1, %xmm0 # 1176
	movl	$min_caml_vscan, %eax # 1178
	movl	$min_caml_cos_v, %ebx # 1178
	movsd	8(%ebx), %xmm1 # 1178
	mulsd	%xmm0, %xmm1 # 1178
	movl	$min_caml_wscan, %ebx # 1178
	movsd	0(%ebx), %xmm2 # 1178
	addsd	%xmm2, %xmm1 # 1178
	movsd	%xmm1, 0(%eax) # 1178
	movl	$min_caml_vscan, %eax # 1179
	movl	$min_caml_scan_sscany, %ebx # 1179
	movsd	0(%ebx), %xmm1 # 1179
	movl	$min_caml_cos_v, %ebx # 1179
	movsd	0(%ebx), %xmm2 # 1179
	mulsd	%xmm2, %xmm1 # 1179
	movl	$min_caml_vp, %ebx # 1179
	movsd	8(%ebx), %xmm2 # 1179
	subsd	%xmm2, %xmm1 # 1179
	movsd	%xmm1, 8(%eax) # 1179
	movl	$min_caml_vscan, %eax # 1180
	movsd	%xmm0, %xmm1 # 1180
	xorpd	min_caml_fnegd, %xmm1 # 1180
	movl	$min_caml_sin_v, %ebx # 1180
	movsd	8(%ebx), %xmm2 # 1180
	mulsd	%xmm2, %xmm1 # 1180
	movl	$min_caml_wscan, %ebx # 1180
	movsd	16(%ebx), %xmm2 # 1180
	addsd	%xmm2, %xmm1 # 1180
	movsd	%xmm1, 16(%eax) # 1180
	mulsd	%xmm0, %xmm0 # 1183
	movl	$min_caml_scan_met1, %eax # 1183
	movsd	0(%eax), %xmm1 # 1183
	addsd	%xmm1, %xmm0 # 1183
	addl	$8, %ebp # 1183
	call	min_caml_sqrt # 1183
	subl	$8, %ebp # 1183
	movl	$min_caml_vscan, %eax # 1184
	movl	$min_caml_vscan, %ebx # 1184
	movsd	0(%ebx), %xmm1 # 1184
	divsd	%xmm0, %xmm1 # 1184
	movsd	%xmm1, 0(%eax) # 1184
	movl	$min_caml_vscan, %eax # 1185
	movl	$min_caml_vscan, %ebx # 1185
	movsd	8(%ebx), %xmm1 # 1185
	divsd	%xmm0, %xmm1 # 1185
	movsd	%xmm1, 8(%eax) # 1185
	movl	$min_caml_vscan, %eax # 1186
	movl	$min_caml_vscan, %ebx # 1186
	movsd	16(%ebx), %xmm1 # 1186
	divsd	%xmm0, %xmm1 # 1186
	movsd	%xmm1, 16(%eax) # 1186
	movl	$min_caml_viewpoint, %eax # 1188
	movl	$min_caml_view, %ebx # 1188
	movsd	0(%ebx), %xmm0 # 1188
	movsd	%xmm0, 0(%eax) # 1188
	movl	$min_caml_viewpoint, %eax # 1189
	movl	$min_caml_view, %ebx # 1189
	movsd	8(%ebx), %xmm0 # 1189
	movsd	%xmm0, 8(%eax) # 1189
	movl	$min_caml_viewpoint, %eax # 1190
	movl	$min_caml_view, %ebx # 1190
	movsd	16(%ebx), %xmm0 # 1190
	movsd	%xmm0, 16(%eax) # 1190
	movl	$min_caml_rgb, %eax # 1193
	movl	$l.10769, %ebx # 1193
	movsd	0(%ebx), %xmm0 # 1193
	movsd	%xmm0, 0(%eax) # 1193
	movl	$min_caml_rgb, %eax # 1194
	movl	$l.10769, %ebx # 1194
	movsd	0(%ebx), %xmm0 # 1194
	movsd	%xmm0, 8(%eax) # 1194
	movl	$min_caml_rgb, %eax # 1195
	movl	$l.10769, %ebx # 1195
	movsd	0(%ebx), %xmm0 # 1195
	movsd	%xmm0, 16(%eax) # 1195
	movl	$0, %eax # 1198
	movl	$l.10792, %ebx # 1198
	movsd	0(%ebx), %xmm0 # 1198
	addl	$8, %ebp # 1198
	call	raytracing.2128 # 1198
	subl	$8, %ebp # 1198
	movl	$min_caml_rgb, %eax # 1141
	movsd	0(%eax), %xmm0 # 1141
	addl	$8, %ebp # 1141
	call	min_caml_int_of_float # 1141
	subl	$8, %ebp # 1141
	cmpl	$255, %eax # 1142
	jg	jle_else.12581
	jmp	jle_cont.12582
jle_else.12581:
	movl	$255, %eax # 1142
jle_cont.12582:
	addl	$8, %ebp # 1143
	call	min_caml_print_byte # 1143
	subl	$8, %ebp # 1143
	movl	$min_caml_rgb, %eax # 1145
	movsd	8(%eax), %xmm0 # 1145
	addl	$8, %ebp # 1145
	call	min_caml_int_of_float # 1145
	subl	$8, %ebp # 1145
	cmpl	$255, %eax # 1146
	jg	jle_else.12583
	jmp	jle_cont.12584
jle_else.12583:
	movl	$255, %eax # 1146
jle_cont.12584:
	addl	$8, %ebp # 1147
	call	min_caml_print_byte # 1147
	subl	$8, %ebp # 1147
	movl	$min_caml_rgb, %eax # 1149
	movsd	16(%eax), %xmm0 # 1149
	addl	$8, %ebp # 1149
	call	min_caml_int_of_float # 1149
	subl	$8, %ebp # 1149
	cmpl	$255, %eax # 1150
	jg	jle_else.12585
	jmp	jle_cont.12586
jle_else.12585:
	movl	$255, %eax # 1150
jle_cont.12586:
	addl	$8, %ebp # 1151
	call	min_caml_print_byte # 1151
	subl	$8, %ebp # 1151
	movl	0(%ebp), %eax # 1204
	addl	$1, %eax # 1204
	jmp	scan_point.2135 # 1204
scan_line.2137:
	movl	$min_caml_size, %ebx # 1211
	movl	0(%ebx), %ebx # 1211
	cmpl	%eax, %ebx # 1211
	jg	jle_else.12587
	ret # 1233
jle_else.12587:
	movl	$min_caml_scan_sscany, %ebx # 1220
	movl	$min_caml_scan_offset, %ecx # 1221
	movsd	0(%ecx), %xmm0 # 1221
	movl	$l.10792, %ecx # 1221
	movsd	0(%ecx), %xmm1 # 1221
	subsd	%xmm1, %xmm0 # 1221
	movl	%eax, 0(%ebp) # 1221
	movl	%ebx, 4(%ebp) # 1221
	movsd	%xmm0, 8(%ebp) # 1221
	addl	$16, %ebp # 1221
	call	min_caml_float_of_int # 1221
	subl	$16, %ebp # 1221
	movsd	8(%ebp), %xmm1 # 1221
	subsd	%xmm0, %xmm1 # 1221
	movl	$min_caml_scan_d, %eax # 1222
	movsd	0(%eax), %xmm0 # 1222
	mulsd	%xmm1, %xmm0 # 1222
	movl	4(%ebp), %eax # 1220
	movsd	%xmm0, 0(%eax) # 1220
	movl	$min_caml_scan_met1, %eax # 1224
	movl	$min_caml_scan_sscany, %ebx # 1224
	movsd	0(%ebx), %xmm0 # 1224
	mulsd	%xmm0, %xmm0 # 1224
	movl	$l.10941, %ebx # 1224
	movsd	0(%ebx), %xmm1 # 1224
	addsd	%xmm1, %xmm0 # 1224
	movsd	%xmm0, 0(%eax) # 1224
	movl	$min_caml_scan_sscany, %eax # 1226
	movsd	0(%eax), %xmm0 # 1226
	movl	$min_caml_sin_v, %eax # 1226
	movsd	0(%eax), %xmm1 # 1226
	mulsd	%xmm1, %xmm0 # 1226
	movl	$min_caml_wscan, %eax # 1227
	movl	$min_caml_sin_v, %ebx # 1227
	movsd	8(%ebx), %xmm1 # 1227
	mulsd	%xmm0, %xmm1 # 1227
	movl	$min_caml_vp, %ebx # 1227
	movsd	0(%ebx), %xmm2 # 1227
	subsd	%xmm2, %xmm1 # 1227
	movsd	%xmm1, 0(%eax) # 1227
	movl	$min_caml_wscan, %eax # 1228
	movl	$min_caml_cos_v, %ebx # 1228
	movsd	8(%ebx), %xmm1 # 1228
	mulsd	%xmm1, %xmm0 # 1228
	movl	$min_caml_vp, %ebx # 1228
	movsd	16(%ebx), %xmm1 # 1228
	subsd	%xmm1, %xmm0 # 1228
	movsd	%xmm0, 16(%eax) # 1228
	movl	$0, %eax # 1229
	addl	$16, %ebp # 1229
	call	scan_point.2135 # 1229
	subl	$16, %ebp # 1229
	movl	0(%ebp), %eax # 1230
	addl	$1, %eax # 1230
	jmp	scan_line.2137 # 1230
.globl	min_caml_start
min_caml_start:
.globl	_min_caml_start
_min_caml_start: # for cygwin
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%esi
	pushl	%edi
	pushl	%ebp
	movl	32(%esp),%ebp
	movl	36(%esp),%eax
	movl	%eax,min_caml_hp
	movl	$768, %eax # 1261
	movl	$768, %ebx # 1261
	movl	$0, %ecx # 1261
	movl	$min_caml_size, %edx # 1253
	movl	%eax, 0(%edx) # 1253
	movl	$min_caml_size, %eax # 1254
	movl	%ebx, 4(%eax) # 1254
	movl	$min_caml_dbg, %eax # 1255
	movl	%ecx, 0(%eax) # 1255
	call	read_environ.2029 # 456
	movl	$0, %eax # 418
	call	read_nth_object.2031 # 410
	cmpl	$0, %eax # 410
	jne	je_else.12589
	jmp	je_cont.12590
je_else.12589:
	movl	$1, %eax # 411
	call	read_nth_object.2031 # 410
	cmpl	$0, %eax # 410
	jne	je_else.12591
	jmp	je_cont.12592
je_else.12591:
	movl	$2, %eax # 411
	call	read_nth_object.2031 # 410
	cmpl	$0, %eax # 410
	jne	je_else.12593
	jmp	je_cont.12594
je_else.12593:
	movl	$3, %eax # 411
	call	read_nth_object.2031 # 410
	cmpl	$0, %eax # 410
	jne	je_else.12595
	jmp	je_cont.12596
je_else.12595:
	movl	$4, %eax # 411
	call	read_object.2033 # 411
je_cont.12596:
je_cont.12594:
je_cont.12592:
je_cont.12590:
	call	min_caml_read_int # 426
	cmpl	$-1, %eax # 427
	jne	je_else.12597
	movl	$1, %eax # 427
	movl	$-1, %ebx # 427
	call	min_caml_create_array # 427
	jmp	je_cont.12598
je_else.12597:
	movl	%eax, 0(%ebp) # 426
	addl	$8, %ebp # 426
	call	min_caml_read_int # 426
	subl	$8, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.12599
	movl	$2, %eax # 427
	movl	$-1, %ebx # 427
	addl	$8, %ebp # 427
	call	min_caml_create_array # 427
	subl	$8, %ebp # 427
	jmp	je_cont.12600
je_else.12599:
	movl	%eax, 4(%ebp) # 426
	addl	$8, %ebp # 426
	call	min_caml_read_int # 426
	subl	$8, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.12601
	movl	$3, %eax # 427
	movl	$-1, %ebx # 427
	addl	$8, %ebp # 427
	call	min_caml_create_array # 427
	subl	$8, %ebp # 427
	jmp	je_cont.12602
je_else.12601:
	movl	%eax, 8(%ebp) # 426
	addl	$16, %ebp # 426
	call	min_caml_read_int # 426
	subl	$16, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.12603
	movl	$4, %eax # 427
	movl	$-1, %ebx # 427
	addl	$16, %ebp # 427
	call	min_caml_create_array # 427
	subl	$16, %ebp # 427
	jmp	je_cont.12604
je_else.12603:
	movl	$4, %ebx # 429
	movl	%eax, 12(%ebp) # 429
	movl	%ebx, %eax
	addl	$16, %ebp # 429
	call	read_net_item.2037 # 429
	subl	$16, %ebp # 429
	movl	12(%ebp), %ebx # 430
	movl	%ebx, 12(%eax) # 430
je_cont.12604:
	movl	8(%ebp), %ebx # 430
	movl	%ebx, 8(%eax) # 430
je_cont.12602:
	movl	4(%ebp), %ebx # 430
	movl	%ebx, 4(%eax) # 430
je_cont.12600:
	movl	0(%ebp), %ebx # 430
	movl	%ebx, 0(%eax) # 430
je_cont.12598:
	movl	0(%eax), %ebx # 446
	cmpl	$-1, %ebx # 446
	jne	je_else.12605
	jmp	je_cont.12606
je_else.12605:
	movl	$min_caml_and_net, %ebx # 448
	movl	%eax, 0(%ebx) # 448
	movl	$1, %eax # 449
	addl	$16, %ebp # 449
	call	read_and_network.2041 # 449
	subl	$16, %ebp # 449
je_cont.12606:
	movl	$min_caml_or_net, %eax # 459
	movl	%eax, 16(%ebp) # 426
	addl	$24, %ebp # 426
	call	min_caml_read_int # 426
	subl	$24, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.12607
	movl	$1, %eax # 427
	movl	$-1, %ebx # 427
	addl	$24, %ebp # 427
	call	min_caml_create_array # 427
	subl	$24, %ebp # 427
	movl	%eax, %ebx # 427
	jmp	je_cont.12608
je_else.12607:
	movl	%eax, 20(%ebp) # 426
	addl	$24, %ebp # 426
	call	min_caml_read_int # 426
	subl	$24, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.12609
	movl	$2, %eax # 427
	movl	$-1, %ebx # 427
	addl	$24, %ebp # 427
	call	min_caml_create_array # 427
	subl	$24, %ebp # 427
	jmp	je_cont.12610
je_else.12609:
	movl	%eax, 24(%ebp) # 426
	addl	$32, %ebp # 426
	call	min_caml_read_int # 426
	subl	$32, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.12611
	movl	$3, %eax # 427
	movl	$-1, %ebx # 427
	addl	$32, %ebp # 427
	call	min_caml_create_array # 427
	subl	$32, %ebp # 427
	jmp	je_cont.12612
je_else.12611:
	movl	%eax, 28(%ebp) # 426
	addl	$32, %ebp # 426
	call	min_caml_read_int # 426
	subl	$32, %ebp # 426
	cmpl	$-1, %eax # 427
	jne	je_else.12613
	movl	$4, %eax # 427
	movl	$-1, %ebx # 427
	addl	$32, %ebp # 427
	call	min_caml_create_array # 427
	subl	$32, %ebp # 427
	jmp	je_cont.12614
je_else.12613:
	movl	$4, %ebx # 429
	movl	%eax, 32(%ebp) # 429
	movl	%ebx, %eax
	addl	$40, %ebp # 429
	call	read_net_item.2037 # 429
	subl	$40, %ebp # 429
	movl	32(%ebp), %ebx # 430
	movl	%ebx, 12(%eax) # 430
je_cont.12614:
	movl	28(%ebp), %ebx # 430
	movl	%ebx, 8(%eax) # 430
je_cont.12612:
	movl	24(%ebp), %ebx # 430
	movl	%ebx, 4(%eax) # 430
je_cont.12610:
	movl	20(%ebp), %ebx # 430
	movl	%ebx, 0(%eax) # 430
	movl	%eax, %ebx # 430
je_cont.12608:
	movl	0(%ebx), %eax # 436
	cmpl	$-1, %eax # 436
	jne	je_else.12615
	movl	$1, %eax # 437
	addl	$40, %ebp # 437
	call	min_caml_create_array # 437
	subl	$40, %ebp # 437
	jmp	je_cont.12616
je_else.12615:
	movl	$1, %eax # 439
	movl	%ebx, 36(%ebp) # 439
	addl	$40, %ebp # 439
	call	read_or_network.2039 # 439
	subl	$40, %ebp # 439
	movl	36(%ebp), %ebx # 440
	movl	%ebx, 0(%eax) # 440
je_cont.12616:
	movl	16(%ebp), %ebx # 459
	movl	%eax, 0(%ebx) # 459
	movl	$80, %eax # 1158
	addl	$40, %ebp # 1158
	call	min_caml_print_byte # 1158
	subl	$40, %ebp # 1158
	movl	$54, %eax # 1159
	addl	$40, %ebp # 1159
	call	min_caml_print_byte # 1159
	subl	$40, %ebp # 1159
	movl	$10, %eax # 1160
	addl	$40, %ebp # 1160
	call	min_caml_print_byte # 1160
	subl	$40, %ebp # 1160
	movl	$min_caml_size, %eax # 1161
	movl	0(%eax), %eax # 1161
	addl	$40, %ebp # 1161
	call	min_caml_print_int # 1161
	subl	$40, %ebp # 1161
	movl	$32, %eax # 1162
	addl	$40, %ebp # 1162
	call	min_caml_print_byte # 1162
	subl	$40, %ebp # 1162
	movl	$min_caml_size, %eax # 1163
	movl	4(%eax), %eax # 1163
	addl	$40, %ebp # 1163
	call	min_caml_print_int # 1163
	subl	$40, %ebp # 1163
	movl	$10, %eax # 1164
	addl	$40, %ebp # 1164
	call	min_caml_print_byte # 1164
	subl	$40, %ebp # 1164
	movl	$255, %eax # 1165
	addl	$40, %ebp # 1165
	call	min_caml_print_int # 1165
	subl	$40, %ebp # 1165
	movl	$10, %eax # 1166
	addl	$40, %ebp # 1166
	call	min_caml_print_byte # 1166
	subl	$40, %ebp # 1166
	movl	$min_caml_size, %eax # 1241
	movl	0(%eax), %eax # 1241
	addl	$40, %ebp # 1241
	call	min_caml_float_of_int # 1241
	subl	$40, %ebp # 1241
	movl	$min_caml_scan_d, %eax # 1242
	movl	$l.10943, %ebx # 1242
	movsd	0(%ebx), %xmm1 # 1242
	divsd	%xmm0, %xmm1 # 1242
	movsd	%xmm1, 0(%eax) # 1242
	movl	$min_caml_scan_offset, %eax # 1243
	movl	$l.10807, %ebx # 1243
	movsd	0(%ebx), %xmm1 # 1243
	divsd	%xmm1, %xmm0 # 1243
	movsd	%xmm0, 0(%eax) # 1243
	movl	$0, %eax # 1244
	addl	$40, %ebp # 1244
	call	scan_line.2137 # 1244
	subl	$40, %ebp # 1244
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
