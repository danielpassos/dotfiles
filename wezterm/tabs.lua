local wezterm = require 'wezterm'

local M = {}

function M.apply(config)
  wezterm.on('format-tab-title', function(tab, tabs, panes, cfg, hover, max_width)
    local pane = tab.active_pane
    local cwd_uri = pane and pane.current_working_dir

    local title

    if cwd_uri then
      local cwd = cwd_uri.file_path or tostring(cwd_uri)
      local folder = wezterm.basename(cwd)
      title = (folder and folder ~= '') and folder or '~'
    else
      title = '~'
    end

    -- =========================================================================
    -- Horizontal Padding Inside Tabs
    -- -------------------------------------------------------------------------
    -- WezTerm does NOT expose true tab padding controls in fancy tab bar mode.
    --
    -- The only reliable way to add spacing is by adding spaces to the title.
    -- This increases perceived width and improves readability.
    --
    -- IMPORTANT:
    -- - This affects only horizontal spacing (not height)
    -- - Height is controlled via window_frame.font_size (see appearance.lua)
    -- =========================================================================
    return '   ' .. title .. '   '
  end)
end

return M
