%Задача про трех студентов рому петю и серегу, которые учатся на трех разных факультетах
%Нужно узнать кто рома и даны условия

fac(physics).
fac(mathematics).
fac(chemistry).
%Продолжаем писать код

%Петя математик -> Серега не физик 

uslovie1(Stud1, Stud2):- 
	Stud1 = mathematics,
	not(Stud2 = physics).
%иначе
uslovie1(Stud1,_):-
	not(Stud1 = mathematics).

%Рома не физик -> Петя математик

uslovie2(Stud1, Stud2):- 
	not(Stud1 = physics),
	Stud2 = mathematics.
uslovie(phisics,_).

% серега не математик -> рома химик

uslovie3(Stud1, Stud2):-
	not(Stud1 = mathematics)'
	Stud2 = chemistry.
uslovie3(mathematics,_).

%Процедура для решения 
proc (Stud1, Stud2, Stud3):- 
	fac(Stud1),
	fac(Stud2),
	fac(Stud3),
uslovie1(Stud1, Stud3),
uslovie2(Stud2, Stud1),
uslovie3(Stud3, Stud2).

main:-
	proc(Petr,Roma,Serega),
	write("Рома - "),
	write(Roma)!.
