# `plugin_register` API

## Plugins

### `generate_meta(name, version)`

Generated metadata for plugin

## Loading

### `load(path)`

Loads plugin from `path`

**Caution**: No null protection

### `loaded(path)`

Checks, is `plugin_register` loaded plugin

**Returns**
- `true` when plugin loaded
- `false` if not

## Getters

### `getstate(path)`

**Returns** api of module from that path

### `getbyname(name)`

Searches module by their name

## Swiftness

### `getstate`

O(1), because gets module by initial index

### `getbyname`

O(n), because iterates over modules and checks name
