.text
main:
	addi $2, $0, 5
	syscall
	addi $8, $0, 30
	addi $9, $0, 8
	div $2, $9
	mflo $10
	add $11, $10, $2
	addi $12, $0, 2
	div $11, $12
	mfhi $13
	add $14, $8, $13
	add $4, $0, $14
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall