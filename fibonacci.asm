.data
  txt_endl:
    .asciiz "\n"
 
.text
.globl main
main:
	ori $s0, $zero, 1		#primeiro número da sequencia
	ori $s1, $zero, 1		#segundo número da sequencia
	li $v0, 5				#5 em $v0 para S.O ler do teclado
	syscall					#chama o S.O. e valor lido em $v0
	addi $s2, $v0, -2		#vai conter o resultado (2 primeiros já "calculados")
loop:						#estilo "do-while" para economizar um jump
	add $t1, $s0, $s1		#próximo valor da sequência
	add $s0, $s1, $zero		
	add $s1, $t1, $zero
	addi $s2, $s2, -1		#decrementa o contador
	bne $s2, $zero, loop	#continua no loop até o contador chegar em zero
	li $v0, 1
	or $a0, $zero, $s1
	syscall
end:
	li $v0, 10
	syscall
