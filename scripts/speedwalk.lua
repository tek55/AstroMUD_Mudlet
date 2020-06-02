function speedwalk(walkstring)
	for count, direction in string.gmatch(walkstring, "([0-9]*)([neswdu])") do      
		count = (count == "" and 1 or count)
		for i=1, count do send(direction) end
	end
end
