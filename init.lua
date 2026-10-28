local vis = _G.vis


local modules = {
-- module_path : loaded
}

function _G.load(path)
	modules[path] = true
	return require(path)
end

function _G.loaded(path)
	if modules[path] == nil then return false end
	return modules[path] == true
end

