--this function will create an event handler that will listen for the 
--command <my function> to be called from another profile and the 
--listening profile will execute the command (Mudlet aliases will work)

function my_function(_, text)
    expandAlias(text)    
end
registerAnonymousEventHandler(getProfileName().."_event", "my_function")

--this function will create an event handler that will listen for the 
--command <my function> to be called from another profile and the 
--listening profile will print data requested to the calling terminal

function my_print(_, text)
    setFgColor(255,255,0)
		print(text)    
end
registerAnonymousEventHandler(getProfileName().."_print", "my_print")
