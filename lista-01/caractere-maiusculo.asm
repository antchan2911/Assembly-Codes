.text
main:
	addi $8, $0, 32
	addi $2, $0 12
	syscall
	sub $9, $2, $8
	addi $4, $0, '\n'
	addi $2, $0, 11
	add $4, $0 $9
	addi $2, $0, 11
	syscall
	addi $2, $0, 10
	syscall