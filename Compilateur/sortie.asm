; entete
extrn lirent:proc, ecrent:proc
extrn ecrbool:proc
extrn ecrch:proc, ligsuiv:proc
.model SMALL
.586

.CODE

max:
;ouvcBloc 6
enter 6,0

; iload 6
push word ptr [bp+6]

; istore -6
pop ax
mov word ptr [bp-6],ax

; iload -6
push word ptr [bp-6]

; iload 4
push word ptr [bp+4]

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

; iload -6
push word ptr [bp-6]

;ireturn 8
pop ax
mov [bp+8],ax

; goto FSI1
jmp FSI1

SINON1:
; iload 4
push word ptr [bp+4]

;ireturn 8
pop ax
mov [bp+8],ax

FSI1:
;fermeBloc 4
leave
ret 4

lait:
;ouvcBloc 6
enter 6,0

; iconst 6
push word ptr 6

; istore -6
pop ax
mov word ptr [bp-6],ax

; iload -6
push word ptr [bp-6]

; iconst 42
push word ptr 42

; iinfegal
pop bx
pop ax
cmp ax,bx
jg $+6
push -1
jmp $+4
push 0

; istore -2
pop ax
mov word ptr [bp-2],ax

; iload -6
push word ptr [bp-6]

;reserveRetour
sub sp,2

; iload -6
push word ptr [bp-6]

; iconst 5
push word ptr 5

;call max
call max

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; istore -4
pop ax
mov word ptr [bp-4],ax

FAIRE1:
; iload -6
push word ptr [bp-6]

; iconst 10
push word ptr 10

; iinfegal
pop bx
pop ax
cmp ax,bx
jg $+6
push -1
jmp $+4
push 0

; iffaux FAIT1
pop ax
cmp ax,0
je FAIT1

; iload -6
push word ptr [bp-6]

; iconst 1
push word ptr 1

; iadd
pop bx
pop ax
add ax,bx
push ax

; istore -6
pop ax
mov word ptr [bp-6],ax

FAIT1:
; iload -2
push word ptr [bp-2]

; iffaux SINON2
pop ax
cmp ax,0
je SINON2

; iconst 42
push word ptr 42

; istore -6
pop ax
mov word ptr [bp-6],ax

; iload -2
push word ptr [bp-2]

; istore -4
pop ax
mov word ptr [bp-4],ax

; goto FSI2
jmp FSI2

SINON2:
FSI2:
; iload -4
push word ptr [bp-4]

;ireturn 4
pop ax
mov [bp+4],ax

;fermeBloc 0
leave
ret 0

caramel:
;ouvcBloc 6
enter 6,0

; iload 6
push word ptr [bp+6]

; istore -6
pop ax
mov word ptr [bp-6],ax

; iload 4
push word ptr [bp+4]

; istore -4
pop ax
mov word ptr [bp-4],ax

; iload 6
push word ptr [bp+6]

; iconst 0
push word ptr 0

; isup
pop bx
pop ax
cmp ax,bx
jle $+6
push -1
jmp $+4
push 0

; iffaux SINON3
pop ax
cmp ax,0
je SINON3

; iload -4
push word ptr [bp-4]

; iffaux SINON4
pop ax
cmp ax,0
je SINON4

; iload -6
push word ptr [bp-6]

; iconst 2
push word ptr 2

; imul
pop bx
pop ax
imul bx
push ax

; istore -6
pop ax
mov word ptr [bp-6],ax

FAIRE2:
; iload -6
push word ptr [bp-6]

; iconst 0
push word ptr 0

; idif
pop bx
pop ax
cmp ax,bx
je $+6
push -1
jmp $+4
push 0

; iffaux FAIT2
pop ax
cmp ax,0
je FAIT2

; iload -6
push word ptr [bp-6]

; iconst 1
push word ptr 1

; isub
pop bx
pop ax
sub ax,bx
push ax

; istore -6
pop ax
mov word ptr [bp-6],ax

FAIT2:
; goto FSI4
jmp FSI4

SINON4:
FAIRE3:
; iload -6
push word ptr [bp-6]

; iconst 0
push word ptr 0

; idif
pop bx
pop ax
cmp ax,bx
je $+6
push -1
jmp $+4
push 0

; iffaux FAIT3
pop ax
cmp ax,0
je FAIT3

; iload -6
push word ptr [bp-6]

; iconst 1
push word ptr 1

; isub
pop bx
pop ax
sub ax,bx
push ax

; istore -6
pop ax
mov word ptr [bp-6],ax

FAIT3:
FSI4:
; iconst 1
push word ptr 1

;ireturn 8
pop ax
mov [bp+8],ax

; goto FSI3
jmp FSI3

SINON3:
; iconst 1
push word ptr 1

; ineg
pop bx
neg bx
push bx

;ireturn 8
pop ax
mov [bp+8],ax

FSI3:
;fermeBloc 4
leave
ret 4

debut :
STARTUPCODE

main:
;ouvcBloc 14
enter 14,0

;reserveRetour
sub sp,2

;call lait
call lait

; istore -14
pop ax
mov word ptr [bp-14],ax

;reserveRetour
sub sp,2

; iconst 22
push word ptr 22

; iload -14
push word ptr [bp-14]

;call caramel
call caramel

; istore -8
pop ax
mov word ptr [bp-8],ax

; lireEnt -10
lea dx,[bp-10]
push dx
call lirent

; aLaLigne
call ligsuiv

;reserveRetour
sub sp,2

; iload -8
push word ptr [bp-8]

;reserveRetour
sub sp,2

; iload -10
push word ptr [bp-10]

; iconst 5
push word ptr 5

;call max
call max

;call max
call max

; iconst 2
push word ptr 2

; iadd
pop bx
pop ax
add ax,bx
push ax

; istore -12
pop ax
mov word ptr [bp-12],ax

; aLaLigne
call ligsuiv

; iload -12
push word ptr [bp-12]

; ecrireEnt
call ecrent

; aLaLigne
call ligsuiv

; iload -14
push word ptr [bp-14]

; ecrireBool
call ecrbool

; queue
nop
exitcode
end debut

