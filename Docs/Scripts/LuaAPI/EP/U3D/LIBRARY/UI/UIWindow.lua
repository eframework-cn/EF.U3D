---@class EP.U3D.LIBRARY.UI.UIWindow : UnityEngine.MonoBehaviour
local UIWindow = {}

---@param meta EP.U3D.LIBRARY.UI.UIMeta
---@return EP.U3D.LIBRARY.UI.UIMeta
function UIWindow:Meta(meta) end

---@param panel UnityEngine.Canvas
---@return UnityEngine.Canvas
function UIWindow:Panel(panel) end

---@param args object[]
function UIWindow:OnOpen(args) end

function UIWindow:OnBlur() end

function UIWindow:OnFocus() end

---@param done System.Action
function UIWindow:OnClose(done) end

EP.U3D.LIBRARY.UI.UIWindow = UIWindow