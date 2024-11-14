local M = {}

local function run_shell_command(cmd)
  local handle = io.popen(cmd)
  if not handle then
    vim.notify("Error while executing command: " .. cmd, vim.log.levels.ERROR)
    return ""
  end
  local result = handle:read("*a")
  handle:close()
  return result
end

function M.git_add_and_commit()
  vim.ui.input({ prompt = "Message for the commit: " }, function(input)
    if input and input ~= "" then
      local current_file = vim.fn.expand("%:p")
      local add_output = run_shell_command("git add " .. current_file)
      local commit_output = run_shell_command("git commit -m '" .. input .. "'")

      vim.notify("Git Add executed:\n" .. add_output .. "\nGit Commit executed:\n" .. commit_output, vim.log.levels.INFO)
    else
      vim.notify("Commit canceled: no message given.", vim.log.levels.WARN)
    end
  end)
end

vim.keymap.set("n", "<leader>gc", M.git_add_and_commit, { desc = "Git Add & Commit" })

return M

