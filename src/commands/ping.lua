local module = {}

local config = require("/src/config")

function module.run(message)
    message:reply {
        embed = {
            title = "Ping!",
            description = ":ping_pong: Pong!",
            footer = {
                text = "Dweeber lua $ ping"
            },
            color = 0x3873A2 -- hex color code
        }
    }
end

return module