gl.setup(1550,830)
local font = resource.load_font("jost.ttf")

function node.render()
    gl.clear(0.96, 0.2, 0.25, 1)
    font:write(50, 50, "Reminder", 100, 1,1,1,1)
    font:write(50, 175, "Vermummt euch", 70, 1,1,1,1)
    font:write(50, 250, "Und bohrt regelmäßig in der Nase", 70, 1,1,1,1)
end