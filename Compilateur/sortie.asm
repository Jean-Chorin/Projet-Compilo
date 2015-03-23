; entete
extrn lirent:proc, ecrent:proc
extrn ecrbool:proc
extrn ecrch:proc, ligsuiv:proc
.model SMALL
.586

.CODE
debut :
STARTUPCODE

; ouvrePrinc 8
mov bp,sp
sub sp,8

; ecrireChaine "n="
.DATA
mess0 DB "n=$"
.CODE
lea dx,mess0
push dx
call ecrch

; lireEnt -8
lea dx,[bp-8]
push dx
call lirent

; aLaLigne
call ligsuiv

; iconst 1
push 1

; istore -4
pop ax
mov word ptr [bp-4],ax

; iconst 0
push 0

; istore -2
pop ax
mov word ptr [bp-2],ax

FAIRE1:
; iload -4
push word ptr [bp-4]

; iload -8
push word ptr [bp-8]

; iinfegal
pop bx
pop ax
cmp ax,bx
jg $+6
push -1
jmp $+4
push 0

; iffaux FAIT 1
pop ax
cmp ax,0
je FAIT 1

; iload -2
push word ptr [bp-2]

; iload -4
push word ptr [bp-4]

; iadd
pop bx
pop ax
add ax,bx
push ax

; istore -2
pop ax
mov word ptr [bp-2],ax

; iload -4
push word ptr [bp-4]

; iconst 1
push 1

; iadd
pop bx
pop ax
add ax,bx
push ax

; istore -4
pop ax
mov word ptr [bp-4],ax

FAIT1:
; aLaLigne
call ligsuiv

; ecrireChaine "s="
.DATA
mess1 DB "s=$"
.CODE
lea dx,mess1
push dx
call ecrch

; iload -2
push word ptr [bp-2]

; ecrireEnt
call ecrent

; queue
nop
exitcode
end debut

