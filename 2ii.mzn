% variables
var bool: P;
var bool: Q;

% Method 1:
% We define the given formula as a contraint below
% We can see that not for all combinations of P and Q, the formula is satisfied. 
% Hence, it's not a tautology
% constraint P -> ((P \/ Q) /\ not Q);

% Method 2:
% Using contradiction:
% If the given formula was tautology, then there should be no assignments for P and Q such that the given formula is False (equivalently, the negation of the given formula is True). 
% But, we see that P=True, Q=True satisfies the negation of the given formula. Hence, we can conclude that the given formual is not tautology. 
constraint not (P -> ((P \/ Q) /\ not Q));

% solve
solve satisfy;

output [ "P = \(P)\n" , "Q = \(Q)\n"];
