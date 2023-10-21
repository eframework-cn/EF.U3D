---@class System.Collections.IEnumerator
---@field Current System.Object
local IEnumerator = {}

---@return bool
function IEnumerator:MoveNext() end

function IEnumerator:Reset() end

System.Collections.IEnumerator = IEnumerator