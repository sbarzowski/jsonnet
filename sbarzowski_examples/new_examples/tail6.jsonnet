local foo =
	local f(x) = if x == 0 then error "err" else f(x - 1); f;
local bar(x) = foo(x) tailstrict;
bar(2)
