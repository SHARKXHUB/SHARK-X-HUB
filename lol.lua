local games = {
               [2753915549] = {
                  Title = "Blox Fruits",
                  Icons = "C",
                  Welcome = function()
                        return tostring(
                           "<Color=Red>Invaid Key."
                             
                        )
                  end
               }
            }
            if games[game.PlaceId] then
               if games[game.PlaceId].Title == "Blox Fruits" then
                  local function notify(types, ...)
                        if types == "Notify" then
                           require(game.ReplicatedStorage.Notification).new(...):Display()
                        end
                  end
                  notify("Notify", games[game.PlaceId].Welcome())
               end
            end
