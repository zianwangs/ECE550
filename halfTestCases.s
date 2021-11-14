nop

addi $1, $0, 65535      # r1 = 65535 = 0x0000FFFF
sll $2, $1, 15			# r2 = r1 << 15 = 0x7FFF8000 = 2147450880(decimal)
addi $3, $2, 32767		# r3 = r2 + 32767 = 0x7FFF8000 + 0x00007FFF = 0x7FFFFFFF(hex) = 2147483647(decimal)
addi $4, $0, 1			# r4 = 1
add $6, $1, $4			# r6 = 65535 + 1 = 65536  (normal addition) (then how about overflow addition?)
sll $7, $4, 31			# r7 = r4 << 31 = 0x80000000(hex) = -2147483648(decimal)
add $8, $2, $2
sub $9, $1, $4			# r9 = r1 - r4 = 65535 - 1 = 65534 (normal sub) (then how about overflow sub?)
and $10, $1, $2			# r10 = r1 & r2 = 0x0000FFFF & 0x7FFF8000 = 0x00008000(hex) = 32768(decimal)
or $12, $1, $2			# r12 = r1 | r2 = 0x0000FFFF | 0x7FFF8000 = 0x7FFFFFFF(hex) = 2147483647(decimal)

addi $20, $0, 2         # r20 = 2
add $21, $4, $20        # r21 = 3
sub $22, $20, $4        # r22 = 1
and $23, $22, $21       # r23 = 1 & 3 = 1
or $24, $20, $23        # r24 = 2 | 1 = 3
sll $25, $23,1          # r25 = 1 << 1 = 2
sra $26, $25,1          # r26 = 2 >> 1 = 1 

sw $4, 1($0)			# store 1 into address 1
sw $20, 2($0)			# store 2 into address 2
addi $27, $0, 456		# r27 = 456 
sw $1, 0($27)			# store 65535 into address 456
lw $28, 1($0)			# load 1 from address 1 into r28
lw $29, 2($0)			# load 2 from address 2 into r29
lw $19, 0($27)			# load 65535 from address 456 into r19
add $0, $0, $0
add $1, $1, $0
add $2, $2, $0
add $3, $3, $0
add $4, $4, $0
add $5, $5, $0
add $6, $6, $0
add $7, $7, $0
add $8, $8, $0
add $9, $9, $0
add $10, $10, $0
add $11, $11, $0
add $12, $12, $0
add $13, $13, $0
add $14, $14, $0
add $15, $15, $0
add $16, $16, $0
add $17, $17, $0
add $18, $18, $0
add $19, $19, $0
add $20, $20, $0
add $21, $21, $0
add $22, $22, $0
add $23, $23, $0
add $24, $24, $0
add $25, $25, $0
add $26, $26, $0
add $27, $27, $0
add $28, $28, $0
add $29, $29, $0
add $30, $30, $0
