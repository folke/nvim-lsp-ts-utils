local options = {
    disable_commands = false,
    enable_import_on_completion = false,
    import_on_completion_timeout = 5000,
    -- eslint
    eslint_bin = "eslint",
    eslint_args = {"-f", "json", "--stdin", "--stdin-filename", "$FILENAME"},
    eslint_enable_diagnostics = false,
    eslint_diagnostics_debounce = 250,
    eslint_enable_disable_comments = true,
    -- formatting
    enable_formatting = false,
    formatter = "prettier",
    formatter_args = {"--stdin-filepath", "$FILENAME"},
    format_on_save = false,
    no_save_after_format = false
}

local M = {}

M.set = function(user_options)
    options = vim.tbl_extend("force", options, user_options)
end

M.get = function() return options end

return M

