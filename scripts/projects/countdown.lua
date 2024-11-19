
function countdown_timer(duration)
local start_time = os.time()
local end_time = start_time + duration

while os.time() < end_time do
local time_left = end_time - os.time()
local minutes = math.floor(time_left / 60)
local seconds = time_left % 60
-- Determine color based on remaining time
 local color = "green" -- Green
 if time_left <= 60 then
 color = "red" -- Red
 elseif time_left <= 120 then
color = "yellow" -- Yellow
end
	io.write(string.format("\r%02d:%02d", minutes, seconds))
	io.flush()
	os.execute("sleep 1")
end

	print("\nCountdown timer finished!")
end

-- Set the duration of the countdown timer (in seconds)
local duration = 300 -- 5 minutes

-- Call the countdown timer function with the specified duration
countdown_timer(duration)

