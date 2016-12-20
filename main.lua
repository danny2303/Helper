require "helper"

function love.load()
	angle = 0
helper.load(true)

helper.newObject("rectangle",300,300,71,101,love.graphics.newImage("tree.png"),0)

end

function love.update(dt)
--	love.timer.sleep(.01)
	--angle = angle + dt * math.pi/2
	--angle = angle % (2*math.pi)
	angle = angle + 0.005
helper.update()
end

function love.draw()
helper.track(1)
love.graphics.print(helper.get(1)[2],100,1)

helper.draw()
end