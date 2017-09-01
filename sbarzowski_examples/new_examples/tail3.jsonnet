local foo(x, y) = error "XXX";
local bar(x, y) = foo(x, y) + foo(x + 1, y + 2);
local xxx(x, y) = bar(x, y) tailstrict;
xxx(2, 2)

