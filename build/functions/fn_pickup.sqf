_object = _this select 0;
_caller = _this select 1;
_pos = _this select 2;

_playerArr = [_caller];
_allPlayers = playableUnits - _playerArr;
_closestPlayerDist = 9999;

{
	_playerDistance = _object distance2d _x;
	if ((_playerDistance < _closestPlayerDist)) then {
	  _closestPlayerDist = _playerDistance;
	};
} forEach _allPlayers;

if (!(player getVariable "buildItemHeld")) then {

if (_closestPlayerDist > 5) then {

		if (isNil "_pos") then {
			[_object, _caller] call BIS_fnc_attachToRelative ;
		} else {
			_object attachTo [_caller, _pos, "Pelvis"];
			_playerDir = _caller getRelDir _object;
			_dir = _this select 3;
			_holdDir = _playerDir + _dir;
			_object setdir _holdDir;
		};

		{
			[_object, _x] remoteExec ["disableCollisionWith", 0];
		} forEach playableUnits;

		[_object] remoteExec ["removeAllActions", 0];

		_caller addAction [
			localize "STR_FNPICKUP_ACTION_PLACEGROUND",
			'[_this select 3, _this select 1, _this select 2] call build_fnc_drop;',
			_object
		];

		_caller addAction [
			localize "STR_FNPICKUP_ACTION_PLACEFLOAT",
			'[_this select 3, _this select 1, _this select 2] call build_fnc_place;',
			_object
		];

		 _caller setVariable ["buildItemHeld", true, true];
		 _object setVariable ["buildItemHeld", true, true];

	} else {

		[format [localize "STR_FNPICKUP_PLAYERSCLOSE"], -0, -0.02, 2, 0.1] call BIS_fnc_dynamicText;

	};
} else {

	[format [localize "STR_FNPICKUP_CARRYING"], -0, -0.02, 2, 0.1] call BIS_fnc_dynamicText;

};
