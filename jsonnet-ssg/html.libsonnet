// Design:
// 
local element(elementType) = function(attrs, body) {
    type: "element",
    elementType: elementType,
    attrs: attrs,
    body: body,
};
local comment(text) = {
    type: "comment",
    text: text,
};
local doctype(doctype) = {
    type: "doctype",
    doctype: doctype,
};

local renderAttrs(attrs) = 
    std.join(' ', [
        attr + '="' + attrs[attr] + '"' for attr in std.objectFields(attrs) 
    ]);


local render(content) =
    if std.isObject(content) then
        if content.type == "element" then
            "<" + content.elementType + " " + renderAttrs(content.attrs) + ">" + render(content.body) + "</" + content.elementType + ">"
        else if content.type == "comment" then
            "<!-- " + content.text + " -->"
        else if content.type == "doctype" then
            "<!DOCTYPE " + content.doctype + " />"
        else error "unreconized type"
    else if std.isArray(content) then
        std.join("\n", [render(c) for c in content])
    else if std.isString(content) then
        content
    else 
        "content must be an object, an array or a string";
{
    element: element,
    doctype: doctype,
    comment: comment,
    render: render,
    a: element('a'),
    body: element('body'),
    html: element('html'),
    head: element('head'),
    h1: element('h1'),
    h2: element('h2'),
    h3: element('h3'),
    h4: element('h4'),
    h5: element('h5'),
    h6: element('h6'),
    p: element('p'),
    div: element('div'),
}