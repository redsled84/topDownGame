local Tiles = require 'systems.tiles'
local Globals = require 'globals'
local Levels = require 'systems.game-sys.levels'
local Game = require 'systems.game-sys.game'
local Camera 

local gamera = require 'libs.gamera'
local world = Game.world

function love.load()
	Game:startGame('levels/level_01.txt')
end

function love.update(dt)
	Game:updateGame(dt)
end

function love.draw()
	Game:drawGame()
end

function love.keypressed(key)
	if key == 'escape' then
		love.event.quit()
	end
	if key == 'r' then
		Levels:popLevel()
	end
end