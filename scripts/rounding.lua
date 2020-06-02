-------------------------------------------------
--         Put your Lua functions here.        --
--                                             --
-- Note that you can also use external Scripts --
-------------------------------------------------
function round(number, sigDigits)
  local decimalPlace = string.find(number, "%.")
  if not decimalPlace or (sigDigits < decimalPlace) then
    numberTable = {}
    count = 1
    for digit in string.gmatch(number, "%d") do
      table.insert(numberTable, digit)
    end
    local endNumber = ""
    for i,digit in ipairs(numberTable) do
      if i < sigDigits then
        endNumber = endNumber .. digit
      end
      if i == sigDigits then
        if tonumber(numberTable[i + 1]) >= 5 then
          endNumber = endNumber .. digit + 1
        else
          endNumber = endNumber .. digit
        end
      end
      if i > sigDigits and (not decimalPlace or (i < decimalPlace)) then
        endNumber = endNumber .. "0"
      end
    end
    return tonumber(endNumber)      
  else
    local decimalDigits = sigDigits - decimalPlace + 1
    return tonumber(string.format("%" .. decimalPlace - 1 .. "." .. decimalDigits .. "f", number))
  end
end
