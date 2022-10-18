.org $8000

LDX #$67

input:
LDA $4000
CMP #$01
BEQ up
CMP #$02
BEQ dwn
CMP #$04
BEQ lft
CMP #$08
BEQ rgh
RTS

clear:
LDA #0
STA $0200, X
RTS

up:
JSR clear
TXA
ADC #$ef
TAX
RTS


dwn:
JSR clear
TXA
ADC #$0F
TAX
RTS



lft:
JSR clear
TXA
DEX
RTS


rgh:
JSR clear
INX
RTS



draw:
LDA #01
STA $0200, X
RTS



start:
JSR draw
JSR input
JMP start










.goto $FFFA
.dw start
.dw start
.dw start