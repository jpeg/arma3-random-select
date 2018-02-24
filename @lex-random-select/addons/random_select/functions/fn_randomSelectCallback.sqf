scriptName "fn_randomSelectCallback";
/*
    Author: lexnil

    Description:
    Callback for task/role text entry box, display result to player.

    Parameter(s):
    0 : String - Task/role text

    Returns:
    None
*/

params ["_task"];
private ["_unit", "_units", "_task", "_chosen", "_message"];

_unit = lex_unitPlayer;
_units = lex_unitPool;

if (count _units > 0) then
{
    _chosen = selectRandom _units;

    _message = format ["%1 randomly selected %2 (%3)", name _unit, name _chosen, count _units];
    if (_task != "") then
    {
        _message = format ["%1: %2", _message, _task];
    };

    hint _message;
    [_message, "hint", _units, false, true] call BIS_fnc_MP;
}
else
{
    hintSilent "No one to select";
};
