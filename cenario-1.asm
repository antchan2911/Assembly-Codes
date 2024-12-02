.data

.text
main:
	lui $8, 0x1001
	lui $9, 0x00ff
	addi $10, $0, 32
linha1:
	beq $10, $0, fimLinha1
	
	sw $9, 0($8)
	addi $8, $8, 4
	
	sub $10, $10, 1
	j linha1
	
fimLinha1:
	addi $10, $0, 15

linha2:
	beq $10, $0, fimLinha2
	
	sw $9, 0($8)
	addi $8, $8, 128
	
	sub $10, $10, 1
	j linha2
fimLinha2:
	lui $8, 0x1001
	addi $8, $8, 124
	addi $10, $0, 15
linha3:
	beq $10, $0, fimLinha3
	
	sw $9, 0($8)
	addi $8, $8, 128
	
	
	sub $10, $10, 1
	j linha3
fimLinha3:
	addi $2, $0, 10
	syscall
	
	