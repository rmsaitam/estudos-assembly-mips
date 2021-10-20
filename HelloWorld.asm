.text
la $a0, showHelloWorld
li $v0, 4
syscall

.data
showHelloWorld: .asciiz "Hello World em Assembly MIPS!"