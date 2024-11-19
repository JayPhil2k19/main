-- ANSI color escape sequences
local colors = {
    reset = "\27[0m",
    red = "\27[31m",
    green = "\27[32m",
    yellow = "\27[33m"
}

-- Function to print colored text
function printColor(color, text)
    io.write(colors[color] .. text .. colors.reset .. "\n")
end

-- Function to format seconds into HH:MM:SS
function formatTime(seconds)
    local hours = math.floor(seconds / 3600)
    local minutes = math.floor((seconds % 3600) / 60)
    local remainingSeconds = seconds % 60
    return string.format("%02d:%02d:%02d", hours, minutes, remainingSeconds)
end

-- Countdown timer function
function countdownTimer(duration)
    for i = duration, 0, -1 do
        local timeLeft = formatTime(i)
        if i <= 10 then
            printColor("red", timeLeft)
        elseif i <= 30 then
            printColor("yellow", timeLeft)
        else
            printColor("green", timeLeft)
        end
        os.execute("sleep 1")
    end
    printColor("green", "Time's up!")
end

-- Usage
countdownTimer(300)  -- Countdown from 60 seconds

