on(monkey,floor). 
on(box,floor). 
in(monkey,room). 
in(box,room). 
in(banana,room). 
at(banana,ceiling).

strong(monkey). 
grasp(monkey). 
climb(monkey,box).

push(monkey,box):-strong(monkey). 
under(box,banana):-push(monkey,box).

canreach(monkey,banana):- 
    on(box,floor), 
    at(banana,ceiling), 
    under(box,banana), 
    climb(monkey,box). 
    
canget(monkey,banana):- 
    canreach(monkey,banana), 
    grasp(monkey).

