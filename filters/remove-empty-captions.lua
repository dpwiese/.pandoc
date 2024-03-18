--[[
Adapted from: https://github.com/pandoc/lua-filters/blob/master/short-captions/short-captions.lua
]]--

if FORMAT ~= "latex" then
  return
end

local function latex(str)
  return pandoc.RawInline('latex', str)
end

function figure_image (elem)
  local image = elem.content and elem.content[1]
  return (image.t == 'Image')
    and image
    or nil
end

function Para (para)
  local img = figure_image(para)
  if not img or not img.caption or img.caption == '' then
    return nil
  end

  return pandoc.Para {
    pandoc.RawInline('latex', '\\begin{figure}\n\\centering\n'),
    img,
    pandoc.RawInline('latex', '\n\\end{figure}\n\n')
  }
end
