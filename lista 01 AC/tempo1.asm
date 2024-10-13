.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      addi $2, $0, 5
      syscall
      add $9, $0, $2
      add $2, $0, 5
      syscall
      add $10, $0, $2
      addi $11, $0, 60
      addi $12, $0, 3600
      mul $13, $8, $12
      mul $14, $9, $11
      add $15, $13, $14
      add $16, $15, $10
      add $4, $0, $16
      addi $2, $0, 1
      syscall