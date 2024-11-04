.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # n1
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # n2
	addi $2, $0, 5
	syscall
	add $10, $0, $2 # n3
	
	sll $9, $9, 1
	sll $11, $10, 1
	add $10, $11, $10
	add $11, $8, $9
	add $8, $11, $10
	addi $9, $0, 6
	div $8, $9
	mflo $8 # media
	
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $9, $0, 60
	slt $9, $8, $9 # se 8 < 9 -> 1 : 0
	
	beq $9, $0, apv
	addi $4, $0, 'R'
	j print
	
apv:
	addi $4, $0, 'A'

print:
	
	addi $2, $0, 11
	syscall
	
	addi $2, $0, 10
	syscall
	