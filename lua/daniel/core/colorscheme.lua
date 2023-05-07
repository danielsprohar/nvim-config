vim.cmd("colorscheme monokai")

local status, monokai = pcall(require, "monokai")
if not status then
  return
end

monokai.setup({
  italics = false,
})
