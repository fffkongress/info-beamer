gl.setup(200, 200)

local dot = resource.load_image "dot.png"
local white = resource.create_colored_texture(1,1,1,1)

local base_time = N.base_time or 0

util.data_mapper{
    ["clock/set"] = function(time)
        base_time = tonumber(time) - sys.now()
        N.base_time = base_time
    end;
}

function hand(size, strength, angle, r,g,b,a)
    gl.pushMatrix()
    gl.translate(WIDTH/2, HEIGHT/2) 
    gl.rotate(angle, 0, 0, 1)
    white:draw(0, -strength, size, strength)
    gl.popMatrix()
end

local bg

function node.render()
    if not bg then
        gl.pushMatrix()
        gl.translate(WIDTH/2, HEIGHT/2) 
        for i = 0, 59 do
            gl.pushMatrix()
            gl.rotate(360/60*i, 0, 0, 1)
            if i % 15 == 0 then
                white:draw(WIDTH/2.1-16, -2, WIDTH/2.1, 2, 1)
            elseif i % 5 == 0 then
                white:draw(WIDTH/2.1-10, -2, WIDTH/2.1, 2, 0.8)
            else
                white:draw(WIDTH/2.1-5, -1, WIDTH/2.1, 1, 0.5)
            end
            gl.popMatrix()
        end
        gl.popMatrix()
        bg = resource.create_snapshot()
    else
        bg:draw(0,0,WIDTH,HEIGHT)
    end

    local time = base_time + sys.now()

    local hour = (time / 3600) % 12
    local minute = time % 3600 / 60
    local second = time % 60

    local fake_second = second * 1.05
    if fake_second >= 60 then
        fake_second = 60
    end

    hand(WIDTH/4,   4, 360/12 * hour - 90)
    hand(WIDTH/2.5, 3, 360/60 * minute - 90)
    hand(WIDTH/2.1,  1, 360/60 * (((math.sin((fake_second-0.4) * math.pi*2)+1)/8) + fake_second) - 90)
    dot:draw(WIDTH/2-12, HEIGHT/2-12, WIDTH/2+12, HEIGHT/2+12)
end
