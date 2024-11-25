.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # A = 550
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # B = 32
	slt $10, $8, $9 # 0
	slt $11, $9, $8 # 1
	beq $11, $10, iguais
	beq $10, $0, m1
	beq $11, $0, m2

m1:
	add $4, $0, $8
	j print

m2:
	add $4, $0, $9
	j print
	
iguais:
	addi $4, $0, '='
	addi $2, $0, 11
	syscall
	addi $2, $0, 10
	syscall

print:
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall
	