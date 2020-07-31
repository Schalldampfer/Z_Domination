private ["_time","_tLimit","_leader"];
_tLimit = 45*60; // minimal lifespan of a zombie
while {true} do {
	{
		_leader = leader _x;
		//if zed
		if (alive _leader && {_leader isKindOf "RyanZombieCivilian_F" || _leader isKindOf "RyanZombieB_Soldier_base_F"}) then {
			_time = _x getVariable ["zz_spawntime",-1];
			//if new - set time
			if (_time < 0) then {
				_x setVariable ["zz_spawntime",serverTime,false];
			} else {
				//if old - check time
				if (serverTime - _time > _tLimit) then {
					{
						//randomly kill it
						if (random 1 < 0.2) then {
							_x switchMove "AinjPpneMstpSnonWrflDnon";
							_x setDamage 1;
							sleep (random 5);
						};
					} forEach units _x;
				};
			};
			//prepare zombie movement
			if (speed _leader < 0.5) then {
				doStop _leader;
			};
		};
	} forEach allGroups;

	//wait
	sleep (10 + random 10);
};