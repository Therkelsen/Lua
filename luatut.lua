-- this is a comment

--[[
    this is a block comment
]]

-- datatypes are implicitly defined, it's just a container of any type, until you instantiate it
local name = 'Therkelsen'

local number = 2
print(number + 5)
print(number*1.75 + 5.25)

-- you can use print or io.write, to write to terminal
print("Hello World!")

-- you can use , or .. to add strings in the print function
-- #string returns the length of the string, so does string.len
io.write("Size of string ", #name, "\n")

io.write("My name is " .. name .. "\n")

-- string fuckery
local string1 = "Hello"
local string2 = "World!"
local string3 = string1 .. " " .. string2
print(string1 .. " + " .. string2 .. " = " .. " " .. string3)

local multilinestring = [[
    this
is a
            multiline string
]]
print(multilinestring)

-- \n is new line, \t is tab, \\ is \
print("Testing esc chars " .. "\n newline \t tab \\ backslash")

-- string.lower and string.upper
local scramble = "ScRAmBlEDtExt"
print(scramble, string.lower(scramble), string.upper(scramble))

-- substrings (LUA IS 1 INDEXED REEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE)
print(string.sub(scramble, 1, 9))
print(string.find(scramble, "RA"))

-- ascii stuff
print(string.char(51))
print(string.char(84))

print(string.byte("3"))
print(string.byte("T"))

print(string.byte(scramble, 1, #scramble))

-- repeat a string x times
local x = 10
print(string.rep("PENIS", x, " "))

-- weird formatting things
print(string.format("Pi = %.10f\nMy age is = %i", math.pi, 99))

-- booleans are weird.
local boolean = not not false
print(boolean)
print(not false)
print(not true)
print(not nil)
print(not "span")
print(not "")
print(not 1)

-- Lua is case sensitive (thank fuck)
local C = 20
local c = 10
print(C, c)

-- types
print(type(C), type(string3), type(multilinestring), type(boolean))

-- string to number conversion happens automatically, but you can also force it
local str = "22"
print(str*1.5, tonumber(str)*1.5)
print(((str*number)/(number-str))*2^5)

print("Test " .. number)
print("Test " .. tostring(number))

-- math fuckery
print(math.pi)

math.randomseed(os.time())
print(os.time(), math.random(), math.random(1, 100))

local list = {100, 1238138219382193, 1, 2, 56, 72}
print(math.min(list), math.max(list))
print(math.abs(-100))
print(math.floor(math.pi))
print(math.sin(math.random()), math.cos(math.random()), math.tan(math.random()))