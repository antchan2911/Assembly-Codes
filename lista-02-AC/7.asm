.text
main:
	addi $8, $0, 4
	addi $9, $0, 100
	addi $10, $0, 400
	addi $2, $0, 5
	syscall
	add $11, $0, $2
	
	div $11, $8
	mfhi $8
	div $11, $9
	mfhi $9 # resto da div por 100
	div $11, $10
	mfhi $10 # resto da div por 400
	or $11, $9, $10
	
	
	beq $8, $0, bissexto
	beq $11, $0, bissexto
	addi $4, $0, 'N'
	j print
	
	
bissexto:
	addi $4, $0, 'S'
	
print:
	addi $2, $0, 11
	syscall
	
	addi $2, $0, 10
	syscall
	
	
	