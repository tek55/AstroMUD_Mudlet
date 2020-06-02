--This script will create the "Exit Colors" trigger chain head and 
-- subordinate children to colorize default directions based on user preference

--create new Exit Colors trigger chain head if one does not exist
if exists("Exit Colors", "trigger") == 0 then
  permRegexTrigger("Exit Colors", "Astro",{"^(north|east|west|south|up|down)(\\s+)\-(.*)$"},
  [[
direction = matches[2]

  --Change the respective highlight colors to your preferences
  --You may use RGB colors and setFgColor(R,G,B) or named colors 
  --from http://wiki.mudlet.org/images/c/c3/ShowColors.png

  if direction == "north" then color = "tomato" end
  if direction == "south" then color = "linen" end
  if direction == "east" then color = "spring_green" end
  if direction == "west" then color = "cornflower_blue" end
  if direction == "up" then color = "violet" end
  if direction == "down" then color = "red" end
  

selectString(direction, 1)
fg(color)

resetFormat()
  ]])  
end

