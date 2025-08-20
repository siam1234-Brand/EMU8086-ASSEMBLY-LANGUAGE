
.MODEL SAMLL
.STACK 100H
.DATA
MSG DB "hello siam $"  
MSG2 DB "HELLO $"
.CODE 
 MAIN PROC
    
    MOV AX,@DATA  ;INITIALIZE OF DATA SEGMENT
    MOV DS,AX
    
    LEA DX,MSG   ;LOAD EFFECTIVE ADDRESS 
    MOV AH,9
    INT 21H 
    
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13 
    INT 21H
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    
    
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
 END MAIN