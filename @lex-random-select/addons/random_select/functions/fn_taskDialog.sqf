scriptName "fn_inputTask";
/*
    Author: lexnil

    Description:
    Display task/role text entry box to player.

    Parameter(s):
    0 : Unit - Player
    1 : [Unit] - Selection Pool

    Returns:
    None
*/

params ["_unit", "_units"];
private ["_ok"];

lex_unitPlayer = _unit;
lex_unitPool = _units;
lex_taskText = nil;

_ok = createDialog "lex_taskInputDialog";
if (!_ok) then
{
    // Failed to display dialog, pick someone without task text
    lex_taskText = "";
    call lex_fnc_randomSelectCallback;
};
