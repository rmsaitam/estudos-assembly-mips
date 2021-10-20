.data
txt_endl:
 .asciiz "\n"

.text
.globl main
main:
  li $v0, 5 #ler um número inteiro
  syscall #chamada do SO para ler um número do teclado
  move $s1, $v0 #armazena o valor lido para $s1
  li $s0, 1 # $s0 = 1
while:
  mult $s0, $s1
  mflo $s0
  #subi $s1, $s1, 1 # $s1 = $s1 - 1
  addi $s1, $s1, -1
  bnez $s1, while #$s1 != 0

  move $a0, $s0
  li $v0, 1
  syscall
end:
  li $v0, 10 #encerra o programa
  syscall