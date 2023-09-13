local cmp = require("cmp")
local cmp_types  = require("cmp.types.cmp")
local cmp_mapping = require("cmp.config.mapping")
local luasnip = require("luasnip")

cmp.setup({
  
  mapping = cmp_mapping.preset.insert({
    ["<Tab>"] = cmp_mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_locally_jumpable() then
            luasnip.expand_or_jump()
            fallback()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp_mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<C-c>"] = cmp_mapping.complete(),
        ["<C-e>"] = cmp_mapping.abort(),
        ["<CR>"] = cmp_mapping(function(fallback)
          if cmp.visible() then
            local confirm_opts = vim.deepcopy({
              behavior = cmp_types.ConfirmBehavior.Replace,
              select = false,
            })
            local is_insert_mode = function()
              return vim.api.nvim_get_mode().mode:sub(1, 1) == "i"
            end
            if is_insert_mode() then
              confirm_opts.behavior = cmp_types.ConfirmBehavior.Insert
            end
            local entry = cmp.get_selected_entry()
            local is_copilot = entry and entry.source.name == "copilot"
            if is_copilot then
              confirm_opts.behavior = cmp_types.ConfirmBehavior.Replace
              confirm_opts.select = true
            end
            if cmp.confirm(confirm_opts) then
              return
            end
          end
          fallback()
        end),
      }),
    })

