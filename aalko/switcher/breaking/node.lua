gl.setup(1550,830)
local font = resource.load_font("jost.ttf")
local logo = resource.load_image("SharePic.png")
local breaking = false

function node.render()
    if breaking then
        gl.clear(0.96, 0.2, 0.25, 1)
        font:write(50, 50, "Breaking:", 100, 1,1,1,1)
        font:write(50, 175, "Brauchen dringend Mate", 70, 1,1,1,1)
        font:write(50, 255, "", 70, 1,1,1,1)
        font:write(50, 325, "", 70, 1,1,1,1)
        font:write(50, 405, "", 70, 1,1,1,1)
        font:write(50, 485, "", 70, 1,1,1,1)
        font:write(50, 565, "", 70, 1,1,1,1)
        font:write(50, 645, "", 70, 1,1,1,1)
        font:write(50, 725, "Melde dich bei xy", 70, 1,1,1,1)
    else
        -- - 70, 200 für versatz switcher
        logo:draw(640,90,1140,590)
        font:write(680,600,"INFOBEAMER",65,1,1,1,1)
    end
end