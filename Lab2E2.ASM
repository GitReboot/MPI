.MODEL SMALL
.STACK 20
.DATA
ORG 1000H

N1 DB 05H
COUNT DW 04H
SIGN_PROD DW ?

.CODE
START:
MOV AX, @DATA
MOV DS, AX
MOV CX, COUNT
MOV AL, N1
REPEAT:
DEC N1
IMUL N1
LOOP REPEAT
MOV SIGN_PROD, AX
INT 3
END START
                                                                                                                                                                                                                                                                                                                        
