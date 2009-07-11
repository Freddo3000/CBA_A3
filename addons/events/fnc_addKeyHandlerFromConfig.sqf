/* ----------------------------------------------------------------------------
Function: CBA_fnc_addKeyHandlerFromConfig
---------------------------------------------------------------------------- */
#include "script_component.hpp"
SCRIPT(addKeyHandlerFromConfig);

private ["_key"];
PARAMS_3(_component,_action,_code);

_key = [_component, _action] call CBA_fnc_readKeyFromConfig;
if (_key select 0 > -1) exitWith
{
	 [_key select 0, _key select 1, _code] call CBA_fnc_addKeyHandler;
	 true
};

false
