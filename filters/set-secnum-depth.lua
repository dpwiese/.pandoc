--[[
See: https://github.com/jgm/pandoc/issues/6459

The behavior achieved by this filter can also be achieved by using
the below options in the yaml header. However, these options may
be superceded by Latex headers which, when included, can force
sections to be numbered, for example. So this filter may come in
handy, but otherwise try not to use it.

numbersections: true
secnumdepth: 1
toc: true
toc-depth: 1
]]--

-- Adjust as needed
local max_numbering_level = 2

function Header (h)
  if h.level >= max_numbering_level then
    h.classes:insert 'unnumbered'
  end
  return h
end
