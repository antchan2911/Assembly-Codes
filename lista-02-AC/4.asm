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
	
	slt $10, $8, $9 # -> Se 8 < 9, 1 : 0
	
	beq $8, $9, iguais
	beq $10, $0, maior
	addi $4, $0, '<'
	j print
	
iguais:
	addi $4, $0, '='
	j print

maior:
	addi $4, $0, '>'
	
print:
	addi $2, $0, 11
	syscall
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
