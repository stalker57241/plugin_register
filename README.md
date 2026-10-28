# Plugin register

Small API util for checking and loading plugins

# Usage

```lua
require('plugins/plugin_register')
local plugin = load('plugins/plugin')
if loaded('plugins/plugin') then
  vis:info('plugin loaded')
end
```


# To-dos

- [ ] Extend to get meta info from plugin
- [ ] Select standard for meta info
- [ ] Improve API
