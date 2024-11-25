.text
main:	
	addi $2, $0, 5
	syscall
	addi $8, $0, 1
	add $9, $0, $2
	srl $10, $9, 31
	beq $10, $0, positivo
	beq $10, $8, negativo
	
positivo:
	add $11, $9, $9
	add $4, $0, $11
	j print

negativo:
	mul $11, $9, $9
	add $4, $0, $11
	
print:
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall
	
	
	