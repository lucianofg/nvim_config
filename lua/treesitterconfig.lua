require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "python", "vim", "vimdoc", "query", "javascript", "typescript" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        disable = function(_, buf)
            local max_filesize = 1024 * 1024 -- 1MB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
                return true
            end
        end,
        additional_vim_regex_highlighting = false,
    },
}
