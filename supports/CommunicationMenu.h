class paraDrop
{
    text = "$STR_COMMUNICATIONMENU_PARADROP";
    submenu = "";
    expression = "[_this select 0, _this select 1, 'paraTroop', 'B_T_VTOL_01_vehicle_F'] remoteExec ['killPoints_fnc_support', 2];";
    icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\attack_ca.paa";
    cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa";
    enable = "1";
    removeAfterExpressionCall = 1;
};

class reconUAV
{
    text = "$STR_COMMUNICATIONMENU_RECONUAV";
    submenu = "";
    expression = "[_this select 0, _this select 1, 'reconUAV', 'B_UAV_01_F'] remoteExec ['killPoints_fnc_support', 2];";
    icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\defend_ca.paa";
    cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa";
    enable = "1";
    removeAfterExpressionCall = 1;
};

class airStrike
{
    text = "$STR_COMMUNICATIONMENU_AIRSTRIKE";
    submenu = "";
    expression = "[_this select 0, _this select 1, 'airStrike', 'B_Plane_CAS_01_DynamicLoadout_F'] remoteExec ['killPoints_fnc_support', 2];";
    icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\cas_ca.paa";
    cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa";
    enable = "1";
    removeAfterExpressionCall = 1;
};

class ragePack
{
    text = "$STR_COMMUNICATIONMENU_RAGEPACK";
    submenu = "";
    expression = "[_this select 0, _this select 1, 'ragePack'] remoteExec ['killPoints_fnc_support', 2];";
    icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\transport_ca.paa";
    cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa";
    enable = "1";
    removeAfterExpressionCall = 1;
};

class armaKart
{
    text = "$STR_COMMUNICATIONMENU_ARMAKART";
    submenu = "";
    expression = "[_this select 0, _this select 1, 'armaKart'] remoteExec ['killPoints_fnc_support', 2];";
    icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\transport_ca.paa";
    cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa";
    enable = "1";
    removeAfterExpressionCall = 1;
};

class mindConGas
{
    text = "$STR_COMMUNICATIONMENU_MINDCONGAS";
    submenu = "";
    expression = "[_this select 0, _this select 1, 'mindConGas'] remoteExec ['killPoints_fnc_support', 2];";
    icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\call_ca.paa";
    cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa";
    enable = "1";
    removeAfterExpressionCall = 1;
};

class droneControl
{
    text = "$STR_COMMUNICATIONMENU_DRONECONTROL";
    submenu = "";
    expression = "[_this select 0, _this select 1, 'droneControl'] remoteExec ['killPoints_fnc_support', 2];";
    icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\cas_ca.paa";
    cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa";
    enable = "1";
    removeAfterExpressionCall = 1;
};

class mineField
{
    text = "$STR_COMMUNICATIONMENU_MINEFIELD";
    submenu = "";
    expression = "[_this select 0, _this select 1, 'mineField'] remoteExec ['killPoints_fnc_support', 2];";
    icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\Artillery_ca.paa";
    cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa";
    enable = "1";
    removeAfterExpressionCall = 1;
};

class telePlode
{
    text = "$STR_COMMUNICATIONMENU_TELEPLODE";
    submenu = "";
    expression = "[_this select 0, _this select 1,'telePlode'] remoteExec ['killPoints_fnc_support', 2];";
    icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\transport_ca.paa";
    cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa";
    enable = "1";
    removeAfterExpressionCall = 1;
};
