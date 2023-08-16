local default_cwd = "${workspaceFolder}/build"
if not vim.fn.isdirectory(default_cwd) then
  default_cwd = "${workspaceFolder}"
end
return {
  cpp = {
    {
      name = "my LLDB: Launch",
      type = "codelldb",
      request = "launch",
      program = function()
        return vim.fn.input('Path to executable: ', default_cwd .. '/', 'file')
      end,
      cwd = function ()
        return vim.fn.input("Directory to execute", default_cwd, "dir")
      end,
      stopOnEntry = false,
      args = {}
    }
  }
}
