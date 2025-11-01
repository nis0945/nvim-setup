return {
    "andweeb/presence.nvim",
    opts = {
        auto_update = true,
        log_level = "debug",
        buttons = false,
        show_time = true,
        -- Rich Presence text options
        editing_text        = "Editing %s",
        file_explorer_text  = "Browsing %s",
        git_commit_text     = "Committing changes",
        plugin_manager_text = "Managing plugins",
        reading_text        = "Reading %s",
        workspace_text      = "Working on %s",
        line_number_text    = "Line %s out of %s",
    },
    -- config = function (_, opts)
    --     local presence = require("presence")
    --     presence.setup(opts)
    -- end
}
