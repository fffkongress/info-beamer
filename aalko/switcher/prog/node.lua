gl.setup(1550, 830)
    local jost = resource.load_font("jost.ttf")


util.file_watch("prog.csv", function(content)
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
    jost:write(50, 50, "Aktuelles Programm:", 100,1,1,1,1)


    for i = 1, math.min(#shifts - 1, 5), 1 do
        -- requires that 1-3 ar filled, 4 is optional
        jost:write(600, 20 + i * 140, shifts[i + 1][2], 60,1,1,1,1)
        jost:write(50, 20 + i * 140, shifts[i + 1][1] .. " Uhr", 60,1,1,1,1)
        jost:write(50, 80 + i * 140, shifts[i + 1][3], 40,1,1,1,1)
        if (#shifts[i + 1] > 3) then
            jost:write(600, 80 + i * 140, shifts[i + 1][4], 40,0.96, 0.2, 0.25, 1)
        end
    end
end