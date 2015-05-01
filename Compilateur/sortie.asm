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

