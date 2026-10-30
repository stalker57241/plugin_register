--[[
AUTHOR: stalker57241
DESCRIPTION: Utility to store state of module loading for intermodule interaction
]]
local vis = _G.vis


local modules = {}
-- module_name : module

function _G.generate_meta(name, version)
	return {
		name = name,
		version = version
	}
end

--[[
Loads plugin at path

Returns:
1. module if module loaded else nil
2. modulename to access module if module loaded else nil too
]]
function _G.load(path)
	local module = require(path)
	if module == nil then return nil, nil end
	if module.meta == nil then return nil, nil end
	modules[module.meta.name] = module
	return module, module.meta.name
end
--[[
Checks, is module with modulename loaded
]]
function _G.loaded(modulename)
	return modules[modulename] ~= nil
end
--[[
Gets loaded module API by modulename
]]
function _G.getbyname(modulename)
	return modules[modulename]
end
