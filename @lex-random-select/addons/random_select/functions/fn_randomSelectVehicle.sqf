scriptName "fn_randomSelectVehicle";
/*
    Author: lexnil

    Description:
    Select a random unit from units side that is within 20 meters and notify they've been assigned a specified task/role.

    Parameter(s):
    0 : Unit - Player

    Returns:
    None
*/

params ["_unit"];
private ["_crew"];

_side = side _unit;
_crew = [];
{
    if (side _x == _side && isPlayer _x) then
    {
        _crew = _crew + [_x];
    };
} forEach (crew vehicle _unit) - [_unit];

if (count _crew > 0) then
{
    [_unit, _crew] call lex_fnc_taskDialog;
}
else
{
    hintSilent "No one to select";
};
