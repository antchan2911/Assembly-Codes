.text
main:
	addi $8, $0, 11 # range do i
	addi $9, $0, 4 # range do j
	addi $10, $0, 1 # i
	
forExt:
	beq $8, $10, fimFor1
	addi $11, $0, 1 # j
	
forInt:
	beq $9, $11, fimForInt
	mul $12, $10, $11
	addi $13, $0, 10
	addi $14, $0, 1
	slt $15, $10, $13
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	addi $4, $0, 'x'
	addi $2, $0, 11
	syscall
	jal formatar
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	jal espacoAntesIgual # parte 1 caderno
	addi $4, $0, '='
	addi $2, $0, 11
	syscall
	slt $15, $12, $13
	jal formatar
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	addi $11, $11, 1
	j forInt

fimForInt:
	jal quebraLinha
	addi $10, $10, 1
	j forExt # parte 2 caderno

fimFor1:
	jal quebraLinha
	addi $9, $0, 7 # range j
	addi $10, $0, 1 # i
	
forExt2:
	beq $8, $10, fimFor2
	addi $11, $0, 4 # j
	
forInt2:
	beq $9, $11, fimForInt2
	mul $12, $10, $11
	slt $15, $10, $13
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	addi $4, $0, 'x'
	addi $2, $0, 11
	syscall
	jal formatar
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	jal espacoAntesIgual
	addi $4, $0, '='
	addi $2, $0, 11
	syscall # parte 3 caderno
	slt $15, $12, $13
	jal formatar
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	addi $11, $11, 1
	j forInt2
	
fimForInt2:
	jal quebraLinha
	addi $10, $10, 1
	j forExt2
	
	
	
fimFor2:
	jal quebraLinha
	addi $9, $0, 10 # range j
	addi $10, $0, 1 # i
	
forExt3:
	beq $8, $10, fimFor3
	addi $11, $0, 7 # j # parte 4 caderno
	
forInt3:
	beq $9, $11, fimForInt3
	mul $12, $10, $11
	slt $15, $10, $13
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	addi $4, $0, 'x'
	addi $2, $0, 11
	syscall
	jal formatar
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	jal espacoAntesIgual
	addi $4, $0, '='
	addi $2, $0, 11
	syscall
	slt $15, $12, $13
	jal formatar
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall # parte 5 caderno
	
	addi $11, $11, 1
	j forInt3
	
fimForInt3:
	jal quebraLinha
	addi $10, $10, 1
	j forExt3
	
fimFor3:
	jal quebraLinha
	addi $9, $0, 11 # range j
	addi $10, $0, 1 # i

forExt4:
	beq $8, $10, fimPrograma
	addi $11, $0, 10 # j

forInt4:
	beq $9, $11, fimForInt4
	mul $12, $10, $11
	addi $16, $0, 100
	slt $15, $10, $13
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	addi $4, $0, 'x'
	addi $2, $0, 11
	syscall # parte 6 caderno
	jal formatar
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	jal espacoAntesIgual
	addi $4, $0, '='
	addi $2, $0, 11
	syscall
	slt $15, $12, $16
	jal formatar
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	
	addi $11, $11, 1
	j forInt4

fimForInt4:
	jal quebraLinha
	addi $10, $10, 1
	j forExt4

fimPrograma:
	addi $2, $0, 10
	syscall


formatar:
	beq $14, $15, form
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	jr $31
form:
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	jr $31

espacoAntesIgual:
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	jr $31
	
quebraLinha:
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	jr $31