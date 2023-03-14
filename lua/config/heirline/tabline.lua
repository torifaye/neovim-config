local utils = require("heirline.utils")

local TablineBufnr = {
  provider = function(self)
    return tostring(self.bufnr) .. ". "
  end,
  hl = "Comment"
}

local TablineFileName = {
  provider = function(self)
    local filename = self.filename
    filename = filename == "" and "[No Name]" or vim.fn.fnamemodify(filename, ":t")
    return filename
  end,
  hl = function(self)
    return {bold = self.is_active or self.is_visible, italic = true}
  end
}

local TablineFileFlags = {
  {
    condition = function(self)
      return vim.api.nvim_buf_get_option(self.bufnr, "modified")
    end,
    provider = "[+]",
    hl = {fg = "green"}
  }, {
    condition = function(self)
      return not vim.api.nvim_buf_get_option(self.bufnr, "modifiable")
                 or vim.api.nvim_buf_get_option(self.bufnr, "readonly")
    end,
    provider = function(self)
      if vim.api.nvim_buf_get_option(self.bufnr, "buftype") == "terminal" then
        return "  "
      else
        return ""
      end
    end,
    hl = {fg = "orange"}
  }
}

-- Here the filename block finally comes together
local TablineFileNameBlock = {
  init = function(self)
    self.filename = vim.api.nvim_buf_get_name(self.bufnr)
  end,
  hl = function(self)
    if self.is_active then
      return "TabLineSel"
      -- why not?
      -- elseif not vim.api.nvim_buf_is_loaded(self.bufnr) then
      --     return { fg = "gray" }
    else
      return "TabLine"
    end
  end,
  on_click = {
    callback = function(_, minwid, _, button)
      if (button == "m") then -- close on mouse middle click
        vim.schedule(function()
          vim.api.nvim_buf_delete(minwid, {force = false})
        end)
      else
        vim.api.nvim_win_set_buf(0, minwid)
      end
    end,
    minwid = function(self)
      return self.bufnr
    end,
    name = "heirline_tabline_buffer_callback"
  },
  TablineBufnr,
  FileIcon, -- turns out the version defined in #crash-course-part-ii-filename-and-friends can be reutilized as is here!
  TablineFileName,
  TablineFileFlags
}

-- a nice "x" button to close the buffer
local TablineCloseButton = {
  condition = function(self)
    return not vim.api.nvim_buf_get_option(self.bufnr, "modified")
  end,
  {provider = " "},
  {
    provider = "",
    hl = {fg = "gray"},
    on_click = {
      callback = function(_, minwid)
        vim.schedule(function()
          vim.api.nvim_buf_delete(minwid, {force = false})
        end)
        vim.cmd.redrawtabline()
      end,
      minwid = function(self)
        return self.bufnr
      end,
      name = "heirline_tabline_close_buffer_callback"
    }
  }
}

-- The final touch!
local TablineBufferBlock = utils.surround({"", ""}, function(self)
  if self.is_active then
    return utils.get_highlight("TabLineSel").bg
  else
    return utils.get_highlight("TabLine").bg
  end
end, {TablineFileNameBlock, TablineCloseButton})

-- and here we go
local BufferLine =
    utils.make_buflist(TablineBufferBlock, {provider = "", hl = {fg = "gray"}}, -- left truncation, optional (defaults to "<")
                       {provider = "", hl = {fg = "gray"}} -- right trunctation, also optional (defaults to ...... yep, ">")
    -- by the way, open a lot of buffers and try clicking them ;)
    )

return BufferLine
