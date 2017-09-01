local foo =
	local zero = 0; local f(x) = if x == zero then error "err" else f(x - 1); f;
local bar(x) = foo(x) tailstrict;
bar(2)
