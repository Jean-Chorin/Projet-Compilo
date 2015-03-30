; entete
extrn lirent:proc, ecrent:proc
extrn ecrbool:proc
extrn ecrch:proc, ligsuiv:proc
.model SMALL
.586

.CODE
debut :
STARTUPCODE

; ouvrePrinc 10
mov bp,sp
sub sp,10

; ecrireChaine "c1="
.DATA
mess0 DB "c1=$"
.CODE
lea dx,mess0
push dx
call ecrch

; lireEnt -2
lea dx,[bp-2]
push dx
call lirent

; ecrireChaine "c2="
.DATA
mess1 DB "c2=$"
.CODE
lea dx,mess1
push dx
call ecrch

; lireEnt -4
lea dx,[bp-4]
push dx
call lirent

; ecrireChaine "c3="
.DATA
mess2 DB "c3=$"
.CODE
lea dx,mess2
push dx
call ecrch

; lireEnt -6
lea dx,[bp-6]
push dx
call lirent

; iload -2
push word ptr [bp-2]

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

; iffaux SINON1
pop ax
cmp ax,0
je SINON1

; iload -2
push word ptr [bp-2]

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

; iconst 2
push 2

; isup
pop bx
pop ax
cmp ax,bx
jle $+6
push -1
jmp $+4
push 0

; iffaux SINON2
pop ax
cmp ax,0
je SINON2

; ecrireChaine "SI 2"
.DATA
mess3 DB "SI 2$"
.CODE
lea dx,mess3
push dx
call ecrch

; goto FSI2
jmp FSI2

SINON2:
; ecrireChaine "SINON2"
.DATA
mess4 DB "SINON2$"
.CODE
lea dx,mess4
push dx
call ecrch

FSI2:
