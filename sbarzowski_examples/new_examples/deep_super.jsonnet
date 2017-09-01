local f(n, obj) = if n == 0 then obj else f(n - 1, obj + {x +: 1}) tailstrict;
local big = {a: 1, b: 2, c:3, d: 4, e: 5, f: 6, g: 7, h: 8};
f(400, big + {x: 0})
