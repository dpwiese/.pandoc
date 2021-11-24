function CodeBlock(cb)
  local rawHtml = cb.text:match('^%s*%%%%%%html\n(.*)')
  if rawHtml then
    return pandoc.RawBlock('html', rawHtml)
  end
end
