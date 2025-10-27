TITLE AFPA (AFPA[ V1 ].asm)

COMMENT !
Author: Fernando Arce
Date: [10/25/25]
Course: 2333.[04]
Program Description: Simple introduction to
syntax of assembly: values as literals, strings, simple addition.
!

; ####DO NOT REMOVE####
.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
; #####################

.data
	; Declaring values as their literal
	deciValue1 BYTE 80d
	hexaValue1 SDWORD 0FFFEBF97h
	binValue1 WORD 0000000111000010b

	; Single line strings and getting the length
	inMsg1 BYTE "Please enter a value: ",0
	len1 = ($ - inMsg1)
	outMsg1 BYTE "The result is: ",0
	len2 = ($ - outMsg1)

	; Multi line string and getting length
	greetMsg1 BYTE	"what is assembley?", 0Dh, 0Ah
			  BYTE	"It is a low-level programming language.",0Dh, 0Ah, 0
	len3 = ($ - greetMsg1)

	; adding len3 and 5 into len5 
	len5 EQU len3 + 5

.code
_main PROC
	; adding len5 + 1
	mov eax, len5
	inc eax

; ####DO NOT REMOVE####
	INVOKE ExitProcess, 0
; #####################
_main ENDP
	;	(INSERT ADDITIONAL PROCEDURES HERE)
END _main
