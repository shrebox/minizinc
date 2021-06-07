% variables
var bool: G;
var bool: N;
var bool: B;
var bool: L;
var bool: F;
var bool: S;
var bool: I;

% constraints
constraint (B <-> F);
constraint (not S);
constraint (L <-> not S);
constraint (not F -> not G);
constraint ((L /\ B) -> N);
constraint ((G /\ L) \/ (not G /\ not L));
constraint (I \/ G \/ L);
constraint (not I \/ not N \/ not B); % Adding this new contraint 

% solve
solve satisfy;

% Answer
% Now there is only one solution satisfiable after adding the extra constraint
output ["\(G)\n","\(N)\n","\(B)\n","\(L)\n","\(F)\n", "\(S)\n", "\(I)\n"];
