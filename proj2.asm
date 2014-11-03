LOOP LDR R5 SIZE	;while loop, R5 contains SIZE
SUB R6 R6			; clear R6
ADI R6 #1 			; R6 contains the value 1
LDA R0 ARR 			; load ARR address into r0
LDR R1 R0 			; load the value of the address in r0 into r1
SUB R4 R4
ADD R4 R1 			; R4 contains the sum
SUB R3 R3
ADI R3 #2
EOO SUB R1 R3		; subtract array element - 2 
BGT R1 EOO 			; branch back to subtract 2 again
BRZ R1 EVEN			; if zero, value is even
BLT R1 ODD 			; if -1, value is odd
EVEN LDA R0 R7 		; start of even printf
TRP 1
LDR R7 SPACE
TRP 3
LDR R7 S1
TRP 3
LDR R7 S2
TRP 3
LDR R7 SPACE
TRP 3
LDR R7 E1
TRP 3
LDR R7 E2
TRP 3
LDR R7 E3
TRP 3
LDR R7 E4
TRP 3
LDR R7 NEWLINE
TRP 3
JMP DECREMENT
ODD LDA R0 R7 			;ODD printf
TRP 1
LDR R7 SPACE
TRP 3
LDR R7 S1
TRP 3
LDR R7 S2
TRP 3
LDR R7 SPACE
TRP 3
LDR R7 O1
TRP 3
LDR R7 O2
TRP 3
TRP 3
LDR R7 NEWLINE
TRP 3
DECREMENT SUB R5 R6 			; size - 1
ADD R0 R6					; add 1 to array address
BGT R5 LOOP
LDR R7 SUM1
TRP 3
LDR R7 SUM2
TRP 3
LDR R7 SUM3
TRP 3
LDR R7 SPACE
TRP 3
LDR R7 S1
TRP 3
LDR R7 S2
TRP 3
LDR R7 SPACE
TRP 3
MOV R7 R4
TRP 1
LDR R7 NEWLINE
TRP 3
; Data
SIZE .INT 10
ARR .INT 10
.INT 2
.INT 3
.INT 4
.INT 15
.INT -6
.INT 7
.INT 8
.INT 9
.INT 10
SPACE .BYT ' '
NEWLINE .BYT '\n'
S1 .BYT 'i'
S2 .BYT 's'
E1 .BYT 'e'
E2 .BYT 'v'
E3 .BYT 'e'
E4 .BYT 'n'
O1 .BYT 'o'
O2 .BYT 'd'
SUM1 .BYT 'S'
SUM2 .BYT 'u'
SUM3 .BYT 'm'
TRP 0