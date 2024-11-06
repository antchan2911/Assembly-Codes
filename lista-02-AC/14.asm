.text
main:
	addi $8, $0, 10
	addi $9, $0, 100
	addi $10, $0, 1000
	
	addi $2, $0, 5
	syscall
	add $11, $0, $2 # input 1
	
	addi $2, $0, 5
	syscall
	add $12, $0, $2 # input 2
	
	 slt $13, $11, $8
	 addi $14, $0, 1
	 beq $13, $14, umDigitoN1
	 
	 slt $13, $11, $9
	 beq $13, $14, doisDigitosN1
	 
	 slt $13, $11, $10
	 beq $13, $14, tresDigitosN1
	 j numero2

umDigitoN1:
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	j numero2

doisDigitosN1:
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	j numero2
	
tresDigitosN1:
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	j numero2
	
numero2:
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	addi $4, $0, ','
	addi $2, $0, 11
	syscall
	
	slt $13, $12, $8
	beq $13, $14, umDigitoN2
	
	slt $13, $12, $9
	beq $13, $14, doisDigitosN2
	
	slt $13, $12, $10
	beq $13, $14, tresDigitosN2
	j fim

umDigitoN2:
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	j fim

doisDigitosN2:
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	j fim
	
tresDigitosN2:
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	
fim:
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
	
	
	 
	 
	 
	 
	