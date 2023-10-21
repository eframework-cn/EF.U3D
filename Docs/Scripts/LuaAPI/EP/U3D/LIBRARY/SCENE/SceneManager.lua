---@class EP.U3D.LIBRARY.SCENE.SceneManager : System.Object
---@field Last EP.U3D.LIBRARY.SCENE.IScene
---@field Current EP.U3D.LIBRARY.SCENE.IScene
---@field Next EP.U3D.LIBRARY.SCENE.IScene
---@field OnSwap EP.U3D.LIBRARY.SCENE.SceneManager.SwapDelegate
local SceneManager = {}

function SceneManager.Update() end

---@param scene EP.U3D.LIBRARY.SCENE.IScene
---@param args object[]
function SceneManager.Goto(scene, args) end

EP.U3D.LIBRARY.SCENE.SceneManager = SceneManager