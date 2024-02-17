section .data
  message db "Hello Worlds!", 0xA
  length equ $ - message

section .text

global _start

_start:
  mov EAX, 0x4
  mov EBX, 0x1

  mov ECX, message
  mov EDX, length

  int 0x80

  mov EAX, 0x1
  mov EBX, 0x0
  int 0x80
