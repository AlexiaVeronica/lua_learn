

local function read_file(fileName)
    local f = io.open(fileName,'r')
    if f ~= nil then
      local content = f:read('*all')
      f:close()
      return content
    else 
      print(fileName, "not found, please check the file name")
    end 

end
 

function write_file(path, content, mode)
    local file = io.open(path, mode)
    if file then
      if file:write(content) == nil then return false end
      io.close(file)
      return true
    else
      return false
    end
end
 