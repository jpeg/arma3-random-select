scriptName "fn_randomSelectNear";
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
private ["_side", "_near"];

_side = side _unit;
_near = [];

{
    if (side _x == _side && isPlayer _x) then
    {
        _near = _near + [_x];
    };
} forEach (_unit nearEntities ["Man", 20]) - [_unit];

{
    {
        if (side _x == _side && isPlayer _x) then
        {
            _near = _near + [_x];
        };
    } forEach crew _x;
} forEach (_unit nearEntities [["LandVehicle", "Air"], 20]) - [_unit];

[_unit, _near] call lex_fnc_randomSelect;
