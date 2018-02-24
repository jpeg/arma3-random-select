scriptName "fn_randomSelectSide";
/*
    Author: lexnil

    Description:
    Select a member of unit's side and notify they've been assigned a specified task/role.

    Parameter(s):
    0 : Unit - Player

    Returns:
    None
*/

params ["_unit"];
private ["_side", "_units"];

_side = side _unit;
_units = [];
{
    if (side _x == _side && isPlayer _x) then
    {
        _units = _units + [_x];
    };
} forEach allUnits - [_unit];

if (count _units > 0) then
{
    [_unit, _units] call lex_fnc_taskDialog;
}
else
{
    hintSilent "No one to select";
};
