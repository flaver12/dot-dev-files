local status, _ = pcall(vim.cmd, "colorscheme nightfly") -- safe call

if not status then
    print("colorschema is missing")
    return
end
