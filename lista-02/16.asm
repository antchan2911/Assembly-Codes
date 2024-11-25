.text
msin:
	addi $8, $2, 10
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # 9 primeiros digitos
	
	div $9, $8
	mflo $10
	mfhi $11 # 9
	div $10, $8
	mflo $10
	mfhi $12 # 8
	div $10, $8
	mflo $10
	mfhi $13 # 7
	div $10, $8
	mflo $10
	mfhi $14 # 6
	div $10, $8
	mflo $10
	mfhi $15 # 5
	div $10, $8
	mflo $10
	mfhi $16 # 4
	div $10, $8
	mflo $10
	mfhi $17 # 3
	div $10, $8
	mflo $10
	mfhi $18 # 2
	div $10, $8
	mflo $10
	mfhi $19 # 1
	
	mul $8, $19, $8 # 1
	addi $9, $0, 9
	mul $9, $18, $9  # 2
	addi $10, $0, 8
	mul $10, $17, $10 # 3
	addi $20, $0, 7
	mul $20, $16, $20 # 4
	addi $21, $0, 6
	mul $21, $15, $21 # 5
	addi $22, $0, 5
	mul $22, $14, $22 # 6
	addi $23, $0, 4
	mul $23, $13, $23 # 7
	addi $24, $0, 3 
	mul $24, $12, $24 # 8
	addi $25, $0, 2
	mul $25, $11, $25 # 9
	
	# soma digito 1
	
	add $8, $8, $9
	add $8, $8, $10
	add $8, $8, $20
	add $8, $8, $21
	add $8, $8, $22
	add $8, $8, $23
	add $8, $8, $24
	add $8, $8, $25 # soma final
	
	# não mexer (11 - 19)
	
	addi $9, $0, 11
	div $8, $9
	mfhi $9
	addi $10, $0, 2
	slt $10, $9, $10
	addi $20, $0, 1
	beq $20, $10, menorQ2
	addi $8, $0, 11
	sub $8, $8, $9 # digito 1
	j digito2
	
menorQ2:
	addi $8, $0, 0 # digito 1

digito2:
	addi $9, $0, 11
	mul $9, $9, $19 # 1
	addi $10, $0, 10
	mul $10, $10, $18 # 2
	addi $19, $0, 9
	mul $19, $19, $17 # 3
	addi $18, $0, 8
	mul $18, $18, $16 # 4
	addi $17, $0, 7
	mul $17, $17, $15 # 5
	addi $16, $0, 6
	mul $16, $16, $14 # 6
	addi $15, $0, 5
	mul $15, $15, $13 # 7
	addi $14, $0, 4
	mul $14, $14, $12 # 8
	addi $13, $0, 3
	mul $13, $13, $11 # 9
	addi $12, $0, 2
	mul $12, $12, $8 # 10
	
	add $9, $9, $10
	add $9, $9, $19
	add $9, $9, $18
	add $9, $9, $17
	add $9, $9, $16
	add $9, $9, $15
	add $9, $9, $14
	add $9, $9, $13
	add $9, $9, $12 # soma final
	
	addi $10, $0, 11
	div $9, $10
	mfhi $11 # resto digito 2
	addi $12, $0, 2
	slt $12, $11, $12
	addi $13, $0, 1
	beq $13, $12, menorQ2D2
	sub $9, $10, $11
	j print
	
menorQ2D2:
	addi $9, $0, 0

print:
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
	
	
	
	
	
	

	