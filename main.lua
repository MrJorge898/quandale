function love.load()
    timer = 1.5
    
    quandale = love.audio.newSource("year.mp3", "stream")
    icon = love.image.newImageData("quandale.ico")

    quandale:play()

    love.window.setTitle("It's been a year daddy")
    love.window.setMode(800, 600, {resizable=false, vsync=1, minwidth=400, minheight=300})
    icon = love.window.setIcon(icon)
end

function love.update(dt)
    if timer > 0 then
        timer = timer - dt
    end

    if timer < 0 then
        love.event.quit()
    end
end

function love.draw()
    love.graphics.setBackgroundColor(1, 1, 1)
    love.graphics.setColor(0, 0, 0)
end