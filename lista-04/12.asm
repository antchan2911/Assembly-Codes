.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	j triangulo

fim:
	addi $2, $0, 10
	syscall
	
	
	
triangulo:
	addi $9, $0, 1
	sll $8, $8, 1
	sub $8, $8, $9 # numero de quebras de linha
	add $10, $0, 2
	div $8, $10
	mflo $10
	add $9, $10, $9 # meio (total somando)
	sub $10, $8, $9 # total subtraindo
	addi $11, $9, 1 # range meio
	addi $12, $0, 1 # i

forExt:
	beq $11, $12, fimFor1
	addi $13, $0, 0 # j
forInt:
	beq $12, $13, fimForInt
	jal asterisco
	addi $13, $13, 1
	j forInt
fimForInt:
	jal quebraLinha
	addi $12, $12, 1
	j forExt
	
fimFor1:
	addi $14, $0, 0 # range sub
	add $15, $0, $10 # i
forExt2:
	beq $14, $15, fim
	addi $16, $0, 0 # j
forInt2:
	beq $15, $16, fimForInt2
	jal asterisco
	addi $16, $16, 1
	j forInt2
fimForInt2:
	jal quebraLinha
	sub $15, $15, 1 # i--
	j forExt2


asterisco:
	addi $4, $0, '*'
	addi $2, $0, 11
	syscall
	jr $31
	
quebraLinha:
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	jr $31