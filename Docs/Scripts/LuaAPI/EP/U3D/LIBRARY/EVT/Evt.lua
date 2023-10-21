---@class EP.U3D.LIBRARY.EVT.Evt : System.Object
---@field ID int
---@field Param System.Object
local Evt = {}

function Evt:Reset() end

---@return EP.U3D.LIBRARY.EVT.Evt
function Evt:Clone() end

---@param get bool
---@return bool
function Evt:Obtain(get) end

---@overload fun(id:int, params:object[]):EP.U3D.LIBRARY.EVT.Evt
---@param id int
---@param param System.Object
---@return EP.U3D.LIBRARY.EVT.Evt
function Evt.Get(id, param) end

---@param evt EP.U3D.LIBRARY.EVT.Evt
function Evt.Put(evt) end

EP.U3D.LIBRARY.EVT.Evt = Evt