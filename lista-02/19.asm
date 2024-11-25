.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $9, $0, 10
	
	div $8, $9
	mflo $8
	mfhi $10
	addi $11, $0, 1
	mul $12, $11, $10 # 8
	div $8, $9
	mflo $8
	mfhi $10
	addi $11, $0, 2
	mul $13, $11, $10 # 7
	div $8, $9
	mflo $8
	mfhi $10
	addi $11, $0, 4
	mul $14, $11, $10 # 6
	div $8, $9
	mflo $8
	mfhi $10
	addi $11, $0, 8
	mul $15, $11, $10 # 5
	div $8, $9
	mflo $8
	mfhi $10
	addi $11, $0, 16
	mul $16, $11, $10 # 4
	div $8, $9
	mflo $8
	mfhi $10
	addi $11, $0, 32
	mul $17, $11, $10 # 3
	div $8, $9
	mflo $8
	mfhi $10
	addi $11, $0, 64
	mul $18, $11, $10 # 2
	div $8, $9
	mflo $8
	mfhi $10
	addi $11, $0, 128
	mul $19, $11, $10 # 1
	
	add $8, $12, $13
	add $8, $8, $14
	add $8, $8, $15
	add $8, $8, $16
	add $8, $8, $17
	add $8, $8, $18
	add $8, $8, $19
	
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
	