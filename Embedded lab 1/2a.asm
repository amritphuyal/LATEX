		ORG 00H
		
AGAIN:	MOV A,#6BH
		MOV P0,A
		ACALL DELAY
		ACALL SWAP_RR
		MOV P0,A
		ACALL DELAY
		AJMP AGAIN
		
SWAP_RR:RR A
		RR A
		RR A
		RR A
		RET
		
DELAY: 	MOV R4,#7
HERE1:	MOV R5,#255
HERE2: 	MOV R7,#255
HERE3:	DJNZ R7,HERE3
		DJNZ R5,HERE2
		DJNZ R4,HERE1
		RET
		
		END