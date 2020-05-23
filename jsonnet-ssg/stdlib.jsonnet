local html = import 'html.libsonnet';

local
    h1 = html.h1,
    p = html.p;

local funcDoc(f) = 
    local hgroup(b) = html.div({class: "hgroup"}, b),
          hgroup_inline(b) = html.div({class: "hgroup"}, b),
          panel(b) = html.div({class: "panel"}, b);
    [
        hgroup(
            hgroup_inline(
                panel(
                    html.h4({id: f.name}, "std." + f.name)
                )
            )
        ),
        hgroup(
            hgroup_inline(
                panel([
                    html.p({}, f.description),
                    if std.objectHas(f, 'examples') then [
                        html.p({}, ["Example: ", ex]) for ex in f.examples
                    ] else [],
                ])
            )
        )
    ];

html.render([
    html.doctype('html5'),
    html.html({}, [
        html.head({}, [
            '<link rel="stylesheet" type="text/css" href="https://jsonnet.org/css/doc.css">',
        ]),
        html.body({}, [
            html.h1({}, "This is the title"),
            p({}, "Lorem ipsum dolor sit amet"),
            funcDoc({
                name: "splitLimit",
                params: ["str", "c", "maxsplits"],
                description: "As std.split(str, c) but will stop after <code>maxsplits</code> splits, thereby the largest
                              array it will return has length <code>maxsplits + 1</code>.  A limit of -1 means unlimited.",
                examples: [
                    'Example: <code>std.splitLimit("foo/bar", "/", 1)</code> yields <code>["foo", "bar"]</code>.',
                    'Example: <code>std.splitLimit("/foo/", "/", 1)</code> yields <code>["", "foo/"]</code>.',
                ],
            })
        ])
    ])
])