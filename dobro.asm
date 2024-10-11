.text
main: addi $2, $0, 5
      syscall
      add $8, $2, $2
      add $4, $0, $8
      addi $2, $0, 1
      syscall 