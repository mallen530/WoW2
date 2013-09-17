function find_last(str, find_character)
    for i = str:len(), 1, -1 do
        local string_character = str:sub(i,i)
        if (string_character == find_character) then
            return i
        end
    end
    return nil
end

temp_file = io.open("temp","w")
toc_file_in = io.open("SkeenCore3.toc","r")
while true do
    local line = toc_file_in:read("*line")
    if line == nil then 
        break 
    end

    local last_dot = find_last(line,".")

    local title_match   = line:find("## Title: ")
    local version_match = line:find("## Version: ")
    if ((title_match) or (version_match)) then
        temp_file:write(line:sub(1,last_dot))
        temp_file:write(tonumber(line:sub(last_dot+1, line:len()))+1)
        temp_file:write("\n")
    else
        temp_file:write(line)
        temp_file:write("\n")
    end
end
temp_file:close()
toc_file_in:close()

temp_file = io.open("temp","r")
toc_file_out = io.open("SkeenCore3.toc","w")
while true do
    local line = temp_file:read("*line")
    if line == nil then 
        break 
    end
    toc_file_out:write(line .. "\n")
end

temp_file:close()
toc_file_out:close()

os.remove("temp")
