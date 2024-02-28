//Calculate R[0] * R[1]
//x = R[0]
//y = R[1]
//product = 0
//for(int i = 0; i++; i < y) {
//  product += x
//}
//
    @i
    M = 0
    @R2
    M=0

(LOOP)
    @i
    D = M
    
    @R1
    D = D - M
    @END
    D;JGE
    
    @R0
    D = M
    @R2
    M = M + D

    @i
    M = M + 1
    @LOOP
    0;JMP
(END)
    @END
    0;JMP
