.text
main:
	addi $2, $0, 5
	syscall
	sra $8, $2, 1
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	add $2, $0, 10
	syscall