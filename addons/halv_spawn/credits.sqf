if(isServer)exitWith{};
/*
	Simple Credits script
	by Halv
*/
sleep 2.5; // sleep before the welcome message starts (in seconds)

_alltext = [
	[
		//Title
		"Welcome to",
		//Title Color
		"#71C700", //green light
		[
			//Sub Text(s)
			"ITGC Overpoch Server"
		]
	],
	[
		"Teamspeak ]I[ Server :",
		"#c77000", //orange rust
		[
			"ts.itgcommunity.com"," ","Channels for Players to Use"
		]
	],
	[
	"Server Admins :",
	"#25B25B", //Green
	[
		"xBloodshed","Trolltastic"
	]
	],
	[
		"Main Rules :",
		"#C80000", //Red dark
		[
			"No Shooting Into SafeZones!"," ","Play fair!"," ","Dont be a douche!"," ","No hacking,glitching etc.."
		]
	],
	[
		"Server Mods :",
		"#0096ff", //Blue Light
		[
			"AI + Missions","Call In Airdrops","Craft Bike (comming)","Select Gear / HALO Spawn","Special (no limit) Traders",
			"Lift and Tow","Nitro (USER19) (soon)","No DLC Locked Vehicles","Repair / Re-Arm Stations","Vehicle Paint Shops",

			"And Much more ..."
		]
	],
	[
		"Server Scripted by :",
		"#C80000", //Red dark
		[
			"xBloodshed"
		]
	],
	[
		"Server Restarts :",
		"#ffff00", //Yellow
		[
			//"4 Hour","Schedule"," (not set times)"
			"00:00","04:00","08:00","12:00","16:00","20:00","GMT + 5:30"
		]
	],
	[
		"Support / Help / Donor Info:",
		"#71C700", //green light
		[
			"All Found on","ITGCommunity.com","or","Ts3:","ts.itgcommunity.com"
		]
	],
	[
		"Intro Song:",
		"#322CE6", //Blue Dark
		[
			"Sick Bubblegum"," ","- by Rob Zombie -"
		]
	]
];

{
	sleep 2;
	_memberFunction = _x select 0;
	_color = _x select 1;
	_memberNames = _x select 2;
	_finalText = format ["<t size='0.65'color='%2'align='left'shadow='1'>%1<br /></t><t size='0.1'><br /></t><t size='0.5'shadow='1'color='#EBEBEB'align='left'>", _memberFunction,_color];
	{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
	_finalText = _finalText + "</t>";
	_onScreenTime = 1 + (((count _memberNames) - 1) * 0.5);
	if(_onScreenTime < 6)then{_onScreenTime = 5};
	[_finalText,[safezoneX + safezoneW - 0.5,0.35],[safezoneY + safezoneH - 0.8,0.7],_onScreenTime,0.5] spawn BIS_fnc_dynamicText;
	sleep (_onScreenTime);
} forEach _alltext;
