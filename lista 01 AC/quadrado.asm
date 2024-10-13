.text
main: addi $2, $0, 5
      syscall
      mul $9, $2, $2
      add $4, $0, $9
      addi $2, $0, 1
      syscall