require('nvim-autopairs').setup({
  pairs = {
    { "'", "'" },
    { "\"", "\"" },
    { "`", "`" },
    { "(", ")" },
    { "[", "]" },
    { "{", "}" },
    -- Remove the rule for the '*' character:
    -- { "*", "*" },
  },
})
