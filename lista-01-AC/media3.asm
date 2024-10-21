.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	addi $11, $0, 27
	sll $12, $8, 1
	add $13, $12, $8
	sll $14, $9, 3
	add $15, $14, $9
	sll $16, $10, 4
	sub $17, $16, $10
	add $18, $13, $15
	add $19, $18, $17
	div $19, $11
	mflo $20
	add $4, $0, $20
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall