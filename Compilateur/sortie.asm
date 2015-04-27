; entete
extrn lirent:proc, ecrent:proc
extrn ecrbool:proc
extrn ecrch:proc, ligsuiv:proc
.model SMALL
.586

.CODE

recommencer:
;ouvcBloc 0
enter 0,0

; iload 5
push word ptr [bp+5]

; iconst 1
push word ptr 1

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON1
pop ax
cmp ax,0
je SINON1

; iconst -1
push word ptr -1

;ireturn 6
pop ax
mov [bp+6],ax

; goto FSI1
jmp FSI1

SINON1:
; iconst 0
push word ptr 0

;ireturn 6
pop ax
mov [bp+6],ax

FSI1:
;fermeBloc 2
leave
ret 2

comparaison:
;ouvcBloc 0
enter 0,0

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

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

; ecrireChaine "MOINS"
.DATA
mess0 DB "MOINS$"
.CODE
lea dx,mess0
push dx
call ecrch

; iconst 0
push word ptr 0

;ireturn 8
pop ax
mov [bp+8],ax

; goto FSI2
jmp FSI2

SINON2:
; iload 6
push word ptr [bp+6]

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

; iffaux SINON3
pop ax
cmp ax,0
je SINON3

; ecrireChaine "PLUS"
.DATA
mess1 DB "PLUS$"
.CODE
lea dx,mess1
push dx
call ecrch

; iconst 0
push word ptr 0

;ireturn 8
pop ax
mov [bp+8],ax

; goto FSI3
jmp FSI3

SINON3:
; ecrireChaine "Reussi !"
.DATA
mess2 DB "Reussi !$"
.CODE
lea dx,mess2
push dx
call ecrch

; iconst -1
push word ptr -1

;ireturn 8
pop ax
mov [bp+8],ax

FSI3:
FSI2:
;fermeBloc 4
leave
ret 4

attribution:
;ouvcBloc 2
enter 2,0

; iload 4
push word ptr [bp+4]

; iconst 1
push word ptr 1

; iadd
pop bx
pop ax
add ax,bx
push ax

; istore -2
pop ax
mov word ptr [bp-2],ax

FAIRE1:
; iload -2
push word ptr [bp-2]

; iload 6
push word ptr [bp+6]

; iinf
pop bx
pop ax
cmp ax,bx
jge $+6
push -1
jmp $+4
push 0

; iload -2
push word ptr [bp-2]

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

; ior
pop bx
pop ax
or ax,bx
push ax

; iffaux FAIT1
pop ax
cmp ax,0
je FAIT1

; ecrireChaine "Joueur deux, entrez une valeur : "
.DATA
mess3 DB "Joueur deux, entrez une valeur : $"
.CODE
lea dx,mess3
push dx
call ecrch

; lireEnt -2
lea dx,[bp-2]
push dx
call lirent

; iload -2
push word ptr [bp-2]

; iload 6
push word ptr [bp+6]

; iinf
pop bx
pop ax
cmp ax,bx
jge $+6
push -1
jmp $+4
push 0

; iload -2
push word ptr [bp-2]

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

; ior
pop bx
pop ax
or ax,bx
push ax

; iffaux SINON4
pop ax
cmp ax,0
je SINON4

; ecrireChaine "Nombre en dehors des bornes."
.DATA
mess4 DB "Nombre en dehors des bornes.$"
.CODE
lea dx,mess4
push dx
call ecrch

; goto FSI4
jmp FSI4

SINON4:
FSI4:
; goto FAIRE1
jmp FAIRE1

FAIT1:
; iload -2
push word ptr [bp-2]

;ireturn 8
pop ax
mov [bp+8],ax

;fermeBloc 4
leave
ret 4

debut :
STARTUPCODE

main:
;ouvcBloc 26
enter 26,0

; iconst -1
push word ptr -1

; istore -24
pop ax
mov word ptr [bp-24],ax

; iconst -1
push word ptr -1

; istore -26
pop ax
mov word ptr [bp-26],ax

; iconst 1
push word ptr 1

; ineg
pop bx
neg bx
push bx

; istore -16
pop ax
mov word ptr [bp-16],ax

; iconst 0
push word ptr 0

; istore -18
pop ax
mov word ptr [bp-18],ax

; iconst 0
push word ptr 0

; istore -20
pop ax
mov word ptr [bp-20],ax

; iconst 0
push word ptr 0

; istore -22
pop ax
mov word ptr [bp-22],ax

; iconst 1
push word ptr 1

; istore -4
pop ax
mov word ptr [bp-4],ax

FAIRE2:
; iload -4
push word ptr [bp-4]

; iconst 1
push word ptr 1

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iload -4
push word ptr [bp-4]

; iconst 2
push word ptr 2

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; ior
pop bx
pop ax
or ax,bx
push ax

; iffaux FAIT2
pop ax
cmp ax,0
je FAIT2

; ecrireChaine "Bienvenue dans le jeu plus ou moins"
.DATA
mess5 DB "Bienvenue dans le jeu plus ou moins$"
.CODE
lea dx,mess5
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "Pour jouer : 1"
.DATA
mess6 DB "Pour jouer : 1$"
.CODE
lea dx,mess6
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "Voir les meilleurs scores : 2"
.DATA
mess7 DB "Voir les meilleurs scores : 2$"
.CODE
lea dx,mess7
push dx
call ecrch

; aLaLigne
call ligsuiv

; lireEnt -4
lea dx,[bp-4]
push dx
call lirent

; aLaLigne
call ligsuiv

; iload -4
push word ptr [bp-4]

; iconst 1
push word ptr 1

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON5
pop ax
cmp ax,0
je SINON5

