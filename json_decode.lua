local json = require "json"


local jss = [[{
    "str":"hello world",
    "user":{
            "user":"ubuntu",
            "password":"123456",
            "ip":"192.168.1.12"
        },
    "configs":[
        {
            "user":"ubuntu",
            "password":"123456",
            "ip":"192.168.1.12"
        },
        {
            "user":"ubuntu1",
            "password":"45678",
            "ip":"192.168.1.23"
        }
    ]
}]]


local json_info = json.decode(jss)

print(json_info.user)

for i, w in pairs(json_info.configs) do
    print("user:", w.user)
    print("password:", w.password)
end

print("str:", json_info.str)
