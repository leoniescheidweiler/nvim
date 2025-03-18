-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Python
vim.api.nvim_create_autocmd({ "BufReadPost", "BufWinEnter" }, {
    pattern = { ".py" },
    callback = function()
        local options_python = {
            tabstop = 8,
            shiftwidth = 4,
            softtabstop = 0,
            expandtab = true,
        }
        for k, v in pairs(options_python) do
            vim.opt[k] = v
        end
        print("Python settings applied!")
    end,
})

-- Fortran90
vim.api.nvim_create_autocmd({ "BufReadPost", "BufWinEnter" }, {
    pattern = { "*.f90" },
    callback = function()
        local options_f90 = {
            tabstop = 8,
            shiftwidth = 3,
            softtabstop = 0,
            expandtab = true,
        }
        for k, v in pairs(options_f90) do
            vim.opt[k] = v
        end
        print("Fortran90 settings applied!")
    end,
})

-- Makefile
vim.api.nvim_create_autocmd({ "BufReadPost", "BufWinEnter" }, {
    pattern = { "Makefile" },
    callback = function()
        local options_f90 = {
            tabstop = 8,
            shiftwidth = 4,
            softtabstop = 0,
            expandtab = false,
        }
        for k, v in pairs(options_f90) do
            vim.opt[k] = v
        end
        print("Makefile settings applied!")
    end,
})
