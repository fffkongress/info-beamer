gl.setup(1550,830)
local font = resource.load_font("jost.ttf")
local qr = resource.load_image("cwaqr.png")

function node.render()
    font:write(50, 50, "Covid-Reminder", 100, 1,1,1,1)
    qr:draw(50,170,500,620)
    font:write(50,640,"Corona Warn",70,1,1,1,1)
    font:write(50,715,"App Checkin",70,1,1,1,1)
    font:write(600, 175, "- Tragt Masken", 70, 1,1,1,1)
    font:write(600, 250, "- Haltet Abstand", 70, 1,1,1,1)
    font:write(600, 325, "- Testet euch", 70, 1,1,1,1)
end