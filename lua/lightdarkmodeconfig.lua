-- Toggle Light/Dark mode
function LightDarkModeToggle()
  if vim.o.background == 'light' then
    vim.cmd('set background=dark')
    os.execute([[
       echo 'vim.o.background = "dark"' > $HOME/.config/nvim/lua/light.lua
    ]])
  else
    vim.cmd('set background=light')
    os.execute([[
       echo 'vim.o.background = "light"' > $HOME/.config/nvim/lua/light.lua
   ]])
  end
end

vim.keymap.set('n', '<M-l>', ':lua LightDarkModeToggle()<CR>', { noremap = true, silent = true })
