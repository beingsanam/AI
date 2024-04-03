factorial(0,1).

factorial(N,F):-
    N>0,
    N1 is N-1,
    factorial(N1,F1), F is N*F1.
findfactorial:-
    write('\n Enter a number to find factorial'), 
    read(Num),
    factorial(Num,F),
    write('\n Factorial of '),write(Num),write(' is '),write(F).

