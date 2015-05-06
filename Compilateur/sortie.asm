; entete
extrn lirent:proc, ecrent:proc
extrn ecrbool:proc
extrn ecrch:proc, ligsuiv:proc
.model SMALL
.586

.CODE

MORT:
;ouvcBloc 0
enter 0,0

; aLaLigne
call ligsuiv

; iload 4
push word ptr [bp+4]

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

; ecrireChaine "Vous tombez dans un trou et vous finissez en flaque de sang"
.DATA
mess0 DB "Vous tombez dans un trou et vous finissez en flaque de sang$"
.CODE
lea dx,mess0
push dx
call ecrch

; goto FSI1
jmp FSI1

SINON1:
FSI1:
; iload 4
push word ptr [bp+4]

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

; iffaux SINON2
pop ax
cmp ax,0
je SINON2

; ecrireChaine "Un rocher vous tombe dessus et vous finissez ecrabouille"
.DATA
mess1 DB "Un rocher vous tombe dessus et vous finissez ecrabouille$"
.CODE
lea dx,mess1
push dx
call ecrch

; goto FSI2
jmp FSI2

SINON2:
FSI2:
; iload 4
push word ptr [bp+4]

; iconst 3
push word ptr 3

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON3
pop ax
cmp ax,0
je SINON3

; ecrireChaine "Vous etes emascule a l'acide et mourrez a la suite de vos blessures"
.DATA
mess2 DB "Vous etes emascule a l'acide et mourrez a la suite de vos blessures$"
.CODE
lea dx,mess2
push dx
call ecrch

; goto FSI3
jmp FSI3

SINON3:
FSI3:
; iload 4
push word ptr [bp+4]

; iconst 4
push word ptr 4

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON4
pop ax
cmp ax,0
je SINON4

; ecrireChaine "Vous etes hypnotise par un chat et mourrez en vous lechant le cul"
.DATA
mess3 DB "Vous etes hypnotise par un chat et mourrez en vous lechant le cul$"
.CODE
lea dx,mess3
push dx
call ecrch

; goto FSI4
jmp FSI4

SINON4:
FSI4:
; iload 4
push word ptr [bp+4]

; iconst 5
push word ptr 5

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

; ecrireChaine "Vous mangez un banquet empoisonne et mourrez"
.DATA
mess4 DB "Vous mangez un banquet empoisonne et mourrez$"
.CODE
lea dx,mess4
push dx
call ecrch

; goto FSI5
jmp FSI5

SINON5:
FSI5:
; iload 4
push word ptr [bp+4]

; iconst 6
push word ptr 6

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON6
pop ax
cmp ax,0
je SINON6

; ecrireChaine "Une Lyche vous tue"
.DATA
mess5 DB "Une Lyche vous tue$"
.CODE
lea dx,mess5
push dx
call ecrch

; goto FSI6
jmp FSI6

SINON6:
FSI6:
; iload 4
push word ptr [bp+4]

; iconst 7
push word ptr 7

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON7
pop ax
cmp ax,0
je SINON7

; ecrireChaine "Cerbere vous egorge et se repait de votre chair"
.DATA
mess6 DB "Cerbere vous egorge et se repait de votre chair$"
.CODE
lea dx,mess6
push dx
call ecrch

; goto FSI7
jmp FSI7

SINON7:
FSI7:
; iload 4
push word ptr [bp+4]

; iconst 8
push word ptr 8

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON8
pop ax
cmp ax,0
je SINON8

; ecrireChaine "Un demon mineur vous egorge"
.DATA
mess7 DB "Un demon mineur vous egorge$"
.CODE
lea dx,mess7
push dx
call ecrch

; goto FSI8
jmp FSI8

SINON8:
FSI8:
; iload 4
push word ptr [bp+4]

; iconst 9
push word ptr 9

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

; ecrireChaine "Vous mourrez poignarde dans le dos"
.DATA
mess8 DB "Vous mourrez poignarde dans le dos$"
.CODE
lea dx,mess8
push dx
call ecrch

; goto FSI9
jmp FSI9

SINON9:
FSI9:
; iload 4
push word ptr [bp+4]

; iconst 10
push word ptr 10

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON10
pop ax
cmp ax,0
je SINON10

; ecrireChaine "Vous trebuchez, vous vous cassez un ongle et mourrez a la suite de vos blessures"
.DATA
mess9 DB "Vous trebuchez, vous vous cassez un ongle et mourrez a la suite de vos blessures$"
.CODE
lea dx,mess9
push dx
call ecrch

; goto FSI10
jmp FSI10

SINON10:
FSI10:
; iload 4
push word ptr [bp+4]

; iconst 11
push word ptr 11

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON11
pop ax
cmp ax,0
je SINON11

; ecrireChaine "Vous etes mange par une taupe-garou"
.DATA
mess10 DB "Vous etes mange par une taupe-garou$"
.CODE
lea dx,mess10
push dx
call ecrch

; goto FSI11
jmp FSI11

SINON11:
FSI11:
; iload 4
push word ptr [bp+4]

; iconst 12
push word ptr 12

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON12
pop ax
cmp ax,0
je SINON12

; ecrireChaine "T'es mort! LOL!"
.DATA
mess11 DB "T'es mort! LOL!$"
.CODE
lea dx,mess11
push dx
call ecrch

; goto FSI12
jmp FSI12

SINON12:
FSI12:
; iload 4
push word ptr [bp+4]

; iconst 13
push word ptr 13

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON13
pop ax
cmp ax,0
je SINON13

; ecrireChaine "Vous mourrez de diarhee (suffocation)"
.DATA
mess12 DB "Vous mourrez de diarhee (suffocation)$"
.CODE
lea dx,mess12
push dx
call ecrch

; goto FSI13
jmp FSI13

SINON13:
FSI13:
; iload 4
push word ptr [bp+4]

; iconst 14
push word ptr 14

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON14
pop ax
cmp ax,0
je SINON14

; ecrireChaine "Vous etes pris dans des pieges a loups et mourrez"
.DATA
mess13 DB "Vous etes pris dans des pieges a loups et mourrez$"
.CODE
lea dx,mess13
push dx
call ecrch

; goto FSI14
jmp FSI14

SINON14:
FSI14:
; iload 4
push word ptr [bp+4]

; iconst 15
push word ptr 15

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON15
pop ax
cmp ax,0
je SINON15

; ecrireChaine "Le Dieu de la honte vous tue!"
.DATA
mess14 DB "Le Dieu de la honte vous tue!$"
.CODE
lea dx,mess14
push dx
call ecrch

; goto FSI15
jmp FSI15

SINON15:
FSI15:
; iload 4
push word ptr [bp+4]

; iconst 16
push word ptr 16

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON16
pop ax
cmp ax,0
je SINON16

; ecrireChaine "Vous mourrez d'une MST"
.DATA
mess15 DB "Vous mourrez d'une MST$"
.CODE
lea dx,mess15
push dx
call ecrch

; goto FSI16
jmp FSI16

SINON16:
FSI16:
; iload 4
push word ptr [bp+4]

; iconst 17
push word ptr 17

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON17
pop ax
cmp ax,0
je SINON17

; ecrireChaine "Vous etes embarquee comme hotesse du bordel de la ville: vous mourrez d'une MST"
.DATA
mess16 DB "Vous etes embarquee comme hotesse du bordel de la ville: vous mourrez d'une MST$"
.CODE
lea dx,mess16
push dx
call ecrch

; goto FSI17
jmp FSI17

SINON17:
FSI17:
; iload 4
push word ptr [bp+4]

; iconst 18
push word ptr 18

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON18
pop ax
cmp ax,0
je SINON18

; ecrireChaine "Vous finissez a l'usine et y passer le restant de votre vie"
.DATA
mess17 DB "Vous finissez a l'usine et y passer le restant de votre vie$"
.CODE
lea dx,mess17
push dx
call ecrch

; goto FSI18
jmp FSI18

SINON18:
FSI18:
; iload 4
push word ptr [bp+4]

; iconst 19
push word ptr 19

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON19
pop ax
cmp ax,0
je SINON19

; ecrireChaine "Vous etes pris pendant votre tentative de vol, NOOB! Vous etes execute"
.DATA
mess18 DB "Vous etes pris pendant votre tentative de vol, NOOB! Vous etes execute$"
.CODE
lea dx,mess18
push dx
call ecrch

; goto FSI19
jmp FSI19

SINON19:
FSI19:
; iload 4
push word ptr [bp+4]

; iconst 20
push word ptr 20

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON20
pop ax
cmp ax,0
je SINON20

; ecrireChaine "Vous n'etes pas pris en flagrant delit. Mais au vue de votre facies, vous etes declare coupable. Vous etes execute "
.DATA
mess19 DB "Vous n'etes pas pris en flagrant delit. Mais au vue de votre facies, vous etes declare coupable. Vous etes execute $"
.CODE
lea dx,mess19
push dx
call ecrch

; goto FSI20
jmp FSI20

SINON20:
FSI20:
; iload 4
push word ptr [bp+4]

; iconst 21
push word ptr 21

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON21
pop ax
cmp ax,0
je SINON21

; ecrireChaine "Au bout du tunnel, vous tombez sur une taverne. Apres 5 ans de beuveries, tout le monde a oublie qui etait le patron de la taverne et vous le devenez. Vous mourrez 10 ans plus tard, tue par un client."
.DATA
mess20 DB "Au bout du tunnel, vous tombez sur une taverne. Apres 5 ans de beuveries, tout le monde a oublie qui etait le patron de la taverne et vous le devenez. Vous mourrez 10 ans plus tard, tue par un client.$"
.CODE
lea dx,mess20
push dx
call ecrch

; goto FSI21
jmp FSI21

SINON21:
FSI21:
; iload 4
push word ptr [bp+4]

; iconst 22
push word ptr 22

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON22
pop ax
cmp ax,0
je SINON22

; ecrireChaine "Vous mourrez du diabete"
.DATA
mess21 DB "Vous mourrez du diabete$"
.CODE
lea dx,mess21
push dx
call ecrch

; goto FSI22
jmp FSI22

SINON22:
FSI22:
; iload 4
push word ptr [bp+4]

; iconst 23
push word ptr 23

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON23
pop ax
cmp ax,0
je SINON23

; ecrireChaine "BADOUM!!"
.DATA
mess22 DB "BADOUM!!$"
.CODE
lea dx,mess22
push dx
call ecrch

; goto FSI23
jmp FSI23

SINON23:
FSI23:
; iload 4
push word ptr [bp+4]

; iconst 24
push word ptr 24

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON24
pop ax
cmp ax,0
je SINON24

; ecrireChaine "Vous mourrez d'inanition"
.DATA
mess23 DB "Vous mourrez d'inanition$"
.CODE
lea dx,mess23
push dx
call ecrch

; goto FSI24
jmp FSI24

SINON24:
FSI24:
; iload 4
push word ptr [bp+4]

; iconst 25
push word ptr 25

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON25
pop ax
cmp ax,0
je SINON25

; ecrireChaine "Le poulet se transforme en demon et vous pete la gueule"
.DATA
mess24 DB "Le poulet se transforme en demon et vous pete la gueule$"
.CODE
lea dx,mess24
push dx
call ecrch

; goto FSI25
jmp FSI25

SINON25:
FSI25:
; iload 4
push word ptr [bp+4]

; iconst 26
push word ptr 26

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON26
pop ax
cmp ax,0
je SINON26

; ecrireChaine "Vous trouvez de l'herbe a chat, vous finissez drogue et mourrez"
.DATA
mess25 DB "Vous trouvez de l'herbe a chat, vous finissez drogue et mourrez$"
.CODE
lea dx,mess25
push dx
call ecrch

; goto FSI26
jmp FSI26

SINON26:
FSI26:
; iload 4
push word ptr [bp+4]

; iconst 27
push word ptr 27

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON27
pop ax
cmp ax,0
je SINON27

; ecrireChaine "Vous mourrez, mange par un Magicarpe"
.DATA
mess26 DB "Vous mourrez, mange par un Magicarpe$"
.CODE
lea dx,mess26
push dx
call ecrch

; goto FSI27
jmp FSI27

SINON27:
FSI27:
; iload 4
push word ptr [bp+4]

; iconst 28
push word ptr 28

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON28
pop ax
cmp ax,0
je SINON28

; ecrireChaine "Vous rouillez! Poil au pieds!"
.DATA
mess27 DB "Vous rouillez! Poil au pieds!$"
.CODE
lea dx,mess27
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "T'es noye! Poil au nez!"
.DATA
mess28 DB "T'es noye! Poil au nez!$"
.CODE
lea dx,mess28
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "T'as perdu! Poil au cul!"
.DATA
mess29 DB "T'as perdu! Poil au cul!$"
.CODE
lea dx,mess29
push dx
call ecrch

; goto FSI28
jmp FSI28

SINON28:
FSI28:
; iload 4
push word ptr [bp+4]

; iconst 29
push word ptr 29

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON29
pop ax
cmp ax,0
je SINON29

; ecrireChaine "Mort de vieillesse (mais plus vierge)"
.DATA
mess30 DB "Mort de vieillesse (mais plus vierge)$"
.CODE
lea dx,mess30
push dx
call ecrch

; goto FSI29
jmp FSI29

