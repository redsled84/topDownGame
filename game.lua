local bump = require 'libs.bump'
local Levels = require './'
local Game = {
	tileSize = 32,
	world = bump.newWorld()	
}

return Game