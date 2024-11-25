.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, 2
	add $9, $0, $2
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	add $11, $9, $10
	div $11, $8
	mflo $12 #quociente
	mfhi $13 #resto1
	addi $14, $0, 10
	mul $15, $13, $14
	div $15, $8
	mflo $16
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	addi $4, $0, ','
	addi $2, $0, 11
	syscall
	add $4, $0, $16
	addi $2, $0, 1
	syscall
	