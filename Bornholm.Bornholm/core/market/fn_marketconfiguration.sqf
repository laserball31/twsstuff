/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, DEFAULT-Worth, MIN-Worth, MAX-Worth, CHANGES IN ACTION [SALE Multiplied by 1, Purchase multiplied by -1]
	//["gold", 1500, 450, 2300, 8, 5],
		
	["oilp", 2260, 1000, 3240, 3, 1, 
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["goldbarp",1],
			["euranium",1],
			["glass",1] 
		] 
	],
	
	["iron_r", 1400, 800, 1950, 3, 1,  
		[ 
			["diamondc",1], 
			["oilp",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["goldbarp",1],
			["euranium",1],
			["glass",1] 
		] 
	],
	
	["diamondc", 3800, 800, 5200, 5, 2, 
		[ 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["goldbarp",1],
			["euranium",1],
			["glass",1] 
		] 
	],
	
	["copper_r", 800, 400, 1250, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["salt_r",1],
			["cement",1],
			["goldbarp",1],
			["euranium",1],
			["glass",1] 
		] 
	],
	
	["euranium", 3200, 2000, 5000, 4, 1, 
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["goldbarp",1],
			["oilp",1],
			["glass",1] 
		] 
	],
	
	["goldbarp", 48000, 30000, 68000, random(100), 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["salt_r",1],
			["cement",1],
			["euranium",1],
			["copper_r",1],
			["glass",1] 
		] 
	],
	
	["goldbar", 75000, 40000, 95000, random(150), 1],
	
	["kidney", 35000, 10000, 50000, 5, 1],
	
	["salt_r", 1100, 800, 1650, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["goldbarp",1],
			["euranium",1],
			["glass",1] 
		] 
	],
	
	["glass", 1400, 900, 2200, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["goldbarp",1],
			["euranium",1],
			["cement",1]
		] 
	],
	
	["cement", 1000, 700, 1550, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["goldbarp",1],
			["euranium",1],
			["glass",1]
		] 
	],
	
	["turtle", 12000, 8000, 15000, 20, 18,  
		[ 
			["marijuana",1], 
			["cocainep",1],
			["heroinp",1]
		] 
	],
	
	["marijuana", 5800, 4000, 8000, 7, 5,   
		[ 
			["turtle",1], 
			["cocainep",1],
			["moonshine",1],
			["heroinp",1]
		] 
	],
	
	["cocainep", 6000, 3500, 10000, 11, 8,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["moonshine",1],
			["heroinp",1]
		] 
	],
	
	["moonshine", 1900, 700, 2800, 10, 7,   
		[
			["marijuana",1], 
			["turtle",1],
			["cocainep",1],
			["heroinp",1]
		]
	],
	
	["heroinp", 6000, 3000, 10000, 12, 9,   
		[ 
			["marijuana",1], 
			["cocainep",1],
			["turtle",1],
			["moonshine",1]
		] 
	]
];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";

////////////SYNC PRICES WITH SERVER IF EMPTY
//if(isNil("life_market_prices")) then
//{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	systemChat "Market Prices Generated!";
//};