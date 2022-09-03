local module = {}


function module.run(message)
    message:reply {
        embed = {
            title = "**__Help menu__**",
            description = "Here are my available commands",
            fields = { -- array of fields
                {
                    name = "VC",
                    value = "`$ vc join`, `$ vc leave`",
                    inline = true
                },
                {
                    name = "misc",
                    value = "`$ ping`, `$ uptime`, `$ help`",
                    inline = true
                },
                {
                    name = "music",
                    value = "`$ audio play <link>`, `$ audio skip`, `$ audio pause`, `$ audio resume`, `$ audio remove <number>`",
                    inline = false
                }
            },
            footer = {
                text = "Dweeber lua $ help"
            },
            color = 0x3873A2 -- hex color code
        }
    }
end

return module