SINON29:
FSI29:
; iload 4
push word ptr [bp+4]

; iconst 30
push word ptr 30

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON30
pop ax
cmp ax,0
je SINON30

; ecrireChaine "Des Belges vous attaquent au vue de votre odeur et vous tue"
.DATA
mess31 DB "Des Belges vous attaquent au vue de votre odeur et vous tue$"
.CODE
lea dx,mess31
push dx
call ecrch

; goto FSI30
jmp FSI30

SINON30:
FSI30:
; iload 4
push word ptr [bp+4]

; iconst 31
push word ptr 31

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON31
pop ax
cmp ax,0
je SINON31

; ecrireChaine "Pika Pika"
.DATA
mess32 DB "Pika Pika$"
.CODE
lea dx,mess32
push dx
call ecrch

; goto FSI31
jmp FSI31

SINON31:
FSI31:
; iload 4
push word ptr [bp+4]

; iconst 32
push word ptr 32

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON32
pop ax
cmp ax,0
je SINON32

; ecrireChaine "Les Belges vous mangent"
.DATA
mess33 DB "Les Belges vous mangent$"
.CODE
lea dx,mess33
push dx
call ecrch

; goto FSI32
jmp FSI32

SINON32:
FSI32:
; iload 4
push word ptr [bp+4]

; iconst 33
push word ptr 33

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON33
pop ax
cmp ax,0
je SINON33

; ecrireChaine "Un jet de flamme vous crame"
.DATA
mess34 DB "Un jet de flamme vous crame$"
.CODE
lea dx,mess34
push dx
call ecrch

; goto FSI33
jmp FSI33

SINON33:
FSI33:
; iload 4
push word ptr [bp+4]

; iconst 34
push word ptr 34

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON34
pop ax
cmp ax,0
je SINON34

; ecrireChaine "Au vue de vos faibles defenses (contrairement aux elephants), un Magicarpe vous bouffe"
.DATA
mess35 DB "Au vue de vos faibles defenses (contrairement aux elephants), un Magicarpe vous bouffe$"
.CODE
lea dx,mess35
push dx
call ecrch

; goto FSI34
jmp FSI34

SINON34:
FSI34:
; aLaLigne
call ligsuiv

; iconst 0
push word ptr 0

;ireturn 6
pop ax
mov [bp+6],ax

; goto FINFONC1
jmp FINFONC1

FINFONC1:
;fermeBloc 2
leave
ret 2

E100:
;ouvcBloc 0
enter 0,0

; aLaLigne
call ligsuiv

; ecrireChaine "Pilou sautes du comptoir et vous invites a boire une biere. 'PILOU PILOU piiiilou"
.DATA
mess36 DB "Pilou sautes du comptoir et vous invites a boire une biere. 'PILOU PILOU piiiilou$"
.CODE
lea dx,mess36
push dx
call ecrch

; aLaLigne
call ligsuiv

; iconst -1
push word ptr -1

;ireturn 4
pop ax
mov [bp+4],ax

; goto FINFONC2
jmp FINFONC2

FINFONC2:
;fermeBloc 0
leave
ret 0

E99:
;ouvcBloc 2
enter 2,0

; aLaLigne
call ligsuiv

; ecrireChaine "Vous rencontrez le maitre des lieux. Le Dieu Pilou le demoniaque."
.DATA
mess37 DB "Vous rencontrez le maitre des lieux. Le Dieu Pilou le demoniaque.$"
.CODE
lea dx,mess37
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "Qui vous domine de toute sa hauteur (1m), assis sur le comptoir de la taverne"
.DATA
mess38 DB "Qui vous domine de toute sa hauteur (1m), assis sur le comptoir de la taverne$"
.CODE
lea dx,mess38
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "Il vous declare: 'Hey Pilou! Pilou pilouuu pilou'"
.DATA
mess39 DB "Il vous declare: 'Hey Pilou! Pilou pilouuu pilou'$"
.CODE
lea dx,mess39
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "1. Pilou"
.DATA
mess40 DB "1. Pilou$"
.CODE
lea dx,mess40
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "2. Pipilou"
.DATA
mess41 DB "2. Pipilou$"
.CODE
lea dx,mess41
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "3. Pikalou?"
.DATA
mess42 DB "3. Pikalou?$"
.CODE
lea dx,mess42
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "4. Piloutoutchou"
.DATA
mess43 DB "4. Piloutoutchou$"
.CODE
lea dx,mess43
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "5. Piloutout"
.DATA
mess44 DB "5. Piloutout$"
.CODE
lea dx,mess44
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "6. Pika Pika Pilou?"
.DATA
mess45 DB "6. Pika Pika Pilou?$"
.CODE
lea dx,mess45
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "7. Pipipipipilou"
.DATA
mess46 DB "7. Pipipipipilou$"
.CODE
lea dx,mess46
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "8. Popilou"
.DATA
mess47 DB "8. Popilou$"
.CODE
lea dx,mess47
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "9. Pilouuuuuuu"
.DATA
mess48 DB "9. Pilouuuuuuu$"
.CODE
lea dx,mess48
push dx
call ecrch

; aLaLigne
call ligsuiv

; lireEnt -2
lea dx,[bp-2]
push dx
call lirent

; aLaLigne
call ligsuiv

; iload -2
push word ptr [bp-2]

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

; iadd
pop bx
pop ax
add ax,bx
push ax

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON35
pop ax
cmp ax,0
je SINON35

;reserveRetour
sub sp,2

;call E100
call E100

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC3
jmp FINFONC3

; goto FSI35
jmp FSI35

SINON35:
;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC3
jmp FINFONC3

FSI35:
FINFONC3:
;fermeBloc 4
leave
ret 4

E43:
;ouvcBloc 0
enter 0,0

; aLaLigne
call ligsuiv

; ecrireChaine "Au bout du tunnel vous arrivez dans une taverne."
.DATA
mess49 DB "Au bout du tunnel vous arrivez dans une taverne.$"
.CODE
lea dx,mess49
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "En avancant vous voyez qu'un tresor est present dans la salle."
.DATA
mess50 DB "En avancant vous voyez qu'un tresor est present dans la salle.$"
.CODE
lea dx,mess50
push dx
call ecrch

; aLaLigne
call ligsuiv

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E99
call E99

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC4
jmp FINFONC4

FINFONC4:
;fermeBloc 4
leave
ret 4

E44:
;ouvcBloc 0
enter 0,0

; aLaLigne
call ligsuiv

; ecrireChaine "Vous lancez votre poulet au cerbere."
.DATA
mess51 DB "Vous lancez votre poulet au cerbere.$"
.CODE
lea dx,mess51
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "Pendant qu'il le mange, vous avancez jusqu'a la porte"
.DATA
mess52 DB "Pendant qu'il le mange, vous avancez jusqu'a la porte$"
.CODE
lea dx,mess52
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "Vous tombez sur une taverne remplie d'or"
.DATA
mess53 DB "Vous tombez sur une taverne remplie d'or$"
.CODE
lea dx,mess53
push dx
call ecrch

; aLaLigne
call ligsuiv

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E99
call E99

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC5
jmp FINFONC5

FINFONC5:
;fermeBloc 4
leave
ret 4

E45:
;ouvcBloc 0
enter 0,0

; aLaLigne
call ligsuiv

; ecrireChaine "Vous tombez dans un trou et vous rattrapez habilement."
.DATA
mess54 DB "Vous tombez dans un trou et vous rattrapez habilement.$"
.CODE
lea dx,mess54
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "En jetant un regard autour de vous vous voyez"
.DATA
mess55 DB "En jetant un regard autour de vous vous voyez$"
.CODE
lea dx,mess55
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "que vous etes dans une taverne remplie de bijoux"
.DATA
mess56 DB "que vous etes dans une taverne remplie de bijoux$"
.CODE
lea dx,mess56
push dx
call ecrch

; aLaLigne
call ligsuiv

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E99
call E99

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC6
jmp FINFONC6

FINFONC6:
;fermeBloc 4
leave
ret 4

E46:
;ouvcBloc 0
enter 0,0

; aLaLigne
call ligsuiv

; ecrireChaine "Vous faites mumuse un moment avec cerbere puis continuez votre chemin."
.DATA
mess57 DB "Vous faites mumuse un moment avec cerbere puis continuez votre chemin.$"
.CODE
lea dx,mess57
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "Vous tombez alors sur une taverne remplie d'armes serties de pierres precieuses."
.DATA
mess58 DB "Vous tombez alors sur une taverne remplie d'armes serties de pierres precieuses.$"
.CODE
lea dx,mess58
push dx
call ecrch

; aLaLigne
call ligsuiv

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E99
call E99

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC7
jmp FINFONC7

FINFONC7:
;fermeBloc 4
leave
ret 4

E47:
;ouvcBloc 0
enter 0,0

; aLaLigne
call ligsuiv

; ecrireChaine "Vous cassez la gueule au cerbere et continuez."
.DATA
mess59 DB "Vous cassez la gueule au cerbere et continuez.$"
.CODE
lea dx,mess59
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "Vous tombez alors sur une taverne rempli de piles a neutrons."
.DATA
mess60 DB "Vous tombez alors sur une taverne rempli de piles a neutrons.$"
.CODE
lea dx,mess60
push dx
call ecrch

; aLaLigne
call ligsuiv

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E99
call E99

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC8
jmp FINFONC8

FINFONC8:
;fermeBloc 4
leave
ret 4

E42:
;ouvcBloc 0
enter 0,0

; aLaLigne
call ligsuiv

; iload 6
push word ptr [bp+6]

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

; iffaux SINON36
pop ax
cmp ax,0
je SINON36

;reserveRetour
sub sp,2

; iconst 21
push word ptr 21

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC9
jmp FINFONC9

; goto FSI36
jmp FSI36

SINON36:
;reserveRetour
sub sp,2

; iconst 2
push word ptr 2

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC9
jmp FINFONC9

FSI36:
FINFONC9:
;fermeBloc 4
leave
ret 4

E24:
;ouvcBloc 2
enter 2,0

; aLaLigne
call ligsuiv

; ecrireChaine "Vous arrivez dans une salle avec deux cascades qui cachent des passages."
.DATA
mess61 DB "Vous arrivez dans une salle avec deux cascades qui cachent des passages.$"
.CODE
lea dx,mess61
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "Une est d'huile et l'autre d'eau."
.DATA
mess62 DB "Une est d'huile et l'autre d'eau.$"
.CODE
lea dx,mess62
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "1. Poil au dos"
.DATA
mess63 DB "1. Poil au dos$"
.CODE
lea dx,mess63
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "2. Prendre la petite porte (1m)"
.DATA
mess64 DB "2. Prendre la petite porte (1m)$"
.CODE
lea dx,mess64
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "3. Passer par la cascade d'eau"
.DATA
mess65 DB "3. Passer par la cascade d'eau$"
.CODE
lea dx,mess65
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "4. Rentrer chez soi"
.DATA
mess66 DB "4. Rentrer chez soi$"
.CODE
lea dx,mess66
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "5. Passer par la cascade d'huile"
.DATA
mess67 DB "5. Passer par la cascade d'huile$"
.CODE
lea dx,mess67
push dx
call ecrch

; aLaLigne
call ligsuiv

; lireEnt -2
lea dx,[bp-2]
push dx
call lirent

; aLaLigne
call ligsuiv

; iload -2
push word ptr [bp-2]

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

; iffaux SINON37
pop ax
cmp ax,0
je SINON37

;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC10
jmp FINFONC10

; goto FSI37
jmp FSI37

SINON37:
FSI37:
; iload -2
push word ptr [bp-2]

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

; iffaux SINON38
pop ax
cmp ax,0
je SINON38

;reserveRetour
sub sp,2

; iload 8
push word ptr [bp+8]

; iload 6
push word ptr [bp+6]

;call E42
call E42

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC10
jmp FINFONC10

; goto FSI38
jmp FSI38

SINON38:
FSI38:
; iload -2
push word ptr [bp-2]

; iconst 3
push word ptr 3

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON39
pop ax
cmp ax,0
je SINON39

; iload 4
push word ptr [bp+4]

; iffaux SINON40
pop ax
cmp ax,0
je SINON40

;reserveRetour
sub sp,2

; iconst 28
push word ptr 28

;call MORT
call MORT

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC10
jmp FINFONC10

; goto FSI40
jmp FSI40

SINON40:
;reserveRetour
sub sp,2

; iconst 34
push word ptr 34

;call MORT
call MORT

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC10
jmp FINFONC10

FSI40:
; goto FSI39
jmp FSI39

SINON39:
FSI39:
; iload -2
push word ptr [bp-2]

; iconst 4
push word ptr 4

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON41
pop ax
cmp ax,0
je SINON41

;reserveRetour
sub sp,2

; iconst 15
push word ptr 15

;call MORT
call MORT

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC10
jmp FINFONC10

; goto FSI41
jmp FSI41

SINON41:
FSI41:
; iload -2
push word ptr [bp-2]

; iconst 5
push word ptr 5

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON42
pop ax
cmp ax,0
je SINON42

;reserveRetour
sub sp,2

; iconst 30
push word ptr 30

;call MORT
call MORT

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC10
jmp FINFONC10

; goto FSI42
jmp FSI42

SINON42:
FSI42:
;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC10
jmp FINFONC10

FINFONC10:
;fermeBloc 6
leave
ret 6

