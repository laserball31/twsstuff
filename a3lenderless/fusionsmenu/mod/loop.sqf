while {true} do
{
  waitUntil {alive vehicle player};
 [] execVM "fusionsmenu\mod\activate.sqf";


  waitUntil {!alive player};
};