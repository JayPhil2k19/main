-- ANSI color escape sequences
local colors = {
reset = "\27[0m",
black = "\27[30m",
red = "\27[31m",
green = "\27[32m",
yellow = "\27[33m",
blue = "\27[34m",
magenta = "\27[35m",
cyan = "\27[36m",
white = "\27[37m"
}

-- Function to print colored text
function printColor(color, text)
io.write(colors[color] .. text .. colors.reset .. "\n")
end

-- Example usage
printColor("red", "This text is red.")
printColor("green", "This text is green.")

