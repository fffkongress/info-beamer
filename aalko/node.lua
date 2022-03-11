-- cleanup python shit
-- clear video 

gl.setup(1920, 1080)
    local font = resource.load_font("jost.ttf")
    local background = resource.load_image("background.jpg")
    local video = resource.load_video("LogoTransparent.mp4", true)
    
function node.render()
    background:draw(0, 0, WIDTH, HEIGHT)
    font:write(50, 50, "Welcome to aalko !", 100, 1,1,1,1)
    video:draw(1670,830,1870,1030,0.5)
    resource.render_child("analogclock"):draw(1670,50,1870,250)

    resource.render_child("switcher"):draw(70,200,1620,1030)
end

