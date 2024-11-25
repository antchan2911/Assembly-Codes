#    if mes < 3:
#        mes += 12
#        ano -= 1
#    K = ano % 100
#    J = ano // 100
#    f = dia + ((13 * (mes + 1)) // 5) + K + (K // 4) + (J // 4) + (5 * J)
#    dia_da_semana = f % 7
.text
main:
	addi $8, $0, 1
	addi $9, $0, 4
	addi $10, $0, 5
	addi $11, $0, 7
	addi $12, $0, 12
	addi $13, $0, 100
	
	addi $2, $0, 5
	syscall
	add $14, $0, $2 # dia
	addi $2, $0, 5
	syscall
	add $15, $0, $2 # mes
	addi $2, $0, 5
	syscall
	add $16, $0, $2 # ano
	
	addi $17, $0, 3
	
	slt $17, $15, $17
	beq $8, $17, jan_fev
	j calc_dia
	
jan_fev:
	add $15, $15, $12 # mes += 12
	sub $16, $16, $8 # ano -= 1

calc_dia:
	div $16, $13
	mfhi $12 # K
	mflo $13 # J
	addi $16, $0, 13
	add $15, $15, $8
	mul $16, $16, $15
	div $16, $10
	mflo $15 # ((13 * (mes + 1)) // 5)
	div $12, $9
	mflo $16 # K // 4
	div $13, $9
	mflo $17 # J // 4
	mul $18, $13, $10 # J * 5
	add $12, $12, $15
	add $12, $12, $14
	add $12, $12, $16
	add $12, $12, $17
	add $12, $12, $18 # f
	div $12, $11
	mfhi $12 # dia_da_semana
	addi $8, $0, 1
	beq $8, $12, dom
	addi $8, $0, 2
	beq $8, $12, seg
	addi $8, $0, 3
	beq $8, $12, tec
	addi $8, $0, 4
	beq $8, $12, qua
	addi $8, $0, 5
	beq $8, $12, qui
	addi $8, $0, 6
	beq $8, $12, sex
	addi $8, $0, 7
	beq $8, $12, sab

dom:
	addi $4, $0, 'd'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'o'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'm'
	addi $2, $0, 11
	syscall
	j fim

seg:
	addi $4, $0, 's'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'e'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'g'
	addi $2, $0, 11
	syscall
	j fim

tec:
	addi $4, $0, 't'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'e'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'ç'
	addi $2, $0, 11
	syscall
	j fim
	
qua:
	addi $4, $0, 'q'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'u'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'a'
	addi $2, $0, 11
	syscall
	j fim

qui:
	addi $4, $0, 'q'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'u'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'i'
	addi $2, $0, 11
	syscall
	j fim

sex:
	addi $4, $0, 's'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'e'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'x'
	addi $2, $0, 11
	syscall
	j fim

sab:
	addi $4, $0, 's'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'a'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'b'
	addi $2, $0, 11
	syscall

fim:
	addi $2, $0, 10
	syscall
	
	
	
	


  
