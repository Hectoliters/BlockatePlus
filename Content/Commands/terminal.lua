while true do
    local among = game.ReplicatedStorage.Sockets.Command:InvokeServer("!dab all")
    local among2 = game.ReplicatedStorage.Sockets.Data.RequestInfo:InvokeServer(among, "0, 1, 2")
    print(among)
end