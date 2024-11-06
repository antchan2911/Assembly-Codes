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
	
	


  