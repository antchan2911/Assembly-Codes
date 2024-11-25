.data

.text
main:
	addi $2, $0, 5 # valor de n
	syscall
	j inverte
	
fim:
	addi $2, $0, 10
	syscall
	
inverte:
	lui $8, 0x1001 # guarda o primeiro endereço no reg 8
	add $9, $0, $2 # range for input
	addi $10, $0, 0 # i
for:
	beq $9, $10, fimFor
	
	addi $2, $0, 5
	syscall
	sw $2, 0($8) # guarda o valor digitado no primeiro endereço
	addi $8, $8, 4 # passa para o prox endereço
	
	addi $10, $10, 1
	j for

fimFor:
	addi $10, $0, 0 # reset i
	sub $8, $8, 4
for2:
	beq $9, $10, fim
	lw $4, 0($8)
	addi $2, $0, 1
	syscall
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	sub $8, $8, 4
	
	addi $10, $10, 1
	j for2
	
	
	