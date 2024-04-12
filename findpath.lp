% Please insert the names and email addresses:
%
%

cell(1..4,1..4).
first(4,1).
final(1,3).

% Define the path 
path(X1,Y1,X2,Y2) :- cell(X1,Y1), cell(X2,Y2), X1=X2, Y1<Y2. % Horizontal path
path(X1,Y1,X2,Y2) :- cell(X1,Y1), cell(X2,Y2), Y1=Y2, X1>X2. % Vertical path

% Define the constraints for the path
:- not path(4,1,_,_). % First cell must be the starting point
:- not path(_,_,1,3). % Final cell must be the ending point
:- path(X1,Y1,X2,Y2), path(X3,Y3,X4,Y4), (X1,Y1) != (X3,Y3), (X1,Y1) != (X4,Y4), (X2,Y2) != (X3,Y3), (X2,Y2) != (X4,Y4), X1=X4, Y1=Y4, X2=X3, Y2=Y3. 
path(4,1,X,Y) :- final(X,Y).

#show path/4.
