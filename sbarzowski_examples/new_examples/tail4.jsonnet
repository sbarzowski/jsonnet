local foo(x, y) = x + y;
local bar(x, y) = local x = 5; foo(x, y) + foo(x, y);
local xxx(x, y) = bar(x, y) tailstrict;
xxx(2, 2)

