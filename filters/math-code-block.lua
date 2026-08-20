--[[
Render fenced code blocks with the math class as display math.
]]

function CodeBlock(cb)
  if not cb.classes:includes('math') then
    return nil
  end

  local text = cb.text

  -- Already a LaTeX math environment: emit as raw LaTeX
  if text:match('\\begin%s*{') then
    return pandoc.RawBlock('latex', text)
  end

  -- Otherwise wrap the content as display math
  return pandoc.Para{pandoc.Math(pandoc.DisplayMath, text)}
end
