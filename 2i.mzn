% variables
var bool: P;
var bool: Q;

% Method 1:
% We define the given formula as a contraint below
% We see, all combinations of P and Q staisfy the given constraint
% Hence it's a tautology.
% constraint (P -> Q) \/ (Q -> P);

% Method 2:
% Using contradiction: 
% Assume the given formula is not a tautology, then there exists some assignment for P and Q such that the given formula is false. 
% Which means the negation of the given formula should be true. 
% But there is no assignment for P and Q which will satisfy the negation of the original formula. 
% Hence, the given formula is a tautology.
constraint not ((P -> Q) \/ (Q -> P));

% solve
solve satisfy;

output [ "P = \(P)\n" , "Q = \(Q)\n"];
