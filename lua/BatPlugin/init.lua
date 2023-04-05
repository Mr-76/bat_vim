print("loaded")
--local timer = vim.loop.new_timer()
--timer:start(5000, 0, vim.schedule_wrap(function()
local function Bat()
	local handle = io.popen("cat /sys/class/power_supply/BAT1/capacity")
	local result = string.gsub(handle:read("*a"),"\n"," ")
	handle:close()
	print("battery percentage at",result,"%")
--end))
end


local function Tech()
	local handle = io.popen("cat /sys/class/power_supply/BAT1/technology")
	local result2 = string.gsub(handle:read("*a"),"\n"," ")
	handle:close()
	print("battery Tech is  ",result2,"%")
--end))
end

return {
	Bat=Bat,Tech=Tech,
}
