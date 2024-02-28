    //screen size
    @8192
    D = A
    @screensize
    M = D
    @n
    M = 0

(KEYBOARD_SCAN)
    @n
    M = 0
    @KBD
    D = M
    @FILL_SCREEN
    D;JNE
    @EMPTY_SCREEN
    0;JMP

(FILL_SCREEN)
    @n
    D = M
    
    //if at the end of screen, break
    @screensize
    D = D - M
    @KEYBOARD_SCAN
    D;JEQ

    
    @SCREEN
    D = A
    //starting from screen, move n steps forward in memory
    @n
    A = D + M
    M = -1

    //increment n
    @n
    M = M + 1
    @FILL_SCREEN
    0;JMP

(EMPTY_SCREEN)
    @n
    D = M
    
    //if at the end of screen, break
    @screensize
    D = D - M
    @KEYBOARD_SCAN
    D;JEQ

    
    @SCREEN
    D = A
    //starting from screen, move n steps forward in memory
    @n
    A = D + M
    M = 0

    //increment n
    @n
    M = M + 1
    @EMPTY_SCREEN
    0;JMP
