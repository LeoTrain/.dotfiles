return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "rcarriga/nvim-dap-ui",
    },
    config = function()
        local dap, dapui = require("dap"), require("dapui")
        dapui.setup()
        dap.listeners.after.event_initialized["dapui_config"] = function()
            if dap.session() then
                dapui.open()
            end
        end
        dap.listeners.before.event_terminated["dapui_config"] = function()
            if dap.session() then
                dapui.open()
            end
        end
        dap.listeners.before.event_exited["dapui_config"] = function()
            if dap.session() then
                dapui.open()
            end
        end

        local home = os.getenv("HOME") -- Get the home directory path
        local python_env = home .. "/env/bin/python"
        dap.adapters.python = function(cb, config)
            if config.request == "attach" then
                ---@diagnostic disable-next-line: undefined-field
                local port = (config.connect or config).port
                ---@diagnostic disable-next-line: undefined-field
                local host = (config.connect or config).host or "127.0.0.1"
                cb({
                    type = "server",
                    port = assert(port, "`connect.port` is required for a python `attach` configuration"),
                    host = host,
                    options = {
                        source_filetype = "python",
                    },
                })
            else
                cb({
                    type = "executable",
                    command = python_env,
                    args = { "-m", "debugpy.adapter" },
                    options = {
                        source_filetype = "python",
                    },
                })
            end
        end

        dap.configurations.python = {
            {
                type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
                request = "launch",
                name = "Launch file",
                -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options
                program = "${file}", -- This configuration will launch the current file if used.
                pythonPath = function()
                    -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
                    -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
                    -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
                    if vim.fn.executable(python_env) == 1 then
                        return python_env
                    else
                        return "/usr/bin/python"
                    end
                end,
            },
        }

        vim.keymap.set("n", "<leader>dt", dapui.toggle, {})
        vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, {})
        vim.keymap.set("n", "<leader>dc", dap.continue, {})
        vim.keymap.set("n", "<leader>dso", dap.step_over, {})
        vim.keymap.set("n", "<leader>dsi", dap.step_into, {})
        vim.keymap.set("n", "<leader>dsa", dap.step_out, {})

        vim.api.nvim_create_user_command('DapLaunchMarioIsaac', function()
            require("dap").run({
                type = "python",
                request = "launch",
                name = "Launch MarioIsaac",
                module = "MarioIsaac.core.main",
                args = {},
                pythonPath = function()
                    return python_env -- Modifier selon votre setup
                end,
            })
        end, { desc = "Launch MarioIsaac project with DAP" })

    end,
}
