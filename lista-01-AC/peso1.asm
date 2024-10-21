.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      addi $2, $0, 5
      syscall
      add $9, $0, $2
      div $8, $9
      mflo $10
      mfhi $11 # resto
      addi $12, $0, 1
      sub $13, $11, $12 # resto - 1
      div $11, $13
      mflo $14
      add $15, $10, $14 # total de containers
      div $8, $15
      mflo $16 # peso de cada container
      add $4, $0, $15 
      addi $2, $0 1
      syscall
      add $4, $0, '\n'
      addi $2, $0, 11
      syscall
      add $4, $0, $16
      addi $2, $0, 1
      syscall     