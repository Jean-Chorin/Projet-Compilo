; entete
extrn lirent:proc, ecrent:proc
extrn ecrbool:proc
extrn ecrch:proc, ligsuiv:proc
.model SMALL
.586

.CODE
debut :
STARTUPCODE

;ouvcBloc 6
enter 6,0

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

;ireturn 8
pop ax
mov [bp+8],ax

; iload -6
push word ptr [bp-6]

; goto FSI1
jmp FSI1

SINON1:
;ireturn 8
pop ax
mov [bp+8],ax

; iload 4
push word ptr [bp4]

FSI1:
;fermeBloc 4
leave
ret 4

;ouvcBloc 0
enter 0,0

; iload 6
push word ptr [bp6]

; iload 4
push word ptr [bp4]

; iinf
pop bx
pop ax
cmp ax,bx
jge $+6
push -1
jmp $+4
push 0

; iffaux SINON2
pop ax
cmp ax,0
je SINON2

;ireturn 8
pop ax
mov [bp+8],ax

; iload 6
push word ptr [bp6]

; goto FSI2
jmp FSI2

SINON2:
;ireturn 8
pop ax
mov [bp+8],ax

; iload 4
push word ptr [bp4]

FSI2:
;fermeBloc 4
leave
ret 4

;ouvcBloc 0
enter 0,0

;ireturn 8
pop ax
mov [bp+8],ax

; iload 6
push word ptr [bp6]

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

;fermeBloc 4
leave
ret 4

;ouvcBloc 8
enter 8,0

; iconst 5
push 5

; istore -2
pop ax
mov word ptr [bp-2],ax

; lireEnt -4
lea dx,[bp-4]
push dx
call lirent

; aLaLigne
call ligsuiv

;reserveRetour
sub sp,2

; iload -2
push word ptr [bp-2]

;reserveRetour
sub sp,2

; iload -4
push word ptr [bp-4]

; iconst 5
push 5

;call min
call min

;call min
call min

; iconst 2
push 2

; iadd
pop bx
pop ax
add ax,bx
push ax

; istore -6
pop ax
mov word ptr [bp-6],ax

;reserveRetour
sub sp,2

; iconst 1
push 1

;reserveRetour
sub sp,2

; iload -2
push word ptr [bp-2]

; iload -4
push word ptr [bp-4]

; iconst 5
push 5

; isub
pop bx
pop ax
sub ax,bx
push ax

;call max
call max

; iadd
pop bx
pop ax
add ax,bx
push ax

;reserveRetour
sub sp,2

; iload -2
push word ptr [bp-2]

; iconst 2
push 2

; imul
pop bx
pop ax
imul bx
push ax

; iload -4
push word ptr [bp-4]

;call min
call min

;call min
call min

; istore -8
pop ax
mov word ptr [bp-8],ax

; aLaLigne
call ligsuiv

; iload -6
push word ptr [bp-6]

; ecrireEnt
call ecrent

; aLaLigne
call ligsuiv

; iload -8
push word ptr [bp-8]

; ecrireBool
call ecrbool

; queue
nop
exitcode
end debut

