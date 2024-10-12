.text
main: addi $8, $0, 3600
      addi $9, $0, 60
      addi $2, $0, 5
      syscall
      add $10, $0, $2
      div $10, $8
      mflo $11 #horas
      mfhi $12
      div $12, $9
      mflo $13 #minutos
      mfhi $14 #segundos
      add $4, $0, $11
      addi $2, $0, 1
      syscall
      add $4, $0, ':'
      addi $2, $0, 11
      syscall
      add $4, $0, $13
      addi $2, $0, 1
      syscall
      add $4, $0, ':'
      addi $2, $0, 11
      syscall
      add $4, $0, $14
      addi $2, $0, 1
      syscall
      
      