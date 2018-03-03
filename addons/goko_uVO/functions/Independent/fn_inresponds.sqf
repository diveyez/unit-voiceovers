goko_fnc_in_acem84 = 
{
	params ["_shooter","_weapon", "_muzzle", "_mode", "_ammo", "_magazine"];
	
	if (hasinterface && !goko_vo_playeronoffswitch) exitWith {};
	if !(_magazine in ["ACE_M84"]) exitWith {};
	_InAceflashsounds = 
	[
		"inflash01",
		"inflash02",
		"inflash03",
		"inflash04",
		"inflash05",
		"inflash06",
		"inflash07"
	];
	_InAceflashsound = selectRandom _InAceflashsounds;
	[_shooter, [_InAceflashsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
};

goko_fnc_in_aceM14 = 
{
	params ["_shooter","_weapon", "_muzzle", "_mode", "_ammo", "_magazine"];
	
	if (hasinterface && !goko_vo_playeronoffswitch) exitWith {};
	if !(_magazine in ["ACE_M14"]) exitWith {};
	_Inaceincendierysounds = 
	[
		"InIncgren01", 
		"InIncgren02", 
		"InIncgren03", 
		"InIncgren04", 
		"InIncgren05", 
		"InIncgren06", 
		"InIncgren07"
	];
	_Inaceincendierysound = selectRandom _Inaceincendierysounds;
	[_shooter, [_Inaceincendierysound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
};

goko_fnc_Inexplosvfx = 
{
	params ["_shooter","_weapon", "_muzzle", "_mode", "_ammo", "_magazine"];
	
	if (hasinterface && !goko_vo_playeronoffswitch) exitWith {};
	if !(_magazine in ["SatchelCharge_Remote_Mag", "DemoCharge_Remote_Mag", "ATMine_Range_Mag", "APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag", "SLAMDirectionalMine_Wire_Mag", "APERSTripMine_Wire_Mag", "ClaymoreDirectionalMine_Remote_Mag", "IEDUrbanBig_Remote_Mag", "IEDLandBig_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "IEDLandSmall_Remote_Mag"]) exitWith {};
	_plantsounds = 
	[
		"inexpls01",
		"inexpls02",
		"inexpls03",
		"inexpls04",
		"inexpls05",
		"inexpls06",
		"inexpls07",
		"inexpls08",
		"inexpls09",
		"inexpls10", 
		"inexpls11",
		"inexpls12",
		"inexpls13",
		"inexpls14"
	];
	_plantsound = selectRandom _plantsounds;
	[_shooter, [_plantsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
};

goko_fnc_Infragfx = 
{
	params ["_shooter","_weapon", "_muzzle", "_mode", "_ammo", "_magazine"];
	
	if (hasinterface && !goko_vo_playeronoffswitch) exitWith {};
	if !(_magazine in ["HandGrenade", "MiniGrenade"]) exitWith {};
	_fragsounds = 
	[
		"infrag01",
		"infrag02",
		"infrag03",
		"infrag04",
		"infrag05",
		"infrag06",
		"infrag07",
		"infrag08",
		"infrag09",
		"infrag10",
		"infrag11",
		"infrag12",
		"infrag13",
		"infrag14"
	];
	_fragsound = selectRandom _fragsounds;
	[_shooter, [_fragsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
};

goko_fnc_Insmokefx = {
	params ["_shooter","_weapon", "_muzzle", "_mode", "_ammo", "_magazine"];
	
	if (hasinterface && !goko_vo_playeronoffswitch) exitWith {};
	if !(_magazine in ["SmokeShellOrange", "SmokeShellBlue", "SmokeShellPurple", "SmokeShellYellow", "SmokeShellGreen", "SmokeShellRed", "SmokeShell"]) exitWith {};
	_smokesounds = 
	[
		"insmoke01", 
		"insmoke02", 
		"insmoke03", 
		"insmoke04", 
		"insmoke05",
		"insmoke06",
		"insmoke07",
		"insmoke08",
		"insmoke09"
	];
	_smokesound = selectRandom _smokesounds;
	[_shooter, [_smokesound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
};

goko_fnc_Inreloadedfx = 
{
	params ["_unit", "_weapon", "_muzzle", "_newmag", "_oldmag"];
	
	if (hasinterface && !goko_vo_playeronoffswitch) exitWith {};
	if !(_weapon == _muzzle ) exitWith {};

	private _countMagz = {
	_x == currentMagazine _unit
	}count (magazines _unit);
	
	if (_countMagz != 0) then 
	{
		_null = _this spawn 
		{
			_rsounds = 
			[
				"inrel01",
				"inrel02",
				"inrel03",
				"inrel04",
				"inrel05",
				"inrel06",
				"inrel07",
				"inrel08",
				"inrel09",
				"inrel10",
				"inrel11",
				"inrel12",
				"inrel13",
				"inrel14",
				"inrel15",
				"inrel16",
				"inrel17",
				"inrel18",
				"inrel19",
				"inrel20",
				"inrel21",
				"inrel22",
				"inrel23",
				"inrel24",
				"inrel25",
				"inrel26",
				"inrel27",
				"inrel28",
				"inrel29",
				"inrel30",
				"inrel31",
				"inrel32",
				"inrel33",
				"inrel34",
				"inrel35",
				"inrel36",
				"inrel37",
				"inrel38",
				"inrel39"
			];

			_duder = _this select 0;
			_dudermuzzle = _this select 2;
			private _storeMagID = if (currentMagazineDetail _duder isEqualTo "") then {""} else  
			{currentMagazineDetail _duder splitString "[]:/" select 4};  
			_chamber = 999;

			waitUntil 
			{
				sleep 1;
				_chamber = _duder ammo _dudermuzzle;
				private _checkMagIDs = if (currentMagazineDetail _duder isEqualTo "") then {""} else  
				{currentMagazineDetail _duder splitString "[]:/" select 4};  
				if (_chamber == 0 || _storeMagID != _checkMagIDs || !alive _duder) exitWith {true};
				false //<-- boolean at the end of the scope
			};
			if !(alive _duder) exitWith {};
			
			_checkMagIDs = if (currentMagazineDetail _duder isEqualTo "") then {""} else  
			{currentMagazineDetail _duder splitString "[]:/" select 4};  
			if (_storeMagID != _checkMagIDs) exitWith {};
			
			_rsound = selectRandom _rsounds;
			[_duder, [_rsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D"]; 
		};
		
	} else
	{
		_lowsounds = ["inlowammo01", "inlowammo02", "inlowammo03", "inlowammo04", "inlowammo05", "inlowammo06"];
		_lowsound = selectRandom _lowsounds;
		[_unit, [_lowsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D"];
	};
};
