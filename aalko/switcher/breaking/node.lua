gl.setup(1550,830)
local font = resource.load_font("jost.ttf")

function node.render()
    gl.clear(0.96, 0.2, 0.25, 1)
    font:write(50, 50, "Breaking:", 100, 1,1,1,1)
    font:write(50, 175, "Brauchen dringend Mate", 70, 1,1,1,1)
end