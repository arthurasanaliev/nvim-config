vim.keymap.set("n", "<leader>bo", "<cmd>%bd|e#<cr>", {
    desc = "Close all buffers but the current one"
}) -- https://stackoverflow.com/a/42071865/516188

vim.keymap.set("v", "Y", "\"+y", { desc = "Copy to System Clipboard", silent = true })

vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move Half Page Up", silent = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move Half Page Down", silent = true })

vim.keymap.set("n", "<leader>a", "ggVG", { desc = "Select All", silent = true })

vim.keymap.set("n", "<leader>q", ":Ex<CR>", { desc = "Quit", silent = true })

vim.keymap.set("v", "K", ":m \'<-2<CR>gv=gv", { desc = "Move Text Up", silent = true })
vim.keymap.set("v", "J", ":m \'>+1<CR>gv=gv", { desc = "Move Text Down", silent = true })

vim.keymap.set("i", "{<CR>", "{<CR>}<Esc>O", { desc = "Pair Up Braces", silent = true })

local function replace_input()
    local old = vim.fn.input("Old name: ")
    local new = vim.fn.input("New name: ")
    vim.cmd("%s/" .. old .. "/" .. new .. "/g")
end

vim.keymap.set("n", "<leader>ra", replace_input, { desc = "Replace All", silent = true })

-- CP Settings
function RunCpp()
    vim.cmd("write")
    local file_name = vim.fn.expand("%")
    vim.cmd("vsplit")
    vim.cmd("terminal")
    local command = "g++ -DLOCAL -o main " .. file_name .. " && ./main\n"
    vim.fn.chansend(vim.b.terminal_job_id, command)
    vim.defer_fn(function()
        vim.cmd("startinsert")
    end, 100)
end

vim.api.nvim_create_user_command("RunCpp", RunCpp, {
    desc = "Compile and Run Current C++ File"
})

-- Keybinding for expanding LuaSnip snippets
vim.api.nvim_set_keymap("i", "<C-k>", "<cmd>lua require'luasnip'.expand_or_jump()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("s", "<C-k>", "<cmd>lua require'luasnip'.expand_or_jump()<CR>", { noremap = true, silent = true })
