%%%%%%%%%%
% Date: April, 11, 2017
% Author: Rishabh Dabral
%%%%%%%%%%

% Grid has r rows and c columns
#const r = 6.
#const c = 6.
rows(1..r).
cols(1..c).
nbr(0..8).

1{mine(I,J,0..1)}1 :- rows(I), cols(J).

% It is not the case that there is a mine in a cell that is marked
:- marked(I,J,_), mine(I,J,1).

% It is not the case that the number of mines placed around a marked 
% cell is not the same as the number marked in the cell
:- marked(I,J,N), not N{mine(I1,J1,1):  (I1-I)**2 + (J1-J)**2 <=2}N.
			

hasMine(I,J) :- mine(I,J,1).
%#show marked/3.
#show hasMine/2.
