function love.load()
    timer = 0
    
    quandale = love.audio.newSource("year.mp3", "stream")
    
    quandale:play()
end

function love.update(dt)
    if timer > 0 then
        timer = timer - dt
    end

    if timer < 0 then
        timer = 1
        love.event.quit()
    end
end

function love.draw()
    love.graphics.setBackgroundColor(0, 0, 0)
end