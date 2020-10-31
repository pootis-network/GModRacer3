GM.IsInGarage = false;
GM.IsShowingRaceMenu = false;
GM.ShowSorryMessage = false;
GM.RaceStartTime = 0;
GM.CameraLocations = {};
GM.SmoothCheckpoint = 0

GM.WrongWayText = surface.GetTextureID("gmracer/wrongway");
GM.SpeedometerMat = surface.GetTextureID("gmracer/speedometer");
GM.ThermometerMat = surface.GetTextureID("gmracer/thermometer");
GM.NeedleMat = surface.GetTextureID("gmracer/needle");

GM.DrillSound = Sound("gmracer/drill.mp3");
GM.RegisterSound = Sound("gmracer/register.mp3");
GM.CountdownSound = Sound("hl1/fvox/bell.wav");
GM.GoSound = Sound("plats/elevbell1.wav");

GM.LastNOSTime = 0;

GM.Music = {};
GM.ServerNews = {};
GM.ThanksTo = {};

local function AddDisplay ( Table, Name )
	local NewTable = {};
	NewTable.Name = Name;
	NewTable.CurPos = 0;
	
	table.insert(Table, NewTable);
end

local function AddMusic ( Name, Time )
	local NewTable = {};
	NewTable.Name = Name;
	NewTable.Time = Time;
	
	table.insert(GM.Music, NewTable);
end

AddMusic("music1", 81);
AddMusic("music2", 53);
AddMusic("music3", 162);
AddMusic("music4", 230);

AddDisplay(GM.ServerNews, "http://pootisnetwork.heliohost.org/");

AddDisplay(GM.ThanksTo, "Primus8 - GMR 1 Mapping");
AddDisplay(GM.ThanksTo, "SharpShark - GMR 1 Mapping");
AddDisplay(GM.ThanksTo, "Sad Panda - GMR 1 Uber Sound Editor");
AddDisplay(GM.ThanksTo, "GMod4Ever - GMR 1 Entertainment");
AddDisplay(GM.ThanksTo, "TheJ89 - GMR 1 Vector Help");
AddDisplay(GM.ThanksTo, "Night-Eagle - GMR 1 Partial Scoreboard Script");
AddDisplay(GM.ThanksTo, "Sakarias88 - GMR 1 Partial Upgrades Icons");
AddDisplay(GM.ThanksTo, "LuaBanana - GMR 1 Entertainment and Inspiration");
AddDisplay(GM.ThanksTo, "Garry - For Not Fixing the SNPCs");
AddDisplay(GM.ThanksTo, "East Clubbers - GMR 1 Race Music");
AddDisplay(GM.ThanksTo, "DJS1207 - GMR 1 Race Music");
AddDisplay(GM.ThanksTo, "Benefactr - GMR 1 Spoiler Model");
AddDisplay(GM.ThanksTo, "Fxuem - GMR 1 Record Music");
AddDisplay(GM.ThanksTo, "Scope - GMR 1 Mapping and Models");

AddDisplay(GM.ThanksTo, "Pulsar Effect - Creating GMR 1");
AddDisplay(GM.ThanksTo, "Matt Jeanes - Joystick support for GMR 3");
AddDisplay(GM.ThanksTo, "Catse - VRMod support for GMR 3");
AddDisplay(GM.ThanksTo, "thexkey - Server Host for GMR 3/2");
AddDisplay(GM.ThanksTo, "Nintey9Music - GMR 3 Music");
AddDisplay(GM.ThanksTo, "thexkey - Lead Developer for GMR 3/2");
AddDisplay(GM.ThanksTo, "Joeyjumper93 - Developer for GMR 3");
