;
; hello.asm
; 28 July 2017
;
	[BITS 16]
	
	ORG 0x7C00
	

	JMP main



	MSG DB "Hello World!", 13, 10, 0


printString:
	LODSB
	OR 	AL, AL
	JZ	printStringRet
	MOV 	AH, 0xE
	INT 	0x10
	JMP 	printString
	
printStringRet:
	RET


main:	
	MOV 	SI, MSG
	CALL	printString

	CLI
	HLT
