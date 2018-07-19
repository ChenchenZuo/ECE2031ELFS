; This code plays with sound, trying to perform star wars


Start:



LOAD	Tone2
OUT		BEEP

Call	WaitP30

LOAD	Tone3
OUT		BEEP

Call	WaitP30

LOAD	Tone4
OUT		BEEP

Call	WaitP5

LOAD	Tone5
OUT		BEEP

Call	WaitP5

LOAD	Tone6
OUT		BEEP

Call	WaitP5

LOAD	Tone7
OUT		BEEP

Call	WaitP30

LOAD	Tone8
OUT		BEEP

Call	WaitP15

LOAD	Tone9
OUT		BEEP

Call	WaitP5

LOAD	Tone10
OUT		BEEP

Call	WaitP5

LOAD	Tone11
OUT		BEEP

Call	WaitP5

LOAD	Tone12
OUT		BEEP

Call	WaitP30

LOAD	Tone13
OUT		BEEP

Call	WaitP15

LOAD	Tone14
OUT		BEEP

Call	WaitP5

LOAD	Tone15
OUT		BEEP

Call	WaitP5

LOAD	Tone16
OUT		BEEP

Call	WaitP5

LOAD	Tone17
OUT		BEEP

Call	WaitP5

Forever:
JUMP	Forever



;LOAD	Tone2
;OUT		BEEP
;LOAD	Tone3
;OUT		BEEP
;LOAD	Tone4
;OUT		BEEP
;LOAD	Tone5
;OUT		BEEP
;LOAD	Tone6
;OUT		BEEP
;;LOAD	Tone7
;OUT		BEEP
;LOAD	Tone8
;OUT		BEEP
;LOAD	Tone9
;OUT		BEEP
;LOAD	Tone10
;OUT		BEEP
;LOAD	Tone11
;OUT		BEEP
;LOAD	Tone12
;OUT		BEEP
;LOAD	Tone13
;OUT		BEEP
;LOAD	Tone14
;OUT		BEEP
;LOAD	Tone15
;OUT		BEEP
;LOAD	Tone16
;OUT		BEEP
;LOAD	Tone17
;OUT		BEEP

WaitP5:
	OUT    TIMER
Wloop:
	IN     TIMER
	OUT    XLEDS       ; User-feedback that a pause is occurring.
	ADDI   -1         ; 1 second at 10Hz.
	JNEG   Wloop
	RETURN
	
	
WaitP15:
	OUT    TIMER
Wloop1:
	IN     TIMER
	OUT    XLEDS       ; User-feedback that a pause is occurring.
	ADDI   -3         ; 1 second at 10Hz.
	JNEG   Wloop1
	RETURN
	
	
WaitP30:
	OUT    TIMER
Wloop2:
	IN     TIMER
	OUT    XLEDS       ; User-feedback that a pause is occurring.
	ADDI   -6         ; 1 second at 10Hz.
	JNEG   Wloop2
	RETURN
    ; "dEAd" on the sseg
    ; Do this forever.


Zero:     	DW 	0

Tone0:		DW	&H0000


Tone1:		DW  &H101C  ; 440 1 sec
Tone2:		DW	&H6026	; 587 6 sec
Tone3:		DW	&H6038	; 879 6 sec
Tone4:		DW	&H1032	; 784 1 sec
Tone5:		DW	&H102F	; 739 1 sec
Tone6:		DW	&H102A	; 659 1 sec
Tone7:		DW  &H604B	; 1174 6 sec
Tone8:		DW	&H3038	; 880 3 sec
Tone9:		DW	&H1032	; 784 1 sec
Tone10:		DW	&H102F	; 739 1 sec
Tone11:		DW	&H102A	; 659 1 sec
Tone12:		DW  &H604B	; 1174 6 sec
Tone13:		DW	&H3038	; 880 3 sec
Tone14:		DW	&H1032	; 784 1 sec
Tone15:		DW	&H102F	; 739 1 sec
Tone16:		DW	&H1032	; 784 1 sec
Tone17:		DW	&H602A	; 659 1 sec

BEEP:     EQU &H0A
TIMER:    EQU &H02
XLEDS:    EQU &H07