.text
main:
	addi $8, $0, 65
	addi $9, $0, 40
	addi $10, $0, 60
	addi $11, $0, 36
	
	addi $2, $0, 5
	syscall
	add $12, $0, $2 # idade
	addi $2, $0, 5
	syscall
	add $13, $0, $2 # tempo de serviço
	
	slt $14, $12, $8 # se 12 < 8 -> 1 : 0
	slt $15, $13, $9
	slt $16, $12, $10
	slt $17, $13, $11
	or $18, $16, $17
	beq $14, $0, apos
	beq $15, $0, apos
	beq $18, $0, apos
	addi $4, $0, 'N'
	j print
	

apos:
	addi $4, $0, 'S'
	
print:
	addi $2, $0, 11
	syscall
	
	addi $2, $0, 10
	syscall