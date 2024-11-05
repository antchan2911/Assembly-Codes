.text
main:
	addi $8, $0, 3
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	addi $2, $0, 5
	syscall
	add $11, $0, $2
	
	add $12, $9, $10
	add $12, $12, $11
	div $12, $8
	mflo $12 # media
	mfhi $13
	addi $9, $0, 10
	mul $9, $13, $9
	div $9, $8
	mflo $9 # parte decimal em forma inteira(ex: 0,5 -> 5)
	addi $10, $0, 5
	slt $10, $9, $10
	beq $10, $0, arr
	add $4, $0, $12
	j print
	
arr:
	addi $8, $0, 1
	add $9, $8, $12
	add $4, $0, $9
	
print:
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
	
	