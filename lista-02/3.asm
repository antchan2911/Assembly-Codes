.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	slt $10, $8, $9
	slt $11, $9, $8
	beq $10, $0, m1
	beq $11, $0, m2

m1:
	add $4, $0, $8
	sub $12, $8, $9
	j print

m2:
	add $4, $0, $9
	sub $12, $9, $8
	
print:
	addi $2, $0, 1
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall