--- default initializer
-- @author Alejandro Baez <alejan.baez@gmail.com>
-- @copyright 2015
-- @license MIT (see LICENSE)
-- @module init

-- run love2d project
textadept.run.build_commands["main.lua"] = "love ."

if type(snippets) == 'table' then
  snippets.love = snippets.lua
end

events.connect(events.LEXER_LOADED, function (lang)
  if lang ~= 'love' then return end

  buffer.tab_width = 2
  buffer.use_tabs = false
  buffer.edge_column = 79
end)

return {}
