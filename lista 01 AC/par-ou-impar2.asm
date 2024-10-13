.text
main: 
	addi $2, $0, 5
	syscall
	addi $8, $0, 2
	div $2, $8
	mfhi $9
	sub $10, $0, $9
	add $4, $0, $10
	addi $2, $0, 1
	syscall