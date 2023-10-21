---@class System.Attribute : System.Object
---@field TypeId System.Object
local Attribute = {}

---@overload fun(element:System.Reflection.MemberInfo, type:System.Type, inherit:bool):System.Attribute[]
---@overload fun(element:System.Reflection.MemberInfo):System.Attribute[]
---@overload fun(element:System.Reflection.MemberInfo, inherit:bool):System.Attribute[]
---@overload fun(element:System.Reflection.ParameterInfo):System.Attribute[]
---@overload fun(element:System.Reflection.ParameterInfo, attributeType:System.Type):System.Attribute[]
---@overload fun(element:System.Reflection.ParameterInfo, attributeType:System.Type, inherit:bool):System.Attribute[]
---@overload fun(element:System.Reflection.ParameterInfo, inherit:bool):System.Attribute[]
---@overload fun(element:System.Reflection.Module, attributeType:System.Type):System.Attribute[]
---@overload fun(element:System.Reflection.Module):System.Attribute[]
---@overload fun(element:System.Reflection.Module, inherit:bool):System.Attribute[]
---@overload fun(element:System.Reflection.Module, attributeType:System.Type, inherit:bool):System.Attribute[]
---@overload fun(element:System.Reflection.Assembly, attributeType:System.Type):System.Attribute[]
---@overload fun(element:System.Reflection.Assembly, attributeType:System.Type, inherit:bool):System.Attribute[]
---@overload fun(element:System.Reflection.Assembly):System.Attribute[]
---@overload fun(element:System.Reflection.Assembly, inherit:bool):System.Attribute[]
---@param element System.Reflection.MemberInfo
---@param type System.Type
---@return System.Attribute[]
function Attribute.GetCustomAttributes(element, type) end

---@overload fun(element:System.Reflection.MemberInfo, attributeType:System.Type, inherit:bool):bool
---@overload fun(element:System.Reflection.ParameterInfo, attributeType:System.Type):bool
---@overload fun(element:System.Reflection.ParameterInfo, attributeType:System.Type, inherit:bool):bool
---@overload fun(element:System.Reflection.Module, attributeType:System.Type):bool
---@overload fun(element:System.Reflection.Module, attributeType:System.Type, inherit:bool):bool
---@overload fun(element:System.Reflection.Assembly, attributeType:System.Type):bool
---@overload fun(element:System.Reflection.Assembly, attributeType:System.Type, inherit:bool):bool
---@param element System.Reflection.MemberInfo
---@param attributeType System.Type
---@return bool
function Attribute.IsDefined(element, attributeType) end

---@overload fun(element:System.Reflection.MemberInfo, attributeType:System.Type, inherit:bool):System.Attribute
---@overload fun(element:System.Reflection.ParameterInfo, attributeType:System.Type):System.Attribute
---@overload fun(element:System.Reflection.ParameterInfo, attributeType:System.Type, inherit:bool):System.Attribute
---@overload fun(element:System.Reflection.Module, attributeType:System.Type):System.Attribute
---@overload fun(element:System.Reflection.Module, attributeType:System.Type, inherit:bool):System.Attribute
---@overload fun(element:System.Reflection.Assembly, attributeType:System.Type):System.Attribute
---@overload fun(element:System.Reflection.Assembly, attributeType:System.Type, inherit:bool):System.Attribute
---@param element System.Reflection.MemberInfo
---@param attributeType System.Type
---@return System.Attribute
function Attribute.GetCustomAttribute(element, attributeType) end

---@param obj System.Object
---@return bool
function Attribute:Equals(obj) end

---@return int
function Attribute:GetHashCode() end

---@param obj System.Object
---@return bool
function Attribute:Match(obj) end

---@return bool
function Attribute:IsDefaultAttribute() end

System.Attribute = Attribute