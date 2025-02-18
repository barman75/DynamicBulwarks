//Script no longer in use

//params ["_buildObject", "_player", "_actionId", "_arguments"];
_buildObject = _this select 0; // is actually player because action was added to player not the object they are carrying
_player = _this select 1;
_actionID = _this select 2;

mainZeus addCuratorEditableObjects [[shopVehic], true];
PLAYER_OBJECT_LIST pushBack shopVehic;
hint "True";

detach shopVehic;
{[shopVehic, _x] remoteExec ["enableCollisionWith", 0];} forEach playableUnits;
_player removeAction _actionId; // dropActID may need to be _player
shopVehic setVehiclePosition [shopVehic, [], 0, "CAN_COLLIDE"];

[shopVehic, ["<t color='#ff0000'>" + localize "STR_ACTION_REMOVEOBJECT", "deleteVehicle (_this select 0)","",1,false,false,"true","true",5]] remoteExec ["addAction", 0];

[shopVehic, ["<t color='#00ffff'>" + localize "STR_ACTION_MOVEUP", "
    _shopVehicPos = getPosATL (_this select 0);
    _thisShopVehic = _this select 0;
    _thisShopVehic setPosATL [_shopVehicPos select 0, _shopVehicPos select 1, (_shopVehicPos select 2) + 0.5];
","",2,false,false,"true","true",5]] remoteExec ["addAction", 0];

[shopVehic, ["<t color='#00ff00'>" + localize "STR_ACTION_MOVEDOWN", "
    _shopVehicPos = getPosATL (_this select 0);
    _thisShopVehic = _this select 0;
    _thisShopVehic setPosATL [_shopVehicPos select 0, _shopVehicPos select 1, (_shopVehicPos select 2) - 0.5];
","",2,false,false,"true","true",5]] remoteExec ["addAction", 0];

//check if players within 5m 2D
[shopVehic, ["<t color='#ffffff'>" + localize "STR_ACTION_PICKUP", "
    thisHeldVehic = _this select 3 select 0;
    _player = _this select 1;
    _playerArr = [_player];
    _allPlayers = playableUnits - _playerArr;
    _closestPlayerDist = 9999;
    {
      _playerDistance = thisHeldVehic distance2d _x;
      if ((_playerDistance < _closestPlayerDist)) then {
        _closestPlayerDist = _playerDistance;
      };
    } forEach _allPlayers;
    if (_closestPlayerDist > 5) then {
      thisHeldVehic attachTo [_player, [0,3,0.02], 'Pelvis'];
      {[thisHeldVehic, _x] remoteExec ['disableCollisionWith', 0];} forEach playableUnits;
      _player addAction ['<t color=''#00ffff''>' + localize 'STR_ACTION_PLACEOBJECT', '
          _thisPlacedVehic = _this select 3 select 0;
          _player = _this select 1;
          _actionId = _this select 2;
          detach _thisPlacedVehic;
          {[_thisPlacedVehic, _x] remoteExec [''enableCollisionWith'', 0];} forEach playableUnits;
          _player removeAction _actionId;
          _thisPlacedVehic setVehiclePosition [_thisPlacedVehic , [], 0, ''CAN_COLLIDE''];
      ', [thisHeldVehic]];
    } else {
      [localize 'STR_HELDBUILDOBJECT_WARNING', 0, 0.1, 2, 1] remoteExec ['BIS_fnc_dynamicText', _player];
    };
", [shopVehic],2,false,false,"true","true",5]] remoteExec ["addAction", 0];
