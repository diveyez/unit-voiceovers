goko_fnc_in_flashnade = 
{
	params ["_shooter","_weapon", "_muzzle", "_mode", "_ammo", "_magazine"];
	
	if (hasinterface && !goko_vo_playeronoffswitch || goko_var_cltalking) exitWith {};
	if !(_magazine in ["ACE_M84", "rhs_mag_fakel", "rhs_mag_fakels", "rhs_mag_zarya2", "rhs_mag_plamyam", "rhs_mag_mk84", "rhs_mag_m7a3_cs"]) exitWith {};
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
	[_shooter] remoteExecCall ["goko_fnc_movelips"];
};

goko_fnc_in_incgren = 
{
	params ["_shooter","_weapon", "_muzzle", "_mode", "_ammo", "_magazine"];
	
	if (hasinterface && !goko_vo_playeronoffswitch || goko_var_cltalking) exitWith {};
	if !(_magazine in ["ACE_M14", "rhs_mag_mk3a2", "rhs_mag_an_m14_th3"]) exitWith {};
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
	[_shooter] remoteExecCall ["goko_fnc_movelips"];
};

goko_fnc_Inexplosvfx = 
{
	params ["_shooter","_weapon", "_muzzle", "_mode", "_ammo", "_magazine"];
	
	if (hasinterface && !goko_vo_playeronoffswitch || goko_var_cltalking) exitWith {};
	if !(_magazine in ["rhsgref_mag_rkg3em", "rhsusf_m112_mag", "rhsusf_m112x4_mag", "rhsusf_mine_m14_mag", "rhs_mine_M19_mag", "rhssaf_mine_mrud_c_mag", "rhssaf_mine_mrud_a_mag", "rhssaf_mine_mrud_b_mag", "rhssaf_mine_mrud_d_mag", "rhs_mag_mine_pfm1", "rhs_mine_pmn2_mag", "rhs_mag_mine_ptm1", "rhs_mine_tm62m_mag", "rhssaf_mine_tma4_mag", "rhssaf_mine_pma3_mag", "SatchelCharge_Remote_Mag", "DemoCharge_Remote_Mag", "ATMine_Range_Mag", "APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag", "SLAMDirectionalMine_Wire_Mag", "APERSTripMine_Wire_Mag", "ClaymoreDirectionalMine_Remote_Mag", "IEDUrbanBig_Remote_Mag", "IEDLandBig_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "IEDLandSmall_Remote_Mag"]) exitWith {};
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
	[_shooter] remoteExecCall ["goko_fnc_movelips"];
};

goko_fnc_Infragfx = 
{
	params ["_shooter","_weapon", "_muzzle", "_mode", "_ammo", "_magazine"];
	
	if (hasinterface && !goko_vo_playeronoffswitch || goko_var_cltalking) exitWith {};
	if !(_magazine in ["HandGrenade", "MiniGrenade", "rhs_mag_rgd5", "rhs_mag_rgn", "rhs_mag_rgo", "rhs_mag_f1", "rhs_mag_m67", "rhs_mag_m69"]) exitWith {};
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
	[_shooter] remoteExecCall ["goko_fnc_movelips"];
	
	_null = _this spawn 
	{ 
		_frag = _this select 6; 
		waitUntil 
		{
			_mspeed = velocity _frag select 2; 

			sleep 0.7;
			if (_mspeed < 0.0001) exitWith {true};
		};
		
		_findnearby = _frag nearEntities [["soldierwb", "soldiereb"], 16];
		if (isnil {_findnearby # 0}) exitwith{};
		_nearby = selectRandom _findnearby; 
		_cansee = [objNull, "ifire"] checkVisibility [getposasl _frag, eyePos _nearby];

		
		if (_cansee != 0) then
		{
			if (_nearby iskindof "soldierwb") then 
			{
				_bspottedfrag = ["Bspotnade01", "Bspotnade02", "Bspotnade03", "Bspotnade04", "Bspotnade05", "Bspotnade06", "Bspotnade07", "Bspotnade08", "Bspotnade09", "Bspotnade10", "Bspotnade11", "Bspotnade12", "Bspotnade13", "Bspotnade14", "Bspotnade15", "Bspotnade16", "Bspotnade17", "Bspotnade18", "Bspotnade19", "Bspotnade20"];
				_bfrag = selectRandom _bspottedfrag;

				[_nearby, [_bfrag, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
			};
			
			if (_nearby iskindof "soldiereb") then 
			{
				_ospottedfrag = ["ospotnade01", "ospotnade02", "ospotnade03", "ospotnade04", "ospotnade05", "ospotnade06", "ospotnade07", "ospotnade08", "ospotnade09", "ospotnade10", "ospotnade11", "ospotnade12", "ospotnade13", "ospotnade14", "ospotnade15", "ospotnade16", "ospotnade17", "ospotnade18", "ospotnade19", "ospotnade20", "ospotnade21", "ospotnade22", "ospotnade23"];
				_ofrag = selectRandom _ospottedfrag;

				[_nearby, [_ofrag, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
			};
		};
	};
};

goko_fnc_Insmokefx = {
	params ["_shooter","_weapon", "_muzzle", "_mode", "_ammo", "_magazine"];
	
	if (hasinterface && !goko_vo_playeronoffswitch || goko_var_cltalking) exitWith {};
	if !(_magazine in ["SmokeShellOrange", "SmokeShellBlue", "SmokeShellPurple", "SmokeShellYellow", "SmokeShellGreen", "SmokeShellRed", "SmokeShell", "rhs_mag_rdg2_white", "rhs_mag_rdg2_black", "rhs_mag_nspd", "rhs_mag_an_m8hc", "rhs_mag_m18_green", "rhs_mag_m18_red", "rhs_mag_m18_yellow", "rhs_mag_m18_purple"]) exitWith {};
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
	[_shooter] remoteExecCall ["goko_fnc_movelips"];
};

goko_fnc_Inreloadedfx = 
{
	params ["_unit", "_weapon", "_muzzle", "_newmag", "_oldmag"];
	
	if ((hasinterface && !goko_vo_playeronoffswitch) || _weapon != _muzzle || !isnil "ace_arsenal_camera" || !isnil "RSCDisplayArsenal") exitWith {}; 
	if !(isNil (_unit getVariable "Achilles_var_suppressiveFire_ready") && (_unit getVariable "Achilles_var_suppressiveFire_ready")) exitWith {}; 
	
	private _countMagz = {
	_x == currentMagazine _unit
	}count (magazines _unit);
	
	if (_countMagz > 0) then 
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
			
			waituntil 
			{
				if (!IsPlayer _duder || inputaction "reloadmagazine" > 0) exitwith {true};
			};
			
			_checkMagIDs = if (currentMagazineDetail _duder isEqualTo "") then {""} else  
			{currentMagazineDetail _duder splitString "[]:/" select 4};  
			if (_storeMagID != _checkMagIDs) exitWith {};
			
			_rsound = selectRandom _rsounds;
			[_duder, [_rsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D"]; 
			[_duder] remoteExecCall ["goko_fnc_movelips"];
			
			waitUntil
			{
				sleep 2 + random 3;
				true;
			};
			
			if (round (random 100) < goko_randomizeindi) then
			{
				_indisels = _duder nearEntities [["soldiergb"], 30]; 
				_indisels deleteat 0; 
				if (isnil {_indisels # 0}) exitwith {};
				_indisele = selectRandom _indisels; 
			
				_Incoverus = ["Incover01", "Incover02", "Incover03", "Incover04", "Incover05", "Incover06", "Incover07", "Incover08", "Incover09", "Incover10", "Incover11", "Incover12", "Incover13", "Incover14", "Incover15", "Incover16", "Incover17", "Incover18", "Incover19", "Incover20", "Incover21", "Incover22", "Incover23"];
				_Incoveru = selectRandom _Incoverus;
				[_indisele, [_Incoveru, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
			};
		};
		
	} else
	{
		if (currentweapon _unit != secondaryweapon _unit) then
		{
			_lowsounds = ["inlowammo01", "inlowammo02", "inlowammo03", "inlowammo04", "inlowammo05", "inlowammo06"];
			_lowsound = selectRandom _lowsounds;
			[_unit, [_lowsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D"];
			[_unit] remoteExecCall ["goko_fnc_movelips"];
		} else
		{
			_indisels = _duder nearEntities [["soldiergb"], 30]; 
			_indisels deleteat 0; 
			if (isnil {_indisels # 0}) exitwith {};
			_indisele = selectRandom _indisels; 

			_incoverusrpg = ["Incover01", "Incover02", "Incover03", "Incover04", "Incover05", "Incover06", "Incover07", "Incover08", "Incover09", "Incover10", "Incover12", "Incover14"];
			_incoverurpg = selectrandom _incoverusrpg;
			[_indisele, [_incoverurpg, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
			[_indisele] remoteExecCall ["goko_fnc_movelips"];
		};
	};
};

goko_fnc_indeCallDir =   
{ 
	params ["_unit"]; 
	_cTar = cursortarget;
	_knowabouts = _unit knowsabout _cTar; 
	if (_unit == player && _knowabouts > 0 && _cTar iskindof "MAN" && alive _cTar) then 
	{ 
 		if (side _unit != side _cTar) then 
		{ 
			_azimuth = getDir _unit; 
			_direction = lolo; 
			switch (true) do 
			{ 
				case (_azimuth >= 337.5 ) : {_direction = "N" }; 
				case (_azimuth >= 22.5 and _azimuth < 67.5) : {_direction = "NE" }; 
				case (_azimuth >= 67.5 and _azimuth < 112.5) : {_direction = "E"; }; 
				case (_azimuth >= 112.5 and _azimuth < 157.5) : {_direction = "SE" }; 
				case (_azimuth >= 157.5 and _azimuth < 202.5) : {_direction = "S" }; 
				case (_azimuth >= 202.5 and _azimuth < 247.5) : {_direction = "SW" }; 
				case (_azimuth >= 247.5 and _azimuth < 292.5) : {_direction = "W" }; 
				case (_azimuth >= 292.5 and _azimuth < 337.5) : {_direction = "NW" }; 
			}; 

			if (_direction == "N") then 
			{
				_dirsounds = ["Inenemynorth01", "Inenemynorth02", "Inenemynorth03"]; 
				_dirsound = selectRandom _dirsounds; 
				[_unit, [_dirsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0]; 
				[_unit] remoteExecCall ["goko_fnc_movelips"]; 
			}; 

			if (_direction == "NE") then 
			{ 
				_dirsounds = ["InenemyNE01", "InenemyNE02", "InenemyNE03"]; 
				_dirsound = selectRandom _dirsounds; 
				[_unit, [_dirsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0]; 
				[_unit] remoteExecCall ["goko_fnc_movelips"]; 
			}; 

			if (_direction == "E") then 
			{ 
				_dirsounds = ["Inenemyeast01", "Inenemyeast02", "Inenemyeast03"]; 
				_dirsound = selectRandom _dirsounds; 
				[_unit, [_dirsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0]; 
				[_unit] remoteExecCall ["goko_fnc_movelips"]; 
			}; 

			if (_direction == "SE") then 
			{ 
				_dirsounds = ["InenemySE01", "InenemySE02", "InenemySE03"]; 
				_dirsound = selectRandom _dirsounds; 
				[_unit, [_dirsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0]; 
				[_unit] remoteExecCall ["goko_fnc_movelips"]; 
			}; 

			if (_direction == "S") then 
			{ 
				_dirsounds = ["Inenemysouth01", "Inenemysouth02", "Inenemysouth03"]; 
				_dirsound = selectRandom _dirsounds; 
				[_unit, [_dirsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0]; 
				[_unit] remoteExecCall ["goko_fnc_movelips"]; 
			}; 

			if (_direction == "SW") then 
			{ 
				_dirsounds = ["InenemySW01", "InenemySW02", "InenemySW03"]; 
				_dirsound = selectRandom _dirsounds; 
				[_unit, [_dirsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0]; 
				[_unit] remoteExecCall ["goko_fnc_movelips"]; 

			}; 

			if (_direction == "W") then 
			{ 
				_dirsounds = ["Inenemywest01", "Inenemywest02", "Inenemywest03"]; 
				_dirsound = selectRandom _dirsounds; 
				[_unit, [_dirsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0]; 
				[_unit] remoteExecCall ["goko_fnc_movelips"]; 

			}; 

			if (_direction == "NW") then 
			{ 
				_dirsounds = ["InenemyNW01", "InenemyNW02", "InenemyNW03"]; 
				_dirsound = selectRandom _dirsounds; 
				[_unit, [_dirsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0]; 
				[_unit] remoteExecCall ["goko_fnc_movelips"]; 

			}; 
		}; 
	}; 
}; 