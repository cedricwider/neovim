local function create_array(count, item)
  local array = {}
  for _ = 1, count do
    table.insert(array, item)
  end
  return array
end

local function paste_blank_line(line)
  local lines = create_array(vim.v.count1, "")
  vim.api.nvim_buf_set_lines(0, line, line, true, lines)
end

local function paste_blank_line_above()
  paste_blank_line(vim.fn.line(".") - 1)
end

local function paste_blank_line_below()
  paste_blank_line(vim.fn.line("."))
end

local function toggle_option(option, x, y)
  local on = x or true
  local off = y or false
  local opt_value = vim.api.nvim_win_get_option(0, option)
  local toggled = opt_value == off and on or off

  vim.api.nvim_win_set_option(0, option, toggled)
  vim.cmd.set(option .. "?")
end

return {
  paste_blank_line_above = paste_blank_line_above,
  paste_blank_line_below = paste_blank_line_below,
  toggle_option = toggle_option,
}
