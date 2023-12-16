local function set_ayu_theme()
    local ok, _ = pcall(vim.cmd, "colorscheme ayu")
    vim.o.background = "dark" -- or "light" for light mode

    if not ok then
        vim.notify("Ayu colorscheme not found!")
        return
    end
end

return set_ayu_theme
