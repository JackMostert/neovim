return {
  g = {
    -- neovide_scroll_animation_length = 0,
    neovide_cursor_vfx_mode = "railgun",
    neovide_cursor_vfx_particle_lifetime = 1.5,
    neovide_cursor_vfx_particle_density = 15,
    -- neovide_transparency = 0.9,
    heirline_bufferline = true,
    winblend = vim.g.neovide and 30 or 0,
  },
  opt = {
    autoread = true,
    winwidth = 10,
    pumblend = vim.g.winblend,
    winminwidth = 10,
    cmdheight = 1, -- more space in the neovim command line for displaying messages
    cursorline = false, -- highlight the current line
    number = true, -- set numbered lines
    relativenumber = false, -- set relative numbered lines
    numberwidth = 1, -- set number column width to 2 {default 4}
    laststatus = 3,
    scrolloff = 12, -- is one of my fav
    sidescrolloff = 12,
    spell = false,
    shell = vim.fn.executable "pwsh" and "pwsh" or "powershell",
    shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
    shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
    shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
    shellquote = "",
    shellxquote = "",
  },
}
