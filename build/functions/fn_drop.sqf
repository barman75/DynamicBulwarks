_object = _this select 0;
_caller = _this select 1;
_action = _this select 2;

detach _object;

{
	[_object, _x] remoteExec ['enableCollisionWith', 0];
} forEach playableUnits;

[_caller] remoteExec ["removeAllActions", 0];

_object setVehiclePosition [_object, [], 0, 'CAN_COLLIDE'],

[
	_object,
	[
		localize 'STR_FNDROP_ACTION_REMOVEOBJ',
		'[_this select 0, _this select 1] call build_fnc_sell;',
		'', 1, false, false, 'true', 'true', 5
	]
] remoteExec ['addAction', 0];

[
	_object,
	[
		localize 'STR_FNDROP_ACTION_MOVEUP',
		'[_this select 0, _this select 3, _this select 1] call build_fnc_move;',
		[0,0,0.5],2,false,false,'true','true',5
	]
] remoteExec ['addAction', 0];

[
	_object,
	[
		localize 'STR_FNDROP_ACTION_MOVEDOWN',
		'[_this select 0, _this select 3, _this select 1] call build_fnc_move;',
		[0,0,-0.5],2,false,false,'true','true',5
	]
] remoteExec ['addAction', 0];

[
	_object,
	[
		localize 'STR_FNDROP_ACTION_PICKUP',
		'[_this select 0, _this select 1] call build_fnc_pickup;',
		[0,0,0.5],2,false,false,'true','true',5
	]
] remoteExec ['addAction', 0];

[
	_object,
	[
		localize 'STR_FNDROP_ACTION_RESET',
		'[_this select 0, _this select 1] call build_fnc_reset;',
		[0,0,0.5],2,false,false,'true','true',5
	]
] remoteExec ['addAction', 0];

_caller setVariable ["buildItemHeld", false, true];
_object setVariable ["buildItemHeld", false, true];
[mainZeus, [[_object], true]] remoteExec ["addCuratorEditableObjects", 0, true];
PLAYER_OBJECT_LIST pushBack _object;
sleep 0.1;
[[_object], 'bulwark\solidObject.sqf'] remoteExec ['execVM', 2];
