local ls = require('luasnip')  -- Import LuaSnip
local s = ls.snippet           -- Create a snippet
local t = ls.text_node         -- Create text nodes in a snippet
local i = ls.insert_node       -- Insert point in the snippet

-- Définir des snippets
ls.add_snippets('python', {
  s('def', {
    t('def '), i(1, 'function_name'), t('('), i(2, 'args'), t('):'),
    t({'', '\t'}), i(0)  -- Le dernier point d'insertion (i(0)) où le curseur va se déplacer à la fin
  }),
  s('class', {
    t('class '), i(1, 'ClassName'), t(':'), 
    t({'', '\tdef __init__(self, '}),
    i(2, 'args'), t('):'),
    t({'', '\t\tself.'}), i(0)  -- Le dernier point d'insertion (i(0))
  })
})

ls.add_snippets('javascript', {
  s('fn', {
    t('function '), i(1, 'name'), t('('), i(2, 'params'), t({') {', '\t'}),
    i(0), t({'', '}'})
  })
})
