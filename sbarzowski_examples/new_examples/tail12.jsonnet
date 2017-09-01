local foo(x) = if x != 0 then foo(x - 1) tailstrict else 0;
foo(500) tailstrict
