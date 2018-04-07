goko_omandownchance = 67;

goko_fnc_odmgwoundsys = 
{
	params ["_victim", "_causedBy", "_damage", "_shooter"];

	if (_damage < 0.16) exitWith {};
	if (side _shooter == east) then 
	{
		_fsounds = ["owatchfire01", "owatchfire02", "owatchfire03", "owatchfire04", "owatchfire05", "owatchfire06", "owatchfire07", "owatchfire08","owatchfire09", "owatchfire10", "owatchfire11"];
		_fsound = selectRandom _fsounds;
		[_victim, [_fsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
	};
	if (_damage < 0.2) exitWith {};
	
	private _wsounds = ["owounded01", "owounded02", "owounded03", "owounded04", "owounded05", "owounded06", "owounded07", "owounded08", "owounded09", "owounded10", "owounded11", "owounded12", "owounded13", "owounded14", "owounded15", "owounded16", "owounded17", "owounded18", "owounded19", "owounded20", "owounded21", "owounded22", "owounded23", "owounded24", "owounded25", "owounded26", "owounded27", "owounded28", "owounded29", "owounded30", "owounded31", "owounded32", "owounded33", "owounded34", "owounded35", "owounded36", "owounded37", "owounded38", "owounded39", "owounded40", "owounded41", "owounded42", "owounded43", "owounded44", "owounded45", "owounded46", "owounded47", "owounded48", "owounded49", "owounded50", "owounded51", "owounded52", "owounded53", "owounded54", "owounded55", "owounded56", "owounded57", "owounded58", "owounded59"];
	_wsound = selectRandom _wsounds;
	[_victim, [_wsound, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
};

goko_fnc_odeath =
{
	params ["_unit", "_shooter", "_killer"];
	
	private _meters = round (_unit distance _killer);
	private _deathsArray = 
	[
		"goko_uVO\sounds\pl_deathshout_01.wav",
		"goko_uVO\sounds\pl_deathshout_02.wav",
		"goko_uVO\sounds\pl_deathshout_03.wav",
		"goko_uVO\sounds\pl_deathshout_04.wav",
		"goko_uVO\sounds\pl_deathshout_05.wav",
		"goko_uVO\sounds\pl_deathshout_06.wav",
		"goko_uVO\sounds\pl_deathshout_07.wav",
		"goko_uVO\sounds\pl_deathshout_08.wav",
		"goko_uVO\sounds\pl_deathshout_09.wav",
		"goko_uVO\sounds\pl_deathshout_10.wav",
		"goko_uVO\sounds\pl_deathshout_11.wav",
		"goko_uVO\sounds\pl_deathshout_12.wav",
		"goko_uVO\sounds\pl_deathshout_13.wav",
		"goko_uVO\sounds\pl_deathshout_14.wav",
		"goko_uVO\sounds\pl_deathshout_15.wav",
		"goko_uVO\sounds\pl_deathshout_16.wav",
		"goko_uVO\sounds\pl_deathshout_17.wav",
		"goko_uVO\sounds\pl_deathshout_18.wav",
		"goko_uVO\sounds\pl_deathshout_19.wav",
		"goko_uVO\sounds\pl_deathshout_20.wav",
		"goko_uVO\sounds\pl_deathshout_21.wav",
		"goko_uVO\sounds\pl_deathshout_22.wav",
		"goko_uVO\sounds\pl_deathshout_23.wav",
		"goko_uVO\sounds\pl_deathshout_24.wav",
		"goko_uVO\sounds\pl_deathshout_25.wav",
		"goko_uVO\sounds\pl_deathshout_26.wav",
		"goko_uVO\sounds\pl_deathshout_27.wav",
		"goko_uVO\sounds\pl_deathshout_28.wav",
		"goko_uVO\sounds\pl_deathshout_29.wav",
		"goko_uVO\sounds\pl_deathshout_30.wav",
		"goko_uVO\sounds\pl_deathshout_31.wav",
		"goko_uVO\sounds\pl_deathshout_32.wav",
		"goko_uVO\sounds\pl_deathshout_33.wav",
		"goko_uVO\sounds\pl_deathshout_34.wav",
		"goko_uVO\sounds\pl_deathshout_35.wav",
		"goko_uVO\sounds\pl_deathshout_36.wav",
		"goko_uVO\sounds\pl_deathshout_37.wav",
		"goko_uVO\sounds\pl_deathshout_38.wav",
		"goko_uVO\sounds\pl_deathshout_39.wav",
		"goko_uVO\sounds\pl_deathshout_40.wav",
		"goko_uVO\sounds\pl_deathshout_41.wav",
		"goko_uVO\sounds\pl_deathshout_42.wav",
		"goko_uVO\sounds\pl_deathshout_43.wav",
		"goko_uVO\sounds\pl_deathshout_44.wav",
		"goko_uVO\sounds\pl_deathshout_45.wav",
		"goko_uVO\sounds\pl_deathshout_46.wav",
		"goko_uVO\sounds\pl_deathshout_47.wav",
		"goko_uVO\sounds\pl_deathshout_48.wav",
		"goko_uVO\sounds\pl_deathshout_49.wav"
	];
	
	_deathsound = selectRandom _deathsArray;
	playsound3d [format ["%1",_deathsound], _unit, false, getPosASL _unit, goko_vo_deathshouts_volume, 1, goko_vo_deathshouts_diameter];
	
	if (round (random 100) < goko_omandownchance) then 
	{
		private _abow = nearestObjects [_unit, ["O_Soldier_base_F"], 50] - [_unit]; 
		_obara = selectRandom _abow; 
		
		private _subdowns = ["osubdown01", "osubdown02", "osubdown03", "osubdown04", "osubdown05", "osubdown06", "osubdown07", "osubdown08", "osubdown09", "osubdown10", "osubdown11", "osubdown12", "osubdown13", "osubdown14", "osubdown15", "osubdown16", "osubdown17", "osubdown18", "osubdown19", "osubdown20", "osubdown21", "osubdown22", "osubdown23", "osubdown24", "osubdown25", "osubdown26", "osubdown27"];
		_subdown = selectRandom _subdowns;
		[_obara, [_subdown, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
	};
	if (round (random 100) > goko_vo_killconfirmratio) exitWith {};
	
	if (side _killer == west) then 
	{
		private _btargetdowns = ["btarget01", "btarget02", "btarget03", "btarget04", "btarget05", "btarget06", "btarget07", "btarget08", "btarget09", "btarget10"];
		_btargetdown = selectRandom _btargetdowns;
			
		private _suppbtargetdowns = ["bsupptarget01", "bsupptarget02", "bsupptarget03", "bsupptarget04", "bsupptarget05", "bsupptarget06", "bsupptarget07", "bsupptarget08", "bsupptarget09", "bsupptarget10", "bsupptarget11", "bsupptarget12", "bsupptarget13"];
		_suppbtargetdown = selectRandom _suppbtargetdowns;
			
		if (_meters > 100) then 
		{
			[_killer, [_btargetdown, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
		} else 
		{
			[_killer, [_suppbtargetdown, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
		};
	};
	
	if (side _killer == independent) then 
	{
		_intargetdowns = ["intarget01", "intarget02", "intarget03", "intarget04", "intarget05", "intarget06", "intarget07", "intarget08", "intarget09", "intarget10"];
		_intargetdown = selectRandom _intargetdowns;
			
		_suppintargetdowns = ["insupptarget01", "insupptarget02", "insupptarget03", "insupptarget04", "insupptarget05", "insupptarget06", "insupptarget07", "insupptarget08", "insupptarget09", "insupptarget10"];
		_suppintargetdown = selectRandom _suppintargetdowns;
			
		if (_meters > 100) then 
		{
			[_killer, [_intargetdown, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
		} else 
		{
			[_killer, [_suppintargetdown, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
		};
	};
};

goko_fnc_odeath_ace3 =
{
	params ["_unit"];
	
	_killer = _unit getVariable "ace_medical_lastDamageSource";
	
	private _meters = round (_unit distance _killer);
	private _deathsArray = 
	[
		"goko_uVO\sounds\pl_deathshout_01.wav",
		"goko_uVO\sounds\pl_deathshout_02.wav",
		"goko_uVO\sounds\pl_deathshout_03.wav",
		"goko_uVO\sounds\pl_deathshout_04.wav",
		"goko_uVO\sounds\pl_deathshout_05.wav",
		"goko_uVO\sounds\pl_deathshout_06.wav",
		"goko_uVO\sounds\pl_deathshout_07.wav",
		"goko_uVO\sounds\pl_deathshout_08.wav",
		"goko_uVO\sounds\pl_deathshout_09.wav",
		"goko_uVO\sounds\pl_deathshout_10.wav",
		"goko_uVO\sounds\pl_deathshout_11.wav",
		"goko_uVO\sounds\pl_deathshout_12.wav",
		"goko_uVO\sounds\pl_deathshout_13.wav",
		"goko_uVO\sounds\pl_deathshout_14.wav",
		"goko_uVO\sounds\pl_deathshout_15.wav",
		"goko_uVO\sounds\pl_deathshout_16.wav",
		"goko_uVO\sounds\pl_deathshout_17.wav",
		"goko_uVO\sounds\pl_deathshout_18.wav",
		"goko_uVO\sounds\pl_deathshout_19.wav",
		"goko_uVO\sounds\pl_deathshout_20.wav",
		"goko_uVO\sounds\pl_deathshout_21.wav",
		"goko_uVO\sounds\pl_deathshout_22.wav",
		"goko_uVO\sounds\pl_deathshout_23.wav",
		"goko_uVO\sounds\pl_deathshout_24.wav",
		"goko_uVO\sounds\pl_deathshout_25.wav",
		"goko_uVO\sounds\pl_deathshout_26.wav",
		"goko_uVO\sounds\pl_deathshout_27.wav",
		"goko_uVO\sounds\pl_deathshout_28.wav",
		"goko_uVO\sounds\pl_deathshout_29.wav",
		"goko_uVO\sounds\pl_deathshout_30.wav",
		"goko_uVO\sounds\pl_deathshout_31.wav",
		"goko_uVO\sounds\pl_deathshout_32.wav",
		"goko_uVO\sounds\pl_deathshout_33.wav",
		"goko_uVO\sounds\pl_deathshout_34.wav",
		"goko_uVO\sounds\pl_deathshout_35.wav",
		"goko_uVO\sounds\pl_deathshout_36.wav",
		"goko_uVO\sounds\pl_deathshout_37.wav",
		"goko_uVO\sounds\pl_deathshout_38.wav",
		"goko_uVO\sounds\pl_deathshout_39.wav",
		"goko_uVO\sounds\pl_deathshout_40.wav",
		"goko_uVO\sounds\pl_deathshout_41.wav",
		"goko_uVO\sounds\pl_deathshout_42.wav",
		"goko_uVO\sounds\pl_deathshout_43.wav",
		"goko_uVO\sounds\pl_deathshout_44.wav",
		"goko_uVO\sounds\pl_deathshout_45.wav",
		"goko_uVO\sounds\pl_deathshout_46.wav",
		"goko_uVO\sounds\pl_deathshout_47.wav",
		"goko_uVO\sounds\pl_deathshout_48.wav",
		"goko_uVO\sounds\pl_deathshout_49.wav"
	];
	
	_deathsound = selectRandom _deathsArray;
	playsound3d [format ["%1",_deathsound], _unit, false, getPosASL _unit, goko_vo_deathshouts_volume, 1, goko_vo_deathshouts_diameter];
	
	if (round (random 100) < goko_omandownchance) then 
	{
		private _abow = nearestObjects [_unit, ["O_Soldier_base_F"], 50] - [_unit]; 
		_obara = selectRandom _abow; 
		
		private _subdowns = ["osubdown01", "osubdown02", "osubdown03", "osubdown04", "osubdown05", "osubdown06", "osubdown07", "osubdown08", "osubdown09", "osubdown10", "osubdown11", "osubdown12", "osubdown13", "osubdown14", "osubdown15", "osubdown16", "osubdown17", "osubdown18", "osubdown19", "osubdown20", "osubdown21", "osubdown22", "osubdown23", "osubdown24", "osubdown25", "osubdown26", "osubdown27"];
		_subdown = selectRandom _subdowns;
		[_obara, [_subdown, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
	};
	if (round (random 100) > goko_vo_killconfirmratio) exitWith {};
	
	if (side _killer == west) then 
	{
		private _btargetdowns = ["btarget01", "btarget02", "btarget03", "btarget04", "btarget05", "btarget06", "btarget07", "btarget08", "btarget09", "btarget10"];
		_btargetdown = selectRandom _btargetdowns;
			
		private _suppbtargetdowns = ["bsupptarget01", "bsupptarget02", "bsupptarget03", "bsupptarget04", "bsupptarget05", "bsupptarget06", "bsupptarget07", "bsupptarget08", "bsupptarget09", "bsupptarget10", "bsupptarget11", "bsupptarget12", "bsupptarget13"];
		_suppbtargetdown = selectRandom _suppbtargetdowns;
			
		if (_meters > 100) then 
		{
			[_killer, [_btargetdown, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
		} else 
		{
			[_killer, [_suppbtargetdown, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
		};
	};
	
	if (side _killer == independent) then 
	{
		_intargetdowns = ["intarget01", "intarget02", "intarget03", "intarget04", "intarget05", "intarget06", "intarget07", "intarget08", "intarget09", "intarget10"];
		_intargetdown = selectRandom _intargetdowns;
			
		_suppintargetdowns = ["insupptarget01", "insupptarget02", "insupptarget03", "insupptarget04", "insupptarget05", "insupptarget06", "insupptarget07", "insupptarget08", "insupptarget09", "insupptarget10"];
		_suppintargetdown = selectRandom _suppintargetdowns;
			
		if (_meters > 100) then 
		{
			[_killer, [_intargetdown, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
		} else 
		{
			[_killer, [_suppintargetdown, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];
		};
	};
};
