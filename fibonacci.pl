fibonacciSequence:-
    write('Enter the position upto which you want to print Fibonacci Sequence :'),read(N),nl,
    write('Fibonacci sequence upto'),write(N),write(' th term is : '),nl,
    A is 0,
    B is 1,
    write(A),write(' '),write(B),write(' '), Num is N-1,
    fibonacci(Num,A,B).

fibonacci(N,A,B):-
    N<2, write(' \n All numbers generated ! Thank You'); C is A+B,
    write(C),write(' '), D is B,
    E is C,
    N1 is N-1,
    fibonacci(N1,D,E).
