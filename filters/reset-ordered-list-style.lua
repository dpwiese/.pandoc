-- reset ordered list (enumerate) style so we can set it with LaTeX header
function OrderedList(el)
  el.listAttributes.style = pandoc.DefaultStyle
  el.listAttributes.delimiter = pandoc.DefaultDelim
  return el
end

return { { OrderedList = OrderedList } }
