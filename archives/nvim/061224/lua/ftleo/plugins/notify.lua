return {
    "rcarriga/nvim-notify",
    config = function()
        local notify = require("notify")
        notify.setup({
            top_down = false;
        })
    end,
}