FAIRE3:
; iload -24
push word ptr [bp-24]

; iffaux FAIT3
pop ax
cmp ax,0
je FAIT3

; ecrireChaine "Donnez la borne de debut (ex: 0)"
.DATA
mess8 DB "Donnez la borne de debut (ex: 0)$"
.CODE
lea dx,mess8
push dx
call ecrch

; lireEnt -8
lea dx,[bp-8]
push dx
call lirent

; aLaLigne
call ligsuiv

; ecrireChaine "Donnez la borne de fin (ex: 100)"
.DATA
mess9 DB "Donnez la borne de fin (ex: 100)$"
.CODE
lea dx,mess9
push dx
call ecrch

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

; iload -10
push word ptr [bp-10]

;call attribution
call attribution

; istore -12
pop ax
mov word ptr [bp-12],ax

; iconst 0
push word ptr 0

; istore -14
pop ax
mov word ptr [bp-14],ax

FAIRE4:
; iload -26
push word ptr [bp-26]

; inot
pop bx
not bx
push bx

; iffaux FAIT4
pop ax
cmp ax,0
je FAIT4

; iload -14
push word ptr [bp-14]

; iconst 1
push word ptr 1

; iadd
pop bx
pop ax
add ax,bx
push ax

; istore -14
pop ax
mov word ptr [bp-14],ax

; ecrireChaine "Iteration "
.DATA
mess10 DB "Iteration $"
.CODE
lea dx,mess10
push dx
call ecrch

; iload -14
push word ptr [bp-14]

; ecrireEnt
call ecrent

; aLaLigne
call ligsuiv

; ecrireChaine "Votre numero : "
.DATA
mess11 DB "Votre numero : $"
.CODE
lea dx,mess11
push dx
call ecrch

; lireEnt -16
lea dx,[bp-16]
push dx
call lirent

;reserveRetour
sub sp,2

; iload -12
push word ptr [bp-12]

; iload -16
push word ptr [bp-16]

;call comparaison
call comparaison

; istore -26
pop ax
mov word ptr [bp-26],ax

; goto FAIRE4
jmp FAIRE4

FAIT4:
; iload -14
push word ptr [bp-14]

; iload -22
push word ptr [bp-22]

; isup
pop bx
pop ax
cmp ax,bx
jle $+6
push -1
jmp $+4
push 0

; iffaux SINON6
pop ax
cmp ax,0
je SINON6

; iload -14
push word ptr [bp-14]

; iload -20
push word ptr [bp-20]

; isup
pop bx
pop ax
cmp ax,bx
jle $+6
push -1
jmp $+4
push 0

; iffaux SINON7
pop ax
cmp ax,0
je SINON7

; iload -14
push word ptr [bp-14]

; iload -18
push word ptr [bp-18]

; isup
pop bx
pop ax
cmp ax,bx
jle $+6
push -1
jmp $+4
push 0

; iffaux SINON8
pop ax
cmp ax,0
je SINON8

; iload -14
push word ptr [bp-14]

; istore -18
pop ax
mov word ptr [bp-18],ax

; goto FSI8
jmp FSI8

SINON8:
; iload -14
push word ptr [bp-14]

; istore -20
pop ax
mov word ptr [bp-20],ax

FSI8:
; goto FSI7
jmp FSI7

SINON7:
; iload -14
push word ptr [bp-14]

; istore -22
pop ax
mov word ptr [bp-22],ax

FSI7:
; goto FSI6
jmp FSI6

SINON6:
FSI6:
; ecrireChaine "Voulez-vous recommencer ? (Oui 1/Non 2"
.DATA
mess12 DB "Voulez-vous recommencer ? (Oui 1/Non 2$"
.CODE
lea dx,mess12
push dx
call ecrch

; lireEnt -6
lea dx,[bp-6]
push dx
call lirent

; aLaLigne
call ligsuiv

;reserveRetour
sub sp,2

; iload -6
push word ptr [bp-6]

;call recommencer
call recommencer

; istore -24
pop ax
mov word ptr [bp-24],ax

; goto FAIRE3
jmp FAIRE3

FAIT3:
; goto FSI5
jmp FSI5

SINON5:
; iload -4
push word ptr [bp-4]

; iconst 2
push word ptr 2

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON9
pop ax
cmp ax,0
je SINON9

; ecrireChaine "Meilleurs scores"
.DATA
mess13 DB "Meilleurs scores$"
.CODE
lea dx,mess13
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "1er : "
.DATA
mess14 DB "1er : $"
.CODE
lea dx,mess14
push dx
call ecrch

; iload -18
push word ptr [bp-18]

; ecrireEnt
call ecrent

; aLaLigne
call ligsuiv

; ecrireChaine "2e : "
.DATA
mess15 DB "2e : $"
.CODE
lea dx,mess15
push dx
call ecrch

; iload -20
push word ptr [bp-20]

; ecrireEnt
call ecrent

; aLaLigne
call ligsuiv

; ecrireChaine "3e : "
.DATA
mess16 DB "3e : $"
.CODE
lea dx,mess16
push dx
call ecrch

; iload -22
push word ptr [bp-22]

; ecrireEnt
call ecrent

; aLaLigne
call ligsuiv

; goto FSI9
jmp FSI9

SINON9:
; ecrireChaine "Mauvaise touche. Au revoir !"
.DATA
mess17 DB "Mauvaise touche. Au revoir !$"
.CODE
lea dx,mess17
push dx
call ecrch

FSI9:
FSI5:
; goto FAIRE2
jmp FAIRE2

FAIT2:
; queue
nop
exitcode
end debut

