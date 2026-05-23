require('blink.cmp').setup({
  keymap = { 
    preset = 'default',

    ['<Enter>'] = {'accept', 'fallback'},
    ['<Tab>'] = {'select_next', 'fallback'},
    ['<Down>'] = {'select_next', 'fallback'},
    ['<Up>'] = {'select_prev', 'fallback'},
  },

  appearance = {
    nerd_font_variant = 'mono'
  },

  completion = {
    documentation = { auto_show = false },
    list = {
      max_items = 10, -- ✅ THIS is the correct key
    },
  },

  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
  },

  fuzzy = {
    implementation = "prefer_rust"
  },
})
