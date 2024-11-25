.text
main:
	addi $2, $0, 5
	syscall
	addi $8, $0, 10
	div $2, $8 
	mfhi $9 #alg1
	mflo $10
	div $10, $8
	mfhi $11 #alg2
	mflo $12
	div $12, $8
	mfhi $13 #alg3
	mflo $14
	div $14, $8
	mfhi $15 #alg4
	addi $16, $0, 16 # não reaproveitar
	sub $8, $0, $9
	srl $10, $8, 31
	addi $12, $9, 32
	mul $14, $10, $16
	add $17, $12, $14 # não reaproveitar
	sub $8, $0, $11
	srl $9, $8, 31
	addi $10, $11, 32
	mul $12, $9, $16
	add $18, $10, $12 # não reaproveitar
	sub $8, $0, $13
	srl $9, $8, 31
	addi $10, $13, 32
	mul $11, $9, $16 
	add $19, $10, $11 # não reaproveitar
	sub $8, $0, $15
	srl $9, $8, 31
	addi $10, $15, 32
	mul $11, $9, $16
	add $20, $10, $11 # não reaproveitar
	
	add $4, $0, $20
	addi $2, $0, 11
	syscall
	add $4, $0, $19
	addi $2, $0, 11
	syscall
	add $4, $0, $18
	addi $2, $0, 11
	syscall
	add $4, $0, $17
	addi $2, $0, 11
	syscall
	
	addi $2, $0, 10
	syscall
	
