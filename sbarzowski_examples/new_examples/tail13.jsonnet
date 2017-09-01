local foo(h, x) = if x == 0 then x else h(h, x - 1) tailstrict;
local bar = function(x, y) foo(x, y);
foo(foo, 1000)