E7:
;ouvcBloc 2
enter 2,0

; aLaLigne
call ligsuiv

; ecrireChaine "Vous trouvez une armure"
.DATA
mess68 DB "Vous trouvez une armure$"
.CODE
lea dx,mess68
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "1. Prendre l'armure"
.DATA
mess69 DB "1. Prendre l'armure$"
.CODE
lea dx,mess69
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "2. Ne pas la prendre"
.DATA
mess70 DB "2. Ne pas la prendre$"
.CODE
lea dx,mess70
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "3. Prendre la petite porte (1m)"
.DATA
mess71 DB "3. Prendre la petite porte (1m)$"
.CODE
lea dx,mess71
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "4. Rentrer chez soi"
.DATA
mess72 DB "4. Rentrer chez soi$"
.CODE
lea dx,mess72
push dx
call ecrch

; aLaLigne
call ligsuiv

; lireEnt -2
lea dx,[bp-2]
push dx
call lirent

; aLaLigne
call ligsuiv

; iload -2
push word ptr [bp-2]

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

; iffaux SINON43
pop ax
cmp ax,0
je SINON43

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

; iconst -1
push word ptr -1

;call E24
call E24

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC11
jmp FINFONC11

; goto FSI43
jmp FSI43

SINON43:
FSI43:
; iload -2
push word ptr [bp-2]

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

; iffaux SINON44
pop ax
cmp ax,0
je SINON44

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

; iconst 0
push word ptr 0

;call E24
call E24

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC11
jmp FINFONC11

; goto FSI44
jmp FSI44

SINON44:
FSI44:
; iload -2
push word ptr [bp-2]

; iconst 3
push word ptr 3

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON45
pop ax
cmp ax,0
je SINON45

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E42
call E42

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC11
jmp FINFONC11

; goto FSI45
jmp FSI45

SINON45:
FSI45:
; iload -2
push word ptr [bp-2]

; iconst 4
push word ptr 4

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON46
pop ax
cmp ax,0
je SINON46

;reserveRetour
sub sp,2

; iconst 15
push word ptr 15

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC11
jmp FINFONC11

; goto FSI46
jmp FSI46

SINON46:
FSI46:
;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC11
jmp FINFONC11

FINFONC11:
;fermeBloc 4
leave
ret 4

E23:
;ouvcBloc 2
enter 2,0

; aLaLigne
call ligsuiv

; ecrireChaine "Bravo grace a votre nyctalopie, vous trouvez une echelle que le narrateur n'avait pas vu."
.DATA
mess73 DB "Bravo grace a votre nyctalopie, vous trouvez une echelle que le narrateur n'avait pas vu.$"
.CODE
lea dx,mess73
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "Vous etes desormais face a cerbere."
.DATA
mess74 DB "Vous etes desormais face a cerbere.$"
.CODE
lea dx,mess74
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "1. Combattre"
.DATA
mess75 DB "1. Combattre$"
.CODE
lea dx,mess75
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "2. Passer furtivement"
.DATA
mess76 DB "2. Passer furtivement$"
.CODE
lea dx,mess76
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "3. Tenter de l'amadouer"
.DATA
mess77 DB "3. Tenter de l'amadouer$"
.CODE
lea dx,mess77
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "4. Chanter"
.DATA
mess78 DB "4. Chanter$"
.CODE
lea dx,mess78
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "5. Faire un strip tease"
.DATA
mess79 DB "5. Faire un strip tease$"
.CODE
lea dx,mess79
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "6. Rentrer chez soi"
.DATA
mess80 DB "6. Rentrer chez soi$"
.CODE
lea dx,mess80
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "7. Prendre la petite porte (1m)"
.DATA
mess81 DB "7. Prendre la petite porte (1m)$"
.CODE
lea dx,mess81
push dx
call ecrch

; aLaLigne
call ligsuiv

; lireEnt -2
lea dx,[bp-2]
push dx
call lirent

; aLaLigne
call ligsuiv

; iload -2
push word ptr [bp-2]

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

; iffaux SINON47
pop ax
cmp ax,0
je SINON47

;reserveRetour
sub sp,2

; iconst 7
push word ptr 7

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC12
jmp FINFONC12

; goto FSI47
jmp FSI47

SINON47:
FSI47:
; iload -2
push word ptr [bp-2]

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

; iffaux SINON48
pop ax
cmp ax,0
je SINON48

;reserveRetour
sub sp,2

; iconst 7
push word ptr 7

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC12
jmp FINFONC12

; goto FSI48
jmp FSI48

SINON48:
FSI48:
; iload -2
push word ptr [bp-2]

; iconst 3
push word ptr 3

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON49
pop ax
cmp ax,0
je SINON49

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E46
call E46

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC12
jmp FINFONC12

; goto FSI49
jmp FSI49

SINON49:
FSI49:
; iload -2
push word ptr [bp-2]

; iconst 4
push word ptr 4

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON50
pop ax
cmp ax,0
je SINON50

;reserveRetour
sub sp,2

; iconst 7
push word ptr 7

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC12
jmp FINFONC12

; goto FSI50
jmp FSI50

SINON50:
FSI50:
; iload -2
push word ptr [bp-2]

; iconst 5
push word ptr 5

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON51
pop ax
cmp ax,0
je SINON51

;reserveRetour
sub sp,2

; iconst 7
push word ptr 7

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC12
jmp FINFONC12

; goto FSI51
jmp FSI51

SINON51:
FSI51:
; iload -2
push word ptr [bp-2]

; iconst 6
push word ptr 6

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON52
pop ax
cmp ax,0
je SINON52

;reserveRetour
sub sp,2

; iconst 1
push word ptr 1

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC12
jmp FINFONC12

; goto FSI52
jmp FSI52

SINON52:
FSI52:
; iload -2
push word ptr [bp-2]

; iconst 7
push word ptr 7

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON53
pop ax
cmp ax,0
je SINON53

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E42
call E42

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC12
jmp FINFONC12

; goto FSI53
jmp FSI53

SINON53:
FSI53:
;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC12
jmp FINFONC12

FINFONC12:
;fermeBloc 4
leave
ret 4

E9:
;ouvcBloc 2
enter 2,0

; aLaLigne
call ligsuiv

; ecrireChaine "Vous tuez un chat qui vous regardait mal,"
.DATA
mess82 DB "Vous tuez un chat qui vous regardait mal,$"
.CODE
lea dx,mess82
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "et vous vous baignez dans ses entrailles."
.DATA
mess83 DB "et vous vous baignez dans ses entrailles.$"
.CODE
lea dx,mess83
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "Une lueur apparait plus loin dans le couloir. elle gagne en intensite."
.DATA
mess84 DB "Une lueur apparait plus loin dans le couloir. elle gagne en intensite.$"
.CODE
lea dx,mess84
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "1. Continuer a se baigner"
.DATA
mess85 DB "1. Continuer a se baigner$"
.CODE
lea dx,mess85
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "2. Manger le chat"
.DATA
mess86 DB "2. Manger le chat$"
.CODE
lea dx,mess86
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "3. Aller vers la lueur tranquillement"
.DATA
mess87 DB "3. Aller vers la lueur tranquillement$"
.CODE
lea dx,mess87
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "4. Courir vers la lueur"
.DATA
mess88 DB "4. Courir vers la lueur$"
.CODE
lea dx,mess88
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "6. Prendre la petite porte (1m)"
.DATA
mess89 DB "6. Prendre la petite porte (1m)$"
.CODE
lea dx,mess89
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "7. Rentrer chez soi"
.DATA
mess90 DB "7. Rentrer chez soi$"
.CODE
lea dx,mess90
push dx
call ecrch

; aLaLigne
call ligsuiv

; lireEnt -2
lea dx,[bp-2]
push dx
call lirent

; aLaLigne
call ligsuiv

; iload -2
push word ptr [bp-2]

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

; iffaux SINON54
pop ax
cmp ax,0
je SINON54

;reserveRetour
sub sp,2

; iconst 33
push word ptr 33

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC13
jmp FINFONC13

; goto FSI54
jmp FSI54

SINON54:
FSI54:
; iload -2
push word ptr [bp-2]

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

; iffaux SINON55
pop ax
cmp ax,0
je SINON55

;reserveRetour
sub sp,2

; iconst 13
push word ptr 13

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC13
jmp FINFONC13

; goto FSI55
jmp FSI55

SINON55:
FSI55:
; iload -2
push word ptr [bp-2]

; iconst 3
push word ptr 3

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON56
pop ax
cmp ax,0
je SINON56

;reserveRetour
sub sp,2

; iconst 33
push word ptr 33

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC13
jmp FINFONC13

; goto FSI56
jmp FSI56

SINON56:
FSI56:
; iload -2
push word ptr [bp-2]

; iconst 4
push word ptr 4

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON57
pop ax
cmp ax,0
je SINON57

;reserveRetour
sub sp,2

; iconst 10
push word ptr 10

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC13
jmp FINFONC13

; goto FSI57
jmp FSI57

SINON57:
FSI57:
; iload -2
push word ptr [bp-2]

; iconst 5
push word ptr 5

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON58
pop ax
cmp ax,0
je SINON58

; iload 6
push word ptr [bp+6]

; iconst 4
push word ptr 4

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON59
pop ax
cmp ax,0
je SINON59

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E23
call E23

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC13
jmp FINFONC13

; goto FSI59
jmp FSI59

SINON59:
;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC13
jmp FINFONC13

FSI59:
; goto FSI58
jmp FSI58

SINON58:
FSI58:
; iload -2
push word ptr [bp-2]

; iconst 6
push word ptr 6

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON60
pop ax
cmp ax,0
je SINON60

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E42
call E42

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC13
jmp FINFONC13

; goto FSI60
jmp FSI60

SINON60:
FSI60:
; iload -2
push word ptr [bp-2]

; iconst 7
push word ptr 7

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON61
pop ax
cmp ax,0
je SINON61

;reserveRetour
sub sp,2

; iconst 15
push word ptr 15

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC13
jmp FINFONC13

; goto FSI61
jmp FSI61

SINON61:
FSI61:
;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC13
jmp FINFONC13

FINFONC13:
;fermeBloc 4
leave
ret 4

E22:
;ouvcBloc 2
enter 2,0

; aLaLigne
call ligsuiv

; ecrireChaine "Ayant admirablement utilise votre grande frite MacDo du menu Happy meal."
.DATA
mess91 DB "Ayant admirablement utilise votre grande frite MacDo du menu Happy meal.$"
.CODE
lea dx,mess91
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "Avec votre super jouet rattata, vous vous retrouvez face a un cerbere belge."
.DATA
mess92 DB "Avec votre super jouet rattata, vous vous retrouvez face a un cerbere belge.$"
.CODE
lea dx,mess92
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "Au vue de sa gamelle de moules frites, cela parait logique."
.DATA
mess93 DB "Au vue de sa gamelle de moules frites, cela parait logique.$"
.CODE
lea dx,mess93
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "1. Combattre"
.DATA
mess94 DB "1. Combattre$"
.CODE
lea dx,mess94
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "2. Passer furtivement"
.DATA
mess95 DB "2. Passer furtivement$"
.CODE
lea dx,mess95
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "3. Tenter de l'amadouer"
.DATA
mess96 DB "3. Tenter de l'amadouer$"
.CODE
lea dx,mess96
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "4. Chanter"
.DATA
mess97 DB "4. Chanter$"
.CODE
lea dx,mess97
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "5. Faire un strip tease"
.DATA
mess98 DB "5. Faire un strip tease$"
.CODE
lea dx,mess98
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "6. Rentrer chez soi"
.DATA
mess99 DB "6. Rentrer chez soi$"
.CODE
lea dx,mess99
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "7. Prendre la petite porte (1m)"
.DATA
mess100 DB "7. Prendre la petite porte (1m)$"
.CODE
lea dx,mess100
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "8. Attaquer avec rattata"
.DATA
mess101 DB "8. Attaquer avec rattata$"
.CODE
lea dx,mess101
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "9. Jouer avec rattata"
.DATA
mess102 DB "9. Jouer avec rattata$"
.CODE
lea dx,mess102
push dx
call ecrch

; aLaLigne
call ligsuiv

; lireEnt -2
lea dx,[bp-2]
push dx
call lirent

; aLaLigne
call ligsuiv

; iload -2
push word ptr [bp-2]

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

; iffaux SINON62
pop ax
cmp ax,0
je SINON62

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E47
call E47

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC14
jmp FINFONC14

; goto FSI62
jmp FSI62

SINON62:
FSI62:
; iload -2
push word ptr [bp-2]

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

; iffaux SINON63
pop ax
cmp ax,0
je SINON63

;reserveRetour
sub sp,2

; iconst 7
push word ptr 7

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC14
jmp FINFONC14

; goto FSI63
jmp FSI63

SINON63:
FSI63:
; iload -2
push word ptr [bp-2]

; iconst 3
push word ptr 3

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON64
pop ax
cmp ax,0
je SINON64

;reserveRetour
sub sp,2

; iconst 7
push word ptr 7

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC14
jmp FINFONC14

; goto FSI64
jmp FSI64

SINON64:
FSI64:
; iload -2
push word ptr [bp-2]

; iconst 4
push word ptr 4

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON65
pop ax
cmp ax,0
je SINON65

;reserveRetour
sub sp,2

