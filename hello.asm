;
; hello.asm
; 28 July 2017
;

[bits 16]
	
	org 0x7C00

	jmp main

	MSG DB "Hello World!", 13, 10, 0
	OTHER DB "Another Line of Text", 13, 10, 0


print_string:
	lodsb
	or		al, al
	jz		print_string_ret
	mov 	ah, 0xE
	int 	0x10
	jmp 	print_string
	
print_string_ret:
	ret

main:	
	mov 	si, MSG
	call	print_string

	mov		si, OTHER
	call	print_string

	cli
	hlt
