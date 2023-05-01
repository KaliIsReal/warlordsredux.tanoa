private _SAM = _this select 0;
disReg pushBack _SAM;
private _EH = _SAM addEventHandler ["fired", "nul=_this execVM'common\scripts\DIS\SAM\SAMfired.sqf'"];