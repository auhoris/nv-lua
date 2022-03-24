-- Lua implementation of PHP scandir function
function scandir(directory)
    local i, t, popen = 0, {}, io.popen
    local pfile = popen('ls -a "'..directory..'"')
    for filename in pfile:lines() do
        i = i + 1
        t[i] = filename
		print(filename)
    end
    pfile:close()
    return t
end

--[[ local dirs = scandir("/proc/")
print(type(dirs)) ]]
