if !(isnil "REM_weapon_resting") exitwith {};
if (currentweapon player=="") exitwith {};
REM_weaponresting_debug=false;
_REM_resting_recoil=0.35;
_REM_resting_recoil_prone=0.50;
_REM_resting_aperture=25;
_REM_weaponresting_sound="weaponresting";
_REM_weaponresting_soundslide="a3\sounds_f\weapons\Shells\5_56\dirt_556_09.wss";
_REM_weaponresting_check=
{	
	_colorred=[1,0,0,1];
	_colorgreen=[0,1,0,1];
	
	_dir=direction  player;
	_leftoffest=0.50;
	_rightoffest=0.60;
	_frontoffest=0.75;
	_frontterrainoffest=0.8;
	_muzzleoffest=0.07;
	_downoffset=0.45;
	_downoffsetobjectvertical=0.5;
	_downoffsetterrainvertical=0.75;
	_weaponpitch=asin((player weaponDirection (currentweapon player)) select 2);
	_distance=1.5;
	
	_posleft=[(eyepos player select 0)+_leftoffest*(sin (_dir-90)),(eyepos player select 1)+_leftoffest*(cos (_dir-90)),(eyepos player select 2)-_downoffset];
	_posleft0=[(_posleft  select 0),( _posleft select 1),( _posleft select 2)];
	_posleft1=[(_posleft  select 0)+_distance*(sin _dir),( _posleft select 1)+_distance*(cos _dir),(_posleft  select 2)+_distance*(sin _weaponpitch)];

	_posright=[(eyepos player select 0)+_rightoffest*(sin (_dir+90)),(eyepos player select 1)+_rightoffest*(cos (_dir+90)),(eyepos player select 2)-_downoffset];
	_posright0=[( _posright select 0),( _posright select 1),( _posright select 2)];
	_posright1=[( _posright select 0)+_distance*(sin _dir),( _posright select 1)+_distance*(cos _dir),(_posright select 2)+_distance*(sin _weaponpitch)];
		
	_posmuzzle=[(eyepos player select 0)+_muzzleoffest*(sin (_dir+90)),(eyepos player select 1)+_muzzleoffest*(cos (_dir+90)),(eyepos player select 2)];
	_posmuzzle0=[( _posmuzzle select 0),( _posmuzzle select 1),( _posmuzzle select 2)];
	_posmuzzle1=[( _posmuzzle select 0)+_distance*(sin _dir),( _posmuzzle select 1)+_distance*(cos _dir),(_posmuzzle select 2)+_distance*(sin _weaponpitch)];
		
	_posdown=[(eyepos player select 0)+_frontoffest*(sin _dir)+_muzzleoffest*(sin (_dir+90)),(eyepos player select 1)+_frontoffest*(cos _dir)+_muzzleoffest*(cos (_dir+90)),(eyepos player select 2)];
	_posdown0=[( _posdown select 0),( _posdown select 1),( _posdown select 2)+_frontoffest*(sin _weaponpitch)];
	_posdown1=[( _posdown select 0),( _posdown select 1),( _posdown select 2)+_frontoffest*(sin _weaponpitch)-_downoffsetobjectvertical];

	_posdownterrain=[(eyepos player select 0)+_frontterrainoffest*(sin _dir)+_muzzleoffest*(sin (_dir+90)),(eyepos player select 1)+_frontterrainoffest*(cos _dir)+_muzzleoffest*(cos (_dir+90)),(eyepos player select 2)];
	_posdownterrain0=[( _posdownterrain select 0),( _posdownterrain select 1),( _posdownterrain select 2)+_frontoffest*(sin _weaponpitch)];
	_posdownterrain1=[( _posdownterrain select 0),( _posdownterrain select 1),( _posdownterrain select 2)+_frontoffest*(sin _weaponpitch)-_downoffsetterrainvertical];

	_colorright=_colorred;
	_colorleft=_colorred;
	_colormuzzle=_colorred;
	_colordown=_colorred;
	_colordownterrain=_colorred;
		
	_lrest=false;
	_rrest=false;
	_mzrest=false;
	_mdown=false;
	_mdownterrain=false;
		
	_wresting=false;
		
	if (lineIntersects [_posleft0,_posleft1,player]) then
	{
		_colorright=_colorgreen;
		_lrest=true;
	};
	if (lineIntersects [_posright0,_posright1,player]) then
	{
		_colorleft=_colorgreen;
		_rrest=true;
	};	
	if (lineIntersects [_posmuzzle0,_posmuzzle1,player]) then
	{
		_colormuzzle=_colorgreen;
		_mzrest=true;
	};	
	if (lineIntersects [_posdown0,_posdown1,player]) then
	{
		_colordown=_colorgreen;
		_mdown=true;
	};		
	if (terrainIntersectASL [_posdownterrain0,_posdownterrain1]) then
	{
		if (stance player=="PRONE") then
		{
			_colordownterrain=_colorgreen;
			_mdownterrain=true;
		};
	};	
	
	_checkmen=nearestObjects [[(getposatl player select 0)+1.1*sin(direction player),(getposatl player select 1)+1.1*cos(direction player),(getposatl player) select 2],["Man"],0.6];
	if ((count _checkmen)>0) then
	{
		if ((_checkmen select 0) iskindof "Man") then
		{
			if ((stance (_checkmen select 0)=="CROUCH") && ((stance player)!="PRONE")) then
			{
				_colordown=_colorgreen;
				_mdown=true;
			};
		};
	};
	
	if ((_lrest or _rrest or _mdown or _mdownterrain) && (!_mzrest)) then 
	{
		_wresting=true;
	};
	if ((vehicle player!=player) or !(alive player)) then {_wresting=false;};
	_wresting;
};

