# `plugin_register` API

## Plugins

### `generate_meta(modulename, version)`

Generated metadata for plugin

## Loading

### `load(path)`

Loads plugin from `path`

**Returns**:
1. module API or nil
2. modulename or nil

**Caution**: No null protection for path

### `loaded(modulename)`

Checks, is `plugin_register` loaded plugin

**Returns**
- `true` when plugin loaded
- `false` if not

## Getters

### `getstate(modulename)`

**Returns** api of module from that path

### `getbyname(modulename)`

Searches module by their name
