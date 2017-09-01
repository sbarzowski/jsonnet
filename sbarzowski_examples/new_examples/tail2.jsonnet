local foo(x) = if x == 0 then error "err" else foo(x - 1);
local bar(x) = foo(x) tailstrict;
bar(2)