; iconst 7
push word ptr 7

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC14
jmp FINFONC14

; goto FSI65
jmp FSI65

SINON65:
FSI65:
; iload -2
push word ptr [bp-2]

; iconst 5
push word ptr 5

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON66
pop ax
cmp ax,0
je SINON66

;reserveRetour
sub sp,2

; iconst 7
push word ptr 7

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC14
jmp FINFONC14

; goto FSI66
jmp FSI66

SINON66:
FSI66:
; iload -2
push word ptr [bp-2]

; iconst 6
push word ptr 6

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON67
pop ax
cmp ax,0
je SINON67

;reserveRetour
sub sp,2

; iconst 1
push word ptr 1

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC14
jmp FINFONC14

; goto FSI67
jmp FSI67

SINON67:
FSI67:
; iload -2
push word ptr [bp-2]

; iconst 7
push word ptr 7

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON68
pop ax
cmp ax,0
je SINON68

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E42
call E42

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC14
jmp FINFONC14

; goto FSI68
jmp FSI68

SINON68:
FSI68:
; iload -2
push word ptr [bp-2]

; iconst 8
push word ptr 8

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON69
pop ax
cmp ax,0
je SINON69

;reserveRetour
sub sp,2

; iconst 7
push word ptr 7

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC14
jmp FINFONC14

; goto FSI69
jmp FSI69

SINON69:
FSI69:
; iload -2
push word ptr [bp-2]

; iconst 9
push word ptr 9

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON70
pop ax
cmp ax,0
je SINON70

;reserveRetour
sub sp,2

; iconst 7
push word ptr 7

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC14
jmp FINFONC14

; goto FSI70
jmp FSI70

SINON70:
FSI70:
;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC14
jmp FINFONC14

FINFONC14:
;fermeBloc 4
leave
ret 4

E21:
;ouvcBloc 2
enter 2,0

; aLaLigne
call ligsuiv

; ecrireChaine "Des belges sauvages sortent des hautes herbes !"
.DATA
mess103 DB "Des belges sauvages sortent des hautes herbes !$"
.CODE
lea dx,mess103
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "1. Utiliser rattata"
.DATA
mess104 DB "1. Utiliser rattata$"
.CODE
lea dx,mess104
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "2. Les attaquer"
.DATA
mess105 DB "2. Les attaquer$"
.CODE
lea dx,mess105
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "3. Tenter de les amadouer"
.DATA
mess106 DB "3. Tenter de les amadouer$"
.CODE
lea dx,mess106
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "4. Leurs parler"
.DATA
mess107 DB "4. Leurs parler$"
.CODE
lea dx,mess107
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "5. Passer furtivement"
.DATA
mess108 DB "5. Passer furtivement$"
.CODE
lea dx,mess108
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "6. Rentrer chez soi"
.DATA
mess109 DB "6. Rentrer chez soi$"
.CODE
lea dx,mess109
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "7. Passer en courant"
.DATA
mess110 DB "7. Passer en courant$"
.CODE
lea dx,mess110
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "8. Prendre la petite porte (1m)"
.DATA
mess111 DB "8. Prendre la petite porte (1m)$"
.CODE
lea dx,mess111
push dx
call ecrch

; aLaLigne
call ligsuiv

; lireEnt -2
lea dx,[bp-2]
push dx
call lirent

; aLaLigne
call ligsuiv

; iload -2
push word ptr [bp-2]

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

; iffaux SINON71
pop ax
cmp ax,0
je SINON71

;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC15
jmp FINFONC15

; goto FSI71
jmp FSI71

SINON71:
FSI71:
; iload -2
push word ptr [bp-2]

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

; iffaux SINON72
pop ax
cmp ax,0
je SINON72

;reserveRetour
sub sp,2

; iconst 8
push word ptr 8

;call MORT
call MORT

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC15
jmp FINFONC15

; goto FSI72
jmp FSI72

SINON72:
FSI72:
; iload -2
push word ptr [bp-2]

; iconst 3
push word ptr 3

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON73
pop ax
cmp ax,0
je SINON73

; iload 4
push word ptr [bp+4]

; iffaux SINON74
pop ax
cmp ax,0
je SINON74

;reserveRetour
sub sp,2

; iload 8
push word ptr [bp+8]

; iload 6
push word ptr [bp+6]

;call E22
call E22

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC15
jmp FINFONC15

; goto FSI74
jmp FSI74

SINON74:
;reserveRetour
sub sp,2

; iconst 32
push word ptr 32

;call MORT
call MORT

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC15
jmp FINFONC15

FSI74:
; goto FSI73
jmp FSI73

SINON73:
FSI73:
; iload -2
push word ptr [bp-2]

; iconst 4
push word ptr 4

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON75
pop ax
cmp ax,0
je SINON75

;reserveRetour
sub sp,2

; iconst 6
push word ptr 6

;call MORT
call MORT

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC15
jmp FINFONC15

; goto FSI75
jmp FSI75

SINON75:
FSI75:
; iload -2
push word ptr [bp-2]

; iconst 5
push word ptr 5

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON76
pop ax
cmp ax,0
je SINON76

;reserveRetour
sub sp,2

; iconst 11
push word ptr 11

;call MORT
call MORT

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC15
jmp FINFONC15

; goto FSI76
jmp FSI76

SINON76:
FSI76:
; iload -2
push word ptr [bp-2]

; iconst 6
push word ptr 6

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON77
pop ax
cmp ax,0
je SINON77

;reserveRetour
sub sp,2

; iconst 15
push word ptr 15

;call MORT
call MORT

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC15
jmp FINFONC15

; goto FSI77
jmp FSI77

SINON77:
FSI77:
; iload -2
push word ptr [bp-2]

; iconst 7
push word ptr 7

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON78
pop ax
cmp ax,0
je SINON78

;reserveRetour
sub sp,2

; iconst 10
push word ptr 10

;call MORT
call MORT

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC15
jmp FINFONC15

; goto FSI78
jmp FSI78

SINON78:
FSI78:
; iload -2
push word ptr [bp-2]

; iconst 8
push word ptr 8

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON79
pop ax
cmp ax,0
je SINON79

;reserveRetour
sub sp,2

; iload 8
push word ptr [bp+8]

; iload 6
push word ptr [bp+6]

;call E42
call E42

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC15
jmp FINFONC15

; goto FSI79
jmp FSI79

SINON79:
FSI79:
;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC15
jmp FINFONC15

FINFONC15:
;fermeBloc 6
leave
ret 6

E8:
;ouvcBloc 2
enter 2,0

; aLaLigne
call ligsuiv

; ecrireChaine "Vous arrivez devant un banquet.."
.DATA
mess112 DB "Vous arrivez devant un banquet..$"
.CODE
lea dx,mess112
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "1. Prendre un poulet"
.DATA
mess113 DB "1. Prendre un poulet$"
.CODE
lea dx,mess113
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "2. Y manger"
.DATA
mess114 DB "2. Y manger$"
.CODE
lea dx,mess114
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "3. Commander Macdo"
.DATA
mess115 DB "3. Commander Macdo$"
.CODE
lea dx,mess115
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "4. Prendre une salade verte"
.DATA
mess116 DB "4. Prendre une salade verte$"
.CODE
lea dx,mess116
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "5. Rentrer chez soi"
.DATA
mess117 DB "5. Rentrer chez soi$"
.CODE
lea dx,mess117
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "6. Prendre la petite porte (1m)"
.DATA
mess118 DB "6. Prendre la petite porte (1m)$"
.CODE
lea dx,mess118
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "7. Continuer tout droit"
.DATA
mess119 DB "7. Continuer tout droit$"
.CODE
lea dx,mess119
push dx
call ecrch

; aLaLigne
call ligsuiv

; lireEnt -2
lea dx,[bp-2]
push dx
call lirent

; aLaLigne
call ligsuiv

; iload -2
push word ptr [bp-2]

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

; iffaux SINON80
pop ax
cmp ax,0
je SINON80

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

; iconst 0
push word ptr 0

;call E21
call E21

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC16
jmp FINFONC16

; goto FSI80
jmp FSI80

SINON80:
FSI80:
; iload -2
push word ptr [bp-2]

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

; iffaux SINON81
pop ax
cmp ax,0
je SINON81

;reserveRetour
sub sp,2

; iconst 8
push word ptr 8

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC16
jmp FINFONC16

; goto FSI81
jmp FSI81

SINON81:
FSI81:
; iload -2
push word ptr [bp-2]

; iconst 3
push word ptr 3

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON82
pop ax
cmp ax,0
je SINON82

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

; iconst -1
push word ptr -1

;call E21
call E21

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC16
jmp FINFONC16

; goto FSI82
jmp FSI82

SINON82:
FSI82:
; iload -2
push word ptr [bp-2]

; iconst 4
push word ptr 4

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON83
pop ax
cmp ax,0
je SINON83

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

; iconst 0
push word ptr 0

;call E21
call E21

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC16
jmp FINFONC16

; goto FSI83
jmp FSI83

SINON83:
FSI83:
; iload -2
push word ptr [bp-2]

; iconst 5
push word ptr 5

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON84
pop ax
cmp ax,0
je SINON84

;reserveRetour
sub sp,2

; iconst 15
push word ptr 15

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC16
jmp FINFONC16

; goto FSI84
jmp FSI84

SINON84:
FSI84:
; iload -2
push word ptr [bp-2]

; iconst 6
push word ptr 6

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON85
pop ax
cmp ax,0
je SINON85

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E42
call E42

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC16
jmp FINFONC16

; goto FSI85
jmp FSI85

SINON85:
FSI85:
; iload -2
push word ptr [bp-2]

; iconst 7
push word ptr 7

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON86
pop ax
cmp ax,0
je SINON86

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

; iconst 0
push word ptr 0

;call E21
call E21

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC16
jmp FINFONC16

; goto FSI86
jmp FSI86

SINON86:
FSI86:
;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC16
jmp FINFONC16

FINFONC16:
;fermeBloc 4
leave
ret 4

E20:
;ouvcBloc 2
enter 2,0

; aLaLigne
call ligsuiv

; ecrireChaine "Apres quelques couloirs, vous vous retrouvez devant cerbere."
.DATA
mess120 DB "Apres quelques couloirs, vous vous retrouvez devant cerbere.$"
.CODE
lea dx,mess120
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "C'est con d'avoir passe tant d'annees a deux pas de la fin."
.DATA
mess121 DB "C'est con d'avoir passe tant d'annees a deux pas de la fin.$"
.CODE
lea dx,mess121
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "1. Combattre"
.DATA
mess122 DB "1. Combattre$"
.CODE
lea dx,mess122
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "2. Passer furtivement"
.DATA
mess123 DB "2. Passer furtivement$"
.CODE
lea dx,mess123
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "3. Tenter de l'amadouer"
.DATA
mess124 DB "3. Tenter de l'amadouer$"
.CODE
lea dx,mess124
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "4. Chanter"
.DATA
mess125 DB "4. Chanter$"
.CODE
lea dx,mess125
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "5. Faire un strip tease"
.DATA
mess126 DB "5. Faire un strip tease$"
.CODE
lea dx,mess126
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "6. Rentrer chez soi"
.DATA
mess127 DB "6. Rentrer chez soi$"
.CODE
lea dx,mess127
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "7. Prendre la petite porte (1m)"
.DATA
mess128 DB "7. Prendre la petite porte (1m)$"
.CODE
lea dx,mess128
push dx
call ecrch

; aLaLigne
call ligsuiv

; lireEnt -2
lea dx,[bp-2]
push dx
call lirent

; aLaLigne
call ligsuiv

; iload -2
push word ptr [bp-2]

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

; iffaux SINON87
pop ax
cmp ax,0
je SINON87

;reserveRetour
sub sp,2

; iconst 7
push word ptr 7

;call MORT
call MORT

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC17
jmp FINFONC17

; goto FSI87
jmp FSI87

SINON87:
FSI87:
; iload -2
push word ptr [bp-2]

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

; iffaux SINON88
pop ax
cmp ax,0
je SINON88

;reserveRetour
sub sp,2

; iconst 7
push word ptr 7

;call MORT
call MORT

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC17
jmp FINFONC17

; goto FSI88
jmp FSI88

SINON88:
FSI88:
; iload -2
push word ptr [bp-2]

; iconst 3
push word ptr 3

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON89
pop ax
cmp ax,0
je SINON89

; iload 4
push word ptr [bp+4]

; iffaux SINON90
pop ax
cmp ax,0
je SINON90

;reserveRetour
sub sp,2

; iload 8
push word ptr [bp+8]

; iload 6
push word ptr [bp+6]

;call E44
call E44

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC17
jmp FINFONC17

; goto FSI90
jmp FSI90

SINON90:
;reserveRetour
sub sp,2

; iconst 7
push word ptr 7

;call MORT
call MORT

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC17
jmp FINFONC17

FSI90:
; goto FSI89
jmp FSI89

SINON89:
FSI89:
; iload -2
push word ptr [bp-2]

; iconst 4
push word ptr 4

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON91
pop ax
cmp ax,0
je SINON91

;reserveRetour
sub sp,2

; iconst 7
push word ptr 7

;call MORT
call MORT

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC17
jmp FINFONC17

; goto FSI91
jmp FSI91

SINON91:
FSI91:
; iload -2
push word ptr [bp-2]

