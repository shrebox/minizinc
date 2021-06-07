% variables
var bool: P;
var bool: Q;
var bool: R;
var bool: S;

% constraints
constraint not (((P /\ Q) -> not (P /\ R))) \/ ((Q /\ R) /\ not (P /\ not Q));

% solve
solve satisfy;

output [ "P = \(P)\n" , "Q = \(Q)\n", "R = \(R)\n", "S = \(S)\n"];
