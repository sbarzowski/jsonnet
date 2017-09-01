local foo(x) = x;
local my_function(x) = foo(error "err");
my_function(42)

