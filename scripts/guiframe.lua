setBorderSizes(0, 0, 80, 10)

main_container = Geyser.Container:new({
  name = "main_container",
  x=0, y=0,                    -- makes the container start 35% of the screen away from the right side
  width = "65%", height="100%",      -- filling it up until the end
  })


right_container = Geyser.Container:new({
  name = "right_container",
  x="-35%", y=0,                    -- makes the container start 20% of the screen away from the right side
  width = "33%", height="100%",     -- filling it up until the end
	})
  

   	right_container_top = Geyser.Container:new({
  	  name = "right_container_top",
   		x=0, y=0,                     		-- this container occupies the top, so it starts top-left as well
    	width = "100%", height=-100, 		-- but only uses up half of the height
  		}, right_container)             -- this is the important bit - it says that right_container_top should be inside right_container
        
	
    right_container_bottom = Geyser.Container:new({
    	name = "right_container_bottom",
    	x=0, y=-65,                 -- this container starts 70% down the first one
    	width = "100%", height=60, -- and has the same half height of the original container
  		}, right_container)
  



bottom_container = Geyser.Container:new({
  name = "bottom_container",
  x=0, y=-70,                    -- makes the container start 60px of the screen away from the bottom side
  width = "100%", height=70,      -- filling it up until the end
}, main_container)

    bottom_container_gauge = Geyser.Container:new({
      name = "bottom_container_gauges",
      x=0, y=10,                     -- this container occupies the top, so it starts top-left as well
      width = 250, height=60, -- but only uses up half of the height
      }, bottom_container)              -- this is the important bit - it says that right_container_top should be inside right_container
    bottom_container_status = Geyser.Container:new({
      name = "bottom_container_status",
      x=251, y=10,                 -- this container starts 70% down the first one
      width = "100%", height=60, -- and has the same half height of the original container
      }, bottom_container)



---- Main Window 




--------------------------------------
--
-- First Row of Buttons in Bottom Right Container
--
--------------------------------------

	SummonStateButton = Geyser.Label:new({
  name = "SummonStateButton",
  x = 0, y = 0,
  width = 90, height = 28,
  fgColor = "yellow",
	}, right_container_bottom) -- this is where we tell it what container to go into
	SummonStateButton:echo([[<p style="font-size:10px"><b><center><font color="yellow">
	Summonable!</font></center></b></p>]])
-------------------------------------
	AutoFHButton = Geyser.Label:new({
  name = "AutoFHButton",
  x = 100, y = 0,
  width = 90, height = 28,
  fgColor = "green",
	}, right_container_bottom) -- this is where we tell it what container to go into
	AutoFHButton:echo([[<p style="font-size:10px"><b><center><font color="cyan">AutoFH @ 
  <font color="yellow">]]..HealAt..[[</font></center></b></p>]])
	
-------------------------------------

	AutoFFButton = Geyser.Label:new({
  name = "AutoFFButton",
  x = 200, y = 0,
  width = 90, height = 28,
  fgColor = "green",
}, right_container_bottom) -- this is where we tell it what container to go into
AutoFFButton:echo([[<p style="font-size:10px"><b><center><font color="green">AutoFleet ON!</font></center></b></p>]])

-------------------------------------
--
-- Second Row of Buttons in Bottom Right Container
--
-------------------------------------

	TrackButton = Geyser.Label:new({
  name = "TrackButton",
  x = 0, y = 30,
  width = 90, height = 28,
  fgColor = "yellow",
}, right_container_bottom) -- this is where we tell it what container to go into
TrackButton:echo([[<p style="font-size:10px"><b><center><font color="magenta">Tracking ]]..tracktarget..[[ </font></center></b></p>]])
------------------------------------
	FoodButton = Geyser.Label:new({
  name = "FoodButton",
  x = 100, y = 30,
  width = 90, height = 28,
  fgColor = "yellow",
}, right_container_bottom) -- this is where we tell it what container to go into
FoodButton:echo([[<p style="font-size:10px"><b><center><font color="magenta">FoodBot On</font></center></b></p>]])

	WaterButton = Geyser.Label:new({
  name = "WaterButton",
  x = 200, y = 30,
  width = 90, height = 28,
  fgColor = "yellow",
}, right_container_bottom) -- this is where we tell it what container to go into
WaterButton:echo([[<p style="font-size:10px"><b><center><font color="magenta">WaterBot On</font></center></b></p>]])


---------------------
	RoundCountLabel = Geyser.Label:new({
  name = "RoundCountLabel",
  x = 0, y = -30,
  width = 75, height = 15,
}, bottom_container_status) -- this is where we tell it what container to go into
RoundCountLabel:echo([[<p style="font-size:12px"><b><center><font color="cyan">Rounds: ]]..battlemon.roundcount..[[</font></center></b></p>]])


	HumCountLabel = Geyser.Label:new({
  name = "HumCountLabel",
  x = 80, y = -30,
  width = 75, height = 15,
}, bottom_container_status) -- this is where we tell it what container to go into
HumCountLabel:echo([[<p style="font-size:12px"><b><center><font color="cyan">Hums: ]]..battlemon.hums..[[</font></center></b></p>]])


	PoisonCountLabel = Geyser.Label:new({
  name = "PoisonCountLabel",
  x = 160, y = -30,
  width = 75, height =15,
}, bottom_container_status) -- this is where we tell it what container to go into
PoisonCountLabel:echo([[<p style="font-size:12px"><b><center><font color="cyan">Poisons: ]]..battlemon.poisons..[[</center></b></p>]])

	SummonCountLabel = Geyser.Label:new({
  name = "SummonCountLabel",
  x = 240, y = -30,
  width = 75, height = 15,
}, bottom_container_status) -- this is where we tell it what container to go into
SummonCountLabel:echo([[<p style="font-size:12px"><b><center><font color="cyan">Summons: ]]..battlemon.summons..[[</font></center></b></p>]])

	FullCountLabel = Geyser.Label:new({
  name = "FullCountLabel",
  x = 320, y = -30,
  width = 75, height = 15,
}, bottom_container_status) -- this is where we tell it what container to go into
FullCountLabel:echo([[<p style="font-size:12px"><b><center><font color="cyan">Fulls: ]]..battlemon.fulls..[[</font></center></b></p>]])

	MobNameLabel = Geyser.Label:new({
  name = "MobNameLabel",
  x = 0, y = -50,
  width = 150, height = 15,
}, bottom_container_status) -- this is where we tell it what container to go into
MobNameLabel:echo([[<p style="font-size:12px"><b><center><font color="cyan">Killing:  ]]..battlemon.monster..[[</font></center></b></p>]])


----------------------



function resizeEvent( event, x, y)
local currentsetting = demonnic.chat.config.location
local newsetting = ""
if currentsetting == "topright" then 
  newsetting = "bottomleft" 
elseif currentsetting == "topleft" then
  newsetting = "bottomright"
elseif currentsetting == "bottomleft" then
  newsetting = "topright"
elseif currentsetting == "bottomright" then
  newsetting = "topleft"
end
demonnic.chat.config.location = newsetting
demonnic.chat:create()
demonnic.chat.config.location = currentsetting
demonnic.chat:create()
end

-- register our function to run on the event that something was downloaded
registerAnonymousEventHandler("sysWindowResizeEvent", "resizeEvent")
