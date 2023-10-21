---@class System.Delegate : System.Object
---@field Method System.Reflection.MethodInfo
---@field Target System.Object
local Delegate = {}

---@overload fun(type:System.Type, firstArgument:System.Object, method:System.Reflection.MethodInfo):System.Delegate
---@overload fun(type:System.Type, method:System.Reflection.MethodInfo, throwOnBindFailure:bool):System.Delegate
---@overload fun(type:System.Type, method:System.Reflection.MethodInfo):System.Delegate
---@overload fun(type:System.Type, target:System.Object, method:System.String):System.Delegate
---@overload fun(type:System.Type, target:System.Type, method:System.String, ignoreCase:bool, throwOnBindFailure:bool):System.Delegate
---@overload fun(type:System.Type, target:System.Type, method:System.String):System.Delegate
---@overload fun(type:System.Type, target:System.Type, method:System.String, ignoreCase:bool):System.Delegate
---@overload fun(type:System.Type, target:System.Object, method:System.String, ignoreCase:bool, throwOnBindFailure:bool):System.Delegate
---@overload fun(type:System.Type, target:System.Object, method:System.String, ignoreCase:bool):System.Delegate
---@param type System.Type
---@param firstArgument System.Object
---@param method System.Reflection.MethodInfo
---@param throwOnBindFailure bool
---@return System.Delegate
function Delegate.CreateDelegate(type, firstArgument, method, throwOnBindFailure) end

---@param args object[]
---@return System.Object
function Delegate:DynamicInvoke(args) end

---@return System.Object
function Delegate:Clone() end

---@param obj System.Object
---@return bool
function Delegate:Equals(obj) end

---@return int
function Delegate:GetHashCode() end

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function Delegate:GetObjectData(info, context) end

---@return System.Delegate[]
function Delegate:GetInvocationList() end

---@overload fun(delegates:System.Delegate[]):System.Delegate
---@param a System.Delegate
---@param b System.Delegate
---@return System.Delegate
function Delegate.Combine(a, b) end

---@param source System.Delegate
---@param value System.Delegate
---@return System.Delegate
function Delegate.Remove(source, value) end

---@param source System.Delegate
---@param value System.Delegate
---@return System.Delegate
function Delegate.RemoveAll(source, value) end

---@param d1 System.Delegate
---@param d2 System.Delegate
---@return bool
function Delegate.op_Equality(d1, d2) end

---@param d1 System.Delegate
---@param d2 System.Delegate
---@return bool
function Delegate.op_Inequality(d1, d2) end

System.Delegate = Delegate