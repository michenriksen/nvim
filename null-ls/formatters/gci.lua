local h = require("null-ls.helpers")
local methods = require("null-ls.methods")

local FORMATTING = methods.internal.FORMATTING

return h.make_builtin({
  name = "gci",
  meta = {
    url = "https://github.com/daixiang0/gci",
    description = "Sorts goimports by sections",
  },
  method = FORMATTING,
  filetypes = { "go" },
  generator_opts = {
    command = "gci",
    args = { "print", "--skip-generated" },
    to_stdin = true,
  },
  factory = h.formatter_factory,
})