; iconst 5
push word ptr 5

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON92
pop ax
cmp ax,0
je SINON92

;reserveRetour
sub sp,2

; iconst 7
push word ptr 7

;call MORT
call MORT

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC17
jmp FINFONC17

; goto FSI92
jmp FSI92

SINON92:
FSI92:
; iload -2
push word ptr [bp-2]

; iconst 6
push word ptr 6

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON93
pop ax
cmp ax,0
je SINON93

;reserveRetour
sub sp,2

; iconst 1
push word ptr 1

;call MORT
call MORT

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC17
jmp FINFONC17

; goto FSI93
jmp FSI93

SINON93:
FSI93:
; iload -2
push word ptr [bp-2]

; iconst 7
push word ptr 7

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON94
pop ax
cmp ax,0
je SINON94

;reserveRetour
sub sp,2

; iload 8
push word ptr [bp+8]

; iload 6
push word ptr [bp+6]

;call E42
call E42

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC17
jmp FINFONC17

; goto FSI94
jmp FSI94

SINON94:
FSI94:
;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 10
pop ax
mov [bp+10],ax

; goto FINFONC17
jmp FINFONC17

FINFONC17:
;fermeBloc 6
leave
ret 6

E19:
;ouvcBloc 4
enter 4,0

; aLaLigne
call ligsuiv

; iconst 1
push word ptr 1

; istore -4
pop ax
mov word ptr [bp-4],ax

FAIRE1:
; iload -4
push word ptr [bp-4]

; iconst 20
push word ptr 20

; iinf
pop bx
pop ax
cmp ax,bx
jge $+6
push -1
jmp $+4
push 0

; iffaux FAIT1
pop ax
cmp ax,0
je FAIT1

; ecrireChaine "Voila "
.DATA
mess129 DB "Voila $"
.CODE
lea dx,mess129
push dx
call ecrch

; iconst 2
push word ptr 2

; iload -4
push word ptr [bp-4]

; imul
pop bx
pop ax
imul bx
push ax

; ecrireEnt
call ecrent

; ecrireChaine " ans que vous etes dans la ferme"
.DATA
mess130 DB " ans que vous etes dans la ferme$"
.CODE
lea dx,mess130
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "1. Rester"
.DATA
mess131 DB "1. Rester$"
.CODE
lea dx,mess131
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "2. Continuer la quete"
.DATA
mess132 DB "2. Continuer la quete$"
.CODE
lea dx,mess132
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "3. Rentrer chez soi"
.DATA
mess133 DB "3. Rentrer chez soi$"
.CODE
lea dx,mess133
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "4. Prendre la petite porte (1m)"
.DATA
mess134 DB "4. Prendre la petite porte (1m)$"
.CODE
lea dx,mess134
push dx
call ecrch

; aLaLigne
call ligsuiv

; lireEnt -2
lea dx,[bp-2]
push dx
call lirent

; aLaLigne
call ligsuiv

; iload -2
push word ptr [bp-2]

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

; iffaux SINON95
pop ax
cmp ax,0
je SINON95

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

; iconst 0
push word ptr 0

;call E20
call E20

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC18
jmp FINFONC18

; goto FSI95
jmp FSI95

SINON95:
FSI95:
; iload -2
push word ptr [bp-2]

; iconst 3
push word ptr 3

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON96
pop ax
cmp ax,0
je SINON96

;reserveRetour
sub sp,2

; iconst 15
push word ptr 15

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC18
jmp FINFONC18

; goto FSI96
jmp FSI96

SINON96:
FSI96:
; iload -2
push word ptr [bp-2]

; iconst 4
push word ptr 4

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON97
pop ax
cmp ax,0
je SINON97

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E42
call E42

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC18
jmp FINFONC18

; goto FSI97
jmp FSI97

SINON97:
FSI97:
; iload -4
push word ptr [bp-4]

; iconst 1
push word ptr 1

; iadd
pop bx
pop ax
add ax,bx
push ax

; istore -4
pop ax
mov word ptr [bp-4],ax

; goto FAIRE1
jmp FAIRE1

FAIT1:
; ecrireChaine "Apres 40 ans dans la ferme, vous decidez de reprendre votre quequete."
.DATA
mess135 DB "Apres 40 ans dans la ferme, vous decidez de reprendre votre quequete.$"
.CODE
lea dx,mess135
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "Le fermier Bouvier vous dit au revoir, triste que ses nuits seront froides desormais"
.DATA
mess136 DB "Le fermier Bouvier vous dit au revoir, triste que ses nuits seront froides desormais$"
.CODE
lea dx,mess136
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "mais il vous propose un dernier poulet dans son infinie bonte."
.DATA
mess137 DB "mais il vous propose un dernier poulet dans son infinie bonte.$"
.CODE
lea dx,mess137
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "1. Manger ce poulet avec votre ami"
.DATA
mess138 DB "1. Manger ce poulet avec votre ami$"
.CODE
lea dx,mess138
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "2. Emporter le poulet avec vous"
.DATA
mess139 DB "2. Emporter le poulet avec vous$"
.CODE
lea dx,mess139
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "3. Lui cracher a la gueule et partir"
.DATA
mess140 DB "3. Lui cracher a la gueule et partir$"
.CODE
lea dx,mess140
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "4. Decider de rester finir votre vie avec votre Christian"
.DATA
mess141 DB "4. Decider de rester finir votre vie avec votre Christian$"
.CODE
lea dx,mess141
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "5. Prendre la petite porte (1m)"
.DATA
mess142 DB "5. Prendre la petite porte (1m)$"
.CODE
lea dx,mess142
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "6. Rentrer chez soi"
.DATA
mess143 DB "6. Rentrer chez soi$"
.CODE
lea dx,mess143
push dx
call ecrch

; aLaLigne
call ligsuiv

; lireEnt -2
lea dx,[bp-2]
push dx
call lirent

; aLaLigne
call ligsuiv

; iload -2
push word ptr [bp-2]

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

; iffaux SINON98
pop ax
cmp ax,0
je SINON98

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

; iconst 0
push word ptr 0

;call E20
call E20

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC18
jmp FINFONC18

; goto FSI98
jmp FSI98

SINON98:
FSI98:
; iload -2
push word ptr [bp-2]

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

; iffaux SINON99
pop ax
cmp ax,0
je SINON99

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

; iconst -1
push word ptr -1

;call E20
call E20

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC18
jmp FINFONC18

; goto FSI99
jmp FSI99

SINON99:
FSI99:
; iload -2
push word ptr [bp-2]

; iconst 3
push word ptr 3

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON100
pop ax
cmp ax,0
je SINON100

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

; iconst 0
push word ptr 0

;call E20
call E20

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC18
jmp FINFONC18

; goto FSI100
jmp FSI100

SINON100:
FSI100:
; iload -2
push word ptr [bp-2]

; iconst 4
push word ptr 4

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON101
pop ax
cmp ax,0
je SINON101

;reserveRetour
sub sp,2

; iconst 29
push word ptr 29

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC18
jmp FINFONC18

; goto FSI101
jmp FSI101

SINON101:
FSI101:
; iload -2
push word ptr [bp-2]

; iconst 5
push word ptr 5

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON102
pop ax
cmp ax,0
je SINON102

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E42
call E42

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC18
jmp FINFONC18

; goto FSI102
jmp FSI102

SINON102:
FSI102:
; iload -2
push word ptr [bp-2]

; iconst 6
push word ptr 6

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON103
pop ax
cmp ax,0
je SINON103

;reserveRetour
sub sp,2

; iconst 15
push word ptr 15

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC18
jmp FINFONC18

; goto FSI103
jmp FSI103

SINON103:
FSI103:
;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC18
jmp FINFONC18

FINFONC18:
;fermeBloc 4
leave
ret 4

E18:
;ouvcBloc 2
enter 2,0

; aLaLigne
call ligsuiv

; ecrireChaine "Vous rencontrez un homme se presentant comme Christian Bouvier,"
.DATA
mess144 DB "Vous rencontrez un homme se presentant comme Christian Bouvier,$"
.CODE
lea dx,mess144
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "fondateur des illuminatis, vampire pedobear du croissant triangle sans frontieres au chocolat"
.DATA
mess145 DB "fondateur des illuminatis, vampire pedobear du croissant triangle sans frontieres au chocolat$"
.CODE
lea dx,mess145
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "par l'intersiste de l'ombre diffractee par la troisieme pleine lune apres le viol d'une belette sur un petit ours."
.DATA
mess146 DB "par l'intersiste de l'ombre diffractee par la troisieme pleine lune apres le viol d'une belette sur un petit ours.$"
.CODE
lea dx,mess146
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "Il vous propose de vous joindre a lui, meme si ce metier est difficile."
.DATA
mess147 DB "Il vous propose de vous joindre a lui, meme si ce metier est difficile.$"
.CODE
lea dx,mess147
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "1. Ficile ! LOL!"
.DATA
mess148 DB "1. Ficile ! LOL!$"
.CODE
lea dx,mess148
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "2. Oh ouais!"
.DATA
mess149 DB "2. Oh ouais!$"
.CODE
lea dx,mess149
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "3. Prendre la petite porte (1m)"
.DATA
mess150 DB "3. Prendre la petite porte (1m)$"
.CODE
lea dx,mess150
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "4. Rentrer chez soi et lui cracher a la gueule"
.DATA
mess151 DB "4. Rentrer chez soi et lui cracher a la gueule$"
.CODE
lea dx,mess151
push dx
call ecrch

; aLaLigne
call ligsuiv

; lireEnt -2
lea dx,[bp-2]
push dx
call lirent

; aLaLigne
call ligsuiv

; iload -2
push word ptr [bp-2]

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

; iffaux SINON104
pop ax
cmp ax,0
je SINON104

;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC19
jmp FINFONC19

; goto FSI104
jmp FSI104

SINON104:
FSI104:
; iload -2
push word ptr [bp-2]

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

; iffaux SINON105
pop ax
cmp ax,0
je SINON105

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E19
call E19

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC19
jmp FINFONC19

; goto FSI105
jmp FSI105

SINON105:
FSI105:
; iload -2
push word ptr [bp-2]

; iconst 3
push word ptr 3

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON106
pop ax
cmp ax,0
je SINON106

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E42
call E42

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC19
jmp FINFONC19

; goto FSI106
jmp FSI106

SINON106:
FSI106:
; iload -2
push word ptr [bp-2]

; iconst 4
push word ptr 4

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON107
pop ax
cmp ax,0
je SINON107

;reserveRetour
sub sp,2

; iconst 15
push word ptr 15

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC19
jmp FINFONC19

; goto FSI107
jmp FSI107

SINON107:
FSI107:
;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC19
jmp FINFONC19

FINFONC19:
;fermeBloc 4
leave
ret 4

E15:
;ouvcBloc 2
enter 2,0

; aLaLigne
call ligsuiv

; iload 6
push word ptr [bp+6]

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

; iload 6
push word ptr [bp+6]

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

; iffaux SINON108
pop ax
cmp ax,0
je SINON108

;reserveRetour
sub sp,2

; iconst 27
push word ptr 27

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC20
jmp FINFONC20

; goto FSI108
jmp FSI108

SINON108:
FSI108:
; iload 6
push word ptr [bp+6]

; iconst 6
push word ptr 6

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON109
pop ax
cmp ax,0
je SINON109

;reserveRetour
sub sp,2

; iconst 28
push word ptr 28

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC20
jmp FINFONC20

; goto FSI109
jmp FSI109

SINON109:
FSI109:
; iload 6
push word ptr [bp+6]

; iconst 3
push word ptr 3

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON110
pop ax
cmp ax,0
je SINON110

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E18
call E18

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC20
jmp FINFONC20

; goto FSI110
jmp FSI110

SINON110:
FSI110:
; ecrireChaine "Assoiffe de sang, vous vous approchez discretement dans son dos, vous l'egorgez!"
.DATA
mess152 DB "Assoiffe de sang, vous vous approchez discretement dans son dos, vous l'egorgez!$"
.CODE
lea dx,mess152
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "Mais apres avoir vu son visage, vous reconnaissez votre ami d'enfance: Christian Bouvier,"
.DATA
mess153 DB "Mais apres avoir vu son visage, vous reconnaissez votre ami d'enfance: Christian Bouvier,$"
.CODE
lea dx,mess153
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "le vampire qui profitait de vos crime pour avoir sa dose. Pris de remords, vous vous infligez un supplice atroce!"
.DATA
mess154 DB "le vampire qui profitait de vos crime pour avoir sa dose. Pris de remords, vous vous infligez un supplice atroce!$"
.CODE
lea dx,mess154
push dx
call ecrch

; aLaLigne
call ligsuiv

;reserveRetour
sub sp,2

; iconst 3
push word ptr 3

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC20
jmp FINFONC20

FINFONC20:
;fermeBloc 4
leave
ret 4

E17:
;ouvcBloc 2
enter 2,0

; aLaLigne
call ligsuiv

