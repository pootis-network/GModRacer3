
var = 0

local music = {}

music[0] = {links="http://pootisnetwork.heliohost.org/GMR3Music/music1.mp3"}
music[1] = {links="http://pootisnetwork.heliohost.org/GMR3Music/music2.mp3"}
music[2] = {links="http://pootisnetwork.heliohost.org/GMR3Music/music3.mp3"}
music[3] = {links="http://pootisnetwork.heliohost.org/GMR3Music/music4.mp3"}
music[4] = {links="http://pootisnetwork.heliohost.org/GMR3Music/music5.mp3"}
music[5] = {links="http://pootisnetwork.heliohost.org/GMR3Music/music6.mp3"}
music[6] = {links="http://pootisnetwork.heliohost.org/GMR3Music/music7.mp3"}
music[7] = {links="http://pootisnetwork.heliohost.org/GMR3Music/music8.mp3"}
music[8] = {links="http://pootisnetwork.heliohost.org/GMR3Music/music9.mp3"}


function musicLogic()
local ply = LocalPlayer()

  if !raceactive or (ply:Alive() == false) then

    var = 0

    backupPlan()

  end

  if netbool then

    backupPlan()

  end


end

function backupPlan()
local ply = LocalPlayer()

  local car = ply:GetVehicle()


  if IsValid(car) then

    local vehicleclass = car:GetClass()


    if raceactive and var == 0 and (vehicleclass != "prop_vehicle_airboat") then
      var = 1
      sound.PlayURL( music[math.random(0,10)].links, "", function( station )


      if ( IsValid( station ) ) and vehicleclass !="prop_vehicle_airboat" then
        station:Play()
      else
        station:Stop()
      end

      end)
    end
  end
end

