.text
main:
	addi $8, $0, 10
	addi $9, $0, 100
	addi $10, $0, 1000
	
	addi $2, $0, 5
	syscall
	add $11, $0, $2 # input
	
	slt $12, $11, $8 # se for menor que 10 -> 1
	addi $8, $0, 1
	
	beq $12, $8, umDigito
	
	slt $12, $11, $9
	
	beq $12, $8, doisDigitos
	
	slt $12, $11, $10
	
	beq $12, $8, tresDigitos
	j print
	
umDigito:
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	j print
	
doisDigitos:
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	j print
	
tresDigitos:
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	
print:
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall