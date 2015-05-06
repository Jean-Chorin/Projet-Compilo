; entete
extrn lirent:proc, ecrent:proc
extrn ecrbool:proc
extrn ecrch:proc, ligsuiv:proc
.model SMALL
.586

.CODE

analyse:
;ouvcBloc 6
enter 6,0

; iconst 3
push word ptr 3

; istore -4
pop ax
mov word ptr [bp-4],ax

; iconst 9
push word ptr 9

; iload -4
push word ptr [bp-4]

; isub
pop bx
pop ax
sub ax,bx
push ax

; istore -6
pop ax
mov word ptr [bp-6],ax

; iload -6
push word ptr [bp-6]

; iload -4
push word ptr [bp-4]

; isup
pop bx
pop ax
cmp ax,bx
jle $+6
push -1
jmp $+4
push 0

; istore -2
pop ax
mov word ptr [bp-2],ax

; iload -2
push word ptr [bp-2]

; iffaux SINON1
pop ax
cmp ax,0
je SINON1

; iload -4
push word ptr [bp-4]

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC1
jmp FINFONC1

; goto FSI1
jmp FSI1

SINON1:
; iconst 0
push word ptr 0

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC1
jmp FINFONC1

FSI1:
FINFONC1:
;fermeBloc 4
leave
ret 4

debut :
STARTUPCODE

main:
;ouvcBloc 14
enter 14,0

; iload -8
push word ptr [bp-8]

; iload -10
push word ptr [bp-10]

; isup
pop bx
pop ax
cmp ax,bx
jle $+6
push -1
jmp $+4
push 0

; istore -14
pop ax
mov word ptr [bp-14],ax

; iconst 5
push word ptr 5

; istore -8
pop ax
mov word ptr [bp-8],ax

; iconst 12
push word ptr 12

; istore -10
pop ax
mov word ptr [bp-10],ax

; iconst 2
push word ptr 2

; istore -12
pop ax
mov word ptr [bp-12],ax

;reserveRetour
sub sp,2

; iload -10
push word ptr [bp-10]

; iload -12
push word ptr [bp-12]

; iload -8
push word ptr [bp-8]

;call analyse
call analyse

