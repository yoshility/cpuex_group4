.section    ".rodata"
.align 8
.section    ".text"
    addi a0, x0, 5
L1:
	beq a0, x0, end
	addi a0, a0, -1
	jal x0, L1
end:
	addi a1, x0, 100
    jalr x0, ra, 0