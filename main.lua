function love.load()
    timer = 1.5
    
    quandale = love.audio.newSource("year.mp3", "stream")
    
    quandale:play()
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