local applyNTimes(n, f, x) = if n == 0 then x else applyNTimes(n - 1, f, f(x)) tailstrict;
applyNTimes(1000000, function(x) x + 1, 42)
