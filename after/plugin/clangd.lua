-- Path to clangd (adjust if needed)
local clangd_path = "/opt/homebrew/opt/llvm/bin/clangd"

-- Function to find root automatically based on compile_commands.json or git
local function find_root()
    return vim.fs.find({ "compile_commands.json", ".git" }, { upward = true, type = "file" })[1] and
           vim.fs.dirname(vim.fs.find({ "compile_commands.json", ".git" }, { upward = true, type = "file" })[1])
end

-- Start clangd LSP for C/C++/ObjC files
vim.api.nvim_create_autocmd("FileType", { 
    pattern = { "c", "cpp", "objc", "objcpp", "h", "hpp" }, 
    callback = function() 
        local clients = vim.lsp.get_active_clients({ name = "clangd" }) 
        if #clients == 0 then 
            local root = find_root() or vim.loop.cwd()  -- fallback
            vim.lsp.start({ 
                name = "clangd", 
                cmd = { clangd_path, "--background-index", "--query-driver=**" }, 
                root_dir = root,
            }) 
        end 
    end, 
})
