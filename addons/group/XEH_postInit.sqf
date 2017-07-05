#include "script_component.hpp"

if (!hasInterface) exitWith {};

EXIT_IF_NOT_ARCMF;

["group", "groupname"] call CFUNC(registerChatCommand);
["group", "groupcolor"] call CFUNC(registerChatCommand);

private _faction = [playerSide] call CFUNC(getFaction);
private _groupEnabled = [format ["markers.%1.enableGroupMarkers", _faction], true] call CFUNC(configOption);

if (_groupEnabled) then {
    [FUNC(updateGroupMarkers), 1, []] call CBA_fnc_addPerFrameHandler;
    [FUNC(updateFireteamMarkers), 1, []] call CBA_fnc_addPerFrameHandler;
};