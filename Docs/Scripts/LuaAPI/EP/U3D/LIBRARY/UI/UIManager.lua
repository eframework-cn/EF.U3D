---@class EP.U3D.LIBRARY.UI.UIManager : System.Object
---@field UIRoot UnityEngine.Transform
---@field Camera UnityEngine.Camera
---@field Canvas UnityEngine.Canvas
---@field CachedWindows table
---@field OpenedWindows table
local UIManager = {}

---@param root UnityEngine.Transform
function UIManager.Initialize(root) end

---@param meta EP.U3D.LIBRARY.UI.UIMeta
---@param parent UnityEngine.Transform
---@param closeIfOpened bool
---@return EP.U3D.LIBRARY.UI.IUIWindow
function UIManager.EnsureWindow(meta, parent, closeIfOpened) end

---@param meta EP.U3D.LIBRARY.UI.UIMeta
---@return EP.U3D.LIBRARY.UI.IUIWindow
function UIManager.FindOpenedWindow(meta) end

---@overload fun(target:EP.U3D.LIBRARY.UI.UIMeta, parent:UnityEngine.Transform, args:object[]):EP.U3D.LIBRARY.UI.IUIWindow
---@overload fun(target:EP.U3D.LIBRARY.UI.UIMeta, below:EP.U3D.LIBRARY.UI.UIMeta, above:EP.U3D.LIBRARY.UI.UIMeta, parent:UnityEngine.Transform, args:object[]):EP.U3D.LIBRARY.UI.IUIWindow
---@param target EP.U3D.LIBRARY.UI.UIMeta
---@param args object[]
---@return EP.U3D.LIBRARY.UI.IUIWindow
function UIManager.OpenWindow(target, args) end

---@param window EP.U3D.LIBRARY.UI.IUIWindow
---@param below EP.U3D.LIBRARY.UI.IUIWindow
---@param above EP.U3D.LIBRARY.UI.IUIWindow
function UIManager.ArrangeWindow(window, below, above) end

---@overload fun(window:EP.U3D.LIBRARY.UI.IUIWindow):void
---@param meta EP.U3D.LIBRARY.UI.UIMeta
function UIManager.FocusWindow(meta) end

function UIManager.ResumeWindow() end

---@overload fun(window:EP.U3D.LIBRARY.UI.IUIWindow, resume:bool):void
---@param meta EP.U3D.LIBRARY.UI.UIMeta
---@param resume bool
function UIManager.CloseWindow(meta, resume) end

function UIManager.CloseAllWindows() end

---@param filter EP.U3D.LIBRARY.UI.UIMeta[]
function UIManager.CloseAllWindowsExcept(filter) end

---@param meta EP.U3D.LIBRARY.UI.UIMeta
---@return EP.U3D.LIBRARY.UI.IUIWindow
function UIManager.IsWindowOpened(meta) end

EP.U3D.LIBRARY.UI.UIManager = UIManager