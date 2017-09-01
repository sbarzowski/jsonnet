local foo =
	local f(x) = local zero = 0; if x == zero then error "err" else f(x - 1); f;
local bar(x) = foo(x) tailstrict;
bar(2)
