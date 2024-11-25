.text
main:
	addi $2, $0, 5
	syscall
	
	add $8, $0, 2
	div $2, $8
	mflo $9
	mfhi $10
	div $9, $8
	mflo $11
	mfhi $12
	div $11, $8
	mflo $13
	mfhi $14
	div $13, $8
	mflo $15
	mfhi $16
	div $15, $8
	mfhi $17
	
	add $4, $0, $17
	addi $2, $0, 1
	syscall
	add $4, $0, $16
	addi $2, $0, 1
	syscall
	add $4, $0, $14
	addi $2, $0, 1
	syscall
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall