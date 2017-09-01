local type(x) = std.type(x);
local foo(x) = local zero = 0; assert type(zero) == "number"; if x == zero then error "err" else foo(x - 1);
local goo(x) = foo(x);
local bar(x) = goo(x) tailstrict;
bar(2)
