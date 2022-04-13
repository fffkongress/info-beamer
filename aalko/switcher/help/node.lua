gl.setup(1550, 830)
    local jost = resource.load_font("jost.ttf")
    local qr = resource.load_image("qr-code.png")


util.file_watch("shifts.csv", function(content)
    shifts = {}
    for shift in string.gmatch(content, "[^\r\n]+") do
        res = {}
        for data in string.gmatch(shift,"[^,]+") do
            res[#res + 1] = data
        end
        shifts[#shifts + 1] = res
    end
end)


function node.render()
    jost:write(50, 50, "Nächste offene Schichten:", 100,1,1,1,1)
    jost:write(50, 150, shifts[1][4], 70,1,1,1,1)
    jost:write(150, 150, shifts[1][1], 70,1,1,1,1)
    jost:write(600, 150, shifts[1][2], 70,1,1,1,1)
    jost:write(1100, 150, "Dauer", 70,1,1,1,1)
    qr:draw(1299,0,1549,250)


    for i = 2, math.min(#shifts,12), 1 do
        jost:write(50, 150 + i * 50, shifts[i][4], 50,1,1,1,1)
        jost:write(165, 150 + i * 50, shifts[i][1] .. " Uhr", 50,1,1,1,1)
        jost:write(600, 150 + i * 50, shifts[i][2], 50,1,1,1,1)
        jost:write(1100, 150 + i * 50, shifts[i][3] .. " min", 50,1,1,1,1)
    end
end
