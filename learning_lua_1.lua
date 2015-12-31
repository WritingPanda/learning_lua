--
-- Created by IntelliJ IDEA.
-- User: omar
-- Date: 12/31/15
-- Time: 11:11 AM
-- To change this template use File | Settings | File Templates.
--

print(0x0)
print(0xff)

print("Hello world")
print(5e3)

print([[+-----+
| Lua |
+-----+
]])

print("He\tllo!")

print("Hello " .. "world!") -- concatenation --

print("The length of 'How many characters is this?' is "
        .. #"How many characters is this?" .. ".") -- length function--

NullByte = "\0"
NullBytes = NullByte .. NullByte .. NullByte
print("Length of NullByte: " .. #NullByte)
print("Length of NullBytes: " .. #NullBytes)

-- This is a comment --

--[[
-- This is a
-- multi-line
-- comment
 ]]

Str1, Str2 = "aardvark", "zebra"

-- If statements --
if Str1 < Str2 then
    print(Str1 .. Str2)
else
    print(Str2 .. Str1)
end

-- while loop --
--while true do
--    print("It keeps")
--    print("going and going")
--end

Counter = 1
while Counter <= 10 do
    print(Counter)
    Counter = Counter + 1
end

N, F = 1, 1
while F < 100 do
    print(N .. "! is " .. F)
    N = N + 1
    -- Compute the factorial of the new N based on
    -- the factorial of the old N:
    F = F * N
end

-- for loop --
for Counter = 1, 10 do
    print(Counter)
end
--for variable = start number, end number, step do
--    zero or more statements
--end
for N = 3, 1, -1 do
    print(N)
end

for N = -50, -45.25, 2.5 do
    print(N)
end

End = 5
for I = 1, End do
    End = End - 1 -- The loop doesn't care that End is being changed
    print("I is " .. I .. " and End is " .. End)
end

for Outer = 1, 3 do
    for Inner = 1, 3 do
        print("Outer: " .. Outer .. "; Inner: " .. Inner)
    end
end

-- Repeat loop --
--[[
-- 1. Its expression is tested after its body (the statements between do and end),
-- which means that the body is always executed at least once.
-- 2.  The sense of the test is reversed — the while loop keeps going while the expression is true;
-- the repeat loop, whose expression comes after the keyword until,
-- keeps going until the expression is true.
-- 3.  A repeat loop, unlike a while (or any other compound statement for that matter),
-- does not end with the keyword end.
]]

N, F = 1, 1
repeat
    print(N .. "! is " .. F)
    -- Compute the next N and its factorial:
    N = N + 1
    F = F * N
until F >= 100

-- break and do statement --
--[[
-- The break statement exists a while, for, or repeat loop prematurely.
 ]]
for N = 1, 10 do
    if N > 5 then
        break
    end
    print(N)
end

--[[
-- If a break is inside more than one loop, it only breaks out of the innermost one.
 ]]
for Outer = 1, 3 do
    for Inner = 101, 103 do
        print("Outer: " .. Outer .. "; Inner: " .. Inner)
        if Inner == 102 then
            print("Breaking out of inner loop; 103 will not be reached.")
            break
        end
    end
end

-- The do block --
--[[
-- Can be used to force code to be executed as one unit
]]

do
    print("\nHere are some numbers:")
    for N = 1, 5 do
        print(N)
    end
    print("There were some numbers.")
end

-- Functions --
--[[
-- functions I have used so far:
-- print(): prints value to the console
-- type(): returns the type of the value
 ]]
function Greet(name)
   print("Hello, " .. name .. ".")
end

Greet("Omar")

function Average(Num1, Num2)
    return (Num1 + Num2) / 2
end

print(Average(500, 612))

-- Returns true if Str has an even number of characters
-- otherwise returns false
function Evenlen(Str)
    if #Str % 2 == 0 then
        return true
    else
        return false
    end
    print("This will never get printed!")
end

print(Evenlen("Omar"))
print(Evenlen("hamster"))

-- Refactor earlier function
function evenLen(str)
    if #str % 2 == 0 then
        Ret = true
    else
        Ret = false
    end
    return Ret
end

print(evenLen("panda"))
print(evenLen("Ryan"))

-- Returning multiple values
function return_args(arg1, arg2, arg3)
    return arg1, arg2, arg3
end

print(return_args(1, 2, 3))

A, B, C = return_args("A", "B", "C")
print(A, B, C)