; ecrireChaine "Vous arrivez devant cerbere, vous voyez derriere lui la porte de la salle aux tresors"
.DATA
mess155 DB "Vous arrivez devant cerbere, vous voyez derriere lui la porte de la salle aux tresors$"
.CODE
lea dx,mess155
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "(vous le devinez habilement a l'aide de l'ecritaux du collier de cerbere : 'Gardien de la salle aux tresors')"
.DATA
mess156 DB "(vous le devinez habilement a l'aide de l'ecritaux du collier de cerbere : 'Gardien de la salle aux tresors')$"
.CODE
lea dx,mess156
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "1. Combattre"
.DATA
mess157 DB "1. Combattre$"
.CODE
lea dx,mess157
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "2. Passer furtivement"
.DATA
mess158 DB "2. Passer furtivement$"
.CODE
lea dx,mess158
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "3. Tenter de l'amadouer"
.DATA
mess159 DB "3. Tenter de l'amadouer$"
.CODE
lea dx,mess159
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "4. Chanter"
.DATA
mess160 DB "4. Chanter$"
.CODE
lea dx,mess160
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "5. Faire un strip tease"
.DATA
mess161 DB "5. Faire un strip tease$"
.CODE
lea dx,mess161
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "6. Rentrer chez soi"
.DATA
mess162 DB "6. Rentrer chez soi$"
.CODE
lea dx,mess162
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "7. Prendre la petite porte (1m)"
.DATA
mess163 DB "7. Prendre la petite porte (1m)$"
.CODE
lea dx,mess163
push dx
call ecrch

; aLaLigne
call ligsuiv

; lireEnt -2
lea dx,[bp-2]
push dx
call lirent

; aLaLigne
call ligsuiv

; iload -2
push word ptr [bp-2]

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

; iffaux SINON111
pop ax
cmp ax,0
je SINON111

;reserveRetour
sub sp,2

; iconst 7
push word ptr 7

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC21
jmp FINFONC21

; goto FSI111
jmp FSI111

SINON111:
FSI111:
; iload -2
push word ptr [bp-2]

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

; iffaux SINON112
pop ax
cmp ax,0
je SINON112

;reserveRetour
sub sp,2

; iconst 7
push word ptr 7

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC21
jmp FINFONC21

; goto FSI112
jmp FSI112

SINON112:
FSI112:
; iload -2
push word ptr [bp-2]

; iconst 3
push word ptr 3

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON113
pop ax
cmp ax,0
je SINON113

;reserveRetour
sub sp,2

; iconst 7
push word ptr 7

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC21
jmp FINFONC21

; goto FSI113
jmp FSI113

SINON113:
FSI113:
; iload -2
push word ptr [bp-2]

; iconst 4
push word ptr 4

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON114
pop ax
cmp ax,0
je SINON114

;reserveRetour
sub sp,2

; iconst 7
push word ptr 7

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC21
jmp FINFONC21

; goto FSI114
jmp FSI114

SINON114:
FSI114:
; iload -2
push word ptr [bp-2]

; iconst 5
push word ptr 5

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON115
pop ax
cmp ax,0
je SINON115

;reserveRetour
sub sp,2

; iconst 7
push word ptr 7

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC21
jmp FINFONC21

; goto FSI115
jmp FSI115

SINON115:
FSI115:
; iload -2
push word ptr [bp-2]

; iconst 6
push word ptr 6

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON116
pop ax
cmp ax,0
je SINON116

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E45
call E45

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC21
jmp FINFONC21

; goto FSI116
jmp FSI116

SINON116:
FSI116:
; iload -2
push word ptr [bp-2]

; iconst 7
push word ptr 7

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON117
pop ax
cmp ax,0
je SINON117

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E42
call E42

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC21
jmp FINFONC21

; goto FSI117
jmp FSI117

SINON117:
FSI117:
;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC21
jmp FINFONC21

FINFONC21:
;fermeBloc 4
leave
ret 4

E16:
;ouvcBloc 0
enter 0,0

; aLaLigne
call ligsuiv

; iload 6
push word ptr [bp+6]

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

; iffaux SINON118
pop ax
cmp ax,0
je SINON118

; ecrireChaine "Obi-wan te propose de le suivre, il te revele alors une porte cachee et tu continues ton chemin."
.DATA
mess164 DB "Obi-wan te propose de le suivre, il te revele alors une porte cachee et tu continues ton chemin.$"
.CODE
lea dx,mess164
push dx
call ecrch

; aLaLigne
call ligsuiv

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E17
call E17

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC22
jmp FINFONC22

; goto FSI118
jmp FSI118

SINON118:
FSI118:
; iload 6
push word ptr [bp+6]

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

; iffaux SINON119
pop ax
cmp ax,0
je SINON119

; ecrireChaine "Obi te propose de le suivre, et te promet meme des bonbons, mais, comme t'es un nain, tu l'insultes et il te bute."
.DATA
mess165 DB "Obi te propose de le suivre, et te promet meme des bonbons, mais, comme t'es un nain, tu l'insultes et il te bute.$"
.CODE
lea dx,mess165
push dx
call ecrch

; aLaLigne
call ligsuiv

;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC22
jmp FINFONC22

; goto FSI119
jmp FSI119

SINON119:
FSI119:
; iload 6
push word ptr [bp+6]

; iconst 3
push word ptr 3

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON120
pop ax
cmp ax,0
je SINON120

; ecrireChaine "Obi-wan te force a faire des choses."
.DATA
mess166 DB "Obi-wan te force a faire des choses.$"
.CODE
lea dx,mess166
push dx
call ecrch

; aLaLigne
call ligsuiv

;reserveRetour
sub sp,2

; iconst 16
push word ptr 16

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC22
jmp FINFONC22

; goto FSI120
jmp FSI120

SINON120:
FSI120:
; iload 6
push word ptr [bp+6]

; iconst 4
push word ptr 4

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON121
pop ax
cmp ax,0
je SINON121

; ecrireChaine "Obi-wan te tue parce que t'es noir."
.DATA
mess167 DB "Obi-wan te tue parce que t'es noir.$"
.CODE
lea dx,mess167
push dx
call ecrch

; aLaLigne
call ligsuiv

;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC22
jmp FINFONC22

; goto FSI121
jmp FSI121

SINON121:
FSI121:
; iload 6
push word ptr [bp+6]

; iconst 6
push word ptr 6

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON122
pop ax
cmp ax,0
je SINON122

; ecrireChaine "Obi-wan Kenobi te prend pour un droide et te bute"
.DATA
mess168 DB "Obi-wan Kenobi te prend pour un droide et te bute$"
.CODE
lea dx,mess168
push dx
call ecrch

; aLaLigne
call ligsuiv

;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC22
jmp FINFONC22

; goto FSI122
jmp FSI122

SINON122:
FSI122:
FINFONC22:
;fermeBloc 4
leave
ret 4

E14:
;ouvcBloc 2
enter 2,0

; aLaLigne
call ligsuiv

; ecrireChaine "Vous arrivez au bord d'une riviere, "
.DATA
mess169 DB "Vous arrivez au bord d'une riviere, $"
.CODE
lea dx,mess169
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "sur la rive d'en face se trouve un fermier, et sur la votre, une petite porte."
.DATA
mess170 DB "sur la rive d'en face se trouve un fermier, et sur la votre, une petite porte.$"
.CODE
lea dx,mess170
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "1. Prendre la petite porte (1m)"
.DATA
mess171 DB "1. Prendre la petite porte (1m)$"
.CODE
lea dx,mess171
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "2. Allez parler au fermier en traversant la riviere a la nage"
.DATA
mess172 DB "2. Allez parler au fermier en traversant la riviere a la nage$"
.CODE
lea dx,mess172
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "3. Rentrer chez soi"
.DATA
mess173 DB "3. Rentrer chez soi$"
.CODE
lea dx,mess173
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "4. Pecher du poisson"
.DATA
mess174 DB "4. Pecher du poisson$"
.CODE
lea dx,mess174
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "5. Obi-wan Kenobi"
.DATA
mess175 DB "5. Obi-wan Kenobi$"
.CODE
lea dx,mess175
push dx
call ecrch

; aLaLigne
call ligsuiv

; lireEnt -2
lea dx,[bp-2]
push dx
call lirent

; aLaLigne
call ligsuiv

; iload -2
push word ptr [bp-2]

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

; iffaux SINON123
pop ax
cmp ax,0
je SINON123

; iload 6
push word ptr [bp+6]

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

; iffaux SINON124
pop ax
cmp ax,0
je SINON124

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E43
call E43

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC23
jmp FINFONC23

; goto FSI124
jmp FSI124

SINON124:
FSI124:
;reserveRetour
sub sp,2

; iconst 2
push word ptr 2

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC23
jmp FINFONC23

; goto FSI123
jmp FSI123

SINON123:
FSI123:
; iload -2
push word ptr [bp-2]

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

; iffaux SINON125
pop ax
cmp ax,0
je SINON125

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E15
call E15

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC23
jmp FINFONC23

; goto FSI125
jmp FSI125

SINON125:
FSI125:
; iload -2
push word ptr [bp-2]

; iconst 3
push word ptr 3

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON126
pop ax
cmp ax,0
je SINON126

;reserveRetour
sub sp,2

; iconst 15
push word ptr 15

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC23
jmp FINFONC23

; goto FSI126
jmp FSI126

SINON126:
FSI126:
; iload -2
push word ptr [bp-2]

; iconst 4
push word ptr 4

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON127
pop ax
cmp ax,0
je SINON127

;reserveRetour
sub sp,2

; iconst 27
push word ptr 27

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC23
jmp FINFONC23

; goto FSI127
jmp FSI127

SINON127:
FSI127:
; iload -2
push word ptr [bp-2]

; iconst 5
push word ptr 5

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON128
pop ax
cmp ax,0
je SINON128

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E16
call E16

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC23
jmp FINFONC23

; goto FSI128
jmp FSI128

SINON128:
FSI128:
;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC23
jmp FINFONC23

FINFONC23:
;fermeBloc 4
leave
ret 4

E12:
;ouvcBloc 2
enter 2,0

; aLaLigne
call ligsuiv

; ecrireChaine "Vous entrez dans une piece remplie de verdure,"
.DATA
mess176 DB "Vous entrez dans une piece remplie de verdure,$"
.CODE
lea dx,mess176
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "il y a une porte en face et une petite porte (1m) a cote de vous"
.DATA
mess177 DB "il y a une porte en face et une petite porte (1m) a cote de vous$"
.CODE
lea dx,mess177
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "1. Prendre la petite porte (1m)"
.DATA
mess178 DB "1. Prendre la petite porte (1m)$"
.CODE
lea dx,mess178
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "2. Courir jusqu'a la porte en face"
.DATA
mess179 DB "2. Courir jusqu'a la porte en face$"
.CODE
lea dx,mess179
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "3. Marcher jusqu'a a porte en face"
.DATA
mess180 DB "3. Marcher jusqu'a a porte en face$"
.CODE
lea dx,mess180
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "4. Rentrer chez soi"
.DATA
mess181 DB "4. Rentrer chez soi$"
.CODE
lea dx,mess181
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "5. Manger de l'herbe"
.DATA
mess182 DB "5. Manger de l'herbe$"
.CODE
lea dx,mess182
push dx
call ecrch

; aLaLigne
call ligsuiv

; lireEnt -2
lea dx,[bp-2]
push dx
call lirent

; aLaLigne
call ligsuiv

; iload -2
push word ptr [bp-2]

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

; iffaux SINON129
pop ax
cmp ax,0
je SINON129

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E42
call E42

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC24
jmp FINFONC24

; goto FSI129
jmp FSI129

SINON129:
FSI129:
; iload -2
push word ptr [bp-2]

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

; iffaux SINON130
pop ax
cmp ax,0
je SINON130

;reserveRetour
sub sp,2

; iconst 10
push word ptr 10

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC24
jmp FINFONC24

; goto FSI130
jmp FSI130

SINON130:
FSI130:
; iload -2
push word ptr [bp-2]

; iconst 3
push word ptr 3

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON131
pop ax
cmp ax,0
je SINON131

; iload 6
push word ptr [bp+6]

; iconst 5
push word ptr 5

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON132
pop ax
cmp ax,0
je SINON132

;reserveRetour
sub sp,2

; iconst 26
push word ptr 26

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC24
jmp FINFONC24

; goto FSI132
jmp FSI132

SINON132:
FSI132:
;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E14
call E14

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC24
jmp FINFONC24

; goto FSI131
jmp FSI131

SINON131:
FSI131:
; iload -2
push word ptr [bp-2]

; iconst 4
push word ptr 4

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON133
pop ax
cmp ax,0
je SINON133

;reserveRetour
sub sp,2

; iconst 15
push word ptr 15

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC24
jmp FINFONC24

; goto FSI133
jmp FSI133

SINON133:
FSI133:
; iload -2
push word ptr [bp-2]

; iconst 5
push word ptr 5

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON134
pop ax
cmp ax,0
je SINON134

;reserveRetour
sub sp,2

; iconst 13
push word ptr 13

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC24
jmp FINFONC24

; goto FSI134
jmp FSI134

SINON134:
FSI134:
;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC24
jmp FINFONC24

FINFONC24:
;fermeBloc 4
leave
ret 4

E11:
;ouvcBloc 2
enter 2,0

; aLaLigne
call ligsuiv

