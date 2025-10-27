TITLE AFPA (AFPA[ V1 ].asm)

COMMENT !
Author: Fernando Arce
Date: [10/25/25]
Course: 2333.[04]
Program Description:
!

; ####DO NOT REMOVE####
.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
; #####################

.data
	deciValue1 BYTE 80d
	hexaValue1 SWORD FFFEBF97h
	binValue1 WORD 0000000111000010b

	inMsg1 BYTE "Please enter a value: ",0
	len1 = ($ - inMsg1)
	outMsg1 BYTE "Thhe result is: ",0
	len2 = ($ - outMsg1)

	greetMsg1 BYTE "what is assembley?" 0Dh, 0Ah
			  BYTE "It is a low-level programming language.",0Dh, 0Ah, 0
	len3 = ($ - greetMsg1)

	len5 BYTE len3 + 5

.code
_main PROC
	mov eax, len5
	inc eax
	mov len5, eax 
; ####DO NOT REMOVE####
	INVOKE ExitProcess, 0
; #####################
_main ENDP
	;	(INSERT ADDITIONAL PROCEDURES HERE)
END _main
