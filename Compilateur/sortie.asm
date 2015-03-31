; entete
extrn lirent:proc, ecrent:proc
extrn ecrbool:proc
extrn ecrch:proc, ligsuiv:proc
.model SMALL
.586

.CODE
debut :
STARTUPCODE

; ouvrePrinc 6
mov bp,sp
sub sp,6

; iload 6
push word ptr [bp6]

; istore -6
pop ax
mov word ptr [bp-6],ax

; iload -6
push word ptr [bp-6]

; iload 4
push word ptr [bp4]

; isup
pop bx
pop ax
cmp ax,bx
jle $+6
push -1
jmp $+4
push 0

; iffaux SINON1
pop ax
cmp ax,0
je SINON1