if ([REM_weaponresting_debug] call _REM_weaponresting_check) then 
{
	if (stance player=="PRONE") then {_REM_resting_recoil=_REM_resting_recoil_prone;};
	player setUnitRecoilCoefficient _REM_resting_recoil;
	addCamShake [5, 1, 5];
	systemChat "Weapon is now resting";
	playsound _REM_weaponresting_sound; 
	REM_weapon_resting=true;
	_REM_weaponresting_dir=(direction player);
	_REM_weaponresting_pos=(getposatl player);
	_REM_weaponresting_min=_REM_weaponresting_dir-_REM_resting_aperture;
	if (_REM_weaponresting_min<0) then {_REM_weaponresting_min=360+_REM_weaponresting_min;};
	_REM_weaponresting_max=_REM_weaponresting_dir+_REM_resting_aperture;
	if (_REM_weaponresting_max>360) then {_REM_weaponresting_max=_REM_weaponresting_max-360;};
	_vtsweaprest=true;
	_loop=0;
	_lastanim=animationstate player;
	_lastrestanim="";
	
	while {_vtsweaprest} do
	{
		_lastpos=getposatl player;
		sleep 0.1;
		_currentpos=getposatl player;
		if !([REM_weaponresting_debug] call _REM_weaponresting_check) then {_vtsweaprest=false;};
		if (_REM_weaponresting_pos distance (getposatl player)>0.1) then
		{
			_REM_weaponresting_pos=(getposatl player);
		};
		if !(_lastrestanim==(animationstate player)) then
		{
			waituntil {sleep 0.1;(isclass (configfile >> "CfgMovesMaleSdr" >> "States" >> ((animationstate player)+"_rest"))) or !([REM_weaponresting_debug] call _REM_weaponresting_check)};
			_lastanim=animationstate player;
			_restanim=(_lastanim+"_rest");
			if (isclass (configfile >> "CfgMovesMaleSdr" >> "States" >> _restanim)) then 
			{
				player switchmove _restanim;
				_lastrestanim=_restanim;
			};
		};
		_loop=_loop+1;
	};
	addCamShake [5, 1, 5];
	REM_weapon_resting=nil;
	player setUnitRecoilCoefficient 1;
	player switchmove _lastanim;
	systemChat "Weapon is no longer resting";
};