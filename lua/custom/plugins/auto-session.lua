return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")
		
    auto_session.setup({
      auto_restore_enabled = false,
      auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
			-- auto_clean_after_session_restore = true, -- Automatically clean up broken neo-tree buffers saved in sessions
			-- auto_session_enable_last_session = true, -- Enable the last session to be restored
			-- auto_save_enabled = true,
			-- auto_restore_enabled = true,
			-- auto_session_suppress_dirs = true,
			-- auto_session_use_git_branch = true,
			-- bypass_session_save_file_types = nil,
			post_restore_cmds = { "Neotree reveal" },
			pre_save_cmds = { "Neotree close" },
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>Sr", "<cmd>SessionRestore<CR>", { desc = "[Session] [R]estore for cwd" }) -- restore last workspace session for current directory
    keymap.set("n", "<leader>Ss", "<cmd>SessionSave<CR>", { desc = "[Session] [S]ave session for auto session root dir" }) -- save workspace session for current working directory
  end,
}