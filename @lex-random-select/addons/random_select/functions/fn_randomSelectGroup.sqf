scriptName "fn_randomSelectGroup";
/*
    Author: lexnil

    Description:
    Select a member of unit's group and notify they've been assigned a specified task/role.

    Parameter(s):
    0 : Unit - Player

    Returns:
    None
*/

params ["_unit"];
private ["_group"];

_group = [];
{
    if (isPlayer _x) then
    {
        _group = _group + [_x];
    };
} forEach (units group _unit) - [_unit];

[_unit, _group] call lex_fnc_taskDialog;
