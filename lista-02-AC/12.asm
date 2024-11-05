.text
main:
	addi $8, $0, 5
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # nota1
	addi $2, $0, 5
	syscall
	add $10, $0, $2 # nota2
	addi $2, $0, 5
	syscall
	add $11, $0, $2 # faltas
	
	div $11, $8
	mflo $11
	addi $12, $0, 10
	mul $12, $11, $12 # penalidade na nota
	
	sll $13, $9, 1
	sll $14, $10, 1
	add $14, $14, $10
	add $13, $13, $14
	div $13, $8
	mflo $13 # nota sem penalidade
	
	sub $14, $13, $12
	
	add $4, $0, $13
	addi $2, $0, 1
	syscall
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	add $4, $0, $14
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall