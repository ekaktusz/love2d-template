-- configure debugger in Visual Studio Code
if os.getenv("LOCAL_LUA_DEBUGGER_VSCODE") == "1" then
    require("lldebugger").start()
end

local StateManager = require("src.vendor.hump.gamestate")

-- Don't apply rastering on scaling for pixel arts
love.graphics.setDefaultFilter("nearest", "nearest")

-- random seed
math.randomseed(os.time())

function love.load(args)
    StateManager.registerEvents()
end

function love.update(dt)
    require("src.vendor.lurker.lurker").update()
end