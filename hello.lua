--
-- Created by IntelliJ IDEA.
-- User: omar
-- Date: 12/31/15
-- Time: 4:32 PM
-- To change this template use File | Settings | File Templates.
--

print("Hello, world!")

-- loadstring
--[[
-- Converts a string to a function
 ]]

Fnc = loadstring("print('Hello!')")
Fnc()

Fnc, ErrStr = loadstring("print(2 + + 2)", "A STRING CHUNK")
if Fnc then
    Fnc()
else
    print(ErrStr)
end

