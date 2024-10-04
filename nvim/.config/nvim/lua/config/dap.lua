local dap = require('dap')

dap.adapters.python = {
  type = 'executable',
  command = 'python',
  args = { '-m', 'debugpy.adapter' },
}

dap.configurations.python = {
  {
    type = 'python',
    request = 'launch',
    name = 'Launch file',
    program = "${file}",  -- Déboguer le fichier actuel
    pythonPath = function()
      return '/usr/bin/python'  -- Chemin vers Python
    end,
  },
}
