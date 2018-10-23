/*
	goko unit voice-overs addon global say3D with setRandomLip
	author: gökmen
	website: https://github.com/the0utsider
	description: Globally executes Say3D command if actor is not using mic or already emitting sound fx with 'setRandomLip'
	Params: Actor, sound to be played.
	
	example: [cursortarget, "Alarm"] call gokovo_fnc_globalSay3d;
*/

Params ["_actor", "_soundSample"];

isTalking = _actor getVariable ["gokovo_var_randomLip", false];

if (inputAction "pushToTalk" > 0 || isTalking ) exitWith{};

[_actor, [_soundSample, goko_vo_soundsdiameter, goko_vo_soundsamplepitch]] remoteExec ["say3D", 0];

_actor spawn {
	_this setVariable ["gokovo_var_randomLip", true];
	[_this, true] remoteExec ["setRandomLip", 0];
	waitUntil {
		sleep (1 + random 1);
		true;
	};
	_this setVariable ["gokovo_var_randomLip", false];
	[_this, false] remoteExec ["setRandomLip", 0];
};