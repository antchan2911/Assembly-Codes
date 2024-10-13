.text
main: addi $2, $0, 5
      syscall
      addi $8, $0, 10
      div $2, $8
      mflo $9 # primeiro quociente
      mfhi $10 # primeiro resto
      div $9, $8
      mflo $11 # segundo quociente
      mfhi $12 # segundo resto
      div $11, $8
      mflo $13 # terceiro quociente
      mfhi $14 # terceiro resto
      add $15, $10, $12
      add $16, $15, $14
      add $4, $0, $16
      addi $2, $0, 1
      syscall
      