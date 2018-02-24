scriptName "fn_randomSelect";
/*
    Author: lexnil

    Description:
    Select a member of given group and notify task/role assignment.

    Parameter(s):
    0 : Unit - Player
    1 : [Unit] - Selection Pool

    Returns:
    None
*/

params ["_unit", "_units"];
private ["_task", "_chosen", "_message"];

_task = call lex_fnc_inputTask;

if (!isNil _task) then 
{
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
        hintSilent _task; //"No one to select";
    };
};
