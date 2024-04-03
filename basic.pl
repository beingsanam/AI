animal(Rhino). 
animal(donkey). 
animal(cat). 
animal(dog). 
bird(Pigeon). 
bird(crow). 
bird(parrot).

bigger_than(Rhino,donkey). 
bigger_than(donkey,dog). 
bigger_than(dog,cat). 
bigger_than(cat,crow).
bigger_than(X,Y):-bigger_than(X,Z),bigger_than(Z,Y). 
smaller_than(X,Y):-bigger_than(Y,X).

