pass(X):-study(X).
happy(X):-pass(X). 
notstudy(rekha). 
notstudy(bibek).

study(radha). 
study(rakesh). 
study(anish). 
fail(X):-notstudy(X).
umhappy(X):-fail(X).
