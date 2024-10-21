.text
main: addi $2, $0, 5
      syscall
      addi $8, $0, 10
      div $2, $8
      mflo $9
      mfhi $10
      div $9, $8
      mflo $11
      mfhi $12
      div $11, $8
      mflo $13
      mfhi $14
      div $13, $8
      mflo $15
      mfhi $16
      add $4, $0, $10
      addi $2, $0, 1
      syscall
      add $4, $0, '\n'
      addi $2, $0, 11
      syscall
      add $4, $0, $12
      addi $2, $0, 1
      syscall
      add $4, $0, '\n'
      addi $2, $0, 11
      syscall
      add $4, $0, $14
      addi $2, $0, 1
      syscall
      add $4, $0, '\n'
      addi $2, $0, 11
      syscall
      add $4, $0, $16
      addi $2, $0, 1
      syscall