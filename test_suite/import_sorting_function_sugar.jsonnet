local b = import "b.jsonnet";
local a(x) = import "a.jsonnet"; // not a proper import!
true
