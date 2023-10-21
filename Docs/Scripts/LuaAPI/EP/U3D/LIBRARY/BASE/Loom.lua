---@class EP.U3D.LIBRARY.BASE.Loom : UnityEngine.MonoBehaviour
---@field Instance EP.U3D.LIBRARY.BASE.Loom
local Loom = {}

---@param root UnityEngine.Transform
function Loom.Initialize(root) end

---@param cr System.Collections.IEnumerator
---@return UnityEngine.Coroutine
function Loom.StartCR(cr) end

---@overload fun(cr:System.Collections.IEnumerator):void
---@param cr UnityEngine.Coroutine
function Loom.StopCR(cr) end

---@return bool
function Loom.IsInMainThread() end

---@param action System.Action
function Loom.QueueInMainThread(action) end

---@param action System.Action
---@return System.Threading.Thread
function Loom.RunAsync(action) end

EP.U3D.LIBRARY.BASE.Loom = Loom