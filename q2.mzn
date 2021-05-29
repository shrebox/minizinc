/**
  Practical Exercise Sheet 1
  Exercise Q2
  ((P ∨ Q) ∧ ¬ Q) → P
**/

% variables
var bool: P;
var bool: Q;
var bool: Model;

% Model is created
%Model = (P -> Q) \/ (Q -> P);
% Model = P -> ((P \/ Q) /\ not Q);

% constraint Model;

% % Solve 
% solve satisfy;

% constraints
constraint P -> ((P \/ Q) /\ not Q);

% solve
solve satisfy;

output [ "P = \(P)\n" , "Q = \(Q)\n"];