; ecrireChaine "Vous voyez un poulet."
.DATA
mess183 DB "Vous voyez un poulet.$"
.CODE
lea dx,mess183
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "1. Continuer"
.DATA
mess184 DB "1. Continuer$"
.CODE
lea dx,mess184
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "2. L'attaquer"
.DATA
mess185 DB "2. L'attaquer$"
.CODE
lea dx,mess185
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "3. Rentrer chez soi"
.DATA
mess186 DB "3. Rentrer chez soi$"
.CODE
lea dx,mess186
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "4. Prendre la petite porte (1m)"
.DATA
mess187 DB "4. Prendre la petite porte (1m)$"
.CODE
lea dx,mess187
push dx
call ecrch

; aLaLigne
call ligsuiv

; lireEnt -2
lea dx,[bp-2]
push dx
call lirent

; aLaLigne
call ligsuiv

; iload -2
push word ptr [bp-2]

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

; iload -2
push word ptr [bp-2]

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

; iffaux SINON135
pop ax
cmp ax,0
je SINON135

;reserveRetour
sub sp,2

; iconst 25
push word ptr 25

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC25
jmp FINFONC25

; goto FSI135
jmp FSI135

SINON135:
FSI135:
; iload -2
push word ptr [bp-2]

; iconst 4
push word ptr 4

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON136
pop ax
cmp ax,0
je SINON136

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E42
call E42

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC25
jmp FINFONC25

; goto FSI136
jmp FSI136

SINON136:
FSI136:
; iload -2
push word ptr [bp-2]

; iconst 3
push word ptr 3

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON137
pop ax
cmp ax,0
je SINON137

;reserveRetour
sub sp,2

; iconst 15
push word ptr 15

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC25
jmp FINFONC25

; goto FSI137
jmp FSI137

SINON137:
FSI137:
;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC25
jmp FINFONC25

FINFONC25:
;fermeBloc 4
leave
ret 4

E10:
;ouvcBloc 2
enter 2,0

; aLaLigne
call ligsuiv

; ecrireChaine "Vous etes a un croisement, poil au dent, poil au turban."
.DATA
mess188 DB "Vous etes a un croisement, poil au dent, poil au turban.$"
.CODE
lea dx,mess188
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "1. Porte de gauche, peinte en rouge"
.DATA
mess189 DB "1. Porte de gauche, peinte en rouge$"
.CODE
lea dx,mess189
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "2. Porte de droite, peinte en verte"
.DATA
mess190 DB "2. Porte de droite, peinte en verte$"
.CODE
lea dx,mess190
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "3. Prendre la petite porte (1m)"
.DATA
mess191 DB "3. Prendre la petite porte (1m)$"
.CODE
lea dx,mess191
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "4. Rentrer chez soi"
.DATA
mess192 DB "4. Rentrer chez soi$"
.CODE
lea dx,mess192
push dx
call ecrch

; aLaLigne
call ligsuiv

; lireEnt -2
lea dx,[bp-2]
push dx
call lirent

; aLaLigne
call ligsuiv

; iload -2
push word ptr [bp-2]

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

; iffaux SINON138
pop ax
cmp ax,0
je SINON138

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E11
call E11

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC26
jmp FINFONC26

; goto FSI138
jmp FSI138

SINON138:
FSI138:
; iload -2
push word ptr [bp-2]

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

; iffaux SINON139
pop ax
cmp ax,0
je SINON139

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E12
call E12

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC26
jmp FINFONC26

; goto FSI139
jmp FSI139

SINON139:
FSI139:
; iload -2
push word ptr [bp-2]

; iconst 3
push word ptr 3

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON140
pop ax
cmp ax,0
je SINON140

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E42
call E42

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC26
jmp FINFONC26

; goto FSI140
jmp FSI140

SINON140:
FSI140:
; iload -2
push word ptr [bp-2]

; iconst 4
push word ptr 4

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON141
pop ax
cmp ax,0
je SINON141

;reserveRetour
sub sp,2

; iconst 15
push word ptr 15

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC26
jmp FINFONC26

; goto FSI141
jmp FSI141

SINON141:
FSI141:
;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC26
jmp FINFONC26

FINFONC26:
;fermeBloc 4
leave
ret 4

E6:
;ouvcBloc 2
enter 2,0

; aLaLigne
call ligsuiv

; ecrireChaine "Vous trouvez un poulet grille. Choisissez que faire."
.DATA
mess193 DB "Vous trouvez un poulet grille. Choisissez que faire.$"
.CODE
lea dx,mess193
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "1. Ne pas le manger"
.DATA
mess194 DB "1. Ne pas le manger$"
.CODE
lea dx,mess194
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "2. Le manger"
.DATA
mess195 DB "2. Le manger$"
.CODE
lea dx,mess195
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "3. Rentrer chez soi"
.DATA
mess196 DB "3. Rentrer chez soi$"
.CODE
lea dx,mess196
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "4. Prendre la petite porte (1m)"
.DATA
mess197 DB "4. Prendre la petite porte (1m)$"
.CODE
lea dx,mess197
push dx
call ecrch

; aLaLigne
call ligsuiv

; lireEnt -2
lea dx,[bp-2]
push dx
call lirent

; aLaLigne
call ligsuiv

; iload -2
push word ptr [bp-2]

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

; iffaux SINON142
pop ax
cmp ax,0
je SINON142

;reserveRetour
sub sp,2

; iconst 24
push word ptr 24

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC27
jmp FINFONC27

; goto FSI142
jmp FSI142

SINON142:
FSI142:
; iload -2
push word ptr [bp-2]

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

; iffaux SINON143
pop ax
cmp ax,0
je SINON143

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E10
call E10

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC27
jmp FINFONC27

; goto FSI143
jmp FSI143

SINON143:
FSI143:
; iload -2
push word ptr [bp-2]

; iconst 3
push word ptr 3

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON144
pop ax
cmp ax,0
je SINON144

;reserveRetour
sub sp,2

; iconst 15
push word ptr 15

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC27
jmp FINFONC27

; goto FSI144
jmp FSI144

SINON144:
FSI144:
; iload -2
push word ptr [bp-2]

; iconst 4
push word ptr 4

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON145
pop ax
cmp ax,0
je SINON145

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E42
call E42

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC27
jmp FINFONC27

; goto FSI145
jmp FSI145

SINON145:
FSI145:
;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC27
jmp FINFONC27

FINFONC27:
;fermeBloc 4
leave
ret 4

E5:
;ouvcBloc 2
enter 2,0

; ecrireChaine "Vous etes maintenant devant l'entree ... ou plutot les 8 entrees. Laquelle choisir ?"
.DATA
mess198 DB "Vous etes maintenant devant l'entree ... ou plutot les 8 entrees. Laquelle choisir ?$"
.CODE
lea dx,mess198
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "1. Porte delabre en bois de chene datant de 350 ans,"
.DATA
mess199 DB "1. Porte delabre en bois de chene datant de 350 ans,$"
.CODE
lea dx,mess199
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "fabrique par maitre Baleon avec son assistant Brand le Batisseur assiste par ses schtroumpfs et ses geants"
.DATA
mess200 DB "fabrique par maitre Baleon avec son assistant Brand le Batisseur assiste par ses schtroumpfs et ses geants$"
.CODE
lea dx,mess200
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "2. Porte en chocolat (sans poignee)"
.DATA
mess201 DB "2. Porte en chocolat (sans poignee)$"
.CODE
lea dx,mess201
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "3. Prendre la petite porte (1m)"
.DATA
mess202 DB "3. Prendre la petite porte (1m)$"
.CODE
lea dx,mess202
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "4. Porte en champignon (sans poignee)"
.DATA
mess203 DB "4. Porte en champignon (sans poignee)$"
.CODE
lea dx,mess203
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "5. Porte avec un levier de commande"
.DATA
mess204 DB "5. Porte avec un levier de commande$"
.CODE
lea dx,mess204
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "6. Porte avec un Digicode"
.DATA
mess205 DB "6. Porte avec un Digicode$"
.CODE
lea dx,mess205
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "7. Porte incrustee de runes et de gemmes"
.DATA
mess206 DB "7. Porte incrustee de runes et de gemmes$"
.CODE
lea dx,mess206
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "8. Porte sans porte (un trou quoi , une arcade sombre)"
.DATA
mess207 DB "8. Porte sans porte (un trou quoi , une arcade sombre)$"
.CODE
lea dx,mess207
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "9. Rentrer chez soi"
.DATA
mess208 DB "9. Rentrer chez soi$"
.CODE
lea dx,mess208
push dx
call ecrch

; aLaLigne
call ligsuiv

; lireEnt -2
lea dx,[bp-2]
push dx
call lirent

; aLaLigne
call ligsuiv

; iload -2
push word ptr [bp-2]

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

; iffaux SINON146
pop ax
cmp ax,0
je SINON146

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E6
call E6

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC28
jmp FINFONC28

; goto FSI146
jmp FSI146

SINON146:
FSI146:
; iload -2
push word ptr [bp-2]

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

; iffaux SINON147
pop ax
cmp ax,0
je SINON147

; iload 6
push word ptr [bp+6]

; iconst 5
push word ptr 5

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iload 6
push word ptr [bp+6]

; iconst 3
push word ptr 3

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

; iffaux SINON148
pop ax
cmp ax,0
je SINON148

;reserveRetour
sub sp,2

; iconst 22
push word ptr 22

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC28
jmp FINFONC28

; goto FSI148
jmp FSI148

SINON148:
FSI148:
; iload 6
push word ptr [bp+6]

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

; iffaux SINON149
pop ax
cmp ax,0
je SINON149

; ecrireChaine "Vous entendez un bruit sur le cote qui suscite votre interet, vous y allez donc"
.DATA
mess209 DB "Vous entendez un bruit sur le cote qui suscite votre interet, vous y allez donc$"
.CODE
lea dx,mess209
push dx
call ecrch

; aLaLigne
call ligsuiv

;reserveRetour
sub sp,2

; iconst 21
push word ptr 21

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC28
jmp FINFONC28

; goto FSI149
jmp FSI149

SINON149:
FSI149:
;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E7
call E7

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC28
jmp FINFONC28

; goto FSI147
jmp FSI147

SINON147:
FSI147:
; iload -2
push word ptr [bp-2]

; iconst 3
push word ptr 3

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON150
pop ax
cmp ax,0
je SINON150

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E42
call E42

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC28
jmp FINFONC28

; goto FSI150
jmp FSI150

SINON150:
FSI150:
; iload -2
push word ptr [bp-2]

; iconst 4
push word ptr 4

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON151
pop ax
cmp ax,0
je SINON151

; iload 6
push word ptr [bp+6]

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

; iffaux SINON152
pop ax
cmp ax,0
je SINON152

; ecrireChaine "Vous rencontrez des schtroumpfs qui vous guident dans un tunnel"
.DATA
mess210 DB "Vous rencontrez des schtroumpfs qui vous guident dans un tunnel$"
.CODE
lea dx,mess210
push dx
call ecrch

; aLaLigne
call ligsuiv

;reserveRetour
sub sp,2

; iconst 21
push word ptr 21

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC28
jmp FINFONC28

; goto FSI152
jmp FSI152

SINON152:
FSI152:
;reserveRetour
sub sp,2

; iconst 13
push word ptr 13

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC28
jmp FINFONC28

; goto FSI151
jmp FSI151

SINON151:
FSI151:
; iload -2
push word ptr [bp-2]

; iconst 5
push word ptr 5

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON153
pop ax
cmp ax,0
je SINON153

;reserveRetour
sub sp,2

; iconst 31
push word ptr 31

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC28
jmp FINFONC28

; goto FSI153
jmp FSI153

SINON153:
FSI153:
; iload -2
push word ptr [bp-2]

; iconst 6
push word ptr 6

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON154
pop ax
cmp ax,0
je SINON154

; iload 6
push word ptr [bp+6]

; iconst 6
push word ptr 6

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON155
pop ax
cmp ax,0
je SINON155

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E8
call E8

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC28
jmp FINFONC28

; goto FSI155
jmp FSI155

SINON155:
FSI155:
;reserveRetour
sub sp,2

; iconst 23
push word ptr 23

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC28
jmp FINFONC28

; goto FSI154
jmp FSI154

SINON154:
FSI154:
; iload -2
push word ptr [bp-2]

; iconst 7
push word ptr 7

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON156
pop ax
cmp ax,0
je SINON156

;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC28
jmp FINFONC28

; goto FSI156
jmp FSI156

SINON156:
FSI156:
; iload -2
push word ptr [bp-2]

; iconst 8
push word ptr 8

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON157
pop ax
cmp ax,0
je SINON157

; iload 6
push word ptr [bp+6]

; iconst 4
push word ptr 4

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iload 6
push word ptr [bp+6]

; iconst 5
push word ptr 5

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

; iffaux SINON158
pop ax
cmp ax,0
je SINON158

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E9
call E9

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC28
jmp FINFONC28

; goto FSI158
jmp FSI158

SINON158:
FSI158:
;reserveRetour
sub sp,2

; iconst 4
push word ptr 4

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC28
jmp FINFONC28

; goto FSI157
jmp FSI157

SINON157:
FSI157:
; iload -2
push word ptr [bp-2]

; iconst 9
push word ptr 9

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON159
pop ax
cmp ax,0
je SINON159

;reserveRetour
sub sp,2

; iconst 15
push word ptr 15

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC28
jmp FINFONC28

; goto FSI159
jmp FSI159

SINON159:
FSI159:
;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC28
jmp FINFONC28

FINFONC28:
;fermeBloc 4
leave
ret 4

