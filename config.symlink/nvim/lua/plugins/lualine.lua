-- Show LSP status
function lsp_status()
  local connected = not vim.tbl_isempty(vim.lsp.buf_get_clients(0))
  if connected then
    return ''
  else
    return ''
  end
end

-- Scrollbar
function progress_scrollbar()
  local current_line = vim.fn.line('.')
  local total_lines = vim.fn.line('$')
  local chars = {'  ', '__', '▁▁', '▂▂', '▃▃', '▄▄', '▅▅', '▆▆', '▇▇', '██'}
  --local default_chars = {"██", "▇▇", "▆▆", "▅▅", "▄▄", "▃▃", "▂▂", "▁▁", "__"}
  --local default_chars = {'⠉⠉', '⠒⠒', '⠤⠤', '⣀⣀'}
  local index = 1

  if  current_line == 1 then
    index = 1
  elseif current_line == total_lines then
    index = #chars
  else
    local line_no_fraction = vim.fn.floor(current_line) / vim.fn.floor(total_lines)
    index = vim.fn.float2nr(line_no_fraction * #chars)
    if index == 0 then
      index = 1
    end
  end
  return chars[index]
end

-- Show VIM mode as a single char
function vim_mode()
  local mode_char = {
    c = "🅒",
    i = "🅘",
    n = "🅝",
    r = "🅡",
    s = "🅢",
    t = "🅣",
    v = "🅥"
  }

  local mode = {
    c      = {mode_char.c},
    ce     = {mode_char.c},
    cv     = {mode_char.c},
    i      = {mode_char.i},
    ic     = {mode_char.i},
    n      = {mode_char.n},
    no     = {mode_char.n},
    r      = {mode_char.r},
    rm     = {mode_char.r},
    R      = {mode_char.r},
    Rv     = {mode_char.r},
    s      = {mode_char.s},
    S      = {mode_char.s},
    t      = {mode_char.t},
    V      = {mode_char.v},
    v      = {mode_char.v},
    ['r?'] = {mode_char.r},
    [''] = {mode_char.s},
    [''] = {' '},
    ['!']  = {'! '}
  }

  local vimMode = mode[vim.fn.mode()]
  if mode[vim.fn.mode()] ~= nil then
      return vimMode[1] .. ' '
  else
      return ' ? | ' .. ' '
  end
end

--[[
Lualine has sections as shown below:
+-------------------------------------------------+
| A | B | C                             X | Y | Z |
+-------------------------------------------------+
]]

-- Main Lualine setup
require('lualine').setup {
  extensions = {'nvim-tree'},
  options = {
    component_separators = {left = '', right = ''},
    section_separators = {left = '', right = ''},
    theme = 'tone',
  },
  sections = {
    lualine_a = {{vim_mode}},
    lualine_c = {
      {'filename', fmt = function(data)
          local windwidth = vim.fn.winwidth(0)
          if string.len(data) > 30 then
            return '…' .. data:sub(-30)
          end
          return data
        end
      }
    },
    --lualine_c = {'filename', {lsp_status, color = {fg = '#17c2a0'}}},
    lualine_b = {},
    lualine_x = {{lsp_status}, 'filetype'},
    lualine_y = {'location'},
    lualine_z = {'progress', {progress_scrollbar, color = {fg = '#17c2a0'}, padding = { right = 0 }}},
  },
}
