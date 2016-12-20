require "helper"

function love.load()
	angle = 0
helper.load(true)
--helper.newObject("image",100,100,100,100,love.graphics.newImage("tree.png"),0)
--helper.newObject("rectangle",500,100,100,100,love.graphics.newImage("tree.png"),0)

--helper.movement(2,"accelerate",3,1,1)
--helper.movement(1,"rotationalVelocity",0.25,1,10)

helper.newObject("image",300,300,71,101,love.graphics.newImage("tree.png"),0)
--helper.newObject("rectangle",300,300,71,101,love.graphics.newImage("tree.png"),0)
helper.movement(1,"rotationalVelocity",0,0,5)

helper.newObject("image",500,450,71,101,love.graphics.newImage("tree.png"),0)
--helper.newObject("rectangle",500,450,71,101,love.graphics.newImage("tree.png"),0)
helper.movement(2,"rotationalVelocity",0,0,5)

helper.newObject("image",1,1,89,200,love.graphics.newImage("tree.png"),0)
--helper.newObject("rectangle",1,1,89,200,love.graphics.newImage("tree.png"),0)
helper.movement(3,"rotationalVelocity",0,0,5)
end

function love.update(dt)
--	love.timer.sleep(.01)
	--angle = angle + dt * math.pi/2
	--angle = angle % (2*math.pi)
	angle = angle + 0.005
helper.update()
end

function love.draw()
love.graphics.print(helper.get(1)[2],100,1)

helper.draw()
end