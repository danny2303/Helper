require "helper"

function love.load()
helper.load(true)
end

function love.update(dt)
helper.update()
end

function love.draw()
	
helper.track(1)

helper.draw()

if helper.checkCollision(1,2) == true then
	love.graphics.print("It works!",1,1)
end

end