E3:
;ouvcBloc 2
enter 2,0

; aLaLigne
call ligsuiv

; ecrireChaine "Vous arrivez pendant une douce nuit etoilee dans le village de Bourg-Carton ou se trouve le Donjon de Pilou. La fortune vous y attend!"
.DATA
mess211 DB "Vous arrivez pendant une douce nuit etoilee dans le village de Bourg-Carton ou se trouve le Donjon de Pilou. La fortune vous y attend!$"
.CODE
lea dx,mess211
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "Que faire ?"
.DATA
mess212 DB "Que faire ?$"
.CODE
lea dx,mess212
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "1. Dormir"
.DATA
mess213 DB "1. Dormir$"
.CODE
lea dx,mess213
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "2. Aller au donjon"
.DATA
mess214 DB "2. Aller au donjon$"
.CODE
lea dx,mess214
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "3. Rentrer chez soi"
.DATA
mess215 DB "3. Rentrer chez soi$"
.CODE
lea dx,mess215
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "4. Aller au bordel"
.DATA
mess216 DB "4. Aller au bordel$"
.CODE
lea dx,mess216
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "5. Voler un passant"
.DATA
mess217 DB "5. Voler un passant$"
.CODE
lea dx,mess217
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "6. Se laver dans le lac"
.DATA
mess218 DB "6. Se laver dans le lac$"
.CODE
lea dx,mess218
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "7. Prendre la petite porte (1m)"
.DATA
mess219 DB "7. Prendre la petite porte (1m)$"
.CODE
lea dx,mess219
push dx
call ecrch

; aLaLigne
call ligsuiv

; lireEnt -2
lea dx,[bp-2]
push dx
call lirent

; aLaLigne
call ligsuiv

; iload -2
push word ptr [bp-2]

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

; iffaux SINON160
pop ax
cmp ax,0
je SINON160

; iload 6
push word ptr [bp+6]

; iconst 9
push word ptr 9

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iload 4
push word ptr [bp+4]

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

; iand
pop bx
pop ax
and ax,bx
push ax

; iffaux SINON161
pop ax
cmp ax,0
je SINON161

;reserveRetour
sub sp,2

; iconst 17
push word ptr 17

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC29
jmp FINFONC29

; goto FSI161
jmp FSI161

SINON161:
FSI161:
; iload 6
push word ptr [bp+6]

; iconst 8
push word ptr 8

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON162
pop ax
cmp ax,0
je SINON162

;reserveRetour
sub sp,2

; iconst 18
push word ptr 18

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC29
jmp FINFONC29

; goto FSI162
jmp FSI162

SINON162:
FSI162:
; iload 6
push word ptr [bp+6]

; iconst 7
push word ptr 7

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iload 6
push word ptr [bp+6]

; iconst 9
push word ptr 9

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

; iload 6
push word ptr [bp+6]

; iconst 4
push word ptr 4

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

; iffaux SINON163
pop ax
cmp ax,0
je SINON163

;reserveRetour
sub sp,2

; iconst 9
push word ptr 9

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC29
jmp FINFONC29

; goto FSI163
jmp FSI163

SINON163:
FSI163:
;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E5
call E5

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC29
jmp FINFONC29

; goto FSI160
jmp FSI160

SINON160:
FSI160:
; iload -2
push word ptr [bp-2]

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

; iffaux SINON164
pop ax
cmp ax,0
je SINON164

; iload 6
push word ptr [bp+6]

; iconst 4
push word ptr 4

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON165
pop ax
cmp ax,0
je SINON165

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E5
call E5

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC29
jmp FINFONC29

; goto FSI165
jmp FSI165

SINON165:
FSI165:
;reserveRetour
sub sp,2

; iconst 14
push word ptr 14

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC29
jmp FINFONC29

; goto FSI164
jmp FSI164

SINON164:
FSI164:
; iload -2
push word ptr [bp-2]

; iconst 3
push word ptr 3

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON166
pop ax
cmp ax,0
je SINON166

;reserveRetour
sub sp,2

; iconst 15
push word ptr 15

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC29
jmp FINFONC29

; goto FSI166
jmp FSI166

SINON166:
FSI166:
; iload -2
push word ptr [bp-2]

; iconst 4
push word ptr 4

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON167
pop ax
cmp ax,0
je SINON167

; iload 4
push word ptr [bp+4]

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

; iffaux SINON168
pop ax
cmp ax,0
je SINON168

;reserveRetour
sub sp,2

; iconst 16
push word ptr 16

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC29
jmp FINFONC29

; goto FSI168
jmp FSI168

SINON168:
FSI168:
; iload 4
push word ptr [bp+4]

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

; iffaux SINON169
pop ax
cmp ax,0
je SINON169

;reserveRetour
sub sp,2

; iconst 17
push word ptr 17

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC29
jmp FINFONC29

; goto FSI169
jmp FSI169

SINON169:
FSI169:
;reserveRetour
sub sp,2

; iconst 9
push word ptr 9

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC29
jmp FINFONC29

; goto FSI167
jmp FSI167

SINON167:
FSI167:
; iload -2
push word ptr [bp-2]

; iconst 5
push word ptr 5

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON170
pop ax
cmp ax,0
je SINON170

; iload 6
push word ptr [bp+6]

; iconst 7
push word ptr 7

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON171
pop ax
cmp ax,0
je SINON171

;reserveRetour
sub sp,2

; iconst 20
push word ptr 20

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC29
jmp FINFONC29

; goto FSI171
jmp FSI171

SINON171:
FSI171:
;reserveRetour
sub sp,2

; iconst 19
push word ptr 19

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC29
jmp FINFONC29

; goto FSI170
jmp FSI170

SINON170:
FSI170:
; iload -2
push word ptr [bp-2]

; iconst 6
push word ptr 6

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON172
pop ax
cmp ax,0
je SINON172

; iload 6
push word ptr [bp+6]

; iconst 6
push word ptr 6

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON173
pop ax
cmp ax,0
je SINON173

;reserveRetour
sub sp,2

; iconst 28
push word ptr 28

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC29
jmp FINFONC29

; goto FSI173
jmp FSI173

SINON173:
FSI173:
;reserveRetour
sub sp,2

; iconst 27
push word ptr 27

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC29
jmp FINFONC29

; goto FSI172
jmp FSI172

SINON172:
FSI172:
; iload -2
push word ptr [bp-2]

; iconst 7
push word ptr 7

; iegal
pop bx
pop ax
cmp ax,bx
jne $+6
push -1
jmp $+4
push 0

; iffaux SINON174
pop ax
cmp ax,0
je SINON174

;reserveRetour
sub sp,2

; iload 6
push word ptr [bp+6]

; iload 4
push word ptr [bp+4]

;call E42
call E42

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC29
jmp FINFONC29

; goto FSI174
jmp FSI174

SINON174:
FSI174:
;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 8
pop ax
mov [bp+8],ax

; goto FINFONC29
jmp FINFONC29

FINFONC29:
;fermeBloc 4
leave
ret 4

E2:
;ouvcBloc 2
enter 2,0

; ecrireChaine "Maintenant, choississez votre sexe, qui sait, peut-etre que vous decouvrirez une nouvelle voie."
.DATA
mess220 DB "Maintenant, choississez votre sexe, qui sait, peut-etre que vous decouvrirez une nouvelle voie.$"
.CODE
lea dx,mess220
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "1. Male"
.DATA
mess221 DB "1. Male$"
.CODE
lea dx,mess221
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "2. Femelle"
.DATA
mess222 DB "2. Femelle$"
.CODE
lea dx,mess222
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "3. Indeterminee"
.DATA
mess223 DB "3. Indeterminee$"
.CODE
lea dx,mess223
push dx
call ecrch

; aLaLigne
call ligsuiv

; lireEnt -2
lea dx,[bp-2]
push dx
call lirent

; aLaLigne
call ligsuiv

; iload -2
push word ptr [bp-2]

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

; iload -2
push word ptr [bp-2]

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

; iload -2
push word ptr [bp-2]

; iconst 3
push word ptr 3

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

; iffaux SINON175
pop ax
cmp ax,0
je SINON175

;reserveRetour
sub sp,2

; iload 4
push word ptr [bp+4]

; iload -2
push word ptr [bp-2]

;call E3
call E3

;ireturn 6
pop ax
mov [bp+6],ax

; goto FINFONC30
jmp FINFONC30

; goto FSI175
jmp FSI175

SINON175:
;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 6
pop ax
mov [bp+6],ax

; goto FINFONC30
jmp FINFONC30

FSI175:
FINFONC30:
;fermeBloc 2
leave
ret 2

E1:
;ouvcBloc 2
enter 2,0

; ecrireChaine "Courage valeureux aventurier, veuillez tout d'abord choisir votre race:"
.DATA
mess224 DB "Courage valeureux aventurier, veuillez tout d'abord choisir votre race:$"
.CODE
lea dx,mess224
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "1. Elfe"
.DATA
mess225 DB "1. Elfe$"
.CODE
lea dx,mess225
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "2. Nain"
.DATA
mess226 DB "2. Nain$"
.CODE
lea dx,mess226
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "3. Humain"
.DATA
mess227 DB "3. Humain$"
.CODE
lea dx,mess227
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "4. Drow"
.DATA
mess228 DB "4. Drow$"
.CODE
lea dx,mess228
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "5. Zoman"
.DATA
mess229 DB "5. Zoman$"
.CODE
lea dx,mess229
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "6. Cyborg"
.DATA
mess230 DB "6. Cyborg$"
.CODE
lea dx,mess230
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "7. Arabe"
.DATA
mess231 DB "7. Arabe$"
.CODE
lea dx,mess231
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "8. Chinois"
.DATA
mess232 DB "8. Chinois$"
.CODE
lea dx,mess232
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "9. Roux"
.DATA
mess233 DB "9. Roux$"
.CODE
lea dx,mess233
push dx
call ecrch

; aLaLigne
call ligsuiv

; lireEnt -2
lea dx,[bp-2]
push dx
call lirent

; aLaLigne
call ligsuiv

; iload -2
push word ptr [bp-2]

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

; iload -2
push word ptr [bp-2]

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

; iload -2
push word ptr [bp-2]

; iconst 3
push word ptr 3

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

; iload -2
push word ptr [bp-2]

; iconst 4
push word ptr 4

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

; iload -2
push word ptr [bp-2]

; iconst 5
push word ptr 5

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

; iload -2
push word ptr [bp-2]

; iconst 6
push word ptr 6

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

; iload -2
push word ptr [bp-2]

; iconst 7
push word ptr 7

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

; iload -2
push word ptr [bp-2]

; iconst 8
push word ptr 8

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

; iload -2
push word ptr [bp-2]

; iconst 9
push word ptr 9

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

; iffaux SINON176
pop ax
cmp ax,0
je SINON176

;reserveRetour
sub sp,2

; iload -2
push word ptr [bp-2]

;call E2
call E2

;ireturn 4
pop ax
mov [bp+4],ax

; goto FINFONC31
jmp FINFONC31

; goto FSI176
jmp FSI176

SINON176:
;reserveRetour
sub sp,2

; iconst 12
push word ptr 12

;call MORT
call MORT

;ireturn 4
pop ax
mov [bp+4],ax

; goto FINFONC31
jmp FINFONC31

FSI176:
FINFONC31:
;fermeBloc 0
leave
ret 0

debut :
STARTUPCODE

main:
;ouvcBloc 6
enter 6,0

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

; iffaux FAIT2
pop ax
cmp ax,0
je FAIT2

; aLaLigne
call ligsuiv

; aLaLigne
call ligsuiv

; aLaLigne
call ligsuiv

; ecrireChaine "Bienvenue dans 'El Dungeon Del Diablo' jeune aventurier"
.DATA
mess234 DB "Bienvenue dans 'El Dungeon Del Diablo' jeune aventurier$"
.CODE
lea dx,mess234
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "Pret a tenter l'aventure?"
.DATA
mess235 DB "Pret a tenter l'aventure?$"
.CODE
lea dx,mess235
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "1. Jouer"
.DATA
mess236 DB "1. Jouer$"
.CODE
lea dx,mess236
push dx
call ecrch

; aLaLigne
call ligsuiv

; ecrireChaine "2. Quitter"
.DATA
mess237 DB "2. Quitter$"
.CODE
lea dx,mess237
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

; iffaux SINON177
pop ax
cmp ax,0
je SINON177

;reserveRetour
sub sp,2

;call E1
call E1

; istore -6
pop ax
mov word ptr [bp-6],ax

; iload -6
push word ptr [bp-6]

; iffaux SINON178
pop ax
cmp ax,0
je SINON178

; ecrireChaine "Bravo, tu es arrive au bout de cette dure epreuve."
.DATA
mess238 DB "Bravo, tu es arrive au bout de cette dure epreuve.$"
.CODE
lea dx,mess238
push dx
call ecrch

; goto FSI178
jmp FSI178

SINON178:
; ecrireChaine "GAME OVER"
.DATA
mess239 DB "GAME OVER$"
.CODE
lea dx,mess239
push dx
call ecrch

FSI178:
; aLaLigne
call ligsuiv

; goto FSI177
jmp FSI177

SINON177:
FSI177:
; goto FAIRE2
jmp FAIRE2

FAIT2:
; queue
nop
exitcode
end debut

