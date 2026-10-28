local vis = _G.vis


local modules = {}
-- module_path : module

function generate_meta(name, version)
	return {
		name = name,
		version = version
	}
end

function _G.load(path)
	modules[path] = require(path)
	return modules[path]
end

function _G.loaded(path)
	return modules[path] ~= nil
end

function _G.getstate(path)
	return modules[path]
end

function _G.getbyname(name)
	for _, module in ipairs(modules) do
		if module.meta.name == name then return module end
	end
	return nil
end
