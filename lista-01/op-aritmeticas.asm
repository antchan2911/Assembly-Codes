.text
main: addi $8, $0, 7
      addi $9, $0, 1
      addi $10, $0, 3
      add $11, $8, $9
      add $12, $10, $11
      sub $13, $8, $9
      sub $14, $13, $10
      mul $15, $8, $10
      mul $16, $15, $11
      div $16, $15
      mflo $17
      div $17, $11
      mflo $18