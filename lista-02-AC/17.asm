# prefixo -> 3 digitos
# empresa -> 4 digitos
# produto -> 5 digitos

.text
main:
	addi $8, $0, 10
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	addi $2, $0, 5
	syscall
	add $11, $0, $2
	
	div $9, $8
	mflo $9
	mfhi $12 # 3
	div $9, $8
	mflo $9
	mfhi $13 # 2
	div $9, $8
	mfhi $14 # 1
	
	div $10, $8
	mflo $10
	mfhi $15 # 7
	div $10, $8
	mflo $10
	mfhi $16 # 6
	div $10, $8
	mflo $10
	mfhi $17 # 5
	div $10, $8
	mflo $10
	mfhi $18 # 4
	
	div $11, $8
	mflo $11
	mfhi $19 # 12
	div $11, $8
	mflo $11
	mfhi $20 # 11
	div $11, $8
	mflo $11
	mfhi $21 # 10
	div $11, $8
	mflo $11
	mfhi $22 # 9
	div $11, $8
	mflo $11
	mfhi $23 # 8
	
	# soma posições impares
	
	add $9, $14, $12
	add $9, $9, $17
	add $9, $9, $15
	add $9, $9, $22
	add $9, $9, $20
	
	# soma posições pares
	
	add $10, $13, $18
	add $10, $10, $16
	add $10, $13, $23
	add $10, $10, $21
	add $10, $13, $19
	
	sll $11, $10, 1
	add $10, $11, $10
	add $9, $9, $10 # soma imp/pares
	div $9, $8
	mflo $10
	mfhi $11
	
	beq $0, $11, multdez
	add $8, $8, $10
	sub $9, $9, $8
	j print

multdez:
	sub $9, $9, $10

print:
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 5
	syscall
	
	
	
	
	