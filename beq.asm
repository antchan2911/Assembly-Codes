.text
main: 
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	beq $8, $9, iguais
	j diff

iguais:
	addi $4, $0, '='
	addi $2, $0, 11
	syscall
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall
diff:
	addi $4, $0, '~'
	addi $2, $0, 11
	syscall
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall
