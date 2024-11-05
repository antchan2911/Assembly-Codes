.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # dia
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # mes
	addi $2, $0, 5
	syscall
	add $10, $0, $2 # ano
	
	addi $11, $0, 1
	addi $12, $0, 2
	addi $13, $0, 3
	addi $14, $0, 5
	addi $15, $0, 7
	addi $16, $0, 8
	addi $17, $0, 10
	addi $18, $0, 12
	beq $9, $11, mes31
	beq $9, $12, mes2829
	beq $9, $13, mes31
	beq $9, $14, mes31
	beq $9, $15, mes31
	beq $9, $16, mes31
	beq $9, $17, mes31
	beq $9, $18, mes31
	addi $11, $0, 13
	slt $12, $9, $11 # a
	addi $11, $0, 1
	slt $13, $9, $11 # b
	not $13, $13
	and $14, $12, $13 # a AND (NOT b)
	beq $14, $0, invalido
	addi $11, $0, 30
	slt $12, $11, $8
	addi $13, $0, 1
	slt $13, $8, $13
	beq $13, $12, valido
	addi $4, $0, 'N'
	j print
	
mes31:
	addi $11, $0, 31
	slt $12, $11, $8
	addi $13, $0, 1
	slt $13, $8, $13
	beq $13, $12, valido
	add $4, $0, 'N'
	j print
	
mes2829:
	# verificar se o ano é bissexto
	addi $11, $0, 4
	addi $12, $0, 100
	addi $13, $0, 400
	div $10, $11
	mfhi $11 # resto da divisão por 4
	div $10, $12
	mfhi $12 # resto da divisão por 100
	div $10, $13
	mfhi $13 # resto da divisão por 400
	addi $14, $0, 1
	slt $14, $12, $14
	beq $11, $14, bissexto
	or $11, $12, $13
	beq $0, $11, bissexto
	addi $11, $0, 28
	slt $12, $11, $8
	addi $13, $0, 1
	slt $13, $8, $13
	beq $13, $12, valido
	addi $4, $0, 'N'
	j print
	
bissexto:
	addi $11, $0, 29
	slt $12, $11, $8
	addi $13, $0, 1
	slt $13, $8, $13
	beq $13, $12, valido
	addi $4, $0, 'N'
	j print

invalido:
	addi $4, $0, 'N'
	j print
	
valido:
	addi $4, $0, 'S'
	
print:
	addi $2, $0, 11
	syscall
	
	addi $2, $0, 10
	syscall
	