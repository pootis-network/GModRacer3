GM.Name 	= "GMod Racer 3"
GM.Author 	= "thexkey"
GM.Email 	= "thexkey@pootisnetwork.heliohost.org"
GM.Website 	= "http://pootisnetwork.heliohost.org/"

GM.PartsTable = {};
GM.RaceTimeLimit = 300;
GM.Maps = {}
GM.NewRecordTime = 23;
GM.PlayerStats = {};

include("player_methods.lua");
include("default_stats.lua");
include("maps_setup.lua");


-- TODO: depricate these, and replace with ULX checks.
--[[team.SetUp(5, "Normie", Color(255, 255, 0));
team.SetUp(4, "VIP", Color(0, 0, 255));
team.SetUp(3, "Temp Administrator", Color(255, 0, 255));
team.SetUp(2, "Administrator", Color(0, 255, 0));
team.SetUp(1, "Blackies", Color(0, 0, 0));
team.SetUp(0, "Owner", Color(255, 51, 255));
]]--


-- used for cool car explosions
util.PrecacheModel("models/props_vehicles/tire001c_car.mdl");

-- used to be needed in GMR 1/2 but since we are using symphys cars, we need to LOAD ALL OF THOSE.
--util.PrecacheModel("models/buggy.mdl");

-- this code will find all symphys cars installed, and cache them into memory. im not sure if this eats ram or not.

-- TODO: figure out where symphys cars will be installed.
--for k, v in pairs(file.Find(Folder.."/gamemode/parts/*.lua", "LUA")) do
	--	util.PrecacheModel(v);
--end


for i = 1, 5 do
	util.PrecacheModel("models/Gibs/metal_gib" .. i .. ".mdl");
end

function GM:Initialize() self.BaseClass.Initialize( self ); end

-- Parts are removed in GMR 2.5+ due to a NET code exploit/aimbot hack
--[[

function GM:RegisterPart ( PartTable ) 
	--print("Loading Parts Started:")
	--Msg("Loaded " .. PartTable.Name .. " successfully.\n");

	if CLIENT then
		PartTable.Material = surface.GetTextureID("gmracer/" .. PartTable.Icon);
	end
	
	for k, v in pairs(PartTable.RequiredModels) do
		util.PrecacheModel(v);
	end
	
	if !PartTable.RequiresAccess then
		PartTable.RequiresAccess = 255;
	end
	
	self.PartsTable[PartTable.Class] = self.PartsTable[PartTable.Class] or {};
	self.PartsTable[PartTable.Class][PartTable.ClassLevel] = PartTable;
end

if SERVER or game.SinglePlayer()  then
	--print("Big Gay: " .. GM.FolderName .. "/gamemode/parts/")
	local Folder = string.Replace( GM.Folder, "gamemodes/", "" );
	for k, v in pairs(file.Find(Folder.."/gamemode/parts/*.lua", "LUA")) do
		Part = {};
				
		if SERVER then AddCSLuaFile("parts/" .. v); end
		include("parts/" .. v);
		
		GM:RegisterPart(Part);
	end
elseif !game.SinglePlayer() and CLIENT then
	local Folder = string.Replace( GM.Folder, "gamemodes/", "" );
	for k, v in pairs(file.Find(Folder.."/gamemode/parts/*.lua", "LUA")) do
		--print(k)
		Part = {};
		
		include("parts/" .. v);
		
		GM:RegisterPart(Part);
	end
end
]